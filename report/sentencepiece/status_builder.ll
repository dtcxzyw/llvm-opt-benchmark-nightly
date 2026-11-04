Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/status_builder?download=true
inline.NumInlined: 464
inline.NumDeleted: 278
begin_hunk_0
%"struct.absl::lts_20260526::cord_internal::InlineData::Rep::AsTree" = type { i64, ptr }
%class.anon = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20260526::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::unique_ptr.19" = type { %"struct.std::__uniq_ptr_data.20" }
%"struct.std::__uniq_ptr_data.20" = type { %"class.std::__uniq_ptr_impl.21" }
%"class.std::__uniq_ptr_impl.21" = type { %"class.std::tuple.22" }
%"class.std::tuple.22" = type { %"struct.std::_Tuple_impl.23" }
%"struct.std::_Tuple_impl.23" = type { %"struct.std::_Head_base.26" }
%"struct.std::_Head_base.26" = type { ptr }

$_ZN4absl12lts_202605266StatusD2Ev = comdat any

$_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev = comdat any

$_ZNSt8optionalIN4absl12lts_2026052615status_internal6StreamEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSE_ = comdat any

$_ZN4absl12lts_2026052615status_internal37StatusPrivateAccessorForStatusBuilder19JoinMessageToStatusENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_16MessageJoinStyleE = comdat any

$_ZNO4absl12lts_2026052613StatusBuildercvNS0_6StatusEEv = comdat any

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2026052616strings_internal13OStringStreamD1Ev = comdat any

$_ZTv0_n24_N4absl12lts_2026052616strings_internal13OStringStreamD1Ev = comdat any

$_ZN4absl12lts_2026052616strings_internal13OStringStreamD0Ev = comdat any

$_ZTv0_n24_N4absl12lts_2026052616strings_internal13OStringStreamD0Ev = comdat any

$_ZN4absl12lts_202605264CordD2Ev = comdat any

$_ZNSt15__uniq_ptr_implIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EE5resetEPS3_ = comdat any

$_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_ = comdat any

$_ZN4absl12lts_2026052615status_internal37StatusPrivateAccessorForStatusBuilder10SetMessageERKNS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNSt10unique_ptrIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev = comdat any

$_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE15DestroyContentsEv = comdat any

$_ZTVN4absl12lts_2026052616strings_internal13OStringStreamE = comdat any

$_ZTCN4absl12lts_2026052616strings_internal13OStringStreamE0_So = comdat any

$_ZTIN4absl12lts_2026052616strings_internal13OStringStreamE = comdat any

$_ZTSN4absl12lts_2026052616strings_internal13OStringStreamE = comdat any

$_ZN4absl12lts_202605266Status16kMovedFromStringE = comdat any

@.str = private unnamed_addr constant [43 x i8] c"type.googleapis.com/util.MessageSetPayload\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN4absl12lts_2026052616strings_internal13OStringStreamE = linkonce_odr dso_local constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr @_ZTIN4absl12lts_2026052616strings_internal13OStringStreamE, ptr @_ZN4absl12lts_2026052616strings_internal13OStringStreamD1Ev, ptr @_ZN4absl12lts_2026052616strings_internal13OStringStreamD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr @_ZTIN4absl12lts_2026052616strings_internal13OStringStreamE, ptr @_ZTv0_n24_N4absl12lts_2026052616strings_internal13OStringStreamD1Ev, ptr @_ZTv0_n24_N4absl12lts_2026052616strings_internal13OStringStreamD0Ev] }, comdat, align 8
@_ZTCN4absl12lts_2026052616strings_internal13OStringStreamE0_So = linkonce_odr dso_local constant { [5 x ptr], [5 x ptr] } { [5 x ptr] [ptr inttoptr (i64 80 to ptr), ptr null, ptr @_ZTISo, ptr @_ZNSoD1Ev, ptr @_ZNSoD0Ev], [5 x ptr] [ptr inttoptr (i64 -80 to ptr), ptr inttoptr (i64 -80 to ptr), ptr @_ZTISo, ptr @_ZTv0_n24_NSoD1Ev, ptr @_ZTv0_n24_NSoD0Ev] }, comdat, align 8
@_ZTISo = external constant ptr
@_ZTIN4absl12lts_2026052616strings_internal13OStringStreamE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2026052616strings_internal13OStringStreamE, ptr @_ZTISo }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2026052616strings_internal13OStringStreamE = linkonce_odr dso_local constant [55 x i8] c"N4absl12lts_2026052616strings_internal13OStringStreamE\00", comdat, align 1
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unknown MessageJoinStyle\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"third_party/abseil-cpp/absl/status/status_builder.cc\00", align 1
@_ZN4absl12lts_202605266Status16kMovedFromStringE = linkonce_odr dso_local constant [28 x i8] c"Status accessed after move.\00", comdat, align 16
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN4absl12lts_2026052616strings_internal13OStringStream9StreambufE = external constant { [16 x ptr] }, align 8

