Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/heif_regions?download=true
inline.NumInlined: 1437
inline.NumDeleted: 801
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.heif_error = type { i32, i32, ptr }
%"struct.std::__1::__farray" = type { [2 x ptr] }
%"class.std::__1::vector.113" = type { ptr, ptr, %"class.std::__1::__compressed_pair.114" }
%"class.std::__1::__compressed_pair.114" = type { %"struct.std::__1::__compressed_pair_elem.115" }
%"struct.std::__1::__compressed_pair_elem.115" = type { ptr }
%"class.std::__1::shared_ptr.127" = type { ptr, ptr }
%"struct.std::__1::__exception_guard_exceptions.201" = type <{ %"class.std::__1::vector<std::__1::shared_ptr<RegionGeometry>>::__destroy_vector", i8, [7 x i8] }>
%"class.std::__1::vector<std::__1::shared_ptr<RegionGeometry>>::__destroy_vector" = type { ptr }
%"class.std::__1::vector.162" = type { ptr, ptr, %"class.std::__1::__compressed_pair.163" }
%"class.std::__1::__compressed_pair.163" = type { %"struct.std::__1::__compressed_pair_elem.164" }
%"struct.std::__1::__compressed_pair_elem.164" = type { ptr }
%"class.std::__1::shared_ptr.170" = type { ptr, ptr }
%class.RegionCoordinateTransform = type { double, double, double, double, double, double }
%"class.std::__1::shared_ptr.137" = type { ptr, ptr }
%"class.std::__1::shared_ptr.171" = type { ptr, ptr }
%"class.std::__1::shared_ptr.172" = type { ptr, ptr }
%"class.std::__1::shared_ptr.185" = type { ptr, ptr }
%"class.std::__1::shared_ptr.174" = type { ptr, ptr }
%"class.std::__1::shared_ptr.169" = type { ptr, ptr }
%struct.heif_context = type { %"class.std::__1::shared_ptr.0" }
%"class.std::__1::shared_ptr.0" = type { ptr, ptr }
%class.anon = type { i8 }
%class.Result = type { %"class.std::__1::variant" }
%"class.std::__1::variant" = type { %"class.std::__1::__variant_detail::__impl" }
%"class.std::__1::__variant_detail::__impl" = type { %"class.std::__1::__variant_detail::__copy_assignment.base", [4 x i8] }
%"class.std::__1::__variant_detail::__copy_assignment.base" = type { %"class.std::__1::__variant_detail::__move_assignment.base" }
%"class.std::__1::__variant_detail::__move_assignment.base" = type { %"class.std::__1::__variant_detail::__assignment.base" }
%"class.std::__1::__variant_detail::__assignment.base" = type { %"class.std::__1::__variant_detail::__copy_constructor.base" }
%"class.std::__1::__variant_detail::__copy_constructor.base" = type { %"class.std::__1::__variant_detail::__move_constructor.base" }
%"class.std::__1::__variant_detail::__move_constructor.base" = type { %"class.std::__1::__variant_detail::__ctor.base" }
%"class.std::__1::__variant_detail::__ctor.base" = type { %"class.std::__1::__variant_detail::__dtor.base" }
%"class.std::__1::__variant_detail::__dtor.base" = type { %"class.std::__1::__variant_detail::__base.base" }
%"class.std::__1::__variant_detail::__base.base" = type <{ %"union.std::__1::__variant_detail::__union", i32 }>
%"union.std::__1::__variant_detail::__union" = type { %"union.std::__1::__variant_detail::__union.182" }
%"union.std::__1::__variant_detail::__union.182" = type { %"struct.std::__1::__variant_detail::__alt.183" }
%"struct.std::__1::__variant_detail::__alt.183" = type { %class.Error }
%class.Error = type { i32, i32, %"class.std::__1::basic_string" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon.32 }
%union.anon.32 = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.33, i64, ptr }
%struct.anon.33 = type { i64 }
%"class.std::__1::shared_ptr.173" = type { ptr, ptr }

$_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev = comdat any

$_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEED2B8ne180100Ev = comdat any

$_ZNSt3__110shared_ptrI20RegionGeometry_PointED2B8ne180100Ev = comdat any

$_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev = comdat any

$_ZNSt3__110shared_ptrI24RegionGeometry_RectangleED2B8ne180100Ev = comdat any

$_ZNSt3__110shared_ptrI22RegionGeometry_EllipseED2B8ne180100Ev = comdat any

