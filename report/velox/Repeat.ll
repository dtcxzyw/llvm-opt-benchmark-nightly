inline.NumInlined: 3737
inline.NumDeleted: 1486
begin_hunk_0_@_ZN5folly17BadExpectedAccessIvED0Ev
define linkonce_odr void @_ZN5folly17BadExpectedAccessIvED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.21
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ConversionError", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = load ptr, ptr %0, align 8, !tbaa !177, !nonnull !56, !align !179 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !73
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !73
  call void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::ConversionError") align 8 %2, i8 noundef zeroext %1, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  invoke void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %2) #17
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #18

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 2 uses
  tail call void @_ZN5folly15ConversionErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(17) %0) #27
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly15ConversionErrorE, ptr nonnull @_ZNSt11range_errorD2Ev) #30
  unreachable
}

declare void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"class.folly::ConversionError") align 8, i8 noundef zeroext, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly15ConversionErrorE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !180
  store i8 %i.c, ptr %i.a, align 8, !tbaa !180
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_(i8 noundef zeroext %0) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::BadExpectedAccess.61", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE, i64 16), ptr %1, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %0, ptr %i.a, align 8, !tbaa !188
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_14ConversionCodeEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(9) %1) #17
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_14ConversionCodeEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE, i64 16), ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !188
  store i8 %i.d, ptr %i.b, align 8, !tbaa !188
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessINS_14ConversionCodeEED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ConversionError", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = load ptr, ptr %0, align 8, !tbaa !191, !nonnull !56, !align !179 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !193
  switch i8 %i.c, label %bb.c [
    i8 1, label %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit
    i8 2, label %bb.b
  ], !prof !196

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 8, !tbaa !197
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_(i8 noundef zeroext %i.d) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #17
  unreachable

_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit: ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !73
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !73
  call void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"class.folly::ConversionError") align 8 %2, i8 noundef zeroext %1, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  invoke void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %2) #17
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit
  unreachable

bb.e:                                             ; preds = %_ZNR5folly8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEE5valueEv.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(17) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14VectorFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_114RepeatFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::optional.85", align 4  ; 5 uses
  %7 = alloca %"class.std::optional.85", align 4  ; 5 uses
  %8 = alloca %"class.std::optional.85", align 4  ; 5 uses
  %9 = alloca %"class.std::optional.355", align 1 ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.291", align 16 ; 6 uses
  %13 = alloca %"struct.fmt::v11::detail::format_arg_store.195", align 16 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %17 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %18 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %19 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %20 = alloca %class.anon.353, align 8           ; 9 uses
  %21 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %22 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %23 = alloca %class.anon.350, align 1           ; 3 uses
  %24 = alloca %class.anon.326, align 8           ; 9 uses
  %25 = alloca %"class.facebook::velox::exec::DecodedArgs", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %26 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %27 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %28 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %29 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %30 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %31 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %32 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 24 uses
  %33 = alloca %"class.std::shared_ptr.74", align 8 ; 7 uses
  %34 = alloca %"class.boost::intrusive_ptr", align 8 ; 6 uses
  %35 = alloca %"class.boost::intrusive_ptr", align 8 ; 6 uses
  %36 = alloca %"class.std::shared_ptr.74", align 16 ; 6 uses
  %37 = alloca %"class.std::optional.85", align 4 ; 5 uses
  %38 = alloca %"class.std::optional.85", align 4 ; 5 uses
  %39 = alloca %"class.std::optional.85", align 4 ; 5 uses
  %40 = alloca %"struct.fmt::v11::detail::format_arg_store.292", align 16 ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %42 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %43 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %44 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %45 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %46 = alloca %"class.std::shared_ptr.74", align 8 ; 7 uses
  %47 = alloca %"class.boost::intrusive_ptr", align 8 ; 6 uses
  %48 = alloca %"class.boost::intrusive_ptr", align 8 ; 6 uses
  %49 = alloca %"class.std::shared_ptr.74", align 16 ; 6 uses
  %50 = alloca %"class.std::shared_ptr.74", align 16 ; 12 uses
  %51 = alloca %"class.std::shared_ptr.74", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %2, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !201  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !204
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %bb.cn

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i8, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val16 = load i32, ptr %i.o, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27, !noalias !220
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !223, !noalias !220 ; 2 uses
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27, !noalias !220
  %i.r = load ptr, ptr %4, align 8, !tbaa !233, !noalias !220
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !248, !noalias !220 ; 2 uses
  store ptr %i.s, ptr %i.f, align 8, !tbaa !269, !noalias !220
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 156
  %i.u = load i8, ptr %i.t, align 4, !tbaa !270, !range !55, !noalias !220, !noundef !56
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook5velox10BaseVector18createNullConstantERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.74") align 8 %51, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.q, ptr noundef %i.s)
          to label %bb.by unwind label %bb.cm

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.x = load i32, ptr %i.w, align 8, !tbaa !278, !noalias !220
  %i.y = trunc nuw i8 %.val to i1
  %i.z = invoke fastcc noundef i32 @_ZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction10checkCountEib(i32 %.val16, i32 noundef %i.x, i1 noundef zeroext %i.y)
          to label %bb.e unwind label %bb.i, !noalias !220 ; 12 uses

bb.e:                                             ; preds = %bb.d
  %i.aa = zext nneg i32 %i.z to i64               ; 12 uses
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !220
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.aa                ; 5 uses
  %.not.i.i = icmp ugt i64 %i.ad, 2147483647
  br i1 %.not.i.i, label %bb.f, label %_ZN8facebook5velox9functions12_GLOBAL__N_114RepeatFunction15checkTotalCountEm.exit.i, !prof !46

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27, !noalias !279
  store i64 %i.ad, ptr %40, align 16, !tbaa !28, !alias.scope !282, !noalias !279
  %i.ae = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i32 2147483647, ptr %i.ae, align 16, !tbaa !28, !alias.scope !282, !noalias !279
  %i.af = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i64 %i.ad, ptr %i.af, align 16, !tbaa !28, !alias.scope !282, !noalias !279
  %i.ag = getelementptr inbounds nuw i8, ptr %40, i64 48
  store i32 2147483647, ptr %i.ag, align 16, !tbaa !28, !alias.scope !282, !noalias !279
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr nonnull @.str.162, i64 67, i64 5140, ptr nonnull %40)
          to label %.noexc.i unwind label %bb.i, !noalias !220

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27, !noalias !279
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_114RepeatFunction15checkTotalCountEmE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %41, ptr nonnull @.str.162) #30
          to label %bb.g unwind label %bb.h, !noalias !220

bb.g:                                             ; preds = %.noexc.i
  unreachable

bb.h:                                             ; preds = %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxUserErrorE
  %i.ai = load ptr, ptr %41, align 8, !tbaa !47, !noalias !220 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !28, !noalias !220
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #29, !noalias !220
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27, !noalias !220
  br label %.body.i

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxUserErrorE
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 3 uses
  %i.ao = extractvalue { ptr, i32 } %eh.lpad-body.i, 1
  %i.ap = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxUserErrorE) #27
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.bw

bb.j:                                             ; preds = %.body.i
  %i.ar = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ar) #27, !noalias !220 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27, !noalias !220
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %42) #27, !noalias !220
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.k unwind label %bb.m, !noalias !220

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %42, align 8, !tbaa !285, !noalias !220
  %.not.i35.i = icmp eq ptr %i.at, null
  br i1 %.not.i35.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #27, !noalias !220
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %51, i8 0, i64 16, i1 false), !alias.scope !220
  invoke void @__cxa_end_catch()
          to label %bb.by unwind label %bb.cm

bb.m:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %42, align 8, !tbaa !285, !noalias !220
  %.not.i36.i = icmp eq ptr %i.av, null
  br i1 %.not.i36.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #27, !noalias !220
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !220
  invoke void @__cxa_end_catch()
          to label %bb.bw unwind label %bb.bx, !noalias !220

_ZN8facebook5velox9functions12_GLOBAL__N_114RepeatFunction15checkTotalCountEm.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27, !noalias !220
  %i.aw = trunc nuw nsw i64 %i.ad to i32
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !269, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27, !noalias !287
  store i32 0, ptr %39, align 4, !tbaa !28, !noalias !287
  %i.ay = getelementptr inbounds nuw i8, ptr %39, i64 4
  store i8 1, ptr %i.ay, align 4, !tbaa !290, !noalias !287
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %43, i64 noundef %i.ad, ptr noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(8) %39, i1 noundef zeroext false)
          to label %.noexc18 unwind label %bb.cm

.noexc18:                                         ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_114RepeatFunction15checkTotalCountEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27, !noalias !287
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27, !noalias !220
  %i.az = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !220
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !269, !noalias !220
  %i.bb = sext i32 %i.az to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27, !noalias !291
  store i32 0, ptr %38, align 4, !tbaa !28, !noalias !291
  %i.bc = getelementptr inbounds nuw i8, ptr %38, i64 4
  store i8 1, ptr %i.bc, align 4, !tbaa !290, !noalias !291
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %44, i64 noundef %i.bb, ptr noundef %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %38, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.bl, !noalias !220

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc72.i unwind label %bb.lr, !noalias !353

.noexc72.i:                                       ; preds = %bb.hh
  unreachable

bb.hi:                                            ; preds = %bb.hg
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amr, i64 16
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !303, !noalias !353 ; 6 uses
  %i.amx = load ptr, ptr %30, align 8, !tbaa !297, !noalias !353 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 44
  %i.amz = load i8, ptr %i.amy, align 4, !tbaa !298, !noalias !353
  %i.ana = and i8 %i.amz, 2
  %.not.i73.i = icmp eq i8 %i.ana, 0
  br i1 %.not.i73.i, label %bb.hk, label %bb.hj, !prof !51

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc74.i unwind label %bb.ls, !noalias !353

.noexc74.i:                                       ; preds = %bb.hj
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !303, !noalias !353 ; 6 uses
  %i.and = load ptr, ptr %31, align 8, !tbaa !297, !noalias !353 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 44
  %i.anf = load i8, ptr %i.ane, align 4, !tbaa !298, !noalias !353
  %i.ang = and i8 %i.anf, 2
  %.not.i76.i = icmp eq i8 %i.ang, 0
  br i1 %.not.i76.i, label %bb.hm, label %bb.hl, !prof !51

bb.hl:                                            ; preds = %bb.hk
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #30
          to label %.noexc77.i unwind label %bb.lt, !noalias !353

.noexc77.i:                                       ; preds = %bb.hl
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.anh = getelementptr inbounds nuw i8, ptr %i.and, i64 16
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !303, !noalias !353 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27, !noalias !353
  %i.anj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !421, !noalias !353 ; 2 uses
  %i.anl = load ptr, ptr %1, align 8, !tbaa !307, !noalias !353 ; 4 uses
  %i.anm = ptrtoint ptr %i.ank to i64
  %i.ann = ptrtoint ptr %i.anl to i64
  %i.ano = sub i64 %i.anm, %i.ann                 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %32, i8 0, i64 24, i1 false), !noalias !353
  %.not.i.i.i.i.i79.i = icmp eq ptr %i.ank, %i.anl
  br i1 %.not.i.i.i.i.i79.i, label %.thread.i, label %bb.hn

.thread.i:                                        ; preds = %bb.hm
  %i.anp = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.anq = getelementptr inbounds i8, ptr null, i64 %i.ano ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false), !noalias !353
  store ptr %i.anq, ptr %i.anr, align 8, !tbaa !422, !noalias !353
  br label %bb.hr

bb.hn:                                            ; preds = %bb.hm
  %i.ans = icmp ugt i64 %i.ano, 9223372036854775800
  br i1 %i.ans, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !46

.noexc.i.i.i.i:                                   ; preds = %bb.hn
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc80.i unwind label %bb.lu, !noalias !353

.noexc80.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.hn
  %i.ant = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ano) #28
          to label %.noexc81.i unwind label %bb.lu, !noalias !353 ; 5 uses

.noexc81.i:                                       ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.ant, ptr %32, align 8, !tbaa !307, !noalias !353
  %i.anu = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  store ptr %i.ant, ptr %i.anu, align 8, !tbaa !421, !noalias !353
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.ano ; 4 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  store ptr %i.anv, ptr %i.anw, align 8, !tbaa !422, !noalias !353
  %i.anx = icmp samesign ugt i64 %i.ano, 8
  br i1 %i.anx, label %bb.ho, label %bb.hp, !prof !423

bb.ho:                                            ; preds = %.noexc81.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ant, ptr align 8 %i.anl, i64 %i.ano, i1 false), !noalias !353
  br label %bb.hr

bb.hp:                                            ; preds = %.noexc81.i
  %i.any = icmp eq i64 %i.ano, 8
  br i1 %i.any, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.anz = load i64, ptr %i.anl, align 8, !tbaa !148, !noalias !353
  store i64 %i.anz, ptr %i.ant, align 8, !tbaa !148, !noalias !353
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp, %bb.ho, %.thread.i
  %i.aoa = phi ptr [ %i.anw, %bb.ho ], [ %i.anw, %bb.hp ], [ %i.anw, %bb.hq ], [ %i.anr, %.thread.i ] ; 2 uses
  %i.aob = phi ptr [ %i.anv, %bb.ho ], [ %i.anv, %bb.hp ], [ %i.anv, %bb.hq ], [ %i.anq, %.thread.i ]
  %i.aoc = phi ptr [ %i.anu, %bb.ho ], [ %i.anu, %bb.hp ], [ %i.anu, %bb.hq ], [ %i.anp, %.thread.i ]
  store ptr %i.aob, ptr %i.aoc, align 8, !tbaa !421, !noalias !353
  %i.aod = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.aod, ptr noundef nonnull align 8 dereferenceable(14) %i.aoe, i64 14, i1 false), !noalias !353
  invoke void @_ZNK8facebook5velox4exec7EvalCtx14deselectErrorsERNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(38) %32)
          to label %bb.hs unwind label %bb.lv, !noalias !353

bb.hs:                                            ; preds = %bb.hr
  %i.aof = getelementptr inbounds nuw i8, ptr %32, i64 36 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %32, i64 37
  %i.aoh = load i8, ptr %i.aog, align 1, !tbaa !304, !range !55, !noalias !353, !noundef !56
  %i.aoi = trunc nuw i8 %i.aoh to i1
  br i1 %i.aoi, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i123.i, label %bb.ht

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i123.i: ; preds = %bb.hs
  %.0.in.pre.i.i.i.i124.i = load i8, ptr %i.aof, align 4, !tbaa !72, !range !55, !noalias !353
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i84.i

