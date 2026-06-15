inline.NumInlined: 6020
inline.NumDeleted: 2067
begin_hunk_0_@_ZN5folly6detail15str_to_integralImEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::BadExpectedAccess", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %0, align 8, !tbaa !88
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %i.a, align 8, !tbaa !88
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIvEE, ptr nonnull @_ZNSt9exceptionD2Ev) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessIvED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.268
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly2toImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ConversionError", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !2544, !nonnull !52, !align !1694 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !56
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !56
  call void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::ConversionError") align 8 %2, i8 noundef zeroext %1, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  invoke void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %2) #16
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #19

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #23 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #36 ; 2 uses
  tail call void @_ZN5folly15ConversionErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(17) %0) #36
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly15ConversionErrorE, ptr nonnull @_ZNSt11range_errorD2Ev) #35
  unreachable
}

declare void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"class.folly::ConversionError") align 8, i8 noundef zeroext, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly15ConversionErrorE, i64 16), ptr %0, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2546
  store i8 %i.c, ptr %i.a, align 8, !tbaa !2546
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_(i8 noundef zeroext %0) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess.218", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE, i64 16), ptr %1, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %0, ptr %i.a, align 8, !tbaa !2551
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_14ConversionCodeEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(9) %1) #16
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_14ConversionCodeEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE, i64 16), ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !2551
  store i8 %i.d, ptr %i.b, align 8, !tbaa !2551
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr nonnull @_ZNSt9exceptionD2Ev) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessINS_14ConversionCodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly2toImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ConversionError", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = load ptr, ptr %0, align 8, !tbaa !2554, !nonnull !52, !align !1694 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2556
  switch i8 %i.c, label %bb.c [
    i8 1, label %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit
    i8 2, label %bb.b
  ], !prof !2559

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 8, !tbaa !2560
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_(i8 noundef zeroext %i.d) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #16
  unreachable

_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit: ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !56
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !56
  call void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::ConversionError") align 8 %2, i8 noundef zeroext %1, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  invoke void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %2) #16
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %i.e
}

declare void @_ZN5boost10filesystem6detail28directory_iterator_incrementERNS0_18directory_iteratorEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.folly::HugePageSize", align 8 ; 8 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph47

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit
  %i.k = icmp eq i64 %i.q, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph47, !llvm.loop !2561

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge14.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %storemerge14.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %._crit_edge, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.l, %.lr.ph.i8.i ], [ %storemerge14.lcssa, %._crit_edge ]
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -48 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_(ptr %0, ptr nonnull %i.l, ptr nonnull %i.l, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.a
  %i.o = icmp sgt i64 %i.n, 48
  br i1 %i.o, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, !llvm.loop !2562

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %.lr.ph.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph47:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1446 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01545 = phi i64 [ %i.q, %bb.b ], [ %2, %.lr.ph ]
  %i.p = phi i64 [ %i.cj, %bb.b ], [ %i.c, %.lr.ph ]
  %i.q = add nsw i64 %.01545, -1                  ; 3 uses
  %i.r = udiv i64 %i.p, 96
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %storemerge1446, i64 -48 ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !81   ; 3 uses
  %i.v = load i64, ptr %i.s, align 8, !tbaa !81   ; 3 uses
  %i.w = icmp ult i64 %i.u, %i.v
  %i.x = load i64, ptr %i.t, align 8, !tbaa !81   ; 4 uses
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph47
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp ult i64 %i.u, %i.x
  %..i.i = select i1 %i.z, ptr %i.t, ptr %i.e
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i

bb.e:                                             ; preds = %.lr.ph47
  %i.aa = icmp ult i64 %i.u, %i.x
  br i1 %i.aa, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i64 %i.v, %i.x
  %.30.i.i = select i1 %i.ab, ptr %i.t, ptr %i.s
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i.i = phi ptr [ %i.s, %bb.c ], [ %i.e, %bb.e ], [ %.30.i.i, %bb.f ], [ %..i.i, %bb.d ]
  call void @_ZSt4swapIN5folly12HugePageSizeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sink.i.i) #36
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4swapIN5folly12HugePageSizeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i
  %.sroa.012.0.i.i = phi ptr [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i ], [ %i.af, %_ZSt4swapIN5folly12HugePageSizeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1446, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i ], [ %.sroa.0.1.i.i, %_ZSt4swapIN5folly12HugePageSizeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ]
  %i.ac = load i64, ptr %0, align 8, !tbaa !81    ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.g ], [ %i.af, %bb.h ] ; 14 uses
  %i.ad = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !81 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 48 ; 2 uses
  br i1 %i.ae, label %bb.h, label %.preheader.i.i, !llvm.loop !2563

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 7 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 6 uses
  %i.ag = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !81
  %i.ah = icmp ult i64 %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.i, !llvm.loop !2564