$_ZNSt3__110shared_ptrI29RegionGeometry_ReferencedMaskED2B8ne180100Ev = comdat any

$_ZNSt3__110shared_ptrI25RegionGeometry_InlineMaskED2B8ne180100Ev = comdat any

$_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev = comdat any

$_ZN12heif_contextD2Ev = comdat any

$_ZN9ImageItem18add_region_item_idEj = comdat any

$_ZN6ResultINSt3__110shared_ptrI10RegionItemEEED2Ev = comdat any

$_ZNSt3__110shared_ptrI22RegionGeometry_PolygonED2B8ne180100Ev = comdat any

$_ZNSt3__110shared_ptrI11HeifContextED2B8ne180100Ev = comdat any

$_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8ne180100v = comdat any

$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS4_EEE16__destroy_vectorEED2B8ne180100Ev = comdat any

$_ZNKSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm = comdat any

$_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_ = comdat any

$_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_ = comdat any

$_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_ = comdat any

$_ZNSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE8__appendEm = comdat any

$_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEED2Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEED0Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEE16__on_zero_sharedEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEE21__on_zero_shared_weakEv = comdat any

$_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEED2Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEED0Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEE16__on_zero_sharedEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEE21__on_zero_shared_weakEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEED2Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEED0Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEE16__on_zero_sharedEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEE21__on_zero_shared_weakEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEED2Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEED0Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEE16__on_zero_sharedEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEE21__on_zero_shared_weakEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEED2Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEED0Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEE16__on_zero_sharedEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEE21__on_zero_shared_weakEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEED2Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEED0Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEE16__on_zero_sharedEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEE21__on_zero_shared_weakEv = comdat any

$_ZTI14RegionGeometry = comdat any

$_ZTS14RegionGeometry = comdat any

$_ZTVNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE = comdat any

$_ZTINSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE = comdat any

$_ZTSNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE = comdat any

$_ZTVNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE = comdat any

$_ZTINSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE = comdat any

$_ZTSNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE = comdat any

$_ZTVNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEEE = comdat any

$_ZTINSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEEE = comdat any

$_ZTSNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEEE = comdat any

$_ZTVNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEEE = comdat any

$_ZTINSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEEE = comdat any

$_ZTSNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEEE = comdat any

$_ZTVNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEEE = comdat any

$_ZTINSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEEE = comdat any

$_ZTSNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEEE = comdat any

$_ZTVNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEEE = comdat any

$_ZTINSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEEE = comdat any

$_ZTSNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEEE = comdat any

@heif_error_null_pointer_argument = external local_unnamed_addr global %struct.heif_error, align 8
@.str = private unnamed_addr constant [27 x i8] c"Region item does not exist\00", align 1
@heif_error_success = external local_unnamed_addr global %struct.heif_error, align 8
@heif_error_invalid_parameter_value = external local_unnamed_addr global %struct.heif_error, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Inline mask image must have a Y channel\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@_ZTI14RegionGeometry = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS14RegionGeometry }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS14RegionGeometry = linkonce_odr hidden constant [17 x i8] c"14RegionGeometry\00", comdat, align 1
@_ZTI22RegionGeometry_Polygon = external constant ptr
@__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.__fmatrix = private unnamed_addr constant %"struct.std::__1::__farray" { [2 x ptr] [ptr @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_, ptr @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_] }, align 8
@_ZTI20RegionGeometry_Point = external constant ptr
@_ZTI24RegionGeometry_Rectangle = external constant ptr
@_ZTI22RegionGeometry_Ellipse = external constant ptr
@_ZTI29RegionGeometry_ReferencedMask = external constant ptr
@_ZTI25RegionGeometry_InlineMask = external constant ptr
@_ZTVNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [79 x i8] c"NSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTINSt3__119__shared_weak_countE = external constant ptr
@_ZTV25RegionGeometry_InlineMask = external constant { [8 x ptr] }, align 8
@_ZTISt18bad_variant_access = external constant ptr
@_ZTVSt18bad_variant_access = external constant { [5 x ptr] }, align 8
@_ZTVNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [74 x i8] c"NSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTV20RegionGeometry_Point = external constant { [8 x ptr] }, align 8
@_ZTVNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [78 x i8] c"NSt3__120__shared_ptr_emplaceI24RegionGeometry_RectangleNS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTV24RegionGeometry_Rectangle = external constant { [8 x ptr] }, align 8
@_ZTVNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [76 x i8] c"NSt3__120__shared_ptr_emplaceI22RegionGeometry_EllipseNS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTV22RegionGeometry_Ellipse = external constant { [8 x ptr] }, align 8
@_ZTVNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [76 x i8] c"NSt3__120__shared_ptr_emplaceI22RegionGeometry_PolygonNS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTV22RegionGeometry_Polygon = external constant { [8 x ptr] }, align 8
@_ZTVNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [83 x i8] c"NSt3__120__shared_ptr_emplaceI29RegionGeometry_ReferencedMaskNS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTV29RegionGeometry_ReferencedMask = external constant { [8 x ptr] }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @heif_image_handle_get_number_of_region_items(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define hidden i32 @heif_image_handle_get_list_of_region_item_ids(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::vector.113", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #22
          to label %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i unwind label %bb.d ; 3 uses