bb.ht:                                            ; preds = %bb.hs
  %i.aoj = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !305, !noalias !353
  %i.aol = icmp eq i32 %i.aok, 0
  br i1 %i.aol, label %bb.hu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i

bb.hu:                                            ; preds = %bb.ht
  %i.aom = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.aon = load i32, ptr %i.aom, align 8, !tbaa !223, !noalias !353 ; 6 uses
  %i.aoo = load i32, ptr %i.aod, align 8, !tbaa !306, !noalias !353
  %i.aop = icmp eq i32 %i.aon, %i.aoo
  br i1 %i.aop, label %bb.hv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i

bb.hv:                                            ; preds = %bb.hu
  %i.aoq = load ptr, ptr %32, align 8, !tbaa !307, !noalias !353 ; 2 uses
  %.not.i.i.i.i.i115.i = icmp sgt i32 %i.aon, 0
  br i1 %.not.i.i.i.i.i115.i, label %bb.hw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i

bb.hw:                                            ; preds = %bb.hv
  %i.aor = and i32 %i.aon, 2147483584             ; 3 uses
  %i.aos = zext nneg i32 %i.aor to i64
  %.not37.i.i.not.i.i.i.i117.i314.not = icmp eq i32 %i.aor, 0
  br i1 %.not37.i.i.not.i.i.i.i117.i314.not, label %.critedge.i.i.i.i.i.i118.i, label %.lr.ph316

bb.hx:                                            ; preds = %.lr.ph316
  %indvars.iv.next.i.i.i.i122.i = add nuw nsw i64 %indvars.iv.i.i.i.i116.i315, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i117.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i122.i, %i.aos
  br i1 %.not37.i.i.not.i.i.i.i117.i, label %.lr.ph316, label %.critedge.i.i.i.i.i.i118.i, !llvm.loop !308

.lr.ph316:                                        ; preds = %bb.hw, %bb.hx
  %indvars.iv.i.i.i.i116.i315 = phi i64 [ %indvars.iv.next.i.i.i.i122.i, %bb.hx ], [ 0, %bb.hw ] ; 2 uses
  %i.aot = lshr exact i64 %indvars.iv.i.i.i.i116.i315, 3
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aoq, i64 %i.aot
  %i.aov = load i64, ptr %i.aou, align 8, !tbaa !148, !noalias !353
  %i.aow = icmp eq i64 %i.aov, -1
  br i1 %i.aow, label %bb.hx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i, !llvm.loop !308

.critedge.i.i.i.i.i.i118.i:                       ; preds = %bb.hx, %bb.hw
  %.not38.i.i.i.i.i.i119.i = icmp eq i32 %i.aon, %i.aor
  br i1 %.not38.i.i.i.i.i.i119.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i, label %bb.hy