@_ZN4absl12lts_2026052613StatusBuilderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2026052613StatusBuilderC2Ev
@_ZN4absl12lts_2026052613StatusBuilderC1ERKNS0_6StatusENS0_14SourceLocationE = dso_local unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN4absl12lts_2026052613StatusBuilderC2ERKNS0_6StatusENS0_14SourceLocationE
@_ZN4absl12lts_2026052613StatusBuilder3RepC1ERKNS0_6StatusE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKNS0_6StatusE
@_ZN4absl12lts_2026052613StatusBuilder3RepC1EONS0_6StatusE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4absl12lts_2026052613StatusBuilder3RepC2EONS0_6StatusE
@_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2026052613StatusBuilder3RepD2Ev
@_ZN4absl12lts_2026052613StatusBuilder3RepC1ERKS2_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKS2_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4absl12lts_2026052613StatusBuilder7DestroyESt10unique_ptrINS1_3RepESt14default_deleteIS3_EE(ptr nofreeobj noundef readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4absl12lts_2026052613StatusBuilderC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN4absl12lts_2026052613StatusBuilderC2ERKNS0_6StatusENS0_14SourceLocationE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 %2, ptr %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 %2, ptr %0, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13
  %i.a = load i64, ptr %1, align 8, !tbaa !16     ; 4 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_2026052613StatusBuilder7InitRepERKNS0_6StatusE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #24 ; 13 uses
  store i64 %i.a, ptr %i.c, align 8, !tbaa !16
  %i.d = trunc i64 %i.a to i1
  br i1 %i.d, label %_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKNS0_6StatusE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %i.a to ptr
  %i.f = atomicrmw add ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKNS0_6StatusE.exit.i

_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKNS0_6StatusE.exit.i: ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 0, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 0, ptr %i.l, align 8, !tbaa !35
  store i8 0, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store i8 0, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store ptr null, ptr %i.n, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  store i32 0, ptr %i.o, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 444
  store i8 0, ptr %i.p, align 4, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 445
  store i8 1, ptr %i.q, align 1, !tbaa !41
  br label %_ZN4absl12lts_2026052613StatusBuilder7InitRepERKNS0_6StatusE.exit

_ZN4absl12lts_2026052613StatusBuilder7InitRepERKNS0_6StatusE.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKNS0_6StatusE.exit.i
  %.0.i = phi ptr [ null, %bb.a ], [ %i.c, %_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKNS0_6StatusE.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNKR4absl12lts_2026052613StatusBuildercvNS0_6StatusEEv(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8, !tbaa !16
  br label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.c = tail call noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #24, !noalias !61 ; 3 uses
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(446) %i.c, ptr noundef nonnull align 8 dereferenceable(446) %i.b)
          to label %_ZSt11make_uniqueIN4absl12lts_2026052613StatusBuilder3RepEJRS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.d, !noalias !61

common.resume:                                    ; preds = %bb.k, %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.w, %bb.j ], [ %i.w, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 448) #25, !noalias !61
  br label %common.resume

_ZSt11make_uniqueIN4absl12lts_2026052613StatusBuilder3RepEJRS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c
  store ptr %i.c, ptr %2, align 8, !tbaa !42, !alias.scope !61
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZSt11make_uniqueIN4absl12lts_2026052613StatusBuilder3RepEJRS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !42     ; 9 uses
  %.not.i2 = icmp eq ptr %i.e, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 424 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !37, !range !43, !noundef !44
  %i.h = trunc nuw i8 %i.g to i1
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br i1 %i.h, label %bb.g, label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #26, !inline_history !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.k) #26, !inline_history !47
  br label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !36
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = load i64, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.t = inttoptr i64 %i.r to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 448) #25
  br label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit

bb.j:                                             ; preds = %_ZSt11make_uniqueIN4absl12lts_2026052613StatusBuilder3RepEJRS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %.not.i3 = icmp eq ptr %i.x, null
  br i1 %.not.i3, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.x)
  br label %common.resume

_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak dso_local void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 %1, ptr %2, ptr nofreeobj noundef align 8 dereferenceable(8) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::Status", align 8 ; 4 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !42     ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8, !tbaa !16, !alias.scope !64
  br label %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.b, ptr %4, align 8, !tbaa !16
  store i64 55, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.h = load i32, ptr %i.g, align 8, !tbaa !39
  invoke void @_ZN4absl12lts_2026052615status_internal37StatusPrivateAccessorForStatusBuilder19JoinMessageToStatusENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_16MessageJoinStyleE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %4, i64 %i.f, ptr %i.d, i32 noundef %i.h)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = inttoptr i64 %i.i to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #27
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.d, %bb.e
  %i.n = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  %i.p = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.n, i64 %1, ptr %2)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.g
  store i64 %i.p, ptr %0, align 8, !tbaa !16
  %i.q = icmp ne i64 %i.p, 1
  call void @llvm.assume(i1 %i.q)
  br label %_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit

bb.h:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZN4absl12lts_202605266Status17AddSourceLocationENS0_14SourceLocationE.exit: ; preds = %.noexc, %_ZN4absl12lts_202605266StatusD2Ev.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %0, %bb.i ], [ %4, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.r, %bb.h ]
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #26
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(446) initializes((0, 12), (24, 36)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !16     ; 3 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !16
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.j, align 8, !tbaa !35
  store i8 0, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i8 0, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr null, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 0, ptr %i.m, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 444
  store i8 0, ptr %i.n, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 445
  store i8 1, ptr %i.o, align 1, !tbaa !41
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202605266Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_ZN4absl12lts_202605266Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202605266Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4absl12lts_2026052613StatusBuilder3RepC2EONS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(446) initializes((0, 12), (24, 36)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.a, ptr %0, align 8, !tbaa !16
  store i64 55, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !35
  store i8 0, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i8 0, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr null, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 0, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 444
  store i8 0, ptr %i.k, align 4, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 445
  store i8 1, ptr %i.l, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl12lts_2026052613StatusBuilder3RepD2Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !37, !range !43, !noundef !44
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !37
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #26, !inline_history !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.f) #26, !inline_history !47
  br label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !36
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.m = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = inttoptr i64 %i.m to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !37, !range !43, !noundef !44
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !37
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4absl12lts_2026052615status_internal6StreamELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #26, !inline_history !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.f) #26, !inline_history !47
  br label %_ZNSt17_Optional_payloadIN4absl12lts_2026052615status_internal6StreamELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4absl12lts_2026052615status_internal6StreamELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr nofreeobj noundef align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #24 ; 13 uses
  store i64 %i.a, ptr %i.c, align 8, !tbaa !16
  store i64 55, ptr %0, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !35
  store i8 0, ptr %i.h, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store i8 0, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store ptr null, ptr %i.k, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  store i32 0, ptr %i.l, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 444
  store i8 0, ptr %i.m, align 4, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 445
  store i8 1, ptr %i.n, align 1, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052613StatusBuilder3RepC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(446) initializes((0, 36)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(446) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !16     ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !16
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZN4absl12lts_202605266StatusC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.b to ptr
  %i.e = atomicrmw add ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202605266StatusC2ERKS1_.exit

_ZN4absl12lts_202605266StatusC2ERKS1_.exit:       ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <4 x i32>, ptr %i.g, align 8, !tbaa !36
  store <4 x i32> %i.h, ptr %i.f, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !65
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !34
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.p, ptr %i.a, align 8, !tbaa !49
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN4absl12lts_202605266StatusC2ERKS1_.exit
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.r, ptr %i.k, align 8, !tbaa !48
  %i.s = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.s, ptr %i.m, align 8, !tbaa !36
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN4absl12lts_202605266StatusC2ERKS1_.exit
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.m, %_ZN4absl12lts_202605266StatusC2ERKS1_.exit ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !36
  store i8 %i.u, ptr %i.t, align 1, !tbaa !36
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.v, ptr %i.w, align 8, !tbaa !35
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i8 0, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !39
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 444
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !40, !range !43, !noundef !44
  store i8 %i.aj, ptr %i.ah, align 4, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 445
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 445
  %i.am = load i8, ptr %i.al, align 1, !tbaa !41, !range !43, !noundef !44
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !37, !range !43, !noundef !44
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = invoke noundef nonnull align 8 dereferenceable(352) ptr @_ZNSt8optionalIN4absl12lts_2026052615status_internal6StreamEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSE_(ptr noundef nonnull align 8 dereferenceable(360) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv.exit unwind label %bb.h ; 0 uses

bb.g:                                             ; preds = %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.z) #26
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !48  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.m
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.av = load i64, ptr %i.m, align 8, !tbaa !36
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv.exit: ; preds = %bb.f, %bb.e
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.g ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.as, %bb.h ]
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = tail call noundef nonnull align 8 dereferenceable(352) ptr @_ZNSt8optionalIN4absl12lts_2026052615status_internal6StreamEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSE_(ptr noundef nonnull align 8 dereferenceable(360) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(352) ptr @_ZNSt8optionalIN4absl12lts_2026052615status_internal6StreamEE7emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENSt9enable_ifIX18is_constructible_vIS3_DpT_EERS3_E4typeEDpOSE_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !37, !range !43, !noundef !44
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !37
  br i1 %i.c, label %bb.b, label %_ZNSt19_Optional_base_implIN4absl12lts_2026052615status_internal6StreamESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #26, !inline_history !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.f) #26, !inline_history !47
  br label %_ZNSt19_Optional_base_implIN4absl12lts_2026052615status_internal6StreamESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit

_ZNSt19_Optional_base_implIN4absl12lts_2026052615status_internal6StreamESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.g) #26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.h, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 0, ptr %i.i, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 0, ptr %i.j, align 1, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN4absl12lts_2026052616strings_internal13OStringStreamE0_So, i64 24), ptr %0, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN4absl12lts_2026052616strings_internal13OStringStreamE0_So, i64 64), ptr %i.g, align 8, !tbaa !46
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.g, ptr noundef nonnull %i.l)
          to label %_ZNSt19_Optional_base_implIN4absl12lts_2026052615status_internal6StreamESt14_Optional_baseIS3_Lb0ELb0EEE12_M_constructIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt19_Optional_base_implIN4absl12lts_2026052615status_internal6StreamESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.g) #26
  resume { ptr, i32 } %i.m