_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %i.e, i64 %i.j, i1 false)
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.f

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !35     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne180100Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %i.c, align 8, !tbaa !34
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #23
  br label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne180100Ev.exit.i.i

_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne180100Ev.exit.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i, %bb.a
  %i.u = phi ptr [ %i.l, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i ], [ null, %bb.a ] ; 4 uses
  %i.v = phi i64 [ %i.n, %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endIPjS5_EEvT_T0_m.exit.i.i ], [ 0, %bb.a ]
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = lshr exact i64 %i.x, 2
  %i.z = trunc i64 %i.y to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.z) ; 2 uses
  %i.aa = sext i32 %.sroa.speculated to i64
  %i.ab = shl nsw i64 %i.aa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.u, i64 %i.ab, i1 false)
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.x) #23
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEED2B8ne180100Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.sroa.speculated
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden { i64, ptr } @heif_context_get_region_item(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::shared_ptr.127", align 8 ; 6 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr @heif_error_null_pointer_argument, align 8 ; 2 uses
  %.sroa.0.sroa.4.0.extract.shift = and i64 %.sroa.0.0.copyload, -4294967296
  %.sroa.5.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_null_pointer_argument, i64 8), align 8, !tbaa !38
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.b = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46, !noalias !165 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47, !noalias !165 ; 2 uses
  %.not1113.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1113.i, label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.critedge.i
  %.sroa.07.014.i = phi ptr [ %i.n, %.critedge.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.07.014.i, align 8, !tbaa !50, !noalias !165 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56, !noalias !165
  %.not.i = icmp eq i32 %i.h, %1
  br i1 %.not.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph.i
  store ptr %i.g, ptr %3, align 8, !tbaa !50, !alias.scope !165
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57, !noalias !165 ; 4 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !57, !alias.scope !165
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNK11HeifContext15get_region_itemEj.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !noalias !165 ; 0 uses
  br label %_ZNK11HeifContext15get_region_itemEj.exitthread-pre-split

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.014.i, i64 16 ; 2 uses
  %.not11.i = icmp eq ptr %i.n, %i.f
  br i1 %.not11.i, label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit, label %.lr.ph.i

_ZNK11HeifContext15get_region_itemEj.exitthread-pre-split: ; preds = %bb.d, %bb.e
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %bb.f unwind label %bb.h       ; 5 uses

bb.f:                                             ; preds = %_ZNK11HeifContext15get_region_itemEj.exitthread-pre-split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@heif_region_get_mask_image:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !58 ; 5 uses
  %.not.i.i45 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i45, label %_ZN12heif_contextD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = atomicrmw add ptr %i.er, i64 -1 acq_rel, align 8
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.am, label %_ZN12heif_contextD2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !65
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(24) %i.eq) #20, !inline_history !260
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eq) #20
  br label %_ZN12heif_contextD2Ev.exit

_ZN12heif_contextD2Ev.exit:                       ; preds = %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ex = extractvalue { i64, ptr } %.pn35, 1
  br label %_ZL33heif_region_get_inline_mask_imagePK11heif_regionPiS2_PjS3_PP10heif_image.exit

bb.an:                                            ; preds = %bb.u
  %.sroa.018.0.copyload = load i64, ptr @heif_error_invalid_parameter_value, align 8
  %.sroa.8.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_invalid_parameter_value, i64 8), align 8, !tbaa !38
  br label %_ZL33heif_region_get_inline_mask_imagePK11heif_regionPiS2_PjS3_PP10heif_image.exit

