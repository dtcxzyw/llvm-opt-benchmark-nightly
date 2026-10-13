Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Zlib?download=true
inline.NumInlined: 631
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::c_array" = type { [20 x i64] }
%"struct.folly::c_array.38" = type { [100 x i16] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.folly::Optional.17" = type { %"struct.folly::detail::OptionalCopyAssignBase.18" }
%"struct.folly::detail::OptionalCopyAssignBase.18" = type { %"struct.folly::detail::OptionalCopyBase.19" }
%"struct.folly::detail::OptionalCopyBase.19" = type { %"struct.folly::detail::OptionalStorage.20" }
%"struct.folly::detail::OptionalStorage.20" = type { %"struct.folly::detail::OptionalStorageTriviallyDestructible.21" }
%"struct.folly::detail::OptionalStorageTriviallyDestructible.21" = type <{ %union.anon.22, i8, [3 x i8] }>
%union.anon.22 = type { i32 }
%"struct.folly::compression::zlib::Options" = type { i32, i32, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.26 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.26 = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.folly::io::Cursor" = type { %"class.folly::io::CursorBase" }
%"class.folly::io::CursorBase" = type { ptr, ptr, ptr, ptr, ptr, i64, i64 }
%"class.std::unique_ptr.30" = type { %"struct.std::__uniq_ptr_data.31" }
%"struct.std::__uniq_ptr_data.31" = type { %"class.std::__uniq_ptr_impl.32" }
%"class.std::__uniq_ptr_impl.32" = type { %"class.std::tuple.33" }
%"class.std::tuple.33" = type { %"struct.std::_Tuple_impl.34" }
%"struct.std::_Tuple_impl.34" = type { %"struct.std::_Head_base.37" }
%"struct.std::_Head_base.37" = type { ptr }
%"class.folly::Optional" = type { %"struct.folly::detail::OptionalCopyAssignBase" }
%"struct.folly::detail::OptionalCopyAssignBase" = type { %"struct.folly::detail::OptionalCopyBase" }
%"struct.folly::detail::OptionalCopyBase" = type { %"struct.folly::detail::OptionalStorage" }
%"struct.folly::detail::OptionalStorage" = type { %"struct.folly::detail::OptionalStorageTriviallyDestructible" }
%"struct.folly::detail::OptionalStorageTriviallyDestructible" = type <{ %union.anon, i8, [7 x i8] }>
%union.anon = type { i64 }
%"class.folly::detail::ScopeGuardImpl" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.41 }
%"class.folly::detail::ScopeGuardImplBase" = type { i8 }
%class.anon.41 = type { ptr, ptr, ptr }
%"class.folly::Range" = type { ptr, ptr }
%"class.folly::Range.39" = type { ptr, ptr }
%"class.folly::detail::ScopeGuardImpl.43" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.44 }
%class.anon.44 = type { ptr, ptr, ptr }
%"class.folly::OptionalEmptyException" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.25 }
%union.anon.25 = type { ptr }
%"class.std::out_of_range" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::unique_ptr.48" = type { %"struct.std::__uniq_ptr_data.49" }
%"struct.std::__uniq_ptr_data.49" = type { %"class.std::__uniq_ptr_impl.50" }
%"class.std::__uniq_ptr_impl.50" = type { %"class.std::tuple.51" }
%"class.std::tuple.51" = type { %"struct.std::_Tuple_impl.52" }
%"struct.std::_Tuple_impl.52" = type { %"struct.std::_Head_base.55" }
%"struct.std::_Head_base.55" = type { ptr }

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA45_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_ = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA43_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_ = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA36_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_ = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA33_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_ = comdat any

$_ZN5folly11toAppendFitIJA33_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_22OptionalEmptyExceptionEEEvOT_ = comdat any

$_ZN5folly22OptionalEmptyExceptionC2EOS0_ = comdat any

$_ZN5folly22OptionalEmptyExceptionD0Ev = comdat any

$_ZN5folly11toAppendFitIJA45_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_ = comdat any

$_ZN5folly11toAppendFitIJA43_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_ = comdat any

$_ZN5folly11toAppendFitIJA36_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_ = comdat any

$_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14pullAtMostSlowEPvm = comdat any

$_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_ = comdat any

$_ZNSt12out_of_rangeC2EOS_ = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA38_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_ = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA37_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_ = comdat any