_ZNSt19_Optional_base_implIN4absl12lts_2026052615status_internal6StreamESt14_Optional_baseIS3_Lb0ELb0EEE12_M_constructIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %_ZNSt19_Optional_base_implIN4absl12lts_2026052615status_internal6StreamESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN4absl12lts_2026052616strings_internal13OStringStreamE, i64 24), ptr %0, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN4absl12lts_2026052616strings_internal13OStringStreamE, i64 64), ptr %i.g, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4absl12lts_2026052616strings_internal13OStringStream9StreambufE, i64 16), ptr %i.l, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.p, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %0, ptr %i.q, align 8, !tbaa !87
  store i8 1, ptr %i.a, align 8, !tbaa !37
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052613StatusBuilder10HasPayloadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::optional.4", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16, !noalias !90 ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %_ZNSt14_Optional_baseIN4absl12lts_202605264CordELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %i.c to ptr
  call void @_ZNK4absl12lts_2026052615status_internal9StatusRep10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.4") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 42, ptr nonnull @.str)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !92, !range !43
  %.pre5 = load i8, ptr %1, align 8
  %2 = trunc nuw i8 %.pre to i1                   ; 2 uses
  %i.f = trunc i8 %.pre5 to i1
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %3, align 8, !tbaa !92
  %or.cond.i.i.i = select i1 %2, i1 %i.f, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZNSt14_Optional_baseIN4absl12lts_202605264CordELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt14_Optional_baseIN4absl12lts_202605264CordELb0ELb0EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #27
  unreachable