_ZL33heif_region_get_inline_mask_imagePK11heif_regionPiS2_PjS3_PP10heif_image.exit: ; preds = %_ZN12heif_contextD2Ev.exit, %heif_region_get_referenced_mask_ID.exit, %_ZNSt3__110shared_ptrI25RegionGeometry_InlineMaskED2B8ne180100Ev.exit.i, %bb.c, %bb.an
  %.sroa.053.2.i.pn = phi i64 [ %.sroa.018.0.copyload, %bb.an ], [ %.sroa.053.198.i, %_ZNSt3__110shared_ptrI25RegionGeometry_InlineMaskED2B8ne180100Ev.exit.i ], [ %.sroa.053.0.copyload.i, %bb.c ], [ %.sroa.018.sroa.8.0.in.in, %_ZN12heif_contextD2Ev.exit ], [ %.sroa.0.1.i, %heif_region_get_referenced_mask_ID.exit ]
  %.sroa.6.2.i.pn = phi ptr [ %.sroa.8.0.copyload, %bb.an ], [ %.sroa.6.199.i, %_ZNSt3__110shared_ptrI25RegionGeometry_InlineMaskED2B8ne180100Ev.exit.i ], [ %.sroa.6.0.copyload.i, %bb.c ], [ %i.ex, %_ZN12heif_contextD2Ev.exit ], [ %.sroa.4.1.i, %heif_region_get_referenced_mask_ID.exit ]
  %.fca.0.insert.i.pn = insertvalue { i64, ptr } poison, i64 %.sroa.053.2.i.pn, 0
  %.fca.1.insert.merged = insertvalue { i64, ptr } %.fca.0.insert.i.pn, ptr %.sroa.6.2.i.pn, 1
  ret { i64, ptr } %.fca.1.insert.merged
}