$_ZN5folly11toAppendFitIJA38_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_ = comdat any

$_ZN5folly11toAppendFitIJA37_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_ = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA25_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_ = comdat any

$_ZN5folly11toAppendFitIJA25_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_ = comdat any

$_ZTIN5folly22OptionalEmptyExceptionE = comdat any

$_ZTSN5folly22OptionalEmptyExceptionE = comdat any

$_ZTVN5folly22OptionalEmptyExceptionE = comdat any

@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@_ZTVN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecE = internal constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecE, ptr @_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecD2Ev, ptr @_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecD0Ev, ptr @_ZNK5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec13validPrefixesB5cxx11Ev, ptr @_ZNK5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec13canUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZNK5folly11compression5Codec23doMaxUncompressedLengthEv, ptr @_ZNK5folly11compression5Codec25doNeedsUncompressedLengthEv, ptr @_ZN5folly11compression11StreamCodec10doCompressEPKNS_5IOBufE, ptr @_ZN5folly11compression11StreamCodec12doUncompressEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZN5folly11compression5Codec16doCompressStringB5cxx11ENS_5RangeIPKcEE, ptr @_ZN5folly11compression5Codec18doUncompressStringB5cxx11ENS_5RangeIPKcEENS_8OptionalImEE, ptr @_ZNK5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec21doMaxCompressedLengthEm, ptr @_ZNK5folly11compression5Codec23doGetUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE, ptr @_ZNK5folly11compression11StreamCodec17doNeedsDataLengthEv, ptr @_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec13doResetStreamEv, ptr @_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec16doCompressStreamERNS_5RangeIPKhEERNS4_IPhEENS0_11StreamCodec7FlushOpE, ptr @_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec18doUncompressStreamERNS_5RangeIPKhEERNS4_IPhEENS0_11StreamCodec7FlushOpE] }, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"ZlibStreamCodec: invalid windowSize option: \00", align 1
@_ZTISt16invalid_argument = external constant ptr
@.str.3 = private unnamed_addr constant [43 x i8] c"ZlibStreamCodec: invalid memLevel option: \00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"ZlibStreamCodec: invalid strategy: \00", align 1
@_ZTIN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecE, ptr @_ZTIN5folly11compression11StreamCodecE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecE = internal constant [58 x i8] c"N5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecE\00", align 1
@_ZTIN5folly11compression11StreamCodecE = external constant ptr
@.str.5 = private unnamed_addr constant [33 x i8] c"ZlibStreamCodec: invalid level: \00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZN5folly6detail15to_ascii_powersILm10EmE4dataE = external local_unnamed_addr global %"struct.folly::c_array", align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array.38", align 2
@_ZTIN5folly22OptionalEmptyExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly22OptionalEmptyExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5folly22OptionalEmptyExceptionE = linkonce_odr constant [33 x i8] c"N5folly22OptionalEmptyExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly22OptionalEmptyExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly22OptionalEmptyExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly22OptionalEmptyExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"Empty Optional cannot be unwrapped\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@_ZTISt12out_of_range = external constant ptr
@_ZTVSt12out_of_range = external constant { [5 x ptr] }, align 8
@.str.28 = private unnamed_addr constant [31 x i8] c"ZlibStreamCodec: Invalid flush\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"ZlibStreamCodec: deflateReset error: \00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"ZlibStreamCodec: deflateInit error: \00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"ZlibStreamCodec: error: \00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"ZlibStreamCodec: inflateReset error: \00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"ZlibStreamCodec: inflateInit error: \00", align 1
@switch.table._ZN5folly11compression4zlib12_GLOBAL__N_116zlibConvertLevelEi = private unnamed_addr constant [3 x i8] c"\09\06\01", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef { i64, i64 } @_ZN5folly11compression4zlib18defaultGzipOptionsEv() local_unnamed_addr #0 {
bb.a:
  ret { i64, i64 } { i64 64424509441, i64 8 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef { i64, i64 } @_ZN5folly11compression4zlib18defaultZlibOptionsEv() local_unnamed_addr #0 {
bb.a:
  ret { i64, i64 } { i64 64424509440, i64 8 }
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11compression4zlib8getCodecENS1_7OptionsEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, i64 %1, i64 %2, i32 noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call fastcc void @_ZSt11make_uniqueIN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecEJRNS2_7OptionsERiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, i64 %2, i32 %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_uniqueIN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecEJRNS2_7OptionsERiEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, i64 %.0.val, i64 %.8.val, i32 %.0.val1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Optional.17", align 4 ; 5 uses
  %2 = alloca %"struct.folly::compression::zlib::Options", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #23 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.0.val, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %.8.val, ptr %i.b, align 8
  %i.c = invoke fastcc noundef i32 @_ZN5folly11compression4zlib12_GLOBAL__N_116zlibConvertLevelEi(i32 noundef %.0.val1)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.a
  %switch.selectcmp8.i.i = icmp eq i64 %.0.val, 64424509440
  %switch.selectcmp.i.i = icmp eq i64 %.0.val, 64424509441 ; 3 uses
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 9, i32 0
  %switch.select9.i.i = select i1 %switch.selectcmp8.i.i, i32 4, i32 %switch.select.i.i
  %.str..str.1.i = select i1 %switch.selectcmp.i.i, ptr @.str, ptr @.str.1
  %6 = select i1 %switch.selectcmp.i.i, ptr getelementptr inbounds nuw (i8, ptr @.str, i64 4), ptr getelementptr inbounds nuw (i8, ptr @.str.1, i64 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.c, ptr %1, align 4, !tbaa !13
  store i8 1, ptr %i.d, align 4, !tbaa !100
  invoke void @_ZN5folly11compression5CodecC2ENS0_9CodecTypeENS_8OptionalIiEENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(320) %i.a, i32 noundef %switch.select9.i.i, ptr noundef nonnull align 4 dead_on_return %1, ptr nonnull %.str..str.1.i, ptr nonnull %6)
          to label %.noexc3 unwind label %bb.r

.noexc3:                                          ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.e, i8 0, i64 21, i1 false)
  store i8 1, ptr %i.g, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodecE, i64 16), ptr %i.a, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i32> <i32 0, i32 15, i32 8, i32 0>, ptr %i.h, align 4, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 0, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 0, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i8 0, ptr %i.n, align 8, !tbaa !31
  %i.o = invoke fastcc noundef i32 @_ZN5folly11compression4zlib12_GLOBAL__N_116zlibConvertLevelEi(i32 noundef %.0.val1)
          to label %.noexc4 unwind label %bb.r