bb.hy:                                            ; preds = %.critedge.i.i.i.i.i.i118.i
  %i.aox = lshr i32 %i.aon, 6
  %i.aoy = and i32 %i.aon, 63
  %i.aoz = zext nneg i32 %i.aoy to i64
  %notmask.i40.i.i.i.i.i.i120.i = shl nsw i64 -1, %i.aoz
  %i.apa = zext nneg i32 %i.aox to i64
  %i.apb = getelementptr inbounds nuw [8 x i8], ptr %i.aoq, i64 %i.apa
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !148, !noalias !353
  %.demorgan.i.i.i.i121.i = or i64 %i.apc, %notmask.i40.i.i.i.i.i.i120.i
  %i.apd = icmp eq i64 %.demorgan.i.i.i.i121.i, -1
  %i.ape = zext i1 %i.apd to i16
  %i.apf = or disjoint i16 %i.ape, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i: ; preds = %.lr.ph316, %bb.hy, %.critedge.i.i.i.i.i.i118.i, %bb.hv, %bb.hu, %bb.ht
  %.sroa.0.0.insert.ext.i.i.i.i83.i = phi i16 [ 256, %bb.hu ], [ 256, %bb.ht ], [ 257, %bb.hv ], [ 257, %.critedge.i.i.i.i.i.i118.i ], [ %i.apf, %bb.hy ], [ 256, %.lr.ph316 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i83.i, ptr %i.aof, align 4, !noalias !353
  %i.apg = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i83.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i84.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i84.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i123.i
  %.0.in.i.i.i.i85.i = phi i8 [ %.0.in.pre.i.i.i.i124.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i123.i ], [ %i.apg, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i82.i ]
  %.0.i.i.i.i86.i = trunc nuw i8 %.0.in.i.i.i.i85.i to i1
  br i1 %.0.i.i.i.i86.i, label %bb.hz, label %bb.ij

bb.hz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i84.i
  %i.aph = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.api = load i32, ptr %i.aph, align 8, !tbaa !223, !noalias !353 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !305, !noalias !353 ; 2 uses
  %i.apl = icmp slt i32 %i.apk, %i.api
  br i1 %i.apl, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i: ; preds = %bb.hz
  %.not.i50.i.i = icmp eq ptr %.0.i, null
  %.pre9.i53.i.pre290.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i
  %.pre9.i53.i.i = phi ptr [ %.pre9.i53.i291.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i ], [ %.pre9.i53.i.pre290.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i ] ; 11 uses
  %.014.i.i.i.i.a = phi i32 [ %.15.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i ], [ 0, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i ] ; 4 uses
  %.014.i.i.i.i = phi i32 [ %i.asp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i ], [ %i.apk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.preheader.i ] ; 10 uses
  br i1 %.not.i50.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i, label %bb.ia

bb.ia:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i
  %i.apm = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 24
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !365, !noalias !353 ; 4 uses
  %.not.i.i54.i.i = icmp eq ptr %i.apn, null
  br i1 %.not.i.i54.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.apo = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 58
  %i.app = load i8, ptr %i.apo, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.apq = trunc nuw i8 %i.app to i1
  %i.apr = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 57
  %i.aps = load i8, ptr %i.apr, align 1, !range !55, !noalias !353
  %i.apt = trunc nuw i8 %i.aps to i1
  %or.cond.i.i55.i.i = select i1 %i.apq, i1 true, i1 %i.apt
  br i1 %or.cond.i.i55.i.i, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.apu = zext i32 %.014.i.i.i.i to i64          ; 2 uses
  %i.apv = lshr i64 %i.apu, 6
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.apv
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !148, !noalias !353
  %i.apy = and i64 %i.apu, 63
  %i.apz = shl nuw i64 1, %i.apy
  %i.aqa = and i64 %i.apx, %i.apz
  %.not.i.i.i71.i.i = icmp eq i64 %i.aqa, 0
  br i1 %.not.i.i.i71.i.i, label %bb.if, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i

bb.id:                                            ; preds = %bb.ib
  %i.aqb = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 59
  %i.aqc = load i8, ptr %i.aqb, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.aqd = trunc nuw i8 %i.aqc to i1
  br i1 %i.aqd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i69.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aqe = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 8
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !379, !noalias !353
  %i.aqg = sext i32 %.014.i.i.i.i to i64
  %i.aqh = getelementptr inbounds [4 x i8], ptr %i.aqf, i64 %i.aqg
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !3, !noalias !353
  %i.aqj = zext i32 %i.aqi to i64                 ; 2 uses
  %i.aqk = lshr i64 %i.aqj, 6
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.aqk
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !148, !noalias !353
  %i.aqn = and i64 %i.aqj, 63
  %i.aqo = shl nuw i64 1, %i.aqn
  %i.aqp = and i64 %i.aqo, %i.aqm
  %.not.i7.i.i56.i.i = icmp eq i64 %i.aqp, 0
  br i1 %.not.i7.i.i56.i.i, label %bb.if, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i69.i.i: ; preds = %bb.id
  %i.aqq = load i64, ptr %i.apn, align 8, !tbaa !148, !noalias !353
  %i.aqr = and i64 %i.aqq, 1
  %.not.i6.i.i70.i.i = icmp eq i64 %i.aqr, 0
  br i1 %.not.i6.i.i70.i.i, label %bb.if, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i

bb.if:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i69.i.i, %bb.ie, %bb.ic
  %i.aqs = zext i32 %.014.i.i.i.i to i64          ; 2 uses
  %i.aqt = and i64 %i.aqs, 7
  %i.aqu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aqt
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !28, !noalias !353
  %i.aqw = lshr i64 %i.aqs, 3
  %i.aqx = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.aqw ; 2 uses
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !28, !noalias !353
  %i.aqz = and i8 %i.aqy, %i.aqv
  store i8 %i.aqz, ptr %i.aqx, align 1, !tbaa !28, !noalias !353
  %.pre9.i53.i.pre.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i69.i.i, %bb.ie, %bb.ic, %bb.ia, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i
  %i.ara = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 16
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !377, !noalias !353
  %i.arc = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 58
  %i.ard = load i8, ptr %i.arc, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.are = trunc nuw i8 %i.ard to i1
  br i1 %i.are, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i, label %bb.ig

bb.ig:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i
  %i.arf = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 59
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.arh = trunc nuw i8 %i.arg to i1
  br i1 %i.arh, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.ari = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 64
  %i.arj = load i32, ptr %i.ari, align 8, !tbaa !380, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i

bb.ii:                                            ; preds = %bb.ig
  %i.ark = getelementptr inbounds nuw i8, ptr %.pre9.i53.i.i, i64 8
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !379, !noalias !353
  %i.arm = sext i32 %.014.i.i.i.i to i64
  %i.arn = getelementptr inbounds [4 x i8], ptr %i.arl, i64 %i.arm
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !3, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i: ; preds = %bb.ii, %bb.ih, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i
  %.0.i.i.i59.i.i = phi i32 [ %i.aro, %bb.ii ], [ %i.arj, %bb.ih ], [ %.014.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i57.i.i ]
  %i.arp = sext i32 %.0.i.i.i59.i.i to i64
  %i.arq = getelementptr inbounds [4 x i8], ptr %i.arb, i64 %i.arp
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !3, !noalias !353 ; 2 uses
  %spec.store.select.i60.i.i = call i32 @llvm.smax.i32(i32 %i.arr, i32 0) ; 3 uses
  %i.ars = sext i32 %.014.i.i.i.i to i64          ; 2 uses
  %i.art = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.ars
  store i32 %spec.store.select.i60.i.i, ptr %i.art, align 4, !tbaa !3, !noalias !353
  %i.aru = getelementptr inbounds [4 x i8], ptr %i.ani, i64 %i.ars
  store i32 %.014.i.i.i.i.a, ptr %i.aru, align 4, !tbaa !3, !noalias !353
  %i.arv = zext nneg i32 %.014.i.i.i.i.a to i64
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %i.arv ; 6 uses
  %i.arx = zext nneg i32 %spec.store.select.i60.i.i to i64
  %.idx.i61.i.i = shl nuw nsw i64 %i.arx, 2       ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arw, i64 %.idx.i61.i.i
  %.not5.i.i.i.i62.i.i = icmp slt i32 %i.arr, 1
  br i1 %.not5.i.i.i.i62.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i68.i.i, label %iter.check469

iter.check469:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i
  %i.arz = add nsw i64 %.idx.i61.i.i, -4          ; 3 uses
  %i.asa = lshr exact i64 %i.arz, 2
  %i.asb = add nuw nsw i64 %i.asa, 1              ; 5 uses
  %min.iters.check454 = icmp ult i64 %i.arz, 28
  br i1 %min.iters.check454, label %.lr.ph.i.i.i.i63.i.i.preheader, label %vector.main.loop.iter.check455

vector.main.loop.iter.check455:                   ; preds = %iter.check469
  %min.iters.check456 = icmp ult i64 %i.arz, 124
  br i1 %min.iters.check456, label %vec.epilog.ph473, label %vector.ph457

vector.ph457:                                     ; preds = %vector.main.loop.iter.check455
  %n.mod.vf458 = and i64 %i.asb, 24
  %n.vec459 = and i64 %i.asb, 9223372036854775776 ; 4 uses
  %i.asc = shl i64 %n.vec459, 2
  %i.asd = getelementptr i8, ptr %i.arw, i64 %i.asc
  %broadcast.splatinsert460 = insertelement <8 x i32> poison, i32 %.014.i.i.i.i, i64 0
  %broadcast.splat461 = shufflevector <8 x i32> %broadcast.splatinsert460, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph457
  %index463 = phi i64 [ 0, %vector.ph457 ], [ %index.next465, %vector.body462 ] ; 2 uses
  %i.ase = shl i64 %index463, 2
  %next.gep464 = getelementptr i8, ptr %i.arw, i64 %i.ase ; 4 uses
  %i.asf = getelementptr i8, ptr %next.gep464, i64 32
  %i.asg = getelementptr i8, ptr %next.gep464, i64 64
  %i.ash = getelementptr i8, ptr %next.gep464, i64 96
  store <8 x i32> %broadcast.splat461, ptr %next.gep464, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat461, ptr %i.asf, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat461, ptr %i.asg, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat461, ptr %i.ash, align 4, !tbaa !3, !noalias !353
  %index.next465 = add nuw i64 %index463, 32      ; 2 uses
  %i.asi = icmp eq i64 %index.next465, %n.vec459
  br i1 %i.asi, label %middle.block466, label %vector.body462, !llvm.loop !424

middle.block466:                                  ; preds = %vector.body462
  %cmp.n467 = icmp eq i64 %i.asb, %n.vec459
  br i1 %cmp.n467, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i68.i.i, label %vec.epilog.iter.check471

vec.epilog.iter.check471:                         ; preds = %middle.block466
  %min.epilog.iters.check472 = icmp eq i64 %n.mod.vf458, 0
  br i1 %min.epilog.iters.check472, label %.lr.ph.i.i.i.i63.i.i.preheader, label %vec.epilog.ph473, !prof !312

vec.epilog.ph473:                                 ; preds = %vector.main.loop.iter.check455, %vec.epilog.iter.check471
  %vec.epilog.resume.val468 = phi i64 [ %n.vec459, %vec.epilog.iter.check471 ], [ 0, %vector.main.loop.iter.check455 ]
  %n.vec475 = and i64 %i.asb, 9223372036854775800 ; 3 uses
  %i.asj = shl i64 %n.vec475, 2
  %i.ask = getelementptr i8, ptr %i.arw, i64 %i.asj
  %broadcast.splatinsert476 = insertelement <8 x i32> poison, i32 %.014.i.i.i.i, i64 0
  %broadcast.splat477 = shufflevector <8 x i32> %broadcast.splatinsert476, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body478

vec.epilog.vector.body478:                        ; preds = %vec.epilog.vector.body478, %vec.epilog.ph473
  %index479 = phi i64 [ %vec.epilog.resume.val468, %vec.epilog.ph473 ], [ %index.next481, %vec.epilog.vector.body478 ] ; 2 uses
  %i.asl = shl i64 %index479, 2
  %next.gep480 = getelementptr i8, ptr %i.arw, i64 %i.asl
  store <8 x i32> %broadcast.splat477, ptr %next.gep480, align 4, !tbaa !3, !noalias !353
  %index.next481 = add nuw i64 %index479, 8       ; 2 uses
  %i.asm = icmp eq i64 %index.next481, %n.vec475
  br i1 %i.asm, label %vec.epilog.middle.block482, label %vec.epilog.vector.body478, !llvm.loop !425

vec.epilog.middle.block482:                       ; preds = %vec.epilog.vector.body478
  %cmp.n483 = icmp eq i64 %i.asb, %n.vec475
  br i1 %cmp.n483, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i68.i.i, label %.lr.ph.i.i.i.i63.i.i.preheader

.lr.ph.i.i.i.i63.i.i.preheader:                   ; preds = %iter.check469, %vec.epilog.iter.check471, %vec.epilog.middle.block482
  %.06.i.i.i.i64.i.i.ph = phi ptr [ %i.arw, %iter.check469 ], [ %i.asd, %vec.epilog.iter.check471 ], [ %i.ask, %vec.epilog.middle.block482 ]
  br label %.lr.ph.i.i.i.i63.i.i

.lr.ph.i.i.i.i63.i.i:                             ; preds = %.lr.ph.i.i.i.i63.i.i.preheader, %.lr.ph.i.i.i.i63.i.i
  %.06.i.i.i.i64.i.i = phi ptr [ %i.asn, %.lr.ph.i.i.i.i63.i.i ], [ %.06.i.i.i.i64.i.i.ph, %.lr.ph.i.i.i.i63.i.i.preheader ] ; 2 uses
  store i32 %.014.i.i.i.i, ptr %.06.i.i.i.i64.i.i, align 4, !tbaa !3, !noalias !353
  %i.asn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i64.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i65.i.i = icmp eq ptr %i.asn, %i.ary
  br i1 %.not.i.i.i.i65.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i68.i.i, label %.lr.ph.i.i.i.i63.i.i, !llvm.loop !426

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i68.i.i:           ; preds = %.lr.ph.i.i.i.i63.i.i, %middle.block466, %vec.epilog.middle.block482, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i58.i.i
  %i.aso = add nuw nsw i32 %spec.store.select.i60.i.i, %.014.i.i.i.i.a
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i68.i.i, %bb.if
  %.pre9.i53.i291.i = phi ptr [ %.pre9.i53.i.i, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i68.i.i ], [ %.pre9.i53.i.pre.i, %bb.if ]
  %.15.i = phi i32 [ %i.aso, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i68.i.i ], [ %.014.i.i.i.i.a, %bb.if ]
  %i.asp = add i32 %.014.i.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i114.i = icmp eq i32 %i.asp, %i.api
  br i1 %exitcond.not.i.i.i114.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i, !llvm.loop !427

bb.ij:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i84.i
  %i.asq = load ptr, ptr %32, align 8, !tbaa !307, !noalias !353 ; 4 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %32, i64 28
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !305, !noalias !353 ; 6 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.asu = load i32, ptr %i.ast, align 8, !tbaa !223, !noalias !353 ; 7 uses
  %.not.i.i.i.i.i.i87.i = icmp slt i32 %i.ass, %i.asu
  br i1 %.not.i.i.i.i.i.i87.i, label %bb.ik, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i

bb.ik:                                            ; preds = %bb.ij
  %i.asv = add i32 %i.ass, 63                     ; 2 uses
  %i.asw = srem i32 %i.asv, 64
  %i.asx = sub nsw i32 %i.asv, %i.asw             ; 6 uses
  %i.asy = and i32 %i.asu, -64                    ; 6 uses
  %i.asz = icmp slt i32 %i.asy, %i.asx
  br i1 %i.asz, label %bb.il, label %bb.iv

bb.il:                                            ; preds = %bb.ik
  %i.ata = ashr i32 %i.asu, 6
  %i.atb = and i32 %i.asu, 63
  %i.atc = zext nneg i32 %i.atb to i64
  %notmask.i.i.i.i.i.i.i111.i = shl nsw i64 -1, %i.atc
  %i.atd = xor i64 %notmask.i.i.i.i.i.i.i111.i, -1
  %i.ate = sub nsw i32 %i.asx, %i.ass             ; 2 uses
  %i.atf = zext nneg i32 %i.ate to i64
  %notmask.i.i.i.i.i.i.i.i112.i = shl nsw i64 -1, %i.atf
  %i.atg = xor i64 %notmask.i.i.i.i.i.i.i.i112.i, -1
  %i.ath = sub nsw i32 64, %i.ate
  %i.ati = zext nneg i32 %i.ath to i64
  %i.atj = shl i64 %i.atg, %i.ati
  %i.atk = and i64 %i.atj, %i.atd
  %i.atl = sext i32 %i.ata to i64
  %i.atm = getelementptr inbounds [8 x i8], ptr %i.asq, i64 %i.atl
  %i.atn = load i64, ptr %i.atm, align 8, !tbaa !148, !noalias !353
  %i.ato = and i64 %i.atk, %i.atn                 ; 2 uses
  %.not.i.i.i.i.i.i.i113.i = icmp eq i64 %i.ato, 0
  br i1 %.not.i.i.i.i.i.i.i113.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.preheader.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.preheader.i: ; preds = %bb.il
  %.not.i27.i.i = icmp eq ptr %.0.i, null
  %.pre9.i30.i.pre287.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit49.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.preheader.i
  %.pre9.i30.i.i = phi ptr [ %.pre9.i30.i288.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit49.i.i ], [ %.pre9.i30.i.pre287.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.preheader.i ] ; 11 uses
  %.12.i = phi i32 [ %.13.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit49.i.i ], [ 0, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %.017.i.i.i.i.i.i.i.i47 = phi i64 [ %i.aww, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit49.i.i ], [ %i.ato, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.atp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i.i.i.i.i.i.i.i47, i1 true)
  %i.atq = trunc nuw nsw i64 %i.atp to i32
  %i.atr = or disjoint i32 %i.asy, %i.atq         ; 9 uses
  br i1 %.not.i27.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34.i.i, label %bb.im

bb.im:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.i
  %i.ats = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 24
  %i.att = load ptr, ptr %i.ats, align 8, !tbaa !365, !noalias !353 ; 4 uses
  %.not.i.i31.i.i = icmp eq ptr %i.att, null
  br i1 %.not.i.i31.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.atu = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 58
  %i.atv = load i8, ptr %i.atu, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.atw = trunc nuw i8 %i.atv to i1
  %i.atx = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 57
  %i.aty = load i8, ptr %i.atx, align 1, !range !55, !noalias !353
  %i.atz = trunc nuw i8 %i.aty to i1
  %or.cond.i.i32.i.i = select i1 %i.atw, i1 true, i1 %i.atz
  br i1 %or.cond.i.i32.i.i, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.aua = zext i32 %i.atr to i64                 ; 2 uses
  %i.aub = lshr i64 %i.aua, 6
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %i.att, i64 %i.aub
  %i.aud = load i64, ptr %i.auc, align 8, !tbaa !148, !noalias !353
  %i.aue = and i64 %i.aua, 63
  %i.auf = shl nuw i64 1, %i.aue
  %i.aug = and i64 %i.aud, %i.auf
  %.not.i.i.i48.i.i = icmp eq i64 %i.aug, 0
  br i1 %.not.i.i.i48.i.i, label %bb.ir, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34.i.i

bb.ip:                                            ; preds = %bb.in
  %i.auh = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 59
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.auj = trunc nuw i8 %i.aui to i1
  br i1 %i.auj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i46.i.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.auk = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 8
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !379, !noalias !353
  %i.aum = sext i32 %i.atr to i64
  %i.aun = getelementptr inbounds [4 x i8], ptr %i.aul, i64 %i.aum
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !3, !noalias !353
  %i.aup = zext i32 %i.auo to i64                 ; 2 uses
  %i.auq = lshr i64 %i.aup, 6
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.att, i64 %i.auq
  %i.aus = load i64, ptr %i.aur, align 8, !tbaa !148, !noalias !353
  %i.aut = and i64 %i.aup, 63
  %i.auu = shl nuw i64 1, %i.aut
  %i.auv = and i64 %i.auu, %i.aus
  %.not.i7.i.i33.i.i = icmp eq i64 %i.auv, 0
  br i1 %.not.i7.i.i33.i.i, label %bb.ir, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i46.i.i: ; preds = %bb.ip
  %i.auw = load i64, ptr %i.att, align 8, !tbaa !148, !noalias !353
  %i.aux = and i64 %i.auw, 1
  %.not.i6.i.i47.i.i = icmp eq i64 %i.aux, 0
  br i1 %.not.i6.i.i47.i.i, label %bb.ir, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34.i.i

bb.ir:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i46.i.i, %bb.iq, %bb.io
  %i.auy = zext i32 %i.atr to i64                 ; 2 uses
  %i.auz = and i64 %i.auy, 7
  %i.ava = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.auz
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !28, !noalias !353
  %i.avc = lshr i64 %i.auy, 3
  %i.avd = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.avc ; 2 uses
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !28, !noalias !353
  %i.avf = and i8 %i.ave, %i.avb
  store i8 %i.avf, ptr %i.avd, align 1, !tbaa !28, !noalias !353
  %.pre9.i30.i.pre.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit49.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i46.i.i, %bb.iq, %bb.io, %bb.im, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.i
  %i.avg = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 16
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !377, !noalias !353
  %i.avi = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 58
  %i.avj = load i8, ptr %i.avi, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.avk = trunc nuw i8 %i.avj to i1
  br i1 %i.avk, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i35.i.i, label %bb.is

bb.is:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34.i.i
  %i.avl = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 59
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.avn = trunc nuw i8 %i.avm to i1
  br i1 %i.avn, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.avo = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 64
  %i.avp = load i32, ptr %i.avo, align 8, !tbaa !380, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i35.i.i

bb.iu:                                            ; preds = %bb.is
  %i.avq = getelementptr inbounds nuw i8, ptr %.pre9.i30.i.i, i64 8
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !379, !noalias !353
  %i.avs = sext i32 %i.atr to i64
  %i.avt = getelementptr inbounds [4 x i8], ptr %i.avr, i64 %i.avs
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !3, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i35.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i35.i.i: ; preds = %bb.iu, %bb.it, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34.i.i
  %.0.i.i.i36.i.i = phi i32 [ %i.avu, %bb.iu ], [ %i.avp, %bb.it ], [ %i.atr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i34.i.i ]
  %i.avv = sext i32 %.0.i.i.i36.i.i to i64
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.avh, i64 %i.avv
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !3, !noalias !353 ; 2 uses
  %spec.store.select.i37.i.i = call i32 @llvm.smax.i32(i32 %i.avx, i32 0) ; 3 uses
  %i.avy = sext i32 %i.atr to i64                 ; 2 uses
  %i.avz = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.avy
  store i32 %spec.store.select.i37.i.i, ptr %i.avz, align 4, !tbaa !3, !noalias !353
  %i.awa = getelementptr inbounds [4 x i8], ptr %i.ani, i64 %i.avy
  store i32 %.12.i, ptr %i.awa, align 4, !tbaa !3, !noalias !353
  %i.awb = zext nneg i32 %.12.i to i64
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %i.awb ; 6 uses
  %i.awd = zext nneg i32 %spec.store.select.i37.i.i to i64
  %.idx.i38.i.i = shl nuw nsw i64 %i.awd, 2       ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awc, i64 %.idx.i38.i.i
  %.not5.i.i.i.i39.i.i = icmp slt i32 %i.avx, 1
  br i1 %.not5.i.i.i.i39.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i45.i.i, label %iter.check438

iter.check438:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i35.i.i
  %i.awf = add nsw i64 %.idx.i38.i.i, -4          ; 3 uses
  %i.awg = lshr exact i64 %i.awf, 2
  %i.awh = add nuw nsw i64 %i.awg, 1              ; 5 uses
  %min.iters.check423 = icmp ult i64 %i.awf, 28
  br i1 %min.iters.check423, label %.lr.ph.i.i.i.i40.i.i.preheader, label %vector.main.loop.iter.check424

vector.main.loop.iter.check424:                   ; preds = %iter.check438
  %min.iters.check425 = icmp ult i64 %i.awf, 124
  br i1 %min.iters.check425, label %vec.epilog.ph442, label %vector.ph426

vector.ph426:                                     ; preds = %vector.main.loop.iter.check424
  %n.mod.vf427 = and i64 %i.awh, 24
  %n.vec428 = and i64 %i.awh, 9223372036854775776 ; 4 uses
  %i.awi = shl i64 %n.vec428, 2
  %i.awj = getelementptr i8, ptr %i.awc, i64 %i.awi
  %broadcast.splatinsert429 = insertelement <8 x i32> poison, i32 %i.atr, i64 0
  %broadcast.splat430 = shufflevector <8 x i32> %broadcast.splatinsert429, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph426
  %index432 = phi i64 [ 0, %vector.ph426 ], [ %index.next434, %vector.body431 ] ; 2 uses
  %i.awk = shl i64 %index432, 2
  %next.gep433 = getelementptr i8, ptr %i.awc, i64 %i.awk ; 4 uses
  %i.awl = getelementptr i8, ptr %next.gep433, i64 32
  %i.awm = getelementptr i8, ptr %next.gep433, i64 64
  %i.awn = getelementptr i8, ptr %next.gep433, i64 96
  store <8 x i32> %broadcast.splat430, ptr %next.gep433, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat430, ptr %i.awl, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat430, ptr %i.awm, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat430, ptr %i.awn, align 4, !tbaa !3, !noalias !353
  %index.next434 = add nuw i64 %index432, 32      ; 2 uses
  %i.awo = icmp eq i64 %index.next434, %n.vec428
  br i1 %i.awo, label %middle.block435, label %vector.body431, !llvm.loop !428

middle.block435:                                  ; preds = %vector.body431
  %cmp.n436 = icmp eq i64 %i.awh, %n.vec428
  br i1 %cmp.n436, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i45.i.i, label %vec.epilog.iter.check440

vec.epilog.iter.check440:                         ; preds = %middle.block435
  %min.epilog.iters.check441 = icmp eq i64 %n.mod.vf427, 0
  br i1 %min.epilog.iters.check441, label %.lr.ph.i.i.i.i40.i.i.preheader, label %vec.epilog.ph442, !prof !312

vec.epilog.ph442:                                 ; preds = %vector.main.loop.iter.check424, %vec.epilog.iter.check440
  %vec.epilog.resume.val437 = phi i64 [ %n.vec428, %vec.epilog.iter.check440 ], [ 0, %vector.main.loop.iter.check424 ]
  %n.vec444 = and i64 %i.awh, 9223372036854775800 ; 3 uses
  %i.awp = shl i64 %n.vec444, 2
  %i.awq = getelementptr i8, ptr %i.awc, i64 %i.awp
  %broadcast.splatinsert445 = insertelement <8 x i32> poison, i32 %i.atr, i64 0
  %broadcast.splat446 = shufflevector <8 x i32> %broadcast.splatinsert445, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body447

vec.epilog.vector.body447:                        ; preds = %vec.epilog.vector.body447, %vec.epilog.ph442
  %index448 = phi i64 [ %vec.epilog.resume.val437, %vec.epilog.ph442 ], [ %index.next450, %vec.epilog.vector.body447 ] ; 2 uses
  %i.awr = shl i64 %index448, 2
  %next.gep449 = getelementptr i8, ptr %i.awc, i64 %i.awr
  store <8 x i32> %broadcast.splat446, ptr %next.gep449, align 4, !tbaa !3, !noalias !353
  %index.next450 = add nuw i64 %index448, 8       ; 2 uses
  %i.aws = icmp eq i64 %index.next450, %n.vec444
  br i1 %i.aws, label %vec.epilog.middle.block451, label %vec.epilog.vector.body447, !llvm.loop !429

vec.epilog.middle.block451:                       ; preds = %vec.epilog.vector.body447
  %cmp.n452 = icmp eq i64 %i.awh, %n.vec444
  br i1 %cmp.n452, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i45.i.i, label %.lr.ph.i.i.i.i40.i.i.preheader

.lr.ph.i.i.i.i40.i.i.preheader:                   ; preds = %iter.check438, %vec.epilog.iter.check440, %vec.epilog.middle.block451
  %.06.i.i.i.i41.i.i.ph = phi ptr [ %i.awc, %iter.check438 ], [ %i.awj, %vec.epilog.iter.check440 ], [ %i.awq, %vec.epilog.middle.block451 ]
  br label %.lr.ph.i.i.i.i40.i.i

.lr.ph.i.i.i.i40.i.i:                             ; preds = %.lr.ph.i.i.i.i40.i.i.preheader, %.lr.ph.i.i.i.i40.i.i
  %.06.i.i.i.i41.i.i = phi ptr [ %i.awt, %.lr.ph.i.i.i.i40.i.i ], [ %.06.i.i.i.i41.i.i.ph, %.lr.ph.i.i.i.i40.i.i.preheader ] ; 2 uses
  store i32 %i.atr, ptr %.06.i.i.i.i41.i.i, align 4, !tbaa !3, !noalias !353
  %i.awt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i41.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i42.i.i = icmp eq ptr %i.awt, %i.awe
  br i1 %.not.i.i.i.i42.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i45.i.i, label %.lr.ph.i.i.i.i40.i.i, !llvm.loop !430

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i45.i.i:           ; preds = %.lr.ph.i.i.i.i40.i.i, %middle.block435, %vec.epilog.middle.block451, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i35.i.i
  %i.awu = add nuw nsw i32 %spec.store.select.i37.i.i, %.12.i
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit49.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit49.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i45.i.i, %bb.ir
  %.pre9.i30.i288.i = phi ptr [ %.pre9.i30.i.i, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i45.i.i ], [ %.pre9.i30.i.pre.i, %bb.ir ]
  %.13.i = phi i32 [ %i.awu, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i45.i.i ], [ %.12.i, %bb.ir ]
  %i.awv = add nsw i64 %.017.i.i.i.i.i.i.i.i47, -1
  %i.aww = and i64 %i.awv, %.017.i.i.i.i.i.i.i.i47 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i48 = icmp eq i64 %i.aww, 0
  br i1 %.not10.i.i.i.i.i.i.i.i48, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i.i, !llvm.loop !431

bb.iv:                                            ; preds = %bb.ik
  %.not32.i.i.i.i.i.i88.i = icmp eq i32 %i.ass, %i.asx
  br i1 %.not32.i.i.i.i.i.i88.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit41.i.i.i.i.i.i.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.awx = sdiv i32 %i.ass, 64                    ; 2 uses
  %i.awy = sub nsw i32 %i.asx, %i.ass             ; 2 uses
  %i.awz = zext nneg i32 %i.awy to i64
  %notmask.i.i35.i.i.i.i.i.i89.i = shl nsw i64 -1, %i.awz
  %i.axa = xor i64 %notmask.i.i35.i.i.i.i.i.i89.i, -1
  %i.axb = sub nsw i32 64, %i.awy
  %i.axc = zext nneg i32 %i.axb to i64
  %i.axd = shl i64 %i.axa, %i.axc
  %i.axe = sext i32 %i.awx to i64
  %i.axf = getelementptr inbounds [8 x i8], ptr %i.asq, i64 %i.axe
  %i.axg = load i64, ptr %i.axf, align 8, !tbaa !148, !noalias !353
  %i.axh = and i64 %i.axg, %i.axd                 ; 2 uses
  %.not.i36.i.i.i.i.i.i.i36 = icmp eq i64 %i.axh, 0
  br i1 %.not.i36.i.i.i.i.i.i.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit41.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i37

.preheader.i37.i.i.i.i.i.i.i37:                   ; preds = %bb.iw
  %i.axi = shl nsw i32 %i.awx, 6
  %.not.i4.i.i = icmp eq ptr %.0.i, null
  %.pre9.i7.i.pre275.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i38.i.i.i.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i38.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit26.i.i, %.preheader.i37.i.i.i.i.i.i.i37
  %.pre9.i7.i.i = phi ptr [ %.pre9.i7.i.pre275.i, %.preheader.i37.i.i.i.i.i.i.i37 ], [ %.pre9.i7.i276.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit26.i.i ] ; 11 uses
  %.0228.i = phi i32 [ 0, %.preheader.i37.i.i.i.i.i.i.i37 ], [ %.1.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit26.i.i ] ; 4 uses
  %.017.i39.i.i.i.i.i.i.i = phi i64 [ %i.axh, %.preheader.i37.i.i.i.i.i.i.i37 ], [ %i.baq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit26.i.i ] ; 3 uses
  %i.axj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i39.i.i.i.i.i.i.i, i1 true)
  %i.axk = trunc nuw nsw i64 %i.axj to i32
  %i.axl = or disjoint i32 %i.axi, %i.axk         ; 9 uses
  br i1 %.not.i4.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i11.i.i, label %bb.ix

bb.ix:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i38.i.i.i.i.i.i.i
  %i.axm = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 24
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !365, !noalias !353 ; 4 uses
  %.not.i.i8.i.i = icmp eq ptr %i.axn, null
  br i1 %.not.i.i8.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i11.i.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.axo = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 58
  %i.axp = load i8, ptr %i.axo, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.axq = trunc nuw i8 %i.axp to i1
  %i.axr = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 57
  %i.axs = load i8, ptr %i.axr, align 1, !range !55, !noalias !353
  %i.axt = trunc nuw i8 %i.axs to i1
  %or.cond.i.i9.i.i = select i1 %i.axq, i1 true, i1 %i.axt
  br i1 %or.cond.i.i9.i.i, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.axu = zext i32 %i.axl to i64                 ; 2 uses
  %i.axv = lshr i64 %i.axu, 6
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.axn, i64 %i.axv
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !148, !noalias !353
  %i.axy = and i64 %i.axu, 63
  %i.axz = shl nuw i64 1, %i.axy
  %i.aya = and i64 %i.axx, %i.axz
  %.not.i.i.i25.i.i = icmp eq i64 %i.aya, 0
  br i1 %.not.i.i.i25.i.i, label %bb.jc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i11.i.i

bb.ja:                                            ; preds = %bb.iy
  %i.ayb = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 59
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.ayd = trunc nuw i8 %i.ayc to i1
  br i1 %i.ayd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23.i.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aye = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 8
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !379, !noalias !353
  %i.ayg = sext i32 %i.axl to i64
  %i.ayh = getelementptr inbounds [4 x i8], ptr %i.ayf, i64 %i.ayg
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !3, !noalias !353
  %i.ayj = zext i32 %i.ayi to i64                 ; 2 uses
  %i.ayk = lshr i64 %i.ayj, 6
  %i.ayl = getelementptr inbounds nuw [8 x i8], ptr %i.axn, i64 %i.ayk
  %i.aym = load i64, ptr %i.ayl, align 8, !tbaa !148, !noalias !353
  %i.ayn = and i64 %i.ayj, 63
  %i.ayo = shl nuw i64 1, %i.ayn
  %i.ayp = and i64 %i.ayo, %i.aym
  %.not.i7.i.i10.i.i = icmp eq i64 %i.ayp, 0
  br i1 %.not.i7.i.i10.i.i, label %bb.jc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i11.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23.i.i: ; preds = %bb.ja
  %i.ayq = load i64, ptr %i.axn, align 8, !tbaa !148, !noalias !353
  %i.ayr = and i64 %i.ayq, 1
  %.not.i6.i.i24.i.i = icmp eq i64 %i.ayr, 0
  br i1 %.not.i6.i.i24.i.i, label %bb.jc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i11.i.i

bb.jc:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23.i.i, %bb.jb, %bb.iz
  %i.ays = zext i32 %i.axl to i64                 ; 2 uses
  %i.ayt = and i64 %i.ays, 7
  %i.ayu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ayt
  %i.ayv = load i8, ptr %i.ayu, align 1, !tbaa !28, !noalias !353
  %i.ayw = lshr i64 %i.ays, 3
  %i.ayx = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ayw ; 2 uses
  %i.ayy = load i8, ptr %i.ayx, align 1, !tbaa !28, !noalias !353
  %i.ayz = and i8 %i.ayy, %i.ayv
  store i8 %i.ayz, ptr %i.ayx, align 1, !tbaa !28, !noalias !353
  %.pre9.i7.i.pre.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit26.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i11.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i23.i.i, %bb.jb, %bb.iz, %bb.ix, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i38.i.i.i.i.i.i.i
  %i.aza = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 16
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !377, !noalias !353
  %i.azc = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 58
  %i.azd = load i8, ptr %i.azc, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.aze = trunc nuw i8 %i.azd to i1
  br i1 %i.aze, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i12.i.i, label %bb.jd

bb.jd:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i11.i.i
  %i.azf = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 59
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.azh = trunc nuw i8 %i.azg to i1
  br i1 %i.azh, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.azi = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 64
  %i.azj = load i32, ptr %i.azi, align 8, !tbaa !380, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i12.i.i

bb.jf:                                            ; preds = %bb.jd
  %i.azk = getelementptr inbounds nuw i8, ptr %.pre9.i7.i.i, i64 8
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !379, !noalias !353
  %i.azm = sext i32 %i.axl to i64
  %i.azn = getelementptr inbounds [4 x i8], ptr %i.azl, i64 %i.azm
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !3, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i12.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i12.i.i: ; preds = %bb.jf, %bb.je, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i11.i.i
  %.0.i.i.i13.i.i = phi i32 [ %i.azo, %bb.jf ], [ %i.azj, %bb.je ], [ %i.axl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i11.i.i ]
  %i.azp = sext i32 %.0.i.i.i13.i.i to i64
  %i.azq = getelementptr inbounds [4 x i8], ptr %i.azb, i64 %i.azp
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !3, !noalias !353 ; 2 uses
  %spec.store.select.i14.i.i = call i32 @llvm.smax.i32(i32 %i.azr, i32 0) ; 3 uses
  %i.azs = sext i32 %i.axl to i64                 ; 2 uses
  %i.azt = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.azs
  store i32 %spec.store.select.i14.i.i, ptr %i.azt, align 4, !tbaa !3, !noalias !353
  %i.azu = getelementptr inbounds [4 x i8], ptr %i.ani, i64 %i.azs
  store i32 %.0228.i, ptr %i.azu, align 4, !tbaa !3, !noalias !353
  %i.azv = zext nneg i32 %.0228.i to i64
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %i.azv ; 6 uses
  %i.azx = zext nneg i32 %spec.store.select.i14.i.i to i64
  %.idx.i15.i.i = shl nuw nsw i64 %i.azx, 2       ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azw, i64 %.idx.i15.i.i
  %.not5.i.i.i.i16.i.i = icmp slt i32 %i.azr, 1
  br i1 %.not5.i.i.i.i16.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i12.i.i
  %i.azz = add nsw i64 %.idx.i15.i.i, -4          ; 3 uses
  %i.baa = lshr exact i64 %i.azz, 2
  %i.bab = add nuw nsw i64 %i.baa, 1              ; 5 uses
  %min.iters.check = icmp ult i64 %i.azz, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i17.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check320 = icmp ult i64 %i.azz, 124
  br i1 %min.iters.check320, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bab, 24
  %n.vec = and i64 %i.bab, 9223372036854775776    ; 4 uses
  %i.bac = shl i64 %n.vec, 2
  %i.bad = getelementptr i8, ptr %i.azw, i64 %i.bac
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.axl, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bae = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.azw, i64 %i.bae ; 4 uses
  %i.baf = getelementptr i8, ptr %next.gep, i64 32
  %i.bag = getelementptr i8, ptr %next.gep, i64 64
  %i.bah = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat, ptr %i.baf, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat, ptr %i.bag, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat, ptr %i.bah, align 4, !tbaa !3, !noalias !353
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bai = icmp eq i64 %index.next, %n.vec
  br i1 %i.bai, label %middle.block, label %vector.body, !llvm.loop !432

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bab, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i17.i.i.preheader, label %vec.epilog.ph, !prof !312

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec322 = and i64 %i.bab, 9223372036854775800 ; 3 uses
  %i.baj = shl i64 %n.vec322, 2
  %i.bak = getelementptr i8, ptr %i.azw, i64 %i.baj
  %broadcast.splatinsert323 = insertelement <8 x i32> poison, i32 %i.axl, i64 0
  %broadcast.splat324 = shufflevector <8 x i32> %broadcast.splatinsert323, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index325 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next327, %vec.epilog.vector.body ] ; 2 uses
  %i.bal = shl i64 %index325, 2
  %next.gep326 = getelementptr i8, ptr %i.azw, i64 %i.bal
  store <8 x i32> %broadcast.splat324, ptr %next.gep326, align 4, !tbaa !3, !noalias !353
  %index.next327 = add nuw i64 %index325, 8       ; 2 uses
  %i.bam = icmp eq i64 %index.next327, %n.vec322
  br i1 %i.bam, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !433

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n328 = icmp eq i64 %i.bab, %n.vec322
  br i1 %cmp.n328, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i22.i.i, label %.lr.ph.i.i.i.i17.i.i.preheader