bb.i:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.j, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i64 %i.ad, ptr %3, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !11
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24 ; 9 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !20 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !16
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !19
  store i64 %i.aq, ptr %i.g, align 8, !tbaa !19
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.k
  %i.ar = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.an, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 3 uses
  store i64 %i.ar, ptr %i.h, align 8, !tbaa !20
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !16
  store i64 0, ptr %i.as, align 8, !tbaa !20
  store i8 0, ptr %i.ak, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !83
  store i64 %i.au, ptr %i.i, align 8, !tbaa !83
  %i.av = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !81
  store i64 %i.av, ptr %.sroa.012.1.i.i, align 8, !tbaa !81
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 7 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 8 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !20 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !19
  store i8 %i.bd, ptr %i.ak, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 1 %i.ax, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  store i64 %i.be, ptr %i.as, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !19
  %.pre.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4.i
  store ptr %i.ax, ptr %i.ai, align 8, !tbaa !16
  %i.bg = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20
  store i64 %i.bh, ptr %i.as, align 8, !tbaa !20
  %i.bi = load i64, ptr %i.ay, align 8, !tbaa !19
  store i64 %i.bi, ptr %i.ak, align 8, !tbaa !19
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit.i

_ZN5folly12HugePageSizeaSEOS0_.exit.i:            ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
  %i.bj = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ], [ %i.ay, %bb.o ]
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 4 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !20
  store i8 0, ptr %i.bj, align 1, !tbaa !19
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !83
  store i64 %i.bm, ptr %i.at, align 8, !tbaa !83
  %i.bn = load i64, ptr %3, align 8, !tbaa !81
  store i64 %i.bn, ptr %.sroa.0.1.i.i, align 8, !tbaa !81
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !16 ; 6 uses
  %i.bp = icmp eq ptr %i.bo, %i.ay
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !16  ; 5 uses
  %i.br = icmp eq ptr %i.bq, %i.g                 ; 2 uses
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i: ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit.i
  br i1 %i.br, label %bb.p, label %.thread.i.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i: ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit.i
  br i1 %i.br, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i
  %i.bs = load i64, ptr %i.h, align 8, !tbaa !20  ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  switch i64 %i.bs, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !19
  store i8 %i.bu, ptr %i.bo, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bq, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.bv = load i64, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  store i64 %i.bv, ptr %i.bk, align 8, !tbaa !20
  %i.bw = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 0, ptr %i.bx, align 1, !tbaa !19
  %.pre.i.i.i10.i = load ptr, ptr %i.f, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit13.i

.thread.i.i.i12.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i
  store ptr %i.bq, ptr %i.aw, align 8, !tbaa !16
  %i.by = load i64, ptr %i.h, align 8, !tbaa !20
  store i64 %i.by, ptr %i.bk, align 8, !tbaa !20
  %i.bz = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.bz, ptr %i.ay, align 8, !tbaa !19
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5.i
  %i.ca = load i64, ptr %i.ay, align 8, !tbaa !19
  store ptr %i.bq, ptr %i.aw, align 8, !tbaa !16
  %i.cb = load i64, ptr %i.h, align 8, !tbaa !20
  store i64 %i.cb, ptr %i.bk, align 8, !tbaa !20
  %i.cc = load i64, ptr %i.g, align 8, !tbaa !19
  store i64 %i.cc, ptr %i.ay, align 8, !tbaa !19
  %.not.i.i.i7.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i7.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i
  store ptr %i.bo, ptr %i.f, align 8, !tbaa !16
  store i64 %i.ca, ptr %i.g, align 8, !tbaa !19
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit13.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6.i, %.thread.i.i.i12.i
  store ptr %i.g, ptr %i.f, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit13.i