declare { i64, ptr } @heif_context_get_image_handle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare { i64, ptr } @heif_decode_image(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @heif_image_handle_release(ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12heif_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI11HeifContextED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrI11HeifContextED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #20, !inline_history !15
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #20
  br label %_ZNSt3__110shared_ptrI11HeifContextED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI11HeifContextED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { i64, ptr } @heif_image_handle_add_region_item(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon, align 1                ; 3 uses
  %5 = alloca %class.Result, align 8              ; 10 uses
  %6 = alloca %"class.std::__1::shared_ptr.127", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  call void @_ZN11HeifContext15add_region_itemEjj(ptr dead_on_unwind nonnull writable sret(%class.Result) align 8 %5, ptr noundef nonnull align 8 dereferenceable(312) %i.b, i32 noundef %1, i32 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !160
  switch i32 %i.d, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI10RegionItemEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI10RegionItemEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.f = invoke { i64, ptr } @_ZNK5Error12error_structEP11ErrorBuffer(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.e)
          to label %_ZNK6ResultINSt3__110shared_ptrI10RegionItemEEE12error_structEP11ErrorBuffer.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI10RegionItemEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.h = load ptr, ptr %5, align 8, !tbaa !50     ; 3 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 9 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !57
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit: ; preds = %bb.d, %bb.e
  %i.n = load ptr, ptr %0, align 8, !tbaa !29
  %i.o = load i32, ptr %i.h, align 8, !tbaa !56
  invoke void @_ZN9ImageItem18add_region_item_idEj(ptr noundef nonnull align 8 dereferenceable(928) %i.n, i32 noundef %i.o)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %bb.h unwind label %bb.m       ; 5 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.a, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.h, ptr %i.v, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.k, ptr %i.w, align 8, !tbaa !61
  store ptr %i.p, ptr %3, align 8, !tbaa !63
  %.sroa.0.0.copyload27 = load i64, ptr @heif_error_success, align 8
  %.sroa.3.0.copyload28 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_success, i64 8), align 8, !tbaa !38
  br label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit

bb.j:                                             ; preds = %bb.f
  %.sroa.0.0.copyload = load i64, ptr @heif_error_success, align 8 ; 3 uses
  %.sroa.3.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_success, i64 8), align 8, !tbaa !38 ; 3 uses
  %.not.i22 = icmp eq ptr %i.k, null
  br i1 %.not.i22, label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.y = atomicrmw add ptr %i.x, i64 -1 acq_rel, align 8
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.l, label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #20, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #20
  br label %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit: ; preds = %.thread, %bb.j, %bb.k, %bb.l
  %.sroa.3.0.copyload31 = phi ptr [ %.sroa.3.0.copyload28, %.thread ], [ %.sroa.3.0.copyload, %bb.j ], [ %.sroa.3.0.copyload, %bb.k ], [ %.sroa.3.0.copyload, %bb.l ]
  %.sroa.0.0.copyload30 = phi i64 [ %.sroa.0.0.copyload27, %.thread ], [ %.sroa.0.0.copyload, %bb.j ], [ %.sroa.0.0.copyload, %bb.k ], [ %.sroa.0.0.copyload, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ad = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload30, 0
  %i.ae = insertvalue { i64, ptr } %i.ad, ptr %.sroa.3.0.copyload31, 1
  br label %_ZNK6ResultINSt3__110shared_ptrI10RegionItemEEE12error_structEP11ErrorBuffer.exit

bb.m:                                             ; preds = %bb.g, %_ZNSt3__110shared_ptrI10RegionItemEC2B8ne180100ERKS2_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.p

_ZNK6ResultINSt3__110shared_ptrI10RegionItemEEE12error_structEP11ErrorBuffer.exit: ; preds = %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI10RegionItemEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i, %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.ae, %_ZNSt3__110shared_ptrI10RegionItemED2B8ne180100Ev.exit ], [ %i.f, %_ZNSt3__13getB8ne180100I5ErrorJNS_10shared_ptrI10RegionItemEES1_EEERKT_RKNS_7variantIJDpT0_EEE.exit.i ]
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !160 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %_ZN6ResultINSt3__110shared_ptrI10RegionItemEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK6ResultINSt3__110shared_ptrI10RegionItemEEE12error_structEP11ErrorBuffer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %7 = zext i32 %i.ag to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.__fmatrix, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  invoke void %9(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i.i unwind label %bb.o, !inline_history !16

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN6ResultINSt3__110shared_ptrI10RegionItemEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #24
  unreachable

_ZN6ResultINSt3__110shared_ptrI10RegionItemEEED2Ev.exit: ; preds = %_ZNK6ResultINSt3__110shared_ptrI10RegionItemEEE12error_structEP11ErrorBuffer.exit, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret { i64, ptr } %.fca.1.insert.merged

bb.p:                                             ; preds = %bb.m, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.m ], [ %i.g, %bb.c ]
  call void @_ZN6ResultINSt3__110shared_ptrI10RegionItemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN11HeifContext15add_region_itemEjj(ptr dead_on_unwind writable sret(%class.Result) align 8, ptr noundef nonnull align 8 dereferenceable(312), i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9ImageItem18add_region_item_idEj(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8ne180100ERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 2
  %i.m = add nsw i64 %i.l, 1                      ; 2 uses
  %i.n = icmp ugt i64 %i.m, 4611686018427387903
  br i1 %i.n, label %bb.d, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #21
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.c
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = sub i64 %i.o, %i.j                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.p, 9223372036854775804
  %i.q = ashr exact i64 %i.p, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.m)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 4611686018427387903 ; 4 uses
  %i.r = icmp ne i64 %.0.i.i.i, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp ugt i64 %.0.i.i.i, 4611686018427387903
  br i1 %i.s, label %bb.e, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #21
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i
  %i.t = shl nuw i64 %.0.i.i.i, 2
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22 ; 3 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.k ; 7 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0.i.i.i
  store i32 %1, ptr %i.w, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !34   ; 6 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !35  ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = add i64 %i.aa, -4
  %i.ae = sub i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.ah = add i64 %i.j, %i.aa
  %i.ai = add i64 %i.v, %i.i
  %i.aj = sub i64 %i.ai, %i.ah
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.ak = mul i64 %n.vec, -4                      ; 2 uses
  %i.al = getelementptr i8, ptr %i.w, i64 %i.ak   ; 2 uses
  %i.am = getelementptr i8, ptr %i.z, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.an ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.z, i64 %i.an ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %next.gep9, i64 -16
  %i.ap = getelementptr inbounds i8, ptr %next.gep9, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !67, !noalias !277
  %wide.load10 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !67, !noalias !277
  %i.aq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ar = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.aq, align 4, !tbaa !67, !noalias !277
  store <4 x i32> %wide.load10, ptr %i.ar, align 4, !tbaa !67, !noalias !277
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.i.i.i.i.preheader12:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.at = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12 ]
  %i.au = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !67, !noalias !277
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -4 ; 3 uses
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !67, !noalias !277
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !276

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i ], [ %i.al, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !36
  store ptr %i.y, ptr %i.b, align 8, !tbaa !36
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !36
  store ptr %i.x, ptr %i.d, align 8, !tbaa !36
  %.not.i5.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i5.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8ne180100ERKj.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.ab to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ba) #23
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8ne180100ERKj.exit

_ZNSt3__16vectorIjNS_9allocatorIjEEE9push_backB8ne180100ERKj.exit: ; preds = %bb.b, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i, %bb.f
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.y, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.y, %bb.f ]
  store ptr %.0.i, ptr %i.b, align 8, !tbaa !34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6ResultINSt3__110shared_ptrI10RegionItemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon, align 1                ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZNSt3__17variantIJNS_10shared_ptrI10RegionItemEE5ErrorEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %2 = zext i32 %i.b to i64
  %3 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.__fmatrix, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  invoke void %4(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i unwind label %bb.c, !inline_history !16

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %_ZNSt3__17variantIJNS_10shared_ptrI10RegionItemEE5ErrorEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #24
  unreachable

_ZNSt3__17variantIJNS_10shared_ptrI10RegionItemEE5ErrorEED2B8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { i64, ptr } @heif_region_item_add_region_point(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100I20RegionGeometry_PointvEERKNS0_IT_EE.exit:
  %4 = alloca %"class.std::__1::shared_ptr.170", align 8 ; 7 uses
  %5 = alloca %"class.std::__1::shared_ptr.169", align 8 ; 7 uses
  %6 = alloca %"class.std::__1::shared_ptr.169", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22, !noalias !286 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !286
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE, i64 16), ptr %i.a, align 8, !tbaa !65, !noalias !286
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV20RegionGeometry_Point, i64 16), ptr %i.c, align 8, !tbaa !65, !noalias !286
  store ptr %i.c, ptr %4, align 8, !tbaa !91, !alias.scope !287
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !90, !alias.scope !287
  store i32 %1, ptr %i.d, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %2, ptr %i.f, align 4, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.c, ptr %5, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.i, align 8, !tbaa !79
  %i.j = atomicrmw add ptr %i.b, i64 1 monotonic, align 8 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %.thread, label %bb.a