.lr.ph.i.i.i.i17.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i18.i.i.ph = phi ptr [ %i.azw, %iter.check ], [ %i.bad, %vec.epilog.iter.check ], [ %i.bak, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i17.i.i

.lr.ph.i.i.i.i17.i.i:                             ; preds = %.lr.ph.i.i.i.i17.i.i.preheader, %.lr.ph.i.i.i.i17.i.i
  %.06.i.i.i.i18.i.i = phi ptr [ %i.ban, %.lr.ph.i.i.i.i17.i.i ], [ %.06.i.i.i.i18.i.i.ph, %.lr.ph.i.i.i.i17.i.i.preheader ] ; 2 uses
  store i32 %i.axl, ptr %.06.i.i.i.i18.i.i, align 4, !tbaa !3, !noalias !353
  %i.ban = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i19.i.i = icmp eq ptr %i.ban, %i.azy
  br i1 %.not.i.i.i.i19.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i22.i.i, label %.lr.ph.i.i.i.i17.i.i, !llvm.loop !434

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i22.i.i:           ; preds = %.lr.ph.i.i.i.i17.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i12.i.i
  %i.bao = add nuw nsw i32 %spec.store.select.i14.i.i, %.0228.i
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit26.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit26.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i22.i.i, %bb.jc
  %.pre9.i7.i276.i = phi ptr [ %.pre9.i7.i.i, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i22.i.i ], [ %.pre9.i7.i.pre.i, %bb.jc ]
  %.1.i = phi i32 [ %i.bao, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i22.i.i ], [ %.0228.i, %bb.jc ] ; 2 uses
  %i.bap = add i64 %.017.i39.i.i.i.i.i.i.i, -1
  %i.baq = and i64 %i.bap, %.017.i39.i.i.i.i.i.i.i ; 2 uses
  %.not10.i40.i.i.i.i.i.i.i = icmp eq i64 %i.baq, 0
  br i1 %.not10.i40.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit41.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i38.i.i.i.i.i.i.i, !llvm.loop !431

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit41.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit26.i.i, %bb.iw, %bb.iv
  %.2.i = phi i32 [ 0, %bb.iv ], [ 0, %bb.iw ], [ %.1.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit26.i.i ] ; 2 uses
  %i.bar = add nsw i32 %i.asx, 64                 ; 2 uses
  %.not3357.i.i.i.i.i.i.i = icmp sgt i32 %i.bar, %i.asy
  br i1 %.not3357.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i92.i, label %.lr.ph.i.i.i.i.i.i90.preheader.i

.lr.ph.i.i.i.i.i.i90.preheader.i:                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit41.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i100.i = icmp eq ptr %.0.i, null ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i90.i

._crit_edge.i.i.i.i.i.i92.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit41.i.i.i.i.i.i.i
  %.5.i40 = phi i32 [ %.2.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim.exit41.i.i.i.i.i.i.i ], [ %.4.i39, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i ]
  %.not34.i.i.i.i.i.i93.i = icmp eq i32 %i.asu, %i.asy
  br i1 %.not34.i.i.i.i.i.i93.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i, label %bb.ka

.lr.ph.i.i.i.i.i.i90.i:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i90.preheader.i
  %.3.i38 = phi i32 [ %.4.i39, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %.2.i, %.lr.ph.i.i.i.i.i.i90.preheader.i ] ; 4 uses
  %i.bas = phi i32 [ %i.bhp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.bar, %.lr.ph.i.i.i.i.i.i90.preheader.i ] ; 2 uses
  %.058.i.i.i.i.i.i.i = phi i32 [ %i.bas, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.asx, %.lr.ph.i.i.i.i.i.i90.preheader.i ] ; 2 uses
  %i.bat = sdiv i32 %.058.i.i.i.i.i.i.i, 64       ; 3 uses
  %i.bau = sext i32 %i.bat to i64
  %i.bav = getelementptr inbounds [8 x i8], ptr %i.asq, i64 %i.bau
  %i.baw = load i64, ptr %i.bav, align 8, !tbaa !148, !noalias !353 ; 2 uses
  switch i64 %i.baw, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.lr.ph.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.jg
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.lr.ph.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i90.i
  %i.bax = shl nsw i32 %i.bat, 6
  %.pre9.i.i.i.i.i.i.i.pre281.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i42.i.i.i.i.i.i.i

bb.jg:                                            ; preds = %.lr.ph.i.i.i.i.i.i90.i
  %i.bay = shl nsw i32 %i.bat, 6                  ; 2 uses
  %i.baz = add i32 %i.bay, 64
  %i.bba = sext i32 %i.baz to i64
  %.0.off.i.i.i.i.i.i98.i = add i32 %.058.i.i.i.i.i.i.i, 127
  %.not43.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i98.i, 64
  br i1 %.not43.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i99.i

.lr.ph.i.i.i.i.i.i.i99.i:                         ; preds = %bb.jg
  %i.bbb = sext i32 %i.bay to i64
  %.pre10.i.i.i.i.i.i.i.i.pre278.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %bb.jh

bb.jh:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i99.i
  %.pre10.i.i.i.i.i.i.i.i.i = phi ptr [ %.pre10.i.i.i.i.i.i.i.i.pre278.i, %.lr.ph.i.i.i.i.i.i.i99.i ], [ %.pre10.i.i.i.i.i.i.i.i279.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.i ] ; 11 uses
  %.8.i41 = phi i32 [ %.3.i38, %.lr.ph.i.i.i.i.i.i.i99.i ], [ %.9.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.042.i.i.i.i.i.i.i.i = phi i64 [ %i.bbb, %.lr.ph.i.i.i.i.i.i.i99.i ], [ %i.bef, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  br i1 %.not.i.i.i.i.i.i.i.i100.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i105.i, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.bbc = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 24
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !365, !noalias !353 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i101.i = icmp eq ptr %i.bbd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i101.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i105.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.bbe = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 58
  %i.bbf = load i8, ptr %i.bbe, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.bbg = trunc nuw i8 %i.bbf to i1
  %i.bbh = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 57
  %i.bbi = load i8, ptr %i.bbh, align 1, !range !55, !noalias !353
  %i.bbj = trunc nuw i8 %i.bbi to i1
  %or.cond.i.i.i.i.i.i.i.i.i102.i = select i1 %i.bbg, i1 true, i1 %i.bbj
  br i1 %or.cond.i.i.i.i.i.i.i.i.i102.i, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.bbk = lshr i64 %.042.i.i.i.i.i.i.i.i, 6
  %i.bbl = and i64 %i.bbk, 67108863
  %i.bbm = getelementptr inbounds nuw [8 x i8], ptr %i.bbd, i64 %i.bbl
  %i.bbn = load i64, ptr %i.bbm, align 8, !tbaa !148, !noalias !353
  %i.bbo = and i64 %.042.i.i.i.i.i.i.i.i, 63
  %i.bbp = shl nuw i64 1, %i.bbo
  %i.bbq = and i64 %i.bbn, %i.bbp
  %.not.i.i.i.i.i.i.i.i.i.i110.i = icmp eq i64 %i.bbq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i110.i, label %bb.jn, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i105.i

bb.jl:                                            ; preds = %bb.jj
  %i.bbr = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 59
  %i.bbs = load i8, ptr %i.bbr, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.bbt = trunc nuw i8 %i.bbs to i1
  br i1 %i.bbt, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i108.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.bbu = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 8
  %i.bbv = load ptr, ptr %i.bbu, align 8, !tbaa !379, !noalias !353
  %sext.i.i.i.i.i.i.i.i103.i = shl i64 %.042.i.i.i.i.i.i.i.i, 32
  %i.bbw = ashr exact i64 %sext.i.i.i.i.i.i.i.i103.i, 30
  %i.bbx = getelementptr inbounds i8, ptr %i.bbv, i64 %i.bbw
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !3, !noalias !353
  %i.bbz = zext i32 %i.bby to i64                 ; 2 uses
  %i.bca = lshr i64 %i.bbz, 6
  %i.bcb = getelementptr inbounds nuw [8 x i8], ptr %i.bbd, i64 %i.bca
  %i.bcc = load i64, ptr %i.bcb, align 8, !tbaa !148, !noalias !353
  %i.bcd = and i64 %i.bbz, 63
  %i.bce = shl nuw i64 1, %i.bcd
  %i.bcf = and i64 %i.bce, %i.bcc
  %.not.i7.i.i.i.i.i.i.i.i.i104.i = icmp eq i64 %i.bcf, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i104.i, label %bb.jn, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i105.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i108.i: ; preds = %bb.jl
  %i.bcg = load i64, ptr %i.bbd, align 8, !tbaa !148, !noalias !353
  %i.bch = and i64 %i.bcg, 1
  %.not.i6.i.i.i.i.i.i.i.i.i109.i = icmp eq i64 %i.bch, 0
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i109.i, label %bb.jn, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i105.i

bb.jn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i108.i, %bb.jm, %bb.jk
  %i.bci = and i64 %.042.i.i.i.i.i.i.i.i, 7
  %i.bcj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bci
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !28, !noalias !353
  %i.bcl = lshr i64 %.042.i.i.i.i.i.i.i.i, 3
  %i.bcm = and i64 %i.bcl, 536870911
  %i.bcn = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.bcm ; 2 uses
  %i.bco = load i8, ptr %i.bcn, align 1, !tbaa !28, !noalias !353
  %i.bcp = and i8 %i.bco, %i.bck
  store i8 %i.bcp, ptr %i.bcn, align 1, !tbaa !28, !noalias !353
  %.pre10.i.i.i.i.i.i.i.i.pre.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i105.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i108.i, %bb.jm, %bb.jk, %bb.ji, %bb.jh
  %i.bcq = trunc i64 %.042.i.i.i.i.i.i.i.i to i32 ; 4 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 16
  %i.bcs = load ptr, ptr %i.bcr, align 8, !tbaa !377, !noalias !353
  %i.bct = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 58
  %i.bcu = load i8, ptr %i.bct, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.bcv = trunc nuw i8 %i.bcu to i1
  br i1 %i.bcv, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i106.i, label %bb.jo

bb.jo:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i105.i
  %i.bcw = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 59
  %i.bcx = load i8, ptr %i.bcw, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.bcy = trunc nuw i8 %i.bcx to i1
  br i1 %i.bcy, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.bcz = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 64
  %i.bda = load i32, ptr %i.bcz, align 8, !tbaa !380, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i106.i

bb.jq:                                            ; preds = %bb.jo
  %i.bdb = getelementptr inbounds nuw i8, ptr %.pre10.i.i.i.i.i.i.i.i.i, i64 8
  %i.bdc = load ptr, ptr %i.bdb, align 8, !tbaa !379, !noalias !353
  %sext9.i.i.i.i.i.i.i.i.i = shl i64 %.042.i.i.i.i.i.i.i.i, 32
  %i.bdd = ashr exact i64 %sext9.i.i.i.i.i.i.i.i.i, 30
  %i.bde = getelementptr inbounds i8, ptr %i.bdc, i64 %i.bdd
  %i.bdf = load i32, ptr %i.bde, align 4, !tbaa !3, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i106.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i106.i: ; preds = %bb.jq, %bb.jp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i105.i
  %.0.i.i.i.i.i.i.i.i.i.i107.i = phi i32 [ %i.bdf, %bb.jq ], [ %i.bda, %bb.jp ], [ %i.bcq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i105.i ]
  %i.bdg = sext i32 %.0.i.i.i.i.i.i.i.i.i.i107.i to i64
  %i.bdh = getelementptr inbounds [4 x i8], ptr %i.bcs, i64 %i.bdg
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !3, !noalias !353 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.bdi, i32 0) ; 3 uses
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %i.anc, i64 %.042.i.i.i.i.i.i.i.i
  store i32 %spec.store.select.i.i.i.i.i.i.i.i.i, ptr %i.bdj, align 4, !tbaa !3, !noalias !353
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %i.ani, i64 %.042.i.i.i.i.i.i.i.i
  store i32 %.8.i41, ptr %i.bdk, align 4, !tbaa !3, !noalias !353
  %i.bdl = zext nneg i32 %.8.i41 to i64
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %i.bdl ; 6 uses
  %i.bdn = zext nneg i32 %spec.store.select.i.i.i.i.i.i.i.i.i to i64
  %.idx.i.i.i.i.i.i.i.i.i42 = shl nuw nsw i64 %i.bdn, 2 ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdm, i64 %.idx.i.i.i.i.i.i.i.i.i42
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i43 = icmp slt i32 %i.bdi, 1
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i43, label %_ZSt4fillIPimEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i.i, label %iter.check376

iter.check376:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i106.i
  %i.bdp = add nsw i64 %.idx.i.i.i.i.i.i.i.i.i42, -4 ; 3 uses
  %i.bdq = lshr exact i64 %i.bdp, 2
  %i.bdr = add nuw nsw i64 %i.bdq, 1              ; 5 uses
  %min.iters.check361 = icmp ult i64 %i.bdp, 28
  br i1 %min.iters.check361, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader, label %vector.main.loop.iter.check362

vector.main.loop.iter.check362:                   ; preds = %iter.check376
  %min.iters.check363 = icmp ult i64 %i.bdp, 124
  br i1 %min.iters.check363, label %vec.epilog.ph380, label %vector.ph364

vector.ph364:                                     ; preds = %vector.main.loop.iter.check362
  %n.mod.vf365 = and i64 %i.bdr, 24
  %n.vec366 = and i64 %i.bdr, 9223372036854775776 ; 4 uses
  %i.bds = shl i64 %n.vec366, 2
  %i.bdt = getelementptr i8, ptr %i.bdm, i64 %i.bds
  %broadcast.splatinsert367 = insertelement <8 x i32> poison, i32 %i.bcq, i64 0
  %broadcast.splat368 = shufflevector <8 x i32> %broadcast.splatinsert367, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph364
  %index370 = phi i64 [ 0, %vector.ph364 ], [ %index.next372, %vector.body369 ] ; 2 uses
  %i.bdu = shl i64 %index370, 2
  %next.gep371 = getelementptr i8, ptr %i.bdm, i64 %i.bdu ; 4 uses
  %i.bdv = getelementptr i8, ptr %next.gep371, i64 32
  %i.bdw = getelementptr i8, ptr %next.gep371, i64 64
  %i.bdx = getelementptr i8, ptr %next.gep371, i64 96
  store <8 x i32> %broadcast.splat368, ptr %next.gep371, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat368, ptr %i.bdv, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat368, ptr %i.bdw, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat368, ptr %i.bdx, align 4, !tbaa !3, !noalias !353
  %index.next372 = add nuw i64 %index370, 32      ; 2 uses
  %i.bdy = icmp eq i64 %index.next372, %n.vec366
  br i1 %i.bdy, label %middle.block373, label %vector.body369, !llvm.loop !435

middle.block373:                                  ; preds = %vector.body369
  %cmp.n374 = icmp eq i64 %i.bdr, %n.vec366
  br i1 %cmp.n374, label %_ZSt4fillIPimEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i.i, label %vec.epilog.iter.check378

vec.epilog.iter.check378:                         ; preds = %middle.block373
  %min.epilog.iters.check379 = icmp eq i64 %n.mod.vf365, 0
  br i1 %min.epilog.iters.check379, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader, label %vec.epilog.ph380, !prof !312

vec.epilog.ph380:                                 ; preds = %vector.main.loop.iter.check362, %vec.epilog.iter.check378
  %vec.epilog.resume.val375 = phi i64 [ %n.vec366, %vec.epilog.iter.check378 ], [ 0, %vector.main.loop.iter.check362 ]
  %n.vec382 = and i64 %i.bdr, 9223372036854775800 ; 3 uses
  %i.bdz = shl i64 %n.vec382, 2
  %i.bea = getelementptr i8, ptr %i.bdm, i64 %i.bdz
  %broadcast.splatinsert383 = insertelement <8 x i32> poison, i32 %i.bcq, i64 0
  %broadcast.splat384 = shufflevector <8 x i32> %broadcast.splatinsert383, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body385

vec.epilog.vector.body385:                        ; preds = %vec.epilog.vector.body385, %vec.epilog.ph380
  %index386 = phi i64 [ %vec.epilog.resume.val375, %vec.epilog.ph380 ], [ %index.next388, %vec.epilog.vector.body385 ] ; 2 uses
  %i.beb = shl i64 %index386, 2
  %next.gep387 = getelementptr i8, ptr %i.bdm, i64 %i.beb
  store <8 x i32> %broadcast.splat384, ptr %next.gep387, align 4, !tbaa !3, !noalias !353
  %index.next388 = add nuw i64 %index386, 8       ; 2 uses
  %i.bec = icmp eq i64 %index.next388, %n.vec382
  br i1 %i.bec, label %vec.epilog.middle.block389, label %vec.epilog.vector.body385, !llvm.loop !436

vec.epilog.middle.block389:                       ; preds = %vec.epilog.vector.body385
  %cmp.n390 = icmp eq i64 %i.bdr, %n.vec382
  br i1 %cmp.n390, label %_ZSt4fillIPimEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader:       ; preds = %iter.check376, %vec.epilog.iter.check378, %vec.epilog.middle.block389
  %.06.i.i.i.i.i.i.i.i.i.i.i.i45.ph = phi ptr [ %i.bdm, %iter.check376 ], [ %i.bdt, %vec.epilog.iter.check378 ], [ %i.bea, %vec.epilog.middle.block389 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44
  %.06.i.i.i.i.i.i.i.i.i.i.i.i45 = phi ptr [ %i.bed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44 ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44.preheader ] ; 2 uses
  store i32 %i.bcq, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i45, align 4, !tbaa !3, !noalias !353
  %i.bed = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i45, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.bed, %i.bdo
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i46, label %_ZSt4fillIPimEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44, !llvm.loop !437

_ZSt4fillIPimEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i44, %middle.block373, %vec.epilog.middle.block389, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i106.i
  %i.bee = add nuw nsw i32 %spec.store.select.i.i.i.i.i.i.i.i.i, %.8.i41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt4fillIPimEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i.i, %bb.jn
  %.pre10.i.i.i.i.i.i.i.i279.i = phi ptr [ %.pre10.i.i.i.i.i.i.i.i.i, %_ZSt4fillIPimEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i.i ], [ %.pre10.i.i.i.i.i.i.i.i.pre.i, %bb.jn ]
  %.9.i = phi i32 [ %i.bee, %_ZSt4fillIPimEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i.i ], [ %.8.i41, %bb.jn ] ; 2 uses
  %i.bef = add nuw i64 %.042.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.beg = icmp ult i64 %i.bef, %i.bba
  br i1 %i.beg, label %bb.jh, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, !llvm.loop !438

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i42.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.lr.ph.i.i.i.i.i.i.i.i
  %.pre9.i.i.i.i.i.i.i.i = phi ptr [ %.pre9.i.i.i.i.i.i.i.pre281.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.lr.ph.i.i.i.i.i.i.i.i ], [ %.pre9.i.i.i.i.i.i.i282.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i.i.i.i.i.i ] ; 11 uses
  %.10.i = phi i32 [ %.3.i38, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.lr.ph.i.i.i.i.i.i.i.i ], [ %.11.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.01541.i.i.i.i.i.i.i.i = phi i64 [ %i.baw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bho, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.beh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01541.i.i.i.i.i.i.i.i, i1 true)
  %i.bei = trunc nuw nsw i64 %i.beh to i32
  %i.bej = or disjoint i32 %i.bax, %i.bei         ; 9 uses
  br i1 %.not.i.i.i.i.i.i.i.i100.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i, label %bb.jr

bb.jr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i42.i.i.i.i.i.i.i
  %i.bek = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 24
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !365, !noalias !353 ; 4 uses
  %.not.i.i52.i.i.i.i.i.i.i = icmp eq ptr %i.bel, null
  br i1 %.not.i.i52.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bem = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 58
  %i.ben = load i8, ptr %i.bem, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.beo = trunc nuw i8 %i.ben to i1
  %i.bep = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 57
  %i.beq = load i8, ptr %i.bep, align 1, !range !55, !noalias !353
  %i.ber = trunc nuw i8 %i.beq to i1
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.beo, i1 true, i1 %i.ber
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.bes = zext i32 %i.bej to i64                 ; 2 uses
  %i.bet = lshr i64 %i.bes, 6
  %i.beu = getelementptr inbounds nuw [8 x i8], ptr %i.bel, i64 %i.bet
  %i.bev = load i64, ptr %i.beu, align 8, !tbaa !148, !noalias !353
  %i.bew = and i64 %i.bes, 63
  %i.bex = shl nuw i64 1, %i.bew
  %i.bey = and i64 %i.bev, %i.bex
  %.not.i.i.i54.i.i.i.i.i.i.i = icmp eq i64 %i.bey, 0
  br i1 %.not.i.i.i54.i.i.i.i.i.i.i, label %bb.jw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i

bb.ju:                                            ; preds = %bb.js
  %i.bez = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 59
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.bfb = trunc nuw i8 %i.bfa to i1
  br i1 %i.bfb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.bfc = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 8
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !379, !noalias !353
  %i.bfe = sext i32 %i.bej to i64
  %i.bff = getelementptr inbounds [4 x i8], ptr %i.bfd, i64 %i.bfe
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !3, !noalias !353
  %i.bfh = zext i32 %i.bfg to i64                 ; 2 uses
  %i.bfi = lshr i64 %i.bfh, 6
  %i.bfj = getelementptr inbounds nuw [8 x i8], ptr %i.bel, i64 %i.bfi
  %i.bfk = load i64, ptr %i.bfj, align 8, !tbaa !148, !noalias !353
  %i.bfl = and i64 %i.bfh, 63
  %i.bfm = shl nuw i64 1, %i.bfl
  %i.bfn = and i64 %i.bfm, %i.bfk
  %.not.i7.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bfn, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i, label %bb.jw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ju
  %i.bfo = load i64, ptr %i.bel, align 8, !tbaa !148, !noalias !353
  %i.bfp = and i64 %i.bfo, 1
  %.not.i6.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bfp, 0
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i, label %bb.jw, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i

bb.jw:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i, %bb.jv, %bb.jt
  %i.bfq = zext i32 %i.bej to i64                 ; 2 uses
  %i.bfr = and i64 %i.bfq, 7
  %i.bfs = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfr
  %i.bft = load i8, ptr %i.bfs, align 1, !tbaa !28, !noalias !353
  %i.bfu = lshr i64 %i.bfq, 3
  %i.bfv = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.bfu ; 2 uses
  %i.bfw = load i8, ptr %i.bfv, align 1, !tbaa !28, !noalias !353
  %i.bfx = and i8 %i.bfw, %i.bft
  store i8 %i.bfx, ptr %i.bfv, align 1, !tbaa !28, !noalias !353
  %.pre9.i.i.i.i.i.i.i.pre.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i, %bb.jv, %bb.jt, %bb.jr, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i42.i.i.i.i.i.i.i
  %i.bfy = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 16
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !377, !noalias !353
  %i.bga = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 58
  %i.bgb = load i8, ptr %i.bga, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.bgc = trunc nuw i8 %i.bgb to i1
  br i1 %i.bgc, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i, label %bb.jx

bb.jx:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i
  %i.bgd = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 59
  %i.bge = load i8, ptr %i.bgd, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.bgf = trunc nuw i8 %i.bge to i1
  br i1 %i.bgf, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.bgg = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 64
  %i.bgh = load i32, ptr %i.bgg, align 8, !tbaa !380, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i

bb.jz:                                            ; preds = %bb.jx
  %i.bgi = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i.i.i.i.i.i, i64 8
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !379, !noalias !353
  %i.bgk = sext i32 %i.bej to i64
  %i.bgl = getelementptr inbounds [4 x i8], ptr %i.bgj, i64 %i.bgk
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !3, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i: ; preds = %bb.jz, %bb.jy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bgm, %bb.jz ], [ %i.bgh, %bb.jy ], [ %i.bej, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i ]
  %i.bgn = sext i32 %.0.i.i.i.i.i.i.i.i.i.i to i64
  %i.bgo = getelementptr inbounds [4 x i8], ptr %i.bfz, i64 %i.bgn
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !3, !noalias !353 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.bgp, i32 0) ; 3 uses
  %i.bgq = sext i32 %i.bej to i64                 ; 2 uses
  %i.bgr = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.bgq
  store i32 %spec.store.select.i.i.i.i.i.i.i.i, ptr %i.bgr, align 4, !tbaa !3, !noalias !353
  %i.bgs = getelementptr inbounds [4 x i8], ptr %i.ani, i64 %i.bgq
  store i32 %.10.i, ptr %i.bgs, align 4, !tbaa !3, !noalias !353
  %i.bgt = zext nneg i32 %.10.i to i64
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %i.bgt ; 6 uses
  %i.bgv = zext nneg i32 %spec.store.select.i.i.i.i.i.i.i.i to i64
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bgv, 2 ; 2 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgu, i64 %.idx.i.i.i.i.i.i.i.i
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp slt i32 %i.bgp, 1
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i, label %iter.check345

iter.check345:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i
  %i.bgx = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -4  ; 3 uses
  %i.bgy = lshr exact i64 %i.bgx, 2
  %i.bgz = add nuw nsw i64 %i.bgy, 1              ; 5 uses
  %min.iters.check330 = icmp ult i64 %i.bgx, 28
  br i1 %min.iters.check330, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check331

vector.main.loop.iter.check331:                   ; preds = %iter.check345
  %min.iters.check332 = icmp ult i64 %i.bgx, 124
  br i1 %min.iters.check332, label %vec.epilog.ph349, label %vector.ph333

vector.ph333:                                     ; preds = %vector.main.loop.iter.check331
  %n.mod.vf334 = and i64 %i.bgz, 24
  %n.vec335 = and i64 %i.bgz, 9223372036854775776 ; 4 uses
  %i.bha = shl i64 %n.vec335, 2
  %i.bhb = getelementptr i8, ptr %i.bgu, i64 %i.bha
  %broadcast.splatinsert336 = insertelement <8 x i32> poison, i32 %i.bej, i64 0
  %broadcast.splat337 = shufflevector <8 x i32> %broadcast.splatinsert336, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph333
  %index339 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body338 ] ; 2 uses
  %i.bhc = shl i64 %index339, 2
  %next.gep340 = getelementptr i8, ptr %i.bgu, i64 %i.bhc ; 4 uses
  %i.bhd = getelementptr i8, ptr %next.gep340, i64 32
  %i.bhe = getelementptr i8, ptr %next.gep340, i64 64
  %i.bhf = getelementptr i8, ptr %next.gep340, i64 96
  store <8 x i32> %broadcast.splat337, ptr %next.gep340, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat337, ptr %i.bhd, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat337, ptr %i.bhe, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat337, ptr %i.bhf, align 4, !tbaa !3, !noalias !353
  %index.next341 = add nuw i64 %index339, 32      ; 2 uses
  %i.bhg = icmp eq i64 %index.next341, %n.vec335
  br i1 %i.bhg, label %middle.block342, label %vector.body338, !llvm.loop !439

middle.block342:                                  ; preds = %vector.body338
  %cmp.n343 = icmp eq i64 %i.bgz, %n.vec335
  br i1 %cmp.n343, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i, label %vec.epilog.iter.check347

vec.epilog.iter.check347:                         ; preds = %middle.block342
  %min.epilog.iters.check348 = icmp eq i64 %n.mod.vf334, 0
  br i1 %min.epilog.iters.check348, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph349, !prof !312

vec.epilog.ph349:                                 ; preds = %vector.main.loop.iter.check331, %vec.epilog.iter.check347
  %vec.epilog.resume.val344 = phi i64 [ %n.vec335, %vec.epilog.iter.check347 ], [ 0, %vector.main.loop.iter.check331 ]
  %n.vec351 = and i64 %i.bgz, 9223372036854775800 ; 3 uses
  %i.bhh = shl i64 %n.vec351, 2
  %i.bhi = getelementptr i8, ptr %i.bgu, i64 %i.bhh
  %broadcast.splatinsert352 = insertelement <8 x i32> poison, i32 %i.bej, i64 0
  %broadcast.splat353 = shufflevector <8 x i32> %broadcast.splatinsert352, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body354

vec.epilog.vector.body354:                        ; preds = %vec.epilog.vector.body354, %vec.epilog.ph349
  %index355 = phi i64 [ %vec.epilog.resume.val344, %vec.epilog.ph349 ], [ %index.next357, %vec.epilog.vector.body354 ] ; 2 uses
  %i.bhj = shl i64 %index355, 2
  %next.gep356 = getelementptr i8, ptr %i.bgu, i64 %i.bhj
  store <8 x i32> %broadcast.splat353, ptr %next.gep356, align 4, !tbaa !3, !noalias !353
  %index.next357 = add nuw i64 %index355, 8       ; 2 uses
  %i.bhk = icmp eq i64 %index.next357, %n.vec351
  br i1 %i.bhk, label %vec.epilog.middle.block358, label %vec.epilog.vector.body354, !llvm.loop !440

vec.epilog.middle.block358:                       ; preds = %vec.epilog.vector.body354
  %cmp.n359 = icmp eq i64 %i.bgz, %n.vec351
  br i1 %cmp.n359, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %iter.check345, %vec.epilog.iter.check347, %vec.epilog.middle.block358
  %.06.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bgu, %iter.check345 ], [ %i.bhb, %vec.epilog.iter.check347 ], [ %i.bhi, %vec.epilog.middle.block358 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bhl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.bej, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !353
  %i.bhl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i53.i.i.i.i.i.i.i = icmp eq ptr %i.bhl, %i.bgw
  br i1 %.not.i.i.i.i53.i.i.i.i.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !441

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block342, %vec.epilog.middle.block358, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i
  %i.bhm = add nuw nsw i32 %spec.store.select.i.i.i.i.i.i.i.i, %.10.i
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i, %bb.jw
  %.pre9.i.i.i.i.i.i.i282.i = phi ptr [ %.pre9.i.i.i.i.i.i.i.i, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i ], [ %.pre9.i.i.i.i.i.i.i.pre.i, %bb.jw ]
  %.11.i = phi i32 [ %i.bhm, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i.i.i.i.i.i ], [ %.10.i, %bb.jw ] ; 2 uses
  %i.bhn = add i64 %.01541.i.i.i.i.i.i.i.i, -1
  %i.bho = and i64 %i.bhn, %.01541.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i43.i.i.i.i.i.i.i = icmp eq i64 %i.bho, 0
  br i1 %.not.i43.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i42.i.i.i.i.i.i.i, !llvm.loop !442

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_EUlT_E0_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_SP_EUlSP_E_EEvSB_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i.i.i.i.i.i, %bb.jg, %.lr.ph.i.i.i.i.i.i90.i
  %.4.i39 = phi i32 [ %.3.i38, %.lr.ph.i.i.i.i.i.i90.i ], [ %.3.i38, %bb.jg ], [ %.11.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i.i.i.i.i.i ], [ %.9.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bhp = add nsw i32 %i.bas, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i91.i = icmp sgt i32 %i.bhp, %i.asy
  br i1 %.not33.i.i.i.i.i.i91.i, label %._crit_edge.i.i.i.i.i.i92.i, label %.lr.ph.i.i.i.i.i.i90.i, !llvm.loop !443

bb.ka:                                            ; preds = %._crit_edge.i.i.i.i.i.i92.i
  %i.bhq = ashr i32 %i.asu, 6
  %i.bhr = and i32 %i.asu, 63
  %i.bhs = zext nneg i32 %i.bhr to i64
  %notmask.i44.i.i.i.i.i.i.i = shl nsw i64 -1, %i.bhs
  %i.bht = xor i64 %notmask.i44.i.i.i.i.i.i.i, -1
  %i.bhu = sext i32 %i.bhq to i64
  %i.bhv = getelementptr inbounds [8 x i8], ptr %i.asq, i64 %i.bhu
  %i.bhw = load i64, ptr %i.bhv, align 8, !tbaa !148, !noalias !353
  %i.bhx = and i64 %i.bhw, %i.bht                 ; 2 uses
  %.not.i45.i.i.i.i.i.i.i = icmp eq i64 %i.bhx, 0
  br i1 %.not.i45.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.preheader.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.preheader.i: ; preds = %bb.ka
  %.not.i.i94.i = icmp eq ptr %.0.i, null
  %.pre9.i.i.pre284.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.preheader.i
  %.pre9.i.i.i = phi ptr [ %.pre9.i.i285.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i ], [ %.pre9.i.i.pre284.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.preheader.i ] ; 11 uses
  %.6.i = phi i32 [ %.7.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i ], [ %.5.i40, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %.017.i48.i.i.i.i.i.i.i = phi i64 [ %i.blf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i ], [ %i.bhx, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.bhy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i48.i.i.i.i.i.i.i, i1 true)
  %i.bhz = trunc nuw nsw i64 %i.bhy to i32
  %i.bia = or disjoint i32 %i.asy, %i.bhz         ; 9 uses
  br i1 %.not.i.i94.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i, label %bb.kb

bb.kb:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.i
  %i.bib = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 24
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !365, !noalias !353 ; 4 uses
  %.not.i.i.i95.i = icmp eq ptr %i.bic, null
  br i1 %.not.i.i.i95.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bid = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 58
  %i.bie = load i8, ptr %i.bid, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.bif = trunc nuw i8 %i.bie to i1
  %i.big = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 57
  %i.bih = load i8, ptr %i.big, align 1, !range !55, !noalias !353
  %i.bii = trunc nuw i8 %i.bih to i1
  %or.cond.i.i.i.i = select i1 %i.bif, i1 true, i1 %i.bii
  br i1 %or.cond.i.i.i.i, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.bij = zext i32 %i.bia to i64                 ; 2 uses
  %i.bik = lshr i64 %i.bij, 6
  %i.bil = getelementptr inbounds nuw [8 x i8], ptr %i.bic, i64 %i.bik
  %i.bim = load i64, ptr %i.bil, align 8, !tbaa !148, !noalias !353
  %i.bin = and i64 %i.bij, 63
  %i.bio = shl nuw i64 1, %i.bin
  %i.bip = and i64 %i.bim, %i.bio
  %.not.i.i.i.i97.i = icmp eq i64 %i.bip, 0
  br i1 %.not.i.i.i.i97.i, label %bb.kg, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i

bb.ke:                                            ; preds = %bb.kc
  %i.biq = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 59
  %i.bir = load i8, ptr %i.biq, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.bis = trunc nuw i8 %i.bir to i1
  br i1 %i.bis, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bit = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 8
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !379, !noalias !353
  %i.biv = sext i32 %i.bia to i64
  %i.biw = getelementptr inbounds [4 x i8], ptr %i.biu, i64 %i.biv
  %i.bix = load i32, ptr %i.biw, align 4, !tbaa !3, !noalias !353
  %i.biy = zext i32 %i.bix to i64                 ; 2 uses
  %i.biz = lshr i64 %i.biy, 6
  %i.bja = getelementptr inbounds nuw [8 x i8], ptr %i.bic, i64 %i.biz
  %i.bjb = load i64, ptr %i.bja, align 8, !tbaa !148, !noalias !353
  %i.bjc = and i64 %i.biy, 63
  %i.bjd = shl nuw i64 1, %i.bjc
  %i.bje = and i64 %i.bjd, %i.bjb
  %.not.i7.i.i.i96.i = icmp eq i64 %i.bje, 0
  br i1 %.not.i7.i.i.i96.i, label %bb.kg, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i: ; preds = %bb.ke
  %i.bjf = load i64, ptr %i.bic, align 8, !tbaa !148, !noalias !353
  %i.bjg = and i64 %i.bjf, 1
  %.not.i6.i.i.i.i = icmp eq i64 %i.bjg, 0
  br i1 %.not.i6.i.i.i.i, label %bb.kg, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i

bb.kg:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i, %bb.kf, %bb.kd
  %i.bjh = zext i32 %i.bia to i64                 ; 2 uses
  %i.bji = and i64 %i.bjh, 7
  %i.bjj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bji
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !28, !noalias !353
  %i.bjl = lshr i64 %i.bjh, 3
  %i.bjm = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.bjl ; 2 uses
  %i.bjn = load i8, ptr %i.bjm, align 1, !tbaa !28, !noalias !353
  %i.bjo = and i8 %i.bjn, %i.bjk
  store i8 %i.bjo, ptr %i.bjm, align 1, !tbaa !28, !noalias !353
  %.pre9.i.i.pre.i = load ptr, ptr %i.a, align 8, !tbaa !359, !noalias !353
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i, %bb.kf, %bb.kd, %bb.kb, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.i
  %i.bjp = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 16
  %i.bjq = load ptr, ptr %i.bjp, align 8, !tbaa !377, !noalias !353
  %i.bjr = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 58
  %i.bjs = load i8, ptr %i.bjr, align 2, !tbaa !376, !range !55, !noalias !353, !noundef !56
  %i.bjt = trunc nuw i8 %i.bjs to i1
  br i1 %i.bjt, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i, label %bb.kh

bb.kh:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i
  %i.bju = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 59
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !378, !range !55, !noalias !353, !noundef !56
  %i.bjw = trunc nuw i8 %i.bjv to i1
  br i1 %i.bjw, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.bjx = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 64
  %i.bjy = load i32, ptr %i.bjx, align 8, !tbaa !380, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i

bb.kj:                                            ; preds = %bb.kh
  %i.bjz = getelementptr inbounds nuw i8, ptr %.pre9.i.i.i, i64 8
  %i.bka = load ptr, ptr %i.bjz, align 8, !tbaa !379, !noalias !353
  %i.bkb = sext i32 %i.bia to i64
  %i.bkc = getelementptr inbounds [4 x i8], ptr %i.bka, i64 %i.bkb
  %i.bkd = load i32, ptr %i.bkc, align 4, !tbaa !3, !noalias !353
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i: ; preds = %bb.kj, %bb.ki, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i
  %.0.i.i.i2.i.i = phi i32 [ %i.bkd, %bb.kj ], [ %i.bjy, %bb.ki ], [ %i.bia, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i ]
  %i.bke = sext i32 %.0.i.i.i2.i.i to i64
  %i.bkf = getelementptr inbounds [4 x i8], ptr %i.bjq, i64 %i.bke
  %i.bkg = load i32, ptr %i.bkf, align 4, !tbaa !3, !noalias !353 ; 2 uses
  %spec.store.select.i.i.i = call i32 @llvm.smax.i32(i32 %i.bkg, i32 0) ; 3 uses
  %i.bkh = sext i32 %i.bia to i64                 ; 2 uses
  %i.bki = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.bkh
  store i32 %spec.store.select.i.i.i, ptr %i.bki, align 4, !tbaa !3, !noalias !353
  %i.bkj = getelementptr inbounds [4 x i8], ptr %i.ani, i64 %i.bkh
  store i32 %.6.i, ptr %i.bkj, align 4, !tbaa !3, !noalias !353
  %i.bkk = zext nneg i32 %.6.i to i64
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %i.amw, i64 %i.bkk ; 6 uses
  %i.bkm = zext nneg i32 %spec.store.select.i.i.i to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bkm, 2         ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkl, i64 %.idx.i.i.i
  %.not5.i.i.i.i.i.i = icmp slt i32 %i.bkg, 1
  br i1 %.not5.i.i.i.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, label %iter.check407

iter.check407:                                    ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i
  %i.bko = add nsw i64 %.idx.i.i.i, -4            ; 3 uses
  %i.bkp = lshr exact i64 %i.bko, 2
  %i.bkq = add nuw nsw i64 %i.bkp, 1              ; 5 uses
  %min.iters.check392 = icmp ult i64 %i.bko, 28
  br i1 %min.iters.check392, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check393

vector.main.loop.iter.check393:                   ; preds = %iter.check407
  %min.iters.check394 = icmp ult i64 %i.bko, 124
  br i1 %min.iters.check394, label %vec.epilog.ph411, label %vector.ph395

vector.ph395:                                     ; preds = %vector.main.loop.iter.check393
  %n.mod.vf396 = and i64 %i.bkq, 24
  %n.vec397 = and i64 %i.bkq, 9223372036854775776 ; 4 uses
  %i.bkr = shl i64 %n.vec397, 2
  %i.bks = getelementptr i8, ptr %i.bkl, i64 %i.bkr
  %broadcast.splatinsert398 = insertelement <8 x i32> poison, i32 %i.bia, i64 0
  %broadcast.splat399 = shufflevector <8 x i32> %broadcast.splatinsert398, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph395
  %index401 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body400 ] ; 2 uses
  %i.bkt = shl i64 %index401, 2
  %next.gep402 = getelementptr i8, ptr %i.bkl, i64 %i.bkt ; 4 uses
  %i.bku = getelementptr i8, ptr %next.gep402, i64 32
  %i.bkv = getelementptr i8, ptr %next.gep402, i64 64
  %i.bkw = getelementptr i8, ptr %next.gep402, i64 96
  store <8 x i32> %broadcast.splat399, ptr %next.gep402, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat399, ptr %i.bku, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat399, ptr %i.bkv, align 4, !tbaa !3, !noalias !353
  store <8 x i32> %broadcast.splat399, ptr %i.bkw, align 4, !tbaa !3, !noalias !353
  %index.next403 = add nuw i64 %index401, 32      ; 2 uses
  %i.bkx = icmp eq i64 %index.next403, %n.vec397
  br i1 %i.bkx, label %middle.block404, label %vector.body400, !llvm.loop !444

middle.block404:                                  ; preds = %vector.body400
  %cmp.n405 = icmp eq i64 %i.bkq, %n.vec397
  br i1 %cmp.n405, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, label %vec.epilog.iter.check409

vec.epilog.iter.check409:                         ; preds = %middle.block404
  %min.epilog.iters.check410 = icmp eq i64 %n.mod.vf396, 0
  br i1 %min.epilog.iters.check410, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph411, !prof !312

vec.epilog.ph411:                                 ; preds = %vector.main.loop.iter.check393, %vec.epilog.iter.check409
  %vec.epilog.resume.val406 = phi i64 [ %n.vec397, %vec.epilog.iter.check409 ], [ 0, %vector.main.loop.iter.check393 ]
  %n.vec413 = and i64 %i.bkq, 9223372036854775800 ; 3 uses
  %i.bky = shl i64 %n.vec413, 2
  %i.bkz = getelementptr i8, ptr %i.bkl, i64 %i.bky
  %broadcast.splatinsert414 = insertelement <8 x i32> poison, i32 %i.bia, i64 0
  %broadcast.splat415 = shufflevector <8 x i32> %broadcast.splatinsert414, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body416

vec.epilog.vector.body416:                        ; preds = %vec.epilog.vector.body416, %vec.epilog.ph411
  %index417 = phi i64 [ %vec.epilog.resume.val406, %vec.epilog.ph411 ], [ %index.next419, %vec.epilog.vector.body416 ] ; 2 uses
  %i.bla = shl i64 %index417, 2
  %next.gep418 = getelementptr i8, ptr %i.bkl, i64 %i.bla
  store <8 x i32> %broadcast.splat415, ptr %next.gep418, align 4, !tbaa !3, !noalias !353
  %index.next419 = add nuw i64 %index417, 8       ; 2 uses
  %i.blb = icmp eq i64 %index.next419, %n.vec413
  br i1 %i.blb, label %vec.epilog.middle.block420, label %vec.epilog.vector.body416, !llvm.loop !445

vec.epilog.middle.block420:                       ; preds = %vec.epilog.vector.body416
  %cmp.n421 = icmp eq i64 %i.bkq, %n.vec413
  br i1 %cmp.n421, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check407, %vec.epilog.iter.check409, %vec.epilog.middle.block420
  %.06.i.i.i.i.i.i.ph = phi ptr [ %i.bkl, %iter.check407 ], [ %i.bks, %vec.epilog.iter.check409 ], [ %i.bkz, %vec.epilog.middle.block420 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.blc, %.lr.ph.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.bia, ptr %.06.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !353
  %i.blc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.blc, %i.bkn
  br i1 %.not.i.i.i.i3.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !446

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block404, %vec.epilog.middle.block420, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i
  %i.bld = add nuw nsw i32 %spec.store.select.i.i.i, %.6.i
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i, %bb.kg
  %.pre9.i.i285.i = phi ptr [ %.pre9.i.i.i, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ], [ %.pre9.i.i.pre.i, %bb.kg ]
  %.7.i = phi i32 [ %i.bld, %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i.i.i ], [ %.6.i, %bb.kg ]
  %i.ble = add nsw i64 %.017.i48.i.i.i.i.i.i.i, -1
  %i.blf = and i64 %i.ble, %.017.i48.i.i.i.i.i.i.i ; 2 uses
  %.not10.i49.i.i.i.i.i.i.i = icmp eq i64 %i.blf, 0
  br i1 %.not10.i49.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_ZNS2_22applyToSelectedNoThrowISO_EEvS9_SN_EUlSN_E_EEvS9_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i47.i.i.i.i.i.i.i, !llvm.loop !431

_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit49.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxEENKUlT_E0_clIiEEDaSM_.exit72.i.i, %bb.ka, %._crit_edge.i.i.i.i.i.i92.i, %bb.il, %bb.ij, %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27, !noalias !353
  store ptr null, ptr %34, align 8, !tbaa !297, !noalias !353
  %i.blg = load ptr, ptr %29, align 8, !tbaa !297, !noalias !353 ; 3 uses
  store ptr %i.blg, ptr %35, align 8, !tbaa !297, !noalias !353
  %.not.i125.i = icmp eq ptr %i.blg, null
  br i1 %.not.i125.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i31, label %bb.kk

bb.kk:                                            ; preds = %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blg, i64 40
  %i.bli = atomicrmw add ptr %i.blh, i32 1 acq_rel, align 4, !noalias !353 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i31

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i31: ; preds = %bb.kk, %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_114RepeatFunction21applyNonConstantCountERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_EUlT_E0_EEvS9_SN_.exit.i
  %i.blj = load i64, ptr %i.b, align 8, !tbaa !148, !noalias !353
  %i.blk = trunc i64 %i.blj to i32
  %i.bll = load ptr, ptr %2, align 8, !tbaa !198, !noalias !353 ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bll, i64 8
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !35, !noalias !353 ; 2 uses
  %i.blp = load <2 x ptr>, ptr %i.bll, align 8, !tbaa !38, !noalias !353
  store <2 x ptr> %i.blp, ptr %36, align 16, !tbaa !38, !noalias !353
  %.not.i.i.i126.i = icmp eq ptr %i.blo, null
  br i1 %.not.i.i.i126.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i32, label %bb.kl

bb.kl:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i31
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blo, i64 8 ; 3 uses
  %i.blr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !353
  %.not.i.i.i.i127.i = icmp eq i8 %i.blr, 0
  br i1 %.not.i.i.i.i127.i, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bls = load i32, ptr %i.blq, align 4, !tbaa !3, !noalias !353
  %i.blt = add nsw i32 %i.bls, 1
  store i32 %i.blt, ptr %i.blq, align 4, !tbaa !3, !noalias !353
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i32

bb.kn:                                            ; preds = %bb.kl
  %i.blu = atomicrmw volatile add ptr %i.blq, i32 1 acq_rel, align 4, !noalias !353 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i32

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i32: ; preds = %bb.kn, %bb.km, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i31
  invoke void @_ZN8facebook5velox10BaseVector16wrapInDictionaryEN5boost13intrusive_ptrINS0_6BufferEEES5_iSt10shared_ptrIS1_Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.74") align 8 %33, ptr noundef nonnull %34, ptr noundef nonnull %35, i32 noundef %i.blk, ptr noundef nonnull %36, i1 noundef zeroext false)
          to label %bb.ko unwind label %bb.lw, !noalias !353

bb.ko:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit.i32
  %i.blv = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %.noexc128.i unwind label %bb.lx, !noalias !353 ; 6 uses

.noexc128.i:                                      ; preds = %bb.ko
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 8
  store i32 1, ptr %i.blw, align 8, !tbaa !40, !noalias !447
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blv, i64 12
  store i32 1, ptr %i.blx, align 4, !tbaa !42, !noalias !447
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.blv, align 8, !tbaa !43, !noalias !447
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blv, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox11ArrayVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEERN5boost13intrusive_ptrINS1_6BufferEEERKiSH_SH_S7_INS1_10BaseVectorEEEEvPT_DpOT0_(ptr noundef nonnull %i.bly, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i34 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i33, !noalias !447

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11ArrayVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i.i33: ; preds = %.noexc128.i
  %i.blz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.blv, i64 noundef 160) #29, !noalias !447
  br label %.body129.i

_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i34: ; preds = %.noexc128.i
  %i.bma = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !35, !noalias !353 ; 8 uses
  %.not.i.i134.i = icmp eq ptr %i.bmb, null
  br i1 %.not.i.i134.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i35, label %bb.kp

bb.kp:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i34
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 8 ; 4 uses
  %i.bmd = load atomic i64, ptr %i.bmc acquire, align 8, !noalias !353 ; 2 uses
  %i.bme = icmp eq i64 %i.bmd, 4294967297
  %i.bmf = trunc i64 %i.bmd to i32                ; 2 uses
  br i1 %i.bme, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  store i32 0, ptr %i.bmc, align 8, !tbaa !40, !noalias !353
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmb, i64 12
  store i32 0, ptr %i.bmg, align 4, !tbaa !42, !noalias !353
  %i.bmh = load ptr, ptr %i.bmb, align 8, !tbaa !43, !noalias !353
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 16
  %i.bmj = load ptr, ptr %i.bmi, align 8, !noalias !353
  call void %i.bmj(ptr noundef nonnull align 8 dereferenceable(16) %i.bmb) #27, !noalias !353, !inline_history !450
  %i.bmk = load ptr, ptr %i.bmb, align 8, !tbaa !43, !noalias !353
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 24
  %i.bmm = load ptr, ptr %i.bml, align 8, !noalias !353
  call void %i.bmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bmb) #27, !noalias !353, !inline_history !450
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i35

bb.kr:                                            ; preds = %bb.kp
  %i.bmn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !353
  %.not.i.i.i135.i = icmp eq i8 %i.bmn, 0
  br i1 %.not.i.i.i135.i, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.bmo = add nsw i32 %i.bmf, -1
  store i32 %i.bmo, ptr %i.bmc, align 8, !tbaa !3, !noalias !353
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i

bb.kt:                                            ; preds = %bb.kr
  %i.bmp = atomicrmw volatile add ptr %i.bmc, i32 -1 acq_rel, align 4, !noalias !353
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i: ; preds = %bb.kt, %bb.ks
  %.0.i.i.i.i137.i = phi i32 [ %i.bmf, %bb.ks ], [ %i.bmp, %bb.kt ]
  %i.bmq = icmp eq i32 %.0.i.i.i.i137.i, 1
  br i1 %i.bmq, label %bb.ku, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i35, !prof !46

bb.ku:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bmb) #27, !noalias !353
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i35

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i35: ; preds = %bb.ku, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136.i, %bb.kq, %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i34
  %i.bmr = load ptr, ptr %i.blm, align 8, !tbaa !35, !noalias !353 ; 8 uses
  %.not.i.i138.i = icmp eq ptr %i.bmr, null
  br i1 %.not.i.i138.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.i, label %bb.kv

bb.kv:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i35
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 8 ; 4 uses
  %i.bmt = load atomic i64, ptr %i.bms acquire, align 8, !noalias !353 ; 2 uses
  %i.bmu = icmp eq i64 %i.bmt, 4294967297
  %i.bmv = trunc i64 %i.bmt to i32                ; 2 uses
  br i1 %i.bmu, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  store i32 0, ptr %i.bms, align 8, !tbaa !40, !noalias !353
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmr, i64 12
  store i32 0, ptr %i.bmw, align 4, !tbaa !42, !noalias !353
  %i.bmx = load ptr, ptr %i.bmr, align 8, !tbaa !43, !noalias !353
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 16
  %i.bmz = load ptr, ptr %i.bmy, align 8, !noalias !353
  call void %i.bmz(ptr noundef nonnull align 8 dereferenceable(16) %i.bmr) #27, !noalias !353, !inline_history !450
  %i.bna = load ptr, ptr %i.bmr, align 8, !tbaa !43, !noalias !353
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 24
  %i.bnc = load ptr, ptr %i.bnb, align 8, !noalias !353
  call void %i.bnc(ptr noundef nonnull align 8 dereferenceable(16) %i.bmr) #27, !noalias !353, !inline_history !450
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.i

bb.kx:                                            ; preds = %bb.kv
  %i.bnd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !353
  %.not.i.i.i139.i = icmp eq i8 %i.bnd, 0
  br i1 %.not.i.i.i139.i, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.bne = add nsw i32 %i.bmv, -1
  store i32 %i.bne, ptr %i.bms, align 8, !tbaa !3, !noalias !353
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.i

bb.kz:                                            ; preds = %bb.kx
  %i.bnf = atomicrmw volatile add ptr %i.bms, i32 -1 acq_rel, align 4, !noalias !353
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.i: ; preds = %bb.kz, %bb.ky
  %.0.i.i.i.i141.i = phi i32 [ %i.bmv, %bb.ky ], [ %i.bnf, %bb.kz ]
  %i.bng = icmp eq i32 %.0.i.i.i.i141.i, 1
  br i1 %i.bng, label %bb.la, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.i, !prof !46

bb.la:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bmr) #27, !noalias !353
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.i

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.i: ; preds = %bb.la, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.i, %bb.kw, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i35
  %i.bnh = load ptr, ptr %35, align 8, !tbaa !297, !noalias !353 ; 7 uses
  %.not.i143.i = icmp eq ptr %i.bnh, null
  br i1 %.not.i143.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit148.i, label %bb.lb