_ZNSt14_Optional_baseIN4absl12lts_202605264CordELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  %4 = phi i1 [ true, %bb.d ], [ %2, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNSt14_Optional_baseIN4absl12lts_202605264CordELb0ELb0EED2Ev.exit
  %i.i = phi i1 [ %4, %_ZNSt14_Optional_baseIN4absl12lts_202605264CordELb0ELb0EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define weak dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNR4absl12lts_2026052613StatusBuilder7SetCodeENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Status", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::Status", align 8 ; 9 uses
  %4 = alloca %class.anon, align 8                ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.b, null
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.f = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef %i.e, i64 0, ptr null, i64 0, ptr nonnull @.str.1) ; 2 uses
  store i64 %i.f, ptr %2, align 8, !tbaa !16
  %i.g = invoke noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #24
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.c ; 13 uses

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.b
  store i64 %i.f, ptr %i.g, align 8, !tbaa !16, !noalias !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !32, !noalias !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.i, align 8, !noalias !95
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 0, ptr %i.j, align 8, !tbaa !33, !noalias !95
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !34, !noalias !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 0, ptr %i.m, align 8, !tbaa !35, !noalias !95
  store i8 0, ptr %i.l, align 8, !tbaa !36, !noalias !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  store i8 0, ptr %i.n, align 8, !tbaa !37, !noalias !95
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  store ptr null, ptr %i.o, align 8, !tbaa !38, !noalias !95
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  store i32 0, ptr %i.p, align 8, !tbaa !39, !noalias !95
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 444
  store i8 0, ptr %i.q, align 4, !tbaa !40, !noalias !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 445
  store i8 1, ptr %i.r, align 1, !tbaa !41, !noalias !95
  tail call void @_ZNSt15__uniq_ptr_implIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.t = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef %i.e, i64 0, ptr null, i64 0, ptr nonnull @.str.1) ; 2 uses
  store i64 %i.t, ptr %3, align 8, !tbaa !16
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %3, ptr %4, align 8, !tbaa !96
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = inttoptr i64 %i.v to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr nonnull %4, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNRS0_13StatusBuilder7SetCodeENS0_10StatusCodeEE3$_0vJSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
          to label %._ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit_crit_edge unwind label %bb.k

._ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !42
  %.pre18 = load i64, ptr %3, align 8, !tbaa !16
  br label %_ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit

_ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit: ; preds = %._ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit_crit_edge, %bb.d
  %i.y = phi i64 [ %.pre18, %._ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit_crit_edge ], [ %i.t, %bb.d ] ; 3 uses
  %i.z = phi ptr [ %.pre, %._ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit_crit_edge ], [ %i.u, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  %.not.i7 = icmp eq i64 %i.y, %i.aa
  br i1 %.not.i7, label %_ZN4absl12lts_202605266StatusaSEOS1_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit
  store i64 %i.y, ptr %i.z, align 8, !tbaa !16
  store i64 55, ptr %3, align 8, !tbaa !16
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %_ZN4absl12lts_202605266StatusD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = inttoptr i64 %i.aa to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ac)
          to label %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge unwind label %bb.h

._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge: ; preds = %bb.g
  %.pre19 = load i64, ptr %3, align 8, !tbaa !16
  br label %_ZN4absl12lts_202605266StatusaSEOS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #27
  unreachable

_ZN4absl12lts_202605266StatusaSEOS1_.exit:        ; preds = %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge, %_ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit
  %i.af = phi i64 [ %.pre19, %._ZN4absl12lts_202605266StatusaSEOS1_.exit_crit_edge ], [ %i.y, %_ZNK4absl12lts_202605266Status14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit ] ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZN4absl12lts_202605266StatusD2Ev.exit8, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_202605266StatusaSEOS1_.exit
  %i.ah = inttoptr i64 %i.af to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit8 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #27
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit8:          ; preds = %bb.f, %_ZN4absl12lts_202605266StatusaSEOS1_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.m

bb.l:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit8, %_ZN4absl12lts_202605266StatusD2Ev.exit
  ret ptr %0

bb.m:                                             ; preds = %bb.k, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.ak, %bb.k ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define weak dso_local void @_ZN4absl12lts_2026052624AbslInternalSetErrorCodeERNS0_13StatusBuilderENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNR4absl12lts_2026052613StatusBuilder7SetCodeENS0_10StatusCodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define weak dso_local void @_ZN4absl12lts_2026052613StatusBuilder17CurrentStackTraceB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !35
  store i8 0, ptr %i.a, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052615status_internal37StatusPrivateAccessorForStatusBuilder19JoinMessageToStatusENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_16MessageJoinStyleE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::Status") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(8) %1, i64 %2, ptr %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !16     ; 5 uses
  %i.b = icmp eq i64 %i.a, 1
  %i.c = icmp eq i64 %2, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %0, align 8, !tbaa !16
  store i64 55, ptr %1, align 8, !tbaa !16
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.a to i1
end_hunk_0
begin_hunk_1_@_ZNK4absl12lts_2026052613StatusBuilder8ToStringB5cxx11Ev:bb.a
  %i.j = phi ptr [ %i.b, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 440
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  invoke void @_ZN4absl12lts_2026052615status_internal37StatusPrivateAccessorForStatusBuilder19JoinMessageToStatusENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_16MessageJoinStyleE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %3, i64 %i.n, ptr %i.l, i32 noundef %i.p)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZN4absl12lts_202605266StatusC2ERKS1_.exit
  %i.q = load i64, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %_ZNK4absl12lts_202605266Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit12.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !12
  %i.s = invoke noundef i64 @_ZN4absl12lts_202605266Status21AddSourceLocationImplEmNS0_14SourceLocationE(i64 noundef %i.q, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.f unwind label %bb.l       ; 3 uses

_ZNK4absl12lts_202605266Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit12.thread: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !34, !alias.scope !102
  store i16 19279, ptr %i.t, align 8, !alias.scope !102
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.u, align 8, !tbaa !35, !alias.scope !102
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.v, align 2, !tbaa !36, !alias.scope !102
  br label %_ZN4absl12lts_202605266StatusD2Ev.exit13

bb.f:                                             ; preds = %bb.e
  store i64 %i.s, ptr %2, align 8, !tbaa !16
  %i.w = icmp ne i64 %i.s, 1
  call void @llvm.assume(i1 %i.w)
  invoke void @_ZN4absl12lts_202605266Status12ToStringSlowB5cxx11EmNS0_18StatusToStringModeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %i.s, i32 noundef 1)
          to label %_ZNK4absl12lts_202605266Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit12 unwind label %bb.l