.noexc4:                                          ; preds = %.noexc3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i32 %i.o, ptr %i.q, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  store i8 1, ptr %i.r, align 4, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !104
  %i.s = load i32, ptr %i.p, align 8, !tbaa !41
  %i.t = add i32 %i.s, -9
  %i.u = icmp ult i32 %i.t, 7
  br i1 %i.u, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.noexc4
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA45_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(45) @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #25
          to label %bb.p unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.011.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.011.i, label %.sink.split.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.011.i, label %.sink.split.i, label %.body

bb.f:                                             ; preds = %.noexc4
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !46
  %i.af = add i32 %i.ae, -1
  %i.ag = icmp ult i32 %i.af, 9
  br i1 %i.ag, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA43_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(43) @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #25
          to label %bb.p unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread.i: ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.09.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.j
  %i.an = load i64, ptr %i.al, align 8, !tbaa !29
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.09.i, label %.sink.split.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.09.i, label %.sink.split.i, label %.body

bb.k:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !47
  %i.aq = icmp ult i32 %i.ap, 5
  br i1 %i.aq, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA36_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(36) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.as)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #25
          to label %bb.p unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread.i: ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.av = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i: ; preds = %bb.o
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !29
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i, label %.sink.split.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i, label %.sink.split.i, label %.body

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.sink.i = phi ptr [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread.i ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread.i ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i ]
  %.pn22.pn.ph.i = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread.i ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #24
  br label %.body

bb.p:                                             ; preds = %bb.n, %bb.i, %bb.d
  unreachable

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.a, ptr %0, align 8, !tbaa !49
  ret void

bb.r:                                             ; preds = %.noexc3, %.noexc, %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, %.sink.split.i, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.r ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i ], [ %.pn22.pn.ph.i, %.sink.split.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 320) #26
  resume { ptr, i32 } %eh.lpad-body
}
end_hunk_0