bb.lb:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.i
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 40
  %i.bnj = atomicrmw sub ptr %i.bni, i32 1 acq_rel, align 4, !noalias !353
  %i.bnk = icmp eq i32 %i.bnj, 1
  br i1 %i.bnk, label %.sink.split.i.i144.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit148.i

.sink.split.i.i144.i:                             ; preds = %bb.lb
  %i.bnl = load ptr, ptr %i.bnh, align 8, !tbaa !43, !noalias !353
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 64
  %i.bnn = load ptr, ptr %i.bnm, align 8, !noalias !353
  invoke void %i.bnn(ptr noundef nonnull align 8 dereferenceable(64) %i.bnh)
          to label %.noexc.i145.i unwind label %bb.lc, !noalias !353, !inline_history !349

.noexc.i145.i:                                    ; preds = %.sink.split.i.i144.i
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnh, i64 8
  %i.bnp = load ptr, ptr %i.bno, align 8, !tbaa !350, !noalias !353
  %.not.i.i146.i = icmp eq ptr %i.bnp, null
  %i.bnq = load ptr, ptr %i.bnh, align 8, !tbaa !43, !noalias !353
  %..i.i147.i = select i1 %.not.i.i146.i, i64 8, i64 48
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 %..i.i147.i
  %i.bns = load ptr, ptr %i.bnr, align 8, !noalias !353
  invoke void %i.bns(ptr noundef nonnull align 8 dereferenceable(64) %i.bnh)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit148.i unwind label %bb.lc, !noalias !353, !inline_history !349

bb.lc:                                            ; preds = %.noexc.i145.i, %.sink.split.i.i144.i
end_hunk_1