.thread:                                          ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100I20RegionGeometry_PointvEERKNS0_IT_EE.exit
  store ptr %i.c, ptr %i.l, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.a, ptr %i.p, align 8, !tbaa !79
  %i.q = atomicrmw add ptr %i.b, i64 1 monotonic, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.r, ptr %i.k, align 8, !tbaa !69
  br label %bb.c

bb.a:                                             ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100I20RegionGeometry_PointvEERKNS0_IT_EE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = invoke noundef ptr @_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !79  ; 2 uses
  store ptr %i.t, ptr %i.k, align 8, !tbaa !69
  %.not.i10 = icmp eq ptr %.pre, null
  br i1 %.not.i10, label %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.u = phi ptr [ %i.a, %.thread ], [ %.pre, %bb.b ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = atomicrmw add ptr %i.v, i64 -1 acq_rel, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #20, !inline_history !14
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #20
  br label %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not = icmp eq ptr %3, null
  %.pre18 = load ptr, ptr %i.e, align 8, !tbaa !90 ; 10 uses
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ab = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.pre18, ptr %i.ac, align 8, !tbaa !79
  %.not.i11 = icmp eq ptr %.pre18, null           ; 3 uses
  br i1 %.not.i11, label %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100I20RegionGeometry_PointvEERKNS0_IT_EE.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre18, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100I20RegionGeometry_PointvEERKNS0_IT_EE.exit12

_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100I20RegionGeometry_PointvEERKNS0_IT_EE.exit12: ; preds = %bb.e, %bb.f
  %i.af = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %.noexc13 unwind label %bb.n   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100I20RegionGeometry_PointvEERKNS0_IT_EE.exit12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  br i1 %.not.i11, label %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc13
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre18, i64 8
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit.i

_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit.i: ; preds = %bb.g, %.noexc13
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !156
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %.pre18, ptr %i.aj, align 8, !tbaa !61
  %.phi.trans.insert11.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre12.i = load ptr, ptr %.phi.trans.insert11.i, align 8, !tbaa !57 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.g, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.not.i.i7.i = icmp eq ptr %.pre12.i, null
  br i1 %.not.i.i7.i, label %_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 8
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit.i

_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit.i: ; preds = %bb.h, %_ZNSt3__110shared_ptrI14RegionGeometryEaSB8ne180100ERKS2_.exit.i
  store <2 x ptr> %i.ak, ptr %i.al, align 8, !tbaa !59
  %.phi.trans.insert14.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre15.i = load ptr, ptr %.phi.trans.insert14.i, align 8, !tbaa !58 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %0, align 8, !tbaa !59
  %.not.i.i9.i = icmp eq ptr %.pre15.i, null
  br i1 %.not.i.i9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre15.i, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt3__110shared_ptrI10RegionItemEaSB8ne180100ERKS2_.exit.i
  store <2 x ptr> %i.ao, ptr %i.af, align 8, !tbaa !59
  store ptr %i.af, ptr %3, align 8, !tbaa !82
  br i1 %.not.i11, label %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit15, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre18, i64 8
  %i.as = atomicrmw add ptr %i.ar, i64 -1 acq_rel, align 8
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.l, label %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit15

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %.pre18, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(24) %.pre18) #20, !inline_history !14
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre18) #20
  br label %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit15