_ZNK4absl12lts_202605266Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit12: ; preds = %bb.f
  %.pre15 = load i64, ptr %2, align 8, !tbaa !16  ; 2 uses
  %i.x = trunc i64 %.pre15 to i1
  br i1 %i.x, label %_ZN4absl12lts_202605266StatusD2Ev.exit13, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl12lts_202605266Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit12
  %i.y = inttoptr i64 %.pre15 to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit13 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit13:         ; preds = %_ZNK4absl12lts_202605266Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit12.thread, %_ZNK4absl12lts_202605266Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit12, %bb.g
  %i.ab = load i64, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %_ZN4absl12lts_202605266StatusD2Ev.exit14, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit13
  %i.ad = inttoptr i64 %i.ab to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ad)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit14 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #27
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit14:         ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit13, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.m

bb.k:                                             ; preds = %_ZN4absl12lts_202605266StatusC2ERKS1_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.f, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  br label %bb.n

bb.m:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit14, %_ZN4absl12lts_202605266StatusD2Ev.exit
  ret void

bb.n:                                             ; preds = %bb.k, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ag, %bb.k ]
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_13StatusBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNKR4absl12lts_2026052613StatusBuildercvNS0_6StatusEEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = inttoptr i64 %i.b to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %i.a

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.g
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define weak dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoONS0_13StatusBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNO4absl12lts_2026052613StatusBuildercvNS0_6StatusEEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = inttoptr i64 %i.b to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %i.a

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNO4absl12lts_2026052613StatusBuildercvNS0_6StatusEEv(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13
  store i64 %i.c, ptr %2, align 8, !tbaa !42
  store ptr null, ptr %i.a, align 8, !tbaa !42
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !42     ; 9 uses
  %.not.i3 = icmp eq ptr %i.d, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 424 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !37, !range !43, !noundef !44
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !37
  br i1 %i.g, label %bb.d, label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #26, !inline_history !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.j) #26, !inline_history !47
  br label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !36
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = load i64, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.s = inttoptr i64 %i.q to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.s)
          to label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #27
  unreachable

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 448) #25
  br label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %.not.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit6, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.w)
  br label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit6

_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit6: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.v

_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit, %bb.b
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

declare void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052616strings_internal13OStringStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.c) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #17

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N4absl12lts_2026052616strings_internal13OStringStreamD1Ev(ptr noundef %0) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #26, !inline_history !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.g) #26, !inline_history !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD1Ev(ptr noundef) unnamed_addr #19 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD0Ev(ptr noundef) unnamed_addr #19 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052616strings_internal13OStringStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #26, !inline_history !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.c) #26, !inline_history !47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #25
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N4absl12lts_2026052616strings_internal13OStringStreamD0Ev(ptr noundef %0) unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #26, !inline_history !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.g) #26, !inline_history !103
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(344) %i.d, i64 noundef 344) #25, !inline_history !104
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

declare void @_ZNK4absl12lts_2026052615status_internal9StatusRep10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::optional.4") align 8, ptr noundef nonnull align 8 dereferenceable(72), i64, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !36
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable
}

declare void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

declare noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef, i64, ptr, i64, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 9 uses
  store ptr %1, ptr %0, align 8, !tbaa !42
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 424 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !37, !range !43, !noundef !44
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !37
  br i1 %i.d, label %bb.c, label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #26, !inline_history !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.g) #26, !inline_history !47
  br label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !36
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = inttoptr i64 %i.n to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 448) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !37, !range !43, !noundef !44
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !37
  br i1 %i.d, label %bb.c, label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #26, !inline_history !47
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.g) #26, !inline_history !47
  br label %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !36
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Optional_baseIN4absl12lts_2026052615status_internal6StreamELb0ELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.n = load i64, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %_ZN4absl12lts_2026052613StatusBuilder3RepD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.p = inttoptr i64 %i.n to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %_ZN4absl12lts_2026052613StatusBuilder3RepD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