_ZN5folly12HugePageSizeaSEOS0_.exit13.i:          ; preds = %bb.t, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i
  %6 = phi ptr [ %.pre.i.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9.i ], [ %i.bo, %bb.s ], [ %i.g, %bb.t ]
  store i64 0, ptr %i.h, align 8, !tbaa !20
  store i8 0, ptr %6, align 1, !tbaa !19
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !83
  store i64 %i.cd, ptr %i.bl, align 8, !tbaa !83
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.g
  br i1 %i.cf, label %_ZSt4swapIN5folly12HugePageSizeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit13.i
  %i.cg = load i64, ptr %i.g, align 8, !tbaa !19
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #39
  br label %_ZSt4swapIN5folly12HugePageSizeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit

_ZSt4swapIN5folly12HugePageSizeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit: ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.g, !llvm.loop !2565

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit: ; preds = %bb.i
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1446, i64 noundef %i.q)
  %i.ci = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cj = sub i64 %i.ci, %i.a                     ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, 768
  br i1 %i.ck, label %bb.b, label %.loopexit, !llvm.loop !2561

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.folly::HugePageSize", align 8 ; 8 uses
  %4 = alloca %"struct.folly::HugePageSize", align 8 ; 6 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 48                  ; 2 uses
  %i.e = icmp slt i64 %i.c, 96
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.c

bb.c:                                             ; preds = %_ZN5folly12HugePageSizeD2Ev.exit13, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.an, %_ZN5folly12HugePageSizeD2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.p = getelementptr inbounds [48 x i8], ptr %0, i64 %.08 ; 7 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  store i64 %i.q, ptr %3, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN5folly12HugePageSizeC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.s, ptr %i.h, align 8, !tbaa !16
  %i.z = load i64, ptr %i.t, align 8, !tbaa !19
  store i64 %i.z, ptr %i.i, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZN5folly12HugePageSizeC2EOS0_.exit

_ZN5folly12HugePageSizeC2EOS0_.exit:              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aa = phi ptr [ %i.i, %bb.d ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.t, ptr %i.r, align 8, !tbaa !16
  store i64 0, ptr %i.ac, align 8, !tbaa !20
  store i8 0, ptr %i.t, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !83 ; 2 uses
  store i64 %i.ae, ptr %i.k, align 8, !tbaa !83
  store i64 %i.q, ptr %4, align 8, !tbaa !81
  store ptr %i.m, ptr %i.l, align 8, !tbaa !11
  %i.af = icmp eq ptr %i.aa, %i.i
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

bb.e:                                             ; preds = %_ZN5folly12HugePageSizeC2EOS0_.exit
  %i.ag = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ah, i1 false)
  br label %_ZN5folly12HugePageSizeC2EOS0_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZN5folly12HugePageSizeC2EOS0_.exit
  store ptr %i.aa, ptr %i.l, align 8, !tbaa !16
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !19
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !19
  br label %_ZN5folly12HugePageSizeC2EOS0_.exit10

_ZN5folly12HugePageSizeC2EOS0_.exit10:            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !20
  store ptr %i.i, ptr %i.h, align 8, !tbaa !16
  store i64 0, ptr %i.j, align 8, !tbaa !20
  store i8 0, ptr %i.i, align 8, !tbaa !19
  store i64 %i.ae, ptr %i.o, align 8, !tbaa !83
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 noundef %.08, i64 noundef %i.d, ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN5folly12HugePageSizeC2EOS0_.exit10
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !16  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.m
  br i1 %i.ak, label %_ZN5folly12HugePageSizeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.al = load i64, ptr %i.m, align 8, !tbaa !19
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #39
  br label %_ZN5folly12HugePageSizeD2Ev.exit

_ZN5folly12HugePageSizeD2Ev.exit:                 ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not = icmp eq i64 %.08, 0
  %i.an = add nsw i64 %.08, -1
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.i
  br i1 %i.ap, label %_ZN5folly12HugePageSizeD2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11: ; preds = %_ZN5folly12HugePageSizeD2Ev.exit
  %i.aq = load i64, ptr %i.i, align 8, !tbaa !19
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #39
  br label %_ZN5folly12HugePageSizeD2Ev.exit13