_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit15: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pre17 = load ptr, ptr %i.e, align 8, !tbaa !90
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.r

bb.n:                                             ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryEC2B8ne180100I20RegionGeometry_PointvEERKNS0_IT_EE.exit12
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit15, %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit
  %i.az = phi ptr [ %.pre17, %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit15 ], [ %.pre18, %_ZNSt3__110shared_ptrI14RegionGeometryED2B8ne180100Ev.exit ] ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr @heif_error_success, align 8
  %.sroa.2.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @heif_error_success, i64 8), align 8, !tbaa !38
  %.not.i16 = icmp eq ptr %i.az, null
  br i1 %.not.i16, label %_ZNSt3__110shared_ptrI20RegionGeometry_PointED2B8ne180100Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 acq_rel, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %_ZNSt3__110shared_ptrI20RegionGeometry_PointED2B8ne180100Ev.exit
end_hunk_1
begin_hunk_2_@_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm:bb.a
  %n.vec34 = and i64 %i.y, -8                     ; 3 uses
  %i.aj = sub i64 0, %n.vec34                     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.t, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.s, i64 %i.aj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %i.am = sub i64 0, %index35                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.t, i64 %i.am
  %next.gep37 = getelementptr i8, ptr %i.s, i64 %i.am
  %i.an = getelementptr inbounds i8, ptr %next.gep37, i64 -8
  %wide.load38 = load <8 x i8>, ptr %i.an, align 1, !tbaa !157, !noalias !465
  %i.ao = getelementptr inbounds i8, ptr %next.gep36, i64 -8
  store <8 x i8> %wide.load38, ptr %i.ao, align 1, !tbaa !157, !noalias !465
  %index.next39 = add nuw i64 %index35, 8         ; 2 uses
  %i.ap = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !463

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.y, %n.vec34
  br i1 %cmp.n40, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.t, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.aq = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.ar = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !157, !noalias !465
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -1 ; 3 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !157, !noalias !465
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !464

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %storemerge = phi ptr [ %i.t, %bb.f ], [ %i.ak, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !38
  store ptr %i.v, ptr %i.c, align 8, !tbaa !38
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !38
  store ptr %i.u, ptr %i.a, align 8, !tbaa !38
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.r to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ax) #23
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.3) #21
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = load ptr, ptr %0, align 8, !tbaa !70
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  unreachable

_ZNKSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775792
  %i.n = ashr exact i64 %i.m, 3
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 1152921504606846975 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 1152921504606846975
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #21
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i: ; preds = %_ZNKSt3__16vectorINS_10shared_ptrI14RegionGeometryEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 4 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79   ; 2 uses
  %i.w = load <2 x ptr>, ptr %1, align 8, !tbaa !59
  store <2 x ptr> %i.w, ptr %i.s, align 8, !tbaa !59
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit: ; preds = %bb.d, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !69  ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !70    ; 3 uses
  %.not12.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit, %.lr.ph.i.i
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ]
  %.sroa.18.013.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.aa, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ]
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -16 ; 4 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !59
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %.not.i.i = icmp eq ptr %i.ae, %i.ab
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !467

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !76
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !76
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit
  %i.ag = phi ptr [ %i.aa, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ], [ %.pre11, %.loopexit.loopexit ] ; 2 uses
  %i.ah = phi ptr [ %i.ab, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.s, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ], [ %i.ad, %.loopexit.loopexit ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !76
  store ptr %i.z, ptr %i.b, align 8, !tbaa !76
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !76
  store ptr %i.t, ptr %i.a, align 8, !tbaa !76
  %.not2.i.i.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_10shared_ptrI14RegionGeometryEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %i.aj = phi ptr [ %i.ak, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.ag, %.loopexit ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw add ptr %i.an, i64 -1 acq_rel, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #20, !inline_history !468
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #20
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i
  %.not.i.i.i.i5 = icmp eq ptr %i.ah, %i.ak
  br i1 %.not.i.i.i.i5, label %_ZNSt3__114__split_bufferINS_10shared_ptrI14RegionGeometryEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_10shared_ptrI14RegionGeometryEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI14RegionGeometryEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, %.loopexit
  %.not.i6 = icmp eq ptr %i.ah, null
  br i1 %.not.i6, label %_ZNSt3__114__split_bufferINS_10shared_ptrI14RegionGeometryEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrI14RegionGeometryEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.at = ptrtoint ptr %i.ai to i64
  %i.au = ptrtoint ptr %i.ah to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.av) #23
  br label %_ZNSt3__114__split_bufferINS_10shared_ptrI14RegionGeometryEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_10shared_ptrI14RegionGeometryEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrI14RegionGeometryEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.g
  ret ptr %i.z
}