_ZN4absl12lts_2026052613StatusBuilder3RepD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 448) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613StatusBuilder3RepD2Ev.exit, %bb.a
  ret void
}

declare void @_ZNK4absl12lts_2026052615status_internal9StatusRep14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #13

declare void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052615status_internal37StatusPrivateAccessorForStatusBuilder10SetMessageERKNS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::unique_ptr.19", align 8 ; 2 uses
  store i64 %2, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = icmp eq i64 %2, 0
  %i.d = load i64, ptr %1, align 8, !tbaa !16     ; 5 uses
  %i.e = trunc i64 %i.d to i1                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.d, 2
  %i.g = trunc i64 %i.f to i32
  br label %_ZNK4absl12lts_202605266Status4codeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %i.d to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !120
  br label %_ZNK4absl12lts_202605266Status4codeEv.exit

_ZNK4absl12lts_202605266Status4codeEv.exit:       ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  %i.k = tail call noundef i32 @_ZN4absl12lts_2026052615status_internal14MapToLocalCodeEi(i32 noundef %.0.i.i)
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = or disjoint i64 %i.m, 1
  %i.o = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef %i.n, i64 0, ptr %3, i64 0, ptr nonnull @.str.1)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24 ; 9 uses
  %i.q = lshr i64 %i.d, 2
  %i.r = trunc i64 %i.q to i32
  store ptr null, ptr %5, align 8, !tbaa !121
  store i32 1, ptr %i.p, align 4, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !34
  %i.v = icmp eq ptr %3, null
  br i1 %i.v, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #28
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %2, ptr %i.a, align 8, !tbaa !49
  %i.w = icmp ugt i64 %2, 15
  br i1 %i.w, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.g
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i.i.i.thread unwind label %bb.j ; 2 uses

._crit_edge.i.i.i.i.i.thread:                     ; preds = %.noexc.i.i.i.i
  store ptr %i.x, ptr %i.t, align 8, !tbaa !48
  %i.y = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.y, ptr %i.u, align 8, !tbaa !36
  br label %bb.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g
  %cond = icmp eq i64 %2, 1
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.z = load i8, ptr %3, align 1, !tbaa !36
  store i8 %i.z, ptr %i.u, align 8, !tbaa !36
  br label %_ZNSt10unique_ptrIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.thread, %._crit_edge.i.i.i.i.i
  %i.aa = phi ptr [ %i.x, %._crit_edge.i.i.i.i.i.thread ], [ %i.u, %._crit_edge.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %3, i64 %2, i1 false)
  br label %_ZNSt10unique_ptrIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit: ; preds = %bb.h, %bb.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !35
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %i.af, align 8, !tbaa !123
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 0, ptr %i.ag, align 8, !tbaa !52
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i.i.i.i, %.noexc.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 72) #25
  resume { ptr, i32 } %i.ah

bb.k:                                             ; preds = %bb.e
  %i.ai = inttoptr i64 %i.d to ptr
  %i.aj = call noundef ptr @_ZNK4absl12lts_2026052615status_internal9StatusRep5CloneENS0_12optional_refISt17basic_string_viewIcSt11char_traitsIcEEEEbb(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr nonnull %4, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt10unique_ptrIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit
  %.0 = phi ptr [ %i.p, %_ZNSt10unique_ptrIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit ], [ %i.aj, %bb.k ]
  %i.ak = ptrtoint ptr %.0 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK4absl12lts_202605266Status4codeEv.exit
  %storemerge = phi i64 [ %i.ak, %bb.l ], [ %i.o, %_ZNK4absl12lts_202605266Status4codeEv.exit ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !16
  ret void
}

declare void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNKSt14default_deleteIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEEEclEPS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZNKSt14default_deleteIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEEEclEPS6_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
end_hunk_1