_ZN5folly12HugePageSizeD2Ev.exit13:               ; preds = %_ZN5folly12HugePageSizeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2566

bb.g:                                             ; preds = %_ZN5folly12HugePageSizeC2EOS0_.exit10
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !16  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.m
  br i1 %i.au, label %_ZN5folly12HugePageSizeD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14: ; preds = %bb.g
  %i.av = load i64, ptr %i.m, align 8, !tbaa !19
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #39
  br label %_ZN5folly12HugePageSizeD2Ev.exit16

_ZN5folly12HugePageSizeD2Ev.exit16:               ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.i
  br i1 %i.ay, label %_ZN5folly12HugePageSizeD2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17: ; preds = %_ZN5folly12HugePageSizeD2Ev.exit16
  %i.az = load i64, ptr %i.i, align 8, !tbaa !19
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #39
  br label %_ZN5folly12HugePageSizeD2Ev.exit19

_ZN5folly12HugePageSizeD2Ev.exit19:               ; preds = %_ZN5folly12HugePageSizeD2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.as

.loopexit:                                        ; preds = %_ZN5folly12HugePageSizeD2Ev.exit13, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.folly::HugePageSize", align 8 ; 9 uses
  %5 = alloca %"struct.folly::HugePageSize", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = load i64, ptr %2, align 8, !tbaa !81
  store i64 %i.a, ptr %4, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 12 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !11
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
end_hunk_0
begin_hunk_1_@_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_:bb.a
  %.027 = phi i64 [ %.0928, %_ZN5folly12HugePageSizeaSEOS0_.exit ], [ %1, %bb.a ] ; 4 uses
  %.0928.in = add nsw i64 %.027, -1
  %.0928 = sdiv i64 %.0928.in, 2                  ; 5 uses
  %i.b = getelementptr inbounds [48 x i8], ptr %0, i64 %.0928 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !81
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds [48 x i8], ptr %0, i64 %.027 ; 7 uses
  store i64 %i.c, ptr %i.f, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !16   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !16   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.n = icmp eq ptr %i.l, %i.m                   ; 2 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  br i1 %i.n, label %bb.c, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %.not21.i.i.i = icmp eq i64 %.0928, %.027
  br i1 %.not21.i.i.i, label %_ZN5folly12HugePageSizeaSEOS0_.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  switch i64 %i.p, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.l, align 1, !tbaa !19
  store i8 %i.r, ptr %i.i, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.s = load i64, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !19
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.l, ptr %i.g, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load <2 x i64>, ptr %i.x, align 8, !tbaa !19
  store <2 x i64> %i.y, ptr %i.w, align 8, !tbaa !19
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.z = load i64, ptr %i.j, align 8, !tbaa !19
  store ptr %i.l, ptr %i.g, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !tbaa !19
  store <2 x i64> %i.ac, ptr %i.ab, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.i, ptr %i.h, align 8, !tbaa !16
  store i64 %i.z, ptr %i.m, align 8, !tbaa !19
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit

_ZN5folly12HugePageSizeaSEOS0_.exit:              ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.i, %bb.g ], [ %i.m, %bb.h ], [ %i.l, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !83
  %i.ai = icmp sgt i64 %.0928, %2
  br i1 %i.ai, label %.lr.ph, label %.critedge, !llvm.loop !2568

.critedge:                                        ; preds = %.lr.ph, %_ZN5folly12HugePageSizeaSEOS0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.0928, %_ZN5folly12HugePageSizeaSEOS0_.exit ], [ %.027, %.lr.ph ]
  %i.aj = getelementptr inbounds [48 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.ak = load i64, ptr %3, align 8, !tbaa !81
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !81
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 4 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !16 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.as = icmp eq ptr %i.aq, %i.ar                ; 2 uses
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %.critedge
  br i1 %i.as, label %bb.i, label %.thread.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i10: ; preds = %.critedge
  br i1 %i.as, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i11

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  tail call void @llvm.assume(i1 %i.av)
  %.not21.i.i.i13 = icmp eq ptr %3, %i.aj
  br i1 %.not21.i.i.i13, label %_ZN5folly12HugePageSizeaSEOS0_.exit18, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  switch i64 %i.au, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !19
  store i8 %i.aw, ptr %i.an, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.aq, i64 %i.au, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14: ; preds = %bb.l, %bb.k, %bb.j
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !20 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !20
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !19
  %.pre.i.i.i15 = load ptr, ptr %i.am, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit18

.thread.i.i.i17:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !20
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !20
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !19
  store i64 %i.be, ptr %i.ao, align 8, !tbaa !19
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i10
  %i.bf = load i64, ptr %i.ao, align 8, !tbaa !19
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !20
  %i.bj = load i64, ptr %i.ar, align 8, !tbaa !19
  store i64 %i.bj, ptr %i.ao, align 8, !tbaa !19
  %.not.i.i.i12 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i11
  store ptr %i.an, ptr %i.am, align 8, !tbaa !16
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !19
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit18

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i11, %.thread.i.i.i17
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit18

_ZN5folly12HugePageSizeaSEOS0_.exit18:            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14, %bb.m, %bb.n
  %i.bk = phi ptr [ %.pre.i.i.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i14 ], [ %i.an, %bb.m ], [ %i.ar, %bb.n ], [ %i.aq, %bb.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.bl, align 8, !tbaa !20
  store i8 0, ptr %i.bk, align 1, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !83
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !83
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN5folly12HugePageSizeEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::HugePageSize", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = load i64, ptr %0, align 8, !tbaa !81
  store i64 %i.a, ptr %2, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !11
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !tbaa !16
  %i.l = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.l, ptr %i.d, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.m = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store i64 %i.m, ptr %i.o, align 8, !tbaa !20
  store ptr %i.f, ptr %i.c, align 8, !tbaa !16
  store i64 0, ptr %i.n, align 8, !tbaa !20
  store i8 0, ptr %i.f, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !83
  store i64 %i.r, ptr %i.p, align 8, !tbaa !83
  %i.s = load i64, ptr %1, align 8, !tbaa !81
  store i64 %i.s, ptr %0, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %.not21.i.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i.i, label %_ZN5folly12HugePageSizeaSEOS0_.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  switch i64 %i.y, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !19
  store i8 %i.aa, ptr %i.f, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 1 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !20  ; 2 uses
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !19
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  store ptr %i.u, ptr %i.c, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !20
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !20
  %i.af = load i64, ptr %i.v, align 8, !tbaa !19
  store i64 %i.af, ptr %i.f, align 8, !tbaa !19
  store ptr %i.v, ptr %i.t, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit

_ZN5folly12HugePageSizeaSEOS0_.exit:              ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g
  %i.ag = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.u, %bb.c ], [ %i.v, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !20
  store i8 0, ptr %i.ag, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !83
  store i64 %i.aj, ptr %i.q, align 8, !tbaa !83
  %i.ak = load i64, ptr %2, align 8, !tbaa !81
  store i64 %i.ak, ptr %1, align 8, !tbaa !81
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !16  ; 6 uses
  %i.am = icmp eq ptr %i.al, %i.v
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !16  ; 5 uses
  %i.ao = icmp eq ptr %i.an, %i.d                 ; 2 uses
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit
  br i1 %i.ao, label %bb.h, label %.thread.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5: ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit
  br i1 %i.ao, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !20  ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  switch i64 %i.ap, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !19
  store i8 %i.ar, ptr %i.al, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9: ; preds = %bb.j, %bb.i, %bb.h
  %i.as = load i64, ptr %i.o, align 8, !tbaa !20  ; 2 uses
  store i64 %i.as, ptr %i.ah, align 8, !tbaa !20
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !19
  %.pre.i.i.i10 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit13

.thread.i.i.i12:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  store ptr %i.an, ptr %i.t, align 8, !tbaa !16
  %i.av = load <2 x i64>, ptr %i.o, align 8, !tbaa !19
  store <2 x i64> %i.av, ptr %i.ah, align 8, !tbaa !19
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i5
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !19
  store ptr %i.an, ptr %i.t, align 8, !tbaa !16
  %i.ax = load <2 x i64>, ptr %i.o, align 8, !tbaa !19
  store <2 x i64> %i.ax, ptr %i.ah, align 8, !tbaa !19
  %.not.i.i.i7 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6
  store ptr %i.al, ptr %i.b, align 8, !tbaa !16
  store i64 %i.aw, ptr %i.d, align 8, !tbaa !19
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit13

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i6, %.thread.i.i.i12
  store ptr %i.d, ptr %i.b, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit13

_ZN5folly12HugePageSizeaSEOS0_.exit13:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9, %bb.k, %bb.l
  %3 = phi ptr [ %.pre.i.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i9 ], [ %i.al, %bb.k ], [ %i.d, %bb.l ]
  store i64 0, ptr %i.o, align 8, !tbaa !20
  store i8 0, ptr %3, align 1, !tbaa !19
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !83
  store i64 %i.ay, ptr %i.ai, align 8, !tbaa !83
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.d
  br i1 %i.ba, label %_ZN5folly12HugePageSizeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit13
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !19
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #39
  br label %_ZN5folly12HugePageSizeD2Ev.exit

_ZN5folly12HugePageSizeD2Ev.exit:                 ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5folly12HugePageSizeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::HugePageSize", align 8 ; 9 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit19, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.020 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.020, %1
  br i1 %i.b, label %.loopexit19, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not21.i.i.i = icmp eq ptr %2, %0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.022 = phi ptr [ %.sroa.0.020, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 6 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.q ] ; 6 uses
  %i.l = load i64, ptr %.sroa.0.022, align 8, !tbaa !81 ; 3 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !81
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store i64 %i.l, ptr %2, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %.pn21, i64 56 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !11
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pn21, i64 72 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.pn21, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN5folly12HugePageSizeC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.p, ptr %i.c, align 8, !tbaa !16
  %i.w = load i64, ptr %i.q, align 8, !tbaa !19
  store i64 %i.w, ptr %i.d, align 8, !tbaa !19
  br label %_ZN5folly12HugePageSizeC2EOS0_.exit

_ZN5folly12HugePageSizeC2EOS0_.exit:              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pn21, i64 64 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20
  store i64 %i.y, ptr %i.e, align 8, !tbaa !20
  store ptr %i.q, ptr %i.o, align 8, !tbaa !16
  store i64 0, ptr %i.x, align 8, !tbaa !20
  store i8 0, ptr %i.q, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %.pn21, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !83
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !83
  %i.ab = ptrtoint ptr %.sroa.0.022 to i64
  %i.ac = sub i64 %i.ab, %i.g                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN5folly12HugePageSizeC2EOS0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn21, i64 96
  %i.af = udiv exact i64 %i.ac, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bn, %_ZN5folly12HugePageSizeaSEOS0_.exit.i.i.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ah, %_ZN5folly12HugePageSizeaSEOS0_.exit.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ag, %_ZN5folly12HugePageSizeaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.022, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48 ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !81
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !81
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 4 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 6 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 4 uses
  %i.an = icmp eq ptr %i.al, %i.am
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !16 ; 5 uses
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 6 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap                ; 2 uses
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.aq, label %bb.e, label %.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.aq, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  switch i64 %i.as, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !19
  store i8 %i.au, ptr %i.al, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ao, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !20 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !20
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !19
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !16
  %i.ba = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !20
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !20
  %i.bc = load i64, ptr %i.ap, align 8, !tbaa !19
  store i64 %i.bc, ptr %i.am, align 8, !tbaa !19
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !19
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !16
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !20
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !20
  %i.bh = load i64, ptr %i.ap, align 8, !tbaa !19
  store i64 %i.bh, ptr %i.am, align 8, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !16
  store i64 %i.bd, ptr %i.ap, align 8, !tbaa !19
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !16
  br label %_ZN5folly12HugePageSizeaSEOS0_.exit.i.i.i.i.i

_ZN5folly12HugePageSizeaSEOS0_.exit.i.i.i.i.i:    ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
  %i.bi = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i ], [ %i.al, %bb.h ], [ %i.ap, %bb.i ]
  %i.bj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  store i64 0, ptr %i.bj, align 8, !tbaa !20
  store i8 0, ptr %i.bi, align 1, !tbaa !19
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !83
  %i.bm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !83
  %i.bn = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bo = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %.loopexit.loopexit, !llvm.loop !2569

.loopexit.loopexit:                               ; preds = %_ZN5folly12HugePageSizeaSEOS0_.exit.i.i.i.i.i
  %.pre = load i64, ptr %2, align 8, !tbaa !81
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5folly12HugePageSizeC2EOS0_.exit
end_hunk_1