declare { i64, ptr } @heif_image_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare { i64, ptr } @heif_image_add_plane(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @heif_image_release(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #20, !inline_history !469
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #20
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES7_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #23
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES7_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10RegionItemEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES7_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !479
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not = icmp ult i64 %i.h, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10.i = icmp eq i64 %1, 0
  br i1 %.not10.i, label %_ZNSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE18__construct_at_endEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.idx.i = shl i64 %1, 3                         ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.d, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE18__construct_at_endEm.exit

_ZNSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE18__construct_at_endEm.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.6.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %i.i, %.lr.ph.preheader.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.c, align 8, !tbaa !119
  br label %_ZNSt3__114__split_bufferIN22RegionGeometry_Polygon5PointERNS_9allocatorIS2_EEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !120    ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3
  %i.n = add i64 %i.m, %1                         ; 2 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.o, label %bb.d, label %_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  unreachable

_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.c
  %i.p = sub i64 %i.e, %i.k                       ; 2 uses
  %.not.i = icmp ult i64 %i.p, 9223372036854775800
  %i.q = ashr exact i64 %i.p, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.n)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit
  %i.s = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.s, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN22RegionGeometry_Polygon5PointEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #21
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN22RegionGeometry_Polygon5PointEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i: ; preds = %bb.e
  %i.t = shl nuw i64 %.0.i, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !119
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !120
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN22RegionGeometry_Polygon5PointEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i, %_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit
  %i.v = phi ptr [ %.pre11, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN22RegionGeometry_Polygon5PointEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ], [ %i.j, %_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit ] ; 5 uses
  %i.w = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN22RegionGeometry_Polygon5PointEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ], [ %i.d, %_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %storemerge.i = phi ptr [ %i.u, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN22RegionGeometry_Polygon5PointEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ], [ null, %_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.l ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i8 = shl i64 %1, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 %.idx.i8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.idx.i8, i1 false)
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN22RegionGeometry_Polygon5PointERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.aa = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.x, %bb.g ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %i.w, %bb.g ]
  %i.ab = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 3 uses
  %i.ad = load i64, ptr %i.ab, align 4, !tbaa !67, !noalias !480
  store i64 %i.ad, ptr %i.ac, align 4, !tbaa !67, !noalias !480
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN22RegionGeometry_Polygon5PointERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !478

_ZNSt3__114__split_bufferIN22RegionGeometry_Polygon5PointERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.g
  %.sroa.436.0.i.i.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i, ptr %0, align 8, !tbaa !479
  store ptr %i.z, ptr %i.c, align 8, !tbaa !479
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !479
  store ptr %i.y, ptr %i.a, align 8, !tbaa !479
  %.not.i9 = icmp eq ptr %i.v, null
  br i1 %.not.i9, label %_ZNSt3__114__split_bufferIN22RegionGeometry_Polygon5PointERNS_9allocatorIS2_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferIN22RegionGeometry_Polygon5PointERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.v to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ah) #23
  br label %_ZNSt3__114__split_bufferIN22RegionGeometry_Polygon5PointERNS_9allocatorIS2_EEED2Ev.exit

_ZNSt3__114__split_bufferIN22RegionGeometry_Polygon5PointERNS_9allocatorIS2_EEED2Ev.exit: ; preds = %bb.h, %_ZNSt3__114__split_bufferIN22RegionGeometry_Polygon5PointERNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN22RegionGeometry_Polygon5PointENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.3) #21
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !65
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !65
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(88) %0) #20, !inline_history !481
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #20, !inline_history !482
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI25RegionGeometry_InlineMaskNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #23
  ret void
}

declare { i64, ptr } @_ZNK5Error12error_structEP11ErrorBuffer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.a, align 8, !tbaa !65
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #21
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !65
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI20RegionGeometry_PointNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
end_hunk_2
