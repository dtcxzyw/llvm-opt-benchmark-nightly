Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 80
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.pbrt::SquareMatrix" = type { [3 x [3 x float]] }
%"class.pbrt::StatRegisterer" = type { i8 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, pbrt::MeasuredBxDFData *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, pbrt::MeasuredBxDFData *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, pbrt::MeasuredBxDFData *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, pbrt::MeasuredBxDFData *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.pbrt::TopOrBottomBxDF" = type { ptr, ptr }
%"class.pstd::optional" = type { %"union.std::aligned_storage<44, 4>::type", i8, [3 x i8] }
%"union.std::aligned_storage<44, 4>::type" = type { [44 x i8] }
%"class.pbrt::HGPhaseFunction" = type { float }
%"class.pbrt::ConductorBxDF" = type { %"class.pbrt::TrowbridgeReitzDistribution", %"class.pbrt::SampledSpectrum", %"class.pbrt::SampledSpectrum" }
%"class.pbrt::TrowbridgeReitzDistribution" = type { float, float }
%"class.pbrt::SampledSpectrum" = type { %"class.pstd::array" }
%"class.pstd::array" = type { [4 x float] }
%"class.pbrt::TopOrBottomBxDF.7" = type { ptr, ptr }
%"class.pbrt::RGBUnboundedSpectrum" = type { float, %"class.pbrt::RGBSigmoidPolynomial" }
%"class.pbrt::RGBSigmoidPolynomial" = type { float, float, float }
%"struct.pbrt::Tensor::Field" = type { i32, i64, %"class.std::vector", %"class.std::unique_ptr" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.32" }
%"struct.std::_Head_base.32" = type { ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.pbrt::Tensor" = type { %"class.std::unordered_map", %"class.std::__cxx11::basic_string", i64 }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.pbrt::PiecewiseLinear2D.41" = type { %"class.pbrt::Vector2", %"class.pbrt::Vector2.37", %"class.pbrt::Vector2.37", [0 x i32], [0 x i32], %"class.pstd::vector.39", %"class.pstd::vector", %"class.pstd::vector", %"class.pstd::vector" }
%"class.pbrt::Vector2" = type { %"class.pbrt::Tuple2.36" }
%"class.pbrt::Tuple2.36" = type { i32, i32 }
%"class.pbrt::Vector2.37" = type { %"class.pbrt::Tuple2.38" }
%"class.pbrt::Tuple2.38" = type { float, float }
%"class.pstd::vector.39" = type { %"class.pstd::pmr::polymorphic_allocator.40", ptr, i64, i64 }
%"class.pstd::pmr::polymorphic_allocator.40" = type { ptr }
%"class.pstd::vector" = type { %"class.pstd::pmr::polymorphic_allocator", ptr, i64, i64 }
%"class.pstd::pmr::polymorphic_allocator" = type { ptr }
%"class.pbrt::PiecewiseLinear2D.42" = type { %"class.pbrt::Vector2", %"class.pbrt::Vector2.37", %"class.pbrt::Vector2.37", [2 x i32], [2 x i32], %"class.pstd::vector.39", %"class.pstd::vector", %"class.pstd::vector", %"class.pstd::vector" }
%"class.pstd::array.46" = type { [2 x ptr] }
%"class.pbrt::PiecewiseLinear2D" = type { %"class.pbrt::Vector2", %"class.pbrt::Vector2.37", %"class.pbrt::Vector2.37", [3 x i32], [3 x i32], %"class.pstd::vector.39", %"class.pstd::vector", %"class.pstd::vector", %"class.pstd::vector" }
%"class.pstd::array.48" = type { [3 x i32] }
%"class.pstd::array.49" = type { [3 x ptr] }
%"class.std::tuple.81" = type { %"struct.std::_Tuple_impl.82" }
%"struct.std::_Tuple_impl.82" = type { %"struct.std::_Head_base.83" }
%"struct.std::_Head_base.83" = type { ptr }
%"class.std::tuple.84" = type { i8 }
%"class.pbrt::Vector3" = type { %"class.pbrt::Tuple3" }
%"class.pbrt::Tuple3" = type { float, float, float }
%"class.pbrt::Point2" = type { %"class.pbrt::Tuple2" }
%"class.pbrt::Tuple2" = type { float, float }
%class.anon.78 = type { ptr, ptr, ptr, ptr, ptr }
%"class.pstd::span.53" = type { ptr, i64 }
%"struct.pbrt::BSDFSample" = type <{ %"class.pbrt::SampledSpectrum", %"class.pbrt::Vector3", float, i32, float, i8, [3 x i8] }>
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, pbrt::Tensor::Field>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, pbrt::Tensor::Field>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, pbrt::MeasuredBxDFData *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, pbrt::MeasuredBxDFData *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EEC5ES1_S2_fRKNS_15SampledSpectrumEfii = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8ToStringB5cxx11Ev = comdat any

$_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE10RegularizeEv = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE5FlagsEv = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE1fENS_7Vector3IfEES5_NS_13TransportModeE = comdat any

$_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE1fENS_7Vector3IfEES5_NS_13TransportModeE = comdat any

$_ZN4pbrt4HashIJiNS_7Vector3IfEEEEEmDpT_ = comdat any

$_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE = comdat any

$_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE5FlagsEv = comdat any

$_ZNK4pbrt15HGPhaseFunction3PDFENS_7Vector3IfEES2_ = comdat any

$_ZNK4pbrt15HGPhaseFunction1pENS_7Vector3IfEES2_ = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZN4pbrt8LogFatalIJRA39_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt4HashIJfNS_6Point2IfEEEEEmDpT_ = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EEC5ES1_S2_fRKNS_15SampledSpectrumEfii = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8ToStringB5cxx11Ev = comdat any

$_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE10RegularizeEv = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE5FlagsEv = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE1fENS_7Vector3IfEES5_NS_13TransportModeE = comdat any

$_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE1fENS_7Vector3IfEES5_NS_13TransportModeE = comdat any

$_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE = comdat any

$_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE5FlagsEv = comdat any

$_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZNK4pbrt13ConductorBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZN4pbrt12FrDielectricEff = comdat any

$_ZNK4pbrt27TrowbridgeReitzDistribution9Sample_wmENS_7Vector3IfEENS_6Point2IfEE = comdat any

$_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE = comdat any

$_ZNK4pbrt27TrowbridgeReitzDistribution1GENS_7Vector3IfEES2_ = comdat any

$_ZN4pbrt8LogFatalIJRA12_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt8LogFatalIJRA18_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt8LogFatalIJRA27_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt8HairBxDF2MpEfffff = comdat any

$_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_ = comdat any

$_ZN4pbrt6Tensor5FieldD2Ev = comdat any

$_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPKcDpOT_ = comdat any

$_ZN4pbrt17PiecewiseLinear2DILm0EEC2EN4pstd3pmr21polymorphic_allocatorISt4byteEEPKfiiNS2_5arrayIiLi0EEENS9_IS8_Li0EEEbb = comdat any

$_ZN4pbrt17PiecewiseLinear2DILm0EEaSEOS1_ = comdat any

$_ZN4pbrt17PiecewiseLinear2DILm0EED2Ev = comdat any

$_ZN4pbrt17PiecewiseLinear2DILm2EEC2EN4pstd3pmr21polymorphic_allocatorISt4byteEEPKfiiNS2_5arrayIiLi2EEENS9_IS8_Li2EEEbb = comdat any

$_ZN4pbrt17PiecewiseLinear2DILm2EEaSEOS1_ = comdat any

$_ZN4pbrt17PiecewiseLinear2DILm2EED2Ev = comdat any

$_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE6resizeEm = comdat any

$_ZN4pbrt17PiecewiseLinear2DILm3EEC2EN4pstd3pmr21polymorphic_allocatorISt4byteEEPKfiiNS2_5arrayIiLi3EEENS9_IS8_Li3EEEbb = comdat any

$_ZN4pbrt17PiecewiseLinear2DILm3EEaSEOS1_ = comdat any

$_ZN4pbrt17PiecewiseLinear2DILm3EED2Ev = comdat any

$_ZN4pbrt6TensorD2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4pbrt16MeasuredBxDFDataESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_ = comdat any

$_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_ = comdat any

$_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_ = comdat any

$_ZNK4pbrt17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_ = comdat any

$_ZNK4pbrt17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_ = comdat any

$_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEENUlRNS_16StatsAccumulatorEE_8__invokeESB_ = comdat any

$_ZN4pbrt9FrComplexEfN4pstd7complexIfEE = comdat any

$_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEENUlRNS_16StatsAccumulatorEE_8__invokeESB_ = comdat any

$_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENUlRNS_16StatsAccumulatorEE_8__invokeES6_ = comdat any

$_ZZNK4pbrt27TrowbridgeReitzDistribution9Sample_wmENS_7Vector3IfEENS_6Point2IfEEENUlRNS_16StatsAccumulatorEE_8__invokeES6_ = comdat any

$_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEES2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt6Tensor5FieldEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev = comdat any

$_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEEaSEOS6_ = comdat any

$_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_ = comdat any

$_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEE7reserveEm = comdat any

$_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev = comdat any

$_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4pbrt16MeasuredBxDFDataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZN4pbrt6detail8DispatchIRZNKS_4BxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_N4pstd8optionalINS_10BSDFSampleEEENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS9_PKvi = comdat any

$_ZNK4pbrt23DiffuseTransmissionBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZNK4pbrt18ThinDielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZNK4pbrt21NormalizedFresnelBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE = comdat any

$_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_15SampledSpectrumEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIPKcJRS3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRPKcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_15SampledSpectrumEJS4_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA12_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKfJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPS9_PKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_27TrowbridgeReitzDistributionEJRKNS_15SampledSpectrumES7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA18_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA27_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKfJS3_S3_S3_S3_S3_RKNS_15SampledSpectrumEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKfJS3_S3_S3_S3_RKNS_15SampledSpectrumEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRKfJS3_S3_S3_RKNS_15SampledSpectrumEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_ = comdat any
end_hunk_0
begin_hunk_1_@_ZN4pbrt17PiecewiseLinear2DILm0EEC2EN4pstd3pmr21polymorphic_allocatorISt4byteEEPKfiiNS2_5arrayIiLi0EEENS9_IS8_Li0EEEbb:bb.a
  br i1 %exitcond353.not.7, label %.critedge, label %.lr.ph, !llvm.loop !417

.critedge:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph340.prol.loopexit, %.lr.ph340, %middle.block441, %vec.epilog.middle.block456, %middle.block673, %vec.epilog.middle.block688, %bb.ah, %.preheader
  ret void

bb.ai:                                            ; preds = %bb.ad, %bb.aa, %bb.x, %bb.d
  %.pn176.pn.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn176, %bb.ad ], [ %.pn174, %bb.aa ], [ %.pn, %bb.x ]
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.q) #31
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.o) #31
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #31
  call void @_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #31
  resume { ptr, i32 } %.pn176.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(152) ptr @_ZN4pbrt17PiecewiseLinear2DILm0EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.l = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k) ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt17PiecewiseLinear2DILm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.a, align 8, !tbaa !154
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !155
  %i.g = shl i64 %i.f, 2
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !160  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.c, i64 noundef %i.g, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.c, !inline_history !3

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.n, align 8, !tbaa !154
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i1, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i64, ptr %i.r, align 8, !tbaa !155
  %i.t = shl i64 %i.s, 2
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !160  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.p, i64 noundef %i.t, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit2 unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #34
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit2: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.aa, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i3, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !155
  %i.ag = shl i64 %i.af, 2
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !160 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.ac, i64 noundef %i.ag, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit4 unwind label %bb.g, !inline_history !3

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #34
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit4: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit2, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.h

bb.h:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i, %.lr.ph.i.i
  %i.ar = phi i64 [ %i.ap, %.lr.ph.i.i ], [ %i.bg, %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i ] ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !156
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %indvars.iv.i.i ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 0, ptr %i.au, align 8, !tbaa !154
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !155
  %i.az = shl i64 %i.ay, 2
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !160 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !118
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.aw, i64 noundef %i.az, i64 noundef 4)
          to label %._ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit_crit_edge.i.i unwind label %bb.j, !inline_history !3

._ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit_crit_edge.i.i: ; preds = %bb.i
  %.pre.i.i = load i64, ptr %i.ao, align 8, !tbaa !162
  br label %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i: ; preds = %._ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit_crit_edge.i.i, %bb.h
  %i.bg = phi i64 [ %.pre.i.i, %._ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit_crit_edge.i.i ], [ %i.ar, %bb.h ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, %indvars.iv.next.i.i
  br i1 %i.bh, label %bb.h, label %.loopexit.i, !llvm.loop !4

.loopexit.i:                                      ; preds = %_ZN4pstd3pmr21polymorphic_allocatorINS_6vectorIfNS1_IfEEEEE7destroyIS4_EEvPT_.exit.i.i, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit4
  store i64 0, ptr %i.ao, align 8, !tbaa !162
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i5, label %_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !163
  %i.bm = shl i64 %i.bl, 5
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !164 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.bj, i64 noundef %i.bm, i64 noundef 8)
          to label %_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEED2Ev.exit unwind label %bb.l, !inline_history !5

bb.l:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #34
  unreachable

_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEED2Ev.exit: ; preds = %.loopexit.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt17PiecewiseLinear2DILm2EEC2EN4pstd3pmr21polymorphic_allocatorISt4byteEEPKfiiNS2_5arrayIiLi2EEENS9_IS8_Li2EEEbb(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 %5, ptr noundef byval(%"class.pstd::array.46") align 8 %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %9 = alloca %"class.pstd::vector", align 8      ; 10 uses
  %10 = alloca %"class.pstd::vector", align 8     ; 8 uses
  %11 = alloca %"class.pstd::vector", align 8     ; 8 uses
  %12 = alloca %"class.pstd::vector", align 8     ; 8 uses
  %.sroa.2.0.extract.shift = lshr i64 %5, 32
  store i32 %3, ptr %0, align 8, !tbaa !157
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 %4, ptr %i.b, align 4, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %4, i64 1
  %i.f = add nsw <2 x i32> %i.e, splat (i32 -1)
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 2 uses
  %i.h = fdiv <2 x float> splat (float 1.000000e+00), %i.g
  store <2 x float> %i.h, ptr %i.c, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store <2 x float> %i.g, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = ptrtoint ptr %1 to i64                   ; 6 uses
  store i64 %i.k, ptr %i.j, align 8, !tbaa !159
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i64 %i.k, ptr %i.m, align 8, !tbaa !159
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i64 %i.k, ptr %i.o, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  store i64 %i.k, ptr %i.q, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not = xor i1 %8, true
  %or.cond = or i1 %7, %.not
  br i1 %or.cond, label %bb.b, label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.a
  %i.s = phi i32 [ 1348, %bb.a ], [ 1356, %bb.e ]
  %i.t = phi ptr [ @.str.115, %bb.a ], [ @.str.116, %bb.e ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.114, i32 noundef %i.s, ptr noundef nonnull %i.t) #32
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  invoke void @_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !156
  %.pre.i = load i64, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %.pre.i ; 2 uses
  store i64 %i.k, ptr %i.w, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.u, align 8, !tbaa !162
  %i.z = add i64 %i.y, 1                          ; 5 uses
  store i64 %i.z, ptr %i.u, align 8, !tbaa !162
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !163
  %i.ab = icmp eq i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.c, label %.preheader374

bb.c:                                             ; preds = %.noexc
  %i.ac = icmp eq i64 %i.z, 0
  %i.ad = shl i64 %i.z, 1
  %spec.select.i.1 = select i1 %i.ac, i64 4, i64 %i.ad
  invoke void @_ZN4pstd6vectorINS0_IfNS_3pmr21polymorphic_allocatorIfEEEENS2_IS4_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %spec.select.i.1)
          to label %.noexc.1 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc.1:                                         ; preds = %bb.c
  %.pre.i.1 = load i64, ptr %i.u, align 8, !tbaa !162
  br label %.preheader374

.preheader374:                                    ; preds = %.noexc.1, %.noexc
  %i.ae = phi i64 [ %.pre.i.1, %.noexc.1 ], [ %i.z, %.noexc ]
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !156
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  store i64 %i.k, ptr %i.ag, align 8, !tbaa !159
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !162
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.u, align 8, !tbaa !162
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

bb.d:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %i.ap = mul i32 %4, %3                          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.aq = mul i32 %i.he, %i.ap                    ; 8 uses
  %i.ar = zext i32 %i.aq to i64                   ; 36 uses
  %i.as = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 6 uses
  %i.at = ptrtoint ptr %i.as to i64
  store i64 %i.at, ptr %10, align 8, !tbaa !159
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.aq, 0          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i, label %bb.o, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i: ; preds = %bb.d
  %i.ax = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef %i.ax, i64 noundef 4)
          to label %.lr.ph.i.i unwind label %bb.af, !inline_history !2 ; 3 uses

.lr.ph.i.i:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  store i64 %i.ar, ptr %i.av, align 8, !tbaa !155
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 0, i64 %i.ax, i1 false), !tbaa !20
  br label %bb.o

bb.e:                                             ; preds = %.preheader374, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %.0146386 = phi i32 [ 1, %.preheader374 ], [ %i.he, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  %.0153385 = phi i32 [ 1, %.preheader374 ], [ %i.hf, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 4 uses
  %i.bc = zext nneg i32 %.0153385 to i64          ; 5 uses
  %.sroa.idx = icmp eq i32 %.0153385, 1
  %.sroa.speculated.v = select i1 %.sroa.idx, i64 %.sroa.2.0.extract.shift, i64 %5 ; 3 uses
  %.sroa.speculated = trunc i64 %.sroa.speculated.v to i32 ; 3 uses
  %i.bd = icmp slt i32 %.sroa.speculated, 1
  br i1 %i.bd, label %.invoke, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.b, %bb.c
  %lpad.loopexit.split-lp446 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192: ; preds = %bb.e
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bc ; 2 uses
  store i32 %.sroa.speculated, ptr %i.be, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %13 = and i64 %.sroa.speculated.v, 2147483647   ; 4 uses
  %i.bf = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 4 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  store i64 %i.bg, ptr %9, align 8, !tbaa !159
  %i.bh = shl nuw nsw i64 %13, 2                  ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !118
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i64 noundef %i.bh, i64 noundef 4)
          to label %._crit_edge.i.i.i203._crit_edge unwind label %bb.l, !inline_history !2 ; 4 uses

._crit_edge.i.i.i203._crit_edge:                  ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192
  %.pre476 = load ptr, ptr %i.l, align 8, !tbaa !156
  store i64 %13, ptr %i.am, align 8, !tbaa !155
  store ptr %i.bl, ptr %i.al, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %i.bh, i1 false), !tbaa !20
  store i64 %13, ptr %i.an, align 8, !tbaa !154
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %.pre476, i64 %i.bc ; 11 uses
  %i.bn = icmp eq ptr %i.bm, %9
  br i1 %i.bn, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i203._crit_edge
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !160 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, %i.bf
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !148
  store ptr %i.bl, ptr %i.bq, align 8, !tbaa !148
  store ptr %i.br, ptr %i.al, align 8, !tbaa !148
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !71
  store i64 %13, ptr %i.bs, align 8, !tbaa !71
  store i64 %i.bt, ptr %i.am, align 8, !tbaa !71
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bv = load i64, ptr %i.an, align 8, !tbaa !71
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !71
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 3 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !154
  %i.bx = load i64, ptr %i.an, align 8, !tbaa !154 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !155
  %.not.i.i = icmp ult i64 %i.bz, %i.bx
  br i1 %.not.i.i, label %bb.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ca = shl i64 %i.bx, 2                        ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i: ; preds = %bb.i
  %.phi.trans.insert.i27.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %.pre.i28.i = load ptr, ptr %.phi.trans.insert.i27.i, align 8, !tbaa !149
  br label %._crit_edge.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i: ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !118
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i64 noundef %i.ca, i64 noundef 4)
          to label %.noexc210 unwind label %bb.m, !inline_history !161 ; 17 uses

.noexc210:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.pre.i208 = load i64, ptr %i.bw, align 8, !tbaa !154 ; 11 uses
  %.not13.i.i = icmp eq i64 %.pre.i208, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 6 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !149 ; 17 uses
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check541

iter.check541:                                    ; preds = %.noexc210
  %.pre.i.i524 = ptrtoaddr ptr %.pre.i.i to i64
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %min.iters.check525 = icmp ult i64 %.pre.i208, 4
  %i.ch = sub i64 %.pre.i.i524, %i.cg
  %diff.check527 = icmp ugt i64 %i.ch, -128
  %or.cond910 = select i1 %min.iters.check525, i1 true, i1 %diff.check527
  br i1 %or.cond910, label %.lr.ph.i.i209.preheader, label %vector.main.loop.iter.check528

vector.main.loop.iter.check528:                   ; preds = %iter.check541
  %min.iters.check529 = icmp ult i64 %.pre.i208, 32
  br i1 %min.iters.check529, label %vec.epilog.ph545, label %vector.ph530

vector.ph530:                                     ; preds = %vector.main.loop.iter.check528
  %i.ci = and i64 %.pre.i208, 28
  %n.vec531 = and i64 %.pre.i208, -32             ; 4 uses
  br label %vector.body532

vector.body532:                                   ; preds = %vector.ph530, %vector.body532
  %index533 = phi i64 [ 0, %vector.ph530 ], [ %index.next538, %vector.body532 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index533 ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index533 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %wide.load534 = load <8 x float>, ptr %i.ck, align 4, !tbaa !20
  %wide.load535 = load <8 x float>, ptr %i.cl, align 4, !tbaa !20
  %wide.load536 = load <8 x float>, ptr %i.cm, align 4, !tbaa !20
  %wide.load537 = load <8 x float>, ptr %i.cn, align 4, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  store <8 x float> %wide.load534, ptr %i.cj, align 4, !tbaa !20
  store <8 x float> %wide.load535, ptr %i.co, align 4, !tbaa !20
  store <8 x float> %wide.load536, ptr %i.cp, align 4, !tbaa !20
  store <8 x float> %wide.load537, ptr %i.cq, align 4, !tbaa !20
  %index.next538 = add nuw i64 %index533, 32      ; 2 uses
  %i.cr = icmp eq i64 %index.next538, %n.vec531
  br i1 %i.cr, label %middle.block539, label %vector.body532, !llvm.loop !418

middle.block539:                                  ; preds = %vector.body532
  %cmp.n540 = icmp eq i64 %.pre.i208, %n.vec531
  br i1 %cmp.n540, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check542

vec.epilog.iter.check542:                         ; preds = %middle.block539
  %min.epilog.iters.check544 = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check544, label %.lr.ph.i.i209.preheader, label %vec.epilog.ph545, !prof !152

vec.epilog.ph545:                                 ; preds = %vector.main.loop.iter.check528, %vec.epilog.iter.check542
  %vec.epilog.resume.val546 = phi i64 [ %n.vec531, %vec.epilog.iter.check542 ], [ 0, %vector.main.loop.iter.check528 ]
  %n.vec547 = and i64 %.pre.i208, -4              ; 3 uses
  br label %vec.epilog.vector.body548

vec.epilog.vector.body548:                        ; preds = %vec.epilog.vector.body548, %vec.epilog.ph545
  %index549 = phi i64 [ %vec.epilog.resume.val546, %vec.epilog.ph545 ], [ %index.next551, %vec.epilog.vector.body548 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index549
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index549
  %wide.load550 = load <4 x float>, ptr %i.ct, align 4, !tbaa !20
  store <4 x float> %wide.load550, ptr %i.cs, align 4, !tbaa !20
  %index.next551 = add nuw i64 %index549, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next551, %n.vec547
  br i1 %i.cu, label %vec.epilog.middle.block552, label %vec.epilog.vector.body548, !llvm.loop !419

vec.epilog.middle.block552:                       ; preds = %vec.epilog.vector.body548
  %cmp.n553 = icmp eq i64 %.pre.i208, %n.vec547
  br i1 %cmp.n553, label %._crit_edge.thread.i.i, label %.lr.ph.i.i209.preheader

.lr.ph.i.i209.preheader:                          ; preds = %iter.check541, %vec.epilog.iter.check542, %vec.epilog.middle.block552
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check541 ], [ %n.vec531, %vec.epilog.iter.check542 ], [ %n.vec547, %vec.epilog.middle.block552 ] ; 4 uses
  %i.cv = sub i64 %.pre.i208, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.cv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i209.prol.loopexit, label %.lr.ph.i.i209.prol

.lr.ph.i.i209.prol:                               ; preds = %.lr.ph.i.i209.preheader, %.lr.ph.i.i209.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i209.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i209.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i209.prol ], [ 0, %.lr.ph.i.i209.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.i.prol
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !20
  store float %i.cy, ptr %i.cw, align 4, !tbaa !20
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i209.prol.loopexit, label %.lr.ph.i.i209.prol, !llvm.loop !420

.lr.ph.i.i209.prol.loopexit:                      ; preds = %.lr.ph.i.i209.prol, %.lr.ph.i.i209.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i209.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i209.prol ]
  %i.cz = sub i64 %indvars.iv.i.i.ph, %.pre.i208
  %i.da = icmp ugt i64 %i.cz, -8
  br i1 %i.da, label %._crit_edge.thread.i.i, label %.lr.ph.i.i209

._crit_edge.i.i:                                  ; preds = %.noexc210, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i
  %.pre.i36.i = phi ptr [ %.pre.i28.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %.pre.i.i, %.noexc210 ] ; 2 uses
  %.phi.trans.insert.i34.i = phi ptr [ %.phi.trans.insert.i27.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %.phi.trans.insert.i.i, %.noexc210 ] ; 2 uses
  %.0.i.i.i.i31.i = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %i.cf, %.noexc210 ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i36.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i209.prol.loopexit, %.lr.ph.i.i209, %middle.block539, %vec.epilog.middle.block552, %._crit_edge.i.i
  %.pre.i35.i = phi ptr [ %.pre.i36.i, %._crit_edge.i.i ], [ %.pre.i.i, %middle.block539 ], [ %.pre.i.i, %vec.epilog.middle.block552 ], [ %.pre.i.i, %.lr.ph.i.i209 ], [ %.pre.i.i, %.lr.ph.i.i209.prol.loopexit ]
  %.phi.trans.insert.i32.i = phi ptr [ %.phi.trans.insert.i34.i, %._crit_edge.i.i ], [ %.phi.trans.insert.i.i, %middle.block539 ], [ %.phi.trans.insert.i.i, %vec.epilog.middle.block552 ], [ %.phi.trans.insert.i.i, %.lr.ph.i.i209 ], [ %.phi.trans.insert.i.i, %.lr.ph.i.i209.prol.loopexit ]
  %.0.i.i.i.i29.i = phi ptr [ %.0.i.i.i.i31.i, %._crit_edge.i.i ], [ %i.cf, %middle.block539 ], [ %i.cf, %vec.epilog.middle.block552 ], [ %i.cf, %.lr.ph.i.i209 ], [ %i.cf, %.lr.ph.i.i209.prol.loopexit ]
  %i.db = load i64, ptr %i.by, align 8, !tbaa !155
  %i.dc = shl i64 %i.db, 2
  %i.dd = load ptr, ptr %i.bm, align 8, !tbaa !160 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !118
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull %.pre.i35.i, i64 noundef %i.dc, i64 noundef 4)
          to label %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge unwind label %bb.m, !inline_history !161

._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge: ; preds = %._crit_edge.thread.i.i
  %.pre18.i.pre = load i64, ptr %i.an, align 8, !tbaa !154
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i: ; preds = %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge, %._crit_edge.i.i
  %.pre18.i = phi i64 [ %i.bx, %._crit_edge.i.i ], [ %.pre18.i.pre, %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge ]
  %.phi.trans.insert.i33.i = phi ptr [ %.phi.trans.insert.i34.i, %._crit_edge.i.i ], [ %.phi.trans.insert.i32.i, %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge ]
  %.0.i.i.i.i30.i = phi ptr [ %.0.i.i.i.i31.i, %._crit_edge.i.i ], [ %.0.i.i.i.i29.i, %._crit_edge.thread.i.i._ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i_crit_edge ]
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !155
  store ptr %.0.i.i.i.i30.i, ptr %.phi.trans.insert.i33.i, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i

.lr.ph.i.i209:                                    ; preds = %.lr.ph.i.i209.prol.loopexit, %.lr.ph.i.i209
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i209 ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i209.prol.loopexit ] ; 10 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !20
  store float %i.dj, ptr %i.dh, align 4, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !20
  store float %i.dm, ptr %i.dk, align 4, !tbaa !20
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.1
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.dp = load float, ptr %i.do, align 4, !tbaa !20
  store float %i.dp, ptr %i.dn, align 4, !tbaa !20
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.2
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !20
  store float %i.ds, ptr %i.dq, align 4, !tbaa !20
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.3
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.3
  %i.dv = load float, ptr %i.du, align 4, !tbaa !20
  store float %i.dv, ptr %i.dt, align 4, !tbaa !20
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.4
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !20
  store float %i.dy, ptr %i.dw, align 4, !tbaa !20
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.5
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.5
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !20
  store float %i.eb, ptr %i.dz, align 4, !tbaa !20
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.6
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.6
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !20
  store float %i.ee, ptr %i.ec, align 4, !tbaa !20
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %.pre.i208
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i209, !llvm.loop !421

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, %bb.h
  %i.ef = phi i64 [ %i.bx, %bb.h ], [ %.pre18.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ] ; 12 uses
  %.not.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !149 ; 12 uses
  %i.ei = load ptr, ptr %i.al, align 8, !tbaa !149 ; 12 uses
  %min.iters.check = icmp ult i64 %i.ef, 4
  %i.ej = ptrtoaddr ptr %i.ei to i64
  %i.ek = ptrtoaddr ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  %diff.check = icmp ugt i64 %i.el, -128
  %or.cond913 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond913, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check512 = icmp ult i64 %i.ef, 32
  br i1 %min.iters.check512, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.em = and i64 %i.ef, 28
  %n.vec = and i64 %i.ef, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index ; 4 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  %wide.load = load <8 x float>, ptr %i.eo, align 4, !tbaa !20
  %wide.load513 = load <8 x float>, ptr %i.ep, align 4, !tbaa !20
  %wide.load514 = load <8 x float>, ptr %i.eq, align 4, !tbaa !20
  %wide.load515 = load <8 x float>, ptr %i.er, align 4, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  store <8 x float> %wide.load, ptr %i.en, align 4, !tbaa !20
  store <8 x float> %wide.load513, ptr %i.es, align 4, !tbaa !20
  store <8 x float> %wide.load514, ptr %i.et, align 4, !tbaa !20
  store <8 x float> %wide.load515, ptr %i.eu, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.em, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec516 = and i64 %i.ef, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index517 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next519, %vec.epilog.vector.body ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index517
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index517
  %wide.load518 = load <4 x float>, ptr %i.ex, align 4, !tbaa !20
  store <4 x float> %wide.load518, ptr %i.ew, align 4, !tbaa !20
  %index.next519 = add nuw i64 %index517, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next519, %n.vec516
  br i1 %i.ey, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !423

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n520 = icmp eq i64 %i.ef, %n.vec516
  br i1 %cmp.n520, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec516, %vec.epilog.middle.block ] ; 4 uses
  %i.ez = sub i64 %i.ef, %.017.i.ph
  %xtraiter933 = and i64 %i.ez, 7                 ; 2 uses
  %lcmp.mod934.not = icmp eq i64 %xtraiter933, 0
  br i1 %lcmp.mod934.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.017.i.prol = phi i64 [ %i.fd, %vec.epilog.scalar.ph.prol ], [ %.017.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter935 = phi i64 [ %prol.iter935.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.017.i.prol
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.017.i.prol
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !20
  store float %i.fc, ptr %i.fa, align 4, !tbaa !20
  %i.fd = add nuw i64 %.017.i.prol, 1             ; 2 uses
  %prol.iter935.next = add i64 %prol.iter935, 1   ; 2 uses
  %prol.iter935.cmp.not = icmp eq i64 %prol.iter935.next, %xtraiter933
  br i1 %prol.iter935.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !424

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fd, %vec.epilog.scalar.ph.prol ]
  %i.fe = sub i64 %.017.i.ph, %i.ef
  %i.ff = icmp ugt i64 %i.fe, -8
  br i1 %i.ff, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i
  store i64 %i.ef, ptr %i.bw, align 8, !tbaa !154
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.017.i = phi i64 [ %i.gl, %vec.epilog.scalar.ph ], [ %.017.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.017.i
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.017.i
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !20
  store float %i.fi, ptr %i.fg, align 4, !tbaa !20
  %i.fj = add nuw i64 %.017.i, 1                  ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fj
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !20
  store float %i.fm, ptr %i.fk, align 4, !tbaa !20
  %i.fn = add nuw i64 %.017.i, 2                  ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fn
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !20
  store float %i.fq, ptr %i.fo, align 4, !tbaa !20
  %i.fr = add nuw i64 %.017.i, 3                  ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fr
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fr
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !20
  store float %i.fu, ptr %i.fs, align 4, !tbaa !20
  %i.fv = add nuw i64 %.017.i, 4                  ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fv
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !20
  store float %i.fy, ptr %i.fw, align 4, !tbaa !20
  %i.fz = add nuw i64 %.017.i, 5                  ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fz
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !20
  store float %i.gc, ptr %i.ga, align 4, !tbaa !20
  %i.gd = add nuw i64 %.017.i, 6                  ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gd
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !20
  store float %i.gg, ptr %i.ge, align 4, !tbaa !20
  %i.gh = add nuw i64 %.017.i, 7                  ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !20
  store float %i.gk, ptr %i.gi, align 4, !tbaa !20
  %i.gl = add nuw i64 %.017.i, 8                  ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.gl, %i.ef
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !425

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split: ; preds = %bb.g, %._crit_edge.i
  %.pr = load ptr, ptr %i.al, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split, %._crit_edge.i.i.i203._crit_edge
  %i.gm = phi ptr [ %.pr, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exitthread-pre-split ], [ %i.bl, %._crit_edge.i.i.i203._crit_edge ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit
  %i.gn = load i64, ptr %i.am, align 8, !tbaa !155
  %i.go = shl i64 %i.gn, 2
  %i.gp = load ptr, ptr %9, align 8, !tbaa !160   ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !118
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull %i.gm, i64 noundef %i.go, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.k, !inline_history !3

bb.k:                                             ; preds = %bb.j
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #34
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.gv = load ptr, ptr %i.l, align 8, !tbaa !156
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %i.gv, i64 %i.bc
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !149
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bc
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !148
  %14 = shl i64 %.sroa.speculated.v, 2
  %15 = and i64 %14, 8589934588
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gy, ptr align 4 %i.ha, i64 %15, i1 false)
  %.not509 = icmp eq i32 %.sroa.speculated, 1
  %i.hb = select i1 %.not509, i32 0, i32 %.0146386
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bc
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !97
  %i.hd = load i32, ptr %i.be, align 4, !tbaa !97
  %i.he = mul i32 %i.hd, %.0146386                ; 7 uses
  %i.hf = add nsw i32 %.0153385, -1
  %.not505 = icmp eq i32 %.0153385, 0
  br i1 %.not505, label %bb.d, label %bb.e, !llvm.loop !426

bb.l:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i192
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.thread.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn179 = phi { ptr, i32 } [ %i.hh, %bb.m ], [ %i.hg, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %.lr.ph.i.i, %bb.d
  %i.hi = phi ptr [ %i.bb, %.lr.ph.i.i ], [ null, %bb.d ] ; 14 uses
  %i.hj = ptrtoaddr ptr %i.hi to i64
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !154
  %i.hk = load ptr, ptr %i.m, align 8, !tbaa !160 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, %i.as
  br i1 %i.hl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hm = load ptr, ptr %i.n, align 8, !tbaa !148 ; 2 uses
  store ptr %i.hi, ptr %i.n, align 8, !tbaa !148
  store ptr %i.hm, ptr %i.au, align 8, !tbaa !148
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !71 ; 2 uses
  store i64 %i.ar, ptr %i.hn, align 8, !tbaa !71
  store i64 %i.ho, ptr %i.av, align 8, !tbaa !71
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ar, ptr %i.hp, align 8, !tbaa !71
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit246

bb.q:                                             ; preds = %bb.o
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i64 0, ptr %i.hq, align 8, !tbaa !154
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !155
  %.not.i.i212 = icmp ult i64 %i.hs, %i.ar
  br i1 %.not.i.i212, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i213

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219: ; preds = %bb.q
  %i.ht = shl nuw nsw i64 %i.ar, 2
  %i.hu = load ptr, ptr %i.hk, align 8, !tbaa !118
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef ptr %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, i64 noundef %i.ht, i64 noundef 4)
          to label %.noexc244 unwind label %bb.ag, !inline_history !161 ; 13 uses

.noexc244:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219
  %.pre.i220 = load i64, ptr %i.hq, align 8, !tbaa !154 ; 11 uses
  %.not13.i.i221 = icmp eq i64 %.pre.i220, 0
  %.pre.i.i223 = load ptr, ptr %i.n, align 8, !tbaa !149 ; 14 uses
  br i1 %.not13.i.i221, label %._crit_edge.i.i236, label %iter.check575

iter.check575:                                    ; preds = %.noexc244
  %.pre.i.i223558 = ptrtoaddr ptr %.pre.i.i223 to i64
  %i.hy = ptrtoaddr ptr %i.hx to i64
  %min.iters.check559 = icmp ult i64 %.pre.i220, 4
  %i.hz = sub i64 %.pre.i.i223558, %i.hy
  %diff.check561 = icmp ugt i64 %i.hz, -128
  %or.cond914 = select i1 %min.iters.check559, i1 true, i1 %diff.check561
  br i1 %or.cond914, label %.lr.ph.i.i224.preheader, label %vector.main.loop.iter.check562

vector.main.loop.iter.check562:                   ; preds = %iter.check575
  %min.iters.check563 = icmp ult i64 %.pre.i220, 32
  br i1 %min.iters.check563, label %vec.epilog.ph579, label %vector.ph564

vector.ph564:                                     ; preds = %vector.main.loop.iter.check562
  %i.ia = and i64 %.pre.i220, 28
  %n.vec565 = and i64 %.pre.i220, -32             ; 4 uses
  br label %vector.body566

vector.body566:                                   ; preds = %vector.ph564, %vector.body566
  %index567 = phi i64 [ 0, %vector.ph564 ], [ %index.next572, %vector.body566 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index567 ; 4 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %index567 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  %wide.load568 = load <8 x float>, ptr %i.ic, align 4, !tbaa !20
  %wide.load569 = load <8 x float>, ptr %i.id, align 4, !tbaa !20
  %wide.load570 = load <8 x float>, ptr %i.ie, align 4, !tbaa !20
  %wide.load571 = load <8 x float>, ptr %i.if, align 4, !tbaa !20
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  store <8 x float> %wide.load568, ptr %i.ib, align 4, !tbaa !20
  store <8 x float> %wide.load569, ptr %i.ig, align 4, !tbaa !20
  store <8 x float> %wide.load570, ptr %i.ih, align 4, !tbaa !20
  store <8 x float> %wide.load571, ptr %i.ii, align 4, !tbaa !20
  %index.next572 = add nuw i64 %index567, 32      ; 2 uses
  %i.ij = icmp eq i64 %index.next572, %n.vec565
  br i1 %i.ij, label %middle.block573, label %vector.body566, !llvm.loop !427

middle.block573:                                  ; preds = %vector.body566
  %cmp.n574 = icmp eq i64 %.pre.i220, %n.vec565
  br i1 %cmp.n574, label %._crit_edge.thread.i.i228, label %vec.epilog.iter.check576

vec.epilog.iter.check576:                         ; preds = %middle.block573
  %min.epilog.iters.check578 = icmp eq i64 %i.ia, 0
  br i1 %min.epilog.iters.check578, label %.lr.ph.i.i224.preheader, label %vec.epilog.ph579, !prof !152

vec.epilog.ph579:                                 ; preds = %vector.main.loop.iter.check562, %vec.epilog.iter.check576
  %vec.epilog.resume.val580 = phi i64 [ %n.vec565, %vec.epilog.iter.check576 ], [ 0, %vector.main.loop.iter.check562 ]
  %n.vec581 = and i64 %.pre.i220, -4              ; 3 uses
  br label %vec.epilog.vector.body582

vec.epilog.vector.body582:                        ; preds = %vec.epilog.vector.body582, %vec.epilog.ph579
  %index583 = phi i64 [ %vec.epilog.resume.val580, %vec.epilog.ph579 ], [ %index.next585, %vec.epilog.vector.body582 ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index583
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %index583
  %wide.load584 = load <4 x float>, ptr %i.il, align 4, !tbaa !20
  store <4 x float> %wide.load584, ptr %i.ik, align 4, !tbaa !20
  %index.next585 = add nuw i64 %index583, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next585, %n.vec581
  br i1 %i.im, label %vec.epilog.middle.block586, label %vec.epilog.vector.body582, !llvm.loop !428

vec.epilog.middle.block586:                       ; preds = %vec.epilog.vector.body582
  %cmp.n587 = icmp eq i64 %.pre.i220, %n.vec581
  br i1 %cmp.n587, label %._crit_edge.thread.i.i228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %iter.check575, %vec.epilog.iter.check576, %vec.epilog.middle.block586
  %indvars.iv.i.i225.ph = phi i64 [ 0, %iter.check575 ], [ %n.vec565, %vec.epilog.iter.check576 ], [ %n.vec581, %vec.epilog.middle.block586 ] ; 4 uses
  %i.in = sub i64 %.pre.i220, %indvars.iv.i.i225.ph
  %xtraiter936 = and i64 %i.in, 7                 ; 2 uses
  %lcmp.mod937.not = icmp eq i64 %xtraiter936, 0
  br i1 %lcmp.mod937.not, label %.lr.ph.i.i224.prol.loopexit, label %.lr.ph.i.i224.prol

.lr.ph.i.i224.prol:                               ; preds = %.lr.ph.i.i224.preheader, %.lr.ph.i.i224.prol
  %indvars.iv.i.i225.prol = phi i64 [ %indvars.iv.next.i.i226.prol, %.lr.ph.i.i224.prol ], [ %indvars.iv.i.i225.ph, %.lr.ph.i.i224.preheader ] ; 3 uses
  %prol.iter938 = phi i64 [ %prol.iter938.next, %.lr.ph.i.i224.prol ], [ 0, %.lr.ph.i.i224.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.i.i225.prol
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.i.i225.prol
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !20
  store float %i.iq, ptr %i.io, align 4, !tbaa !20
  %indvars.iv.next.i.i226.prol = add nuw nsw i64 %indvars.iv.i.i225.prol, 1 ; 2 uses
  %prol.iter938.next = add i64 %prol.iter938, 1   ; 2 uses
  %prol.iter938.cmp.not = icmp eq i64 %prol.iter938.next, %xtraiter936
  br i1 %prol.iter938.cmp.not, label %.lr.ph.i.i224.prol.loopexit, label %.lr.ph.i.i224.prol, !llvm.loop !429

.lr.ph.i.i224.prol.loopexit:                      ; preds = %.lr.ph.i.i224.prol, %.lr.ph.i.i224.preheader
  %indvars.iv.i.i225.unr = phi i64 [ %indvars.iv.i.i225.ph, %.lr.ph.i.i224.preheader ], [ %indvars.iv.next.i.i226.prol, %.lr.ph.i.i224.prol ]
  %i.ir = sub i64 %indvars.iv.i.i225.ph, %.pre.i220
  %i.is = icmp ugt i64 %i.ir, -8
  br i1 %i.is, label %._crit_edge.thread.i.i228, label %.lr.ph.i.i224

._crit_edge.i.i236:                               ; preds = %.noexc244
  %.not.i.i.i.i.i240 = icmp eq ptr %.pre.i.i223, null
  br i1 %.not.i.i.i.i.i240, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232, label %._crit_edge.thread.i.i228

._crit_edge.thread.i.i228:                        ; preds = %.lr.ph.i.i224.prol.loopexit, %.lr.ph.i.i224, %middle.block573, %vec.epilog.middle.block586, %._crit_edge.i.i236
  %i.it = load i64, ptr %i.hr, align 8, !tbaa !155
  %i.iu = shl i64 %i.it, 2
  %i.iv = load ptr, ptr %i.m, align 8, !tbaa !160 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !118
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  invoke void %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull %.pre.i.i223, i64 noundef %i.iu, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232 unwind label %bb.ag, !inline_history !161

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232: ; preds = %._crit_edge.thread.i.i228, %._crit_edge.i.i236
  store i64 %i.ar, ptr %i.hr, align 8, !tbaa !155
  store ptr %i.hx, ptr %i.n, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i213

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.prol.loopexit, %.lr.ph.i.i224
  %indvars.iv.i.i225 = phi i64 [ %indvars.iv.next.i.i226.7, %.lr.ph.i.i224 ], [ %indvars.iv.i.i225.unr, %.lr.ph.i.i224.prol.loopexit ] ; 10 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.i.i225
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.i.i225
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !20
  store float %i.jb, ptr %i.iz, align 4, !tbaa !20
  %indvars.iv.next.i.i226 = add nuw nsw i64 %indvars.iv.i.i225, 1 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next.i.i226
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226
  %i.je = load float, ptr %i.jd, align 4, !tbaa !20
  store float %i.je, ptr %i.jc, align 4, !tbaa !20
  %indvars.iv.next.i.i226.1 = add nuw nsw i64 %indvars.iv.i.i225, 2 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next.i.i226.1
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.1
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !20
  store float %i.jh, ptr %i.jf, align 4, !tbaa !20
  %indvars.iv.next.i.i226.2 = add nuw nsw i64 %indvars.iv.i.i225, 3 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next.i.i226.2
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.2
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !20
  store float %i.jk, ptr %i.ji, align 4, !tbaa !20
  %indvars.iv.next.i.i226.3 = add nuw nsw i64 %indvars.iv.i.i225, 4 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next.i.i226.3
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.3
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !20
  store float %i.jn, ptr %i.jl, align 4, !tbaa !20
  %indvars.iv.next.i.i226.4 = add nuw nsw i64 %indvars.iv.i.i225, 5 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next.i.i226.4
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.4
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !20
  store float %i.jq, ptr %i.jo, align 4, !tbaa !20
  %indvars.iv.next.i.i226.5 = add nuw nsw i64 %indvars.iv.i.i225, 6 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next.i.i226.5
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.5
  %i.jt = load float, ptr %i.js, align 4, !tbaa !20
  store float %i.jt, ptr %i.jr, align 4, !tbaa !20
  %indvars.iv.next.i.i226.6 = add nuw nsw i64 %indvars.iv.i.i225, 7 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next.i.i226.6
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i223, i64 %indvars.iv.next.i.i226.6
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !20
  store float %i.jw, ptr %i.ju, align 4, !tbaa !20
  %indvars.iv.next.i.i226.7 = add nuw nsw i64 %indvars.iv.i.i225, 8 ; 2 uses
  %exitcond.not.i.i227.7 = icmp eq i64 %indvars.iv.next.i.i226.7, %.pre.i220
  br i1 %exitcond.not.i.i227.7, label %._crit_edge.thread.i.i228, label %.lr.ph.i.i224, !llvm.loop !430

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i213: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i232, %bb.q
  %.not.i214 = icmp eq i32 %i.aq, 0
  br i1 %.not.i214, label %._crit_edge.i218, label %iter.check607

iter.check607:                                    ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i213
  %i.jx = load ptr, ptr %i.n, align 8, !tbaa !149 ; 12 uses
  %min.iters.check591 = icmp ult i32 %i.aq, 4
  %i.jy = ptrtoaddr ptr %i.jx to i64
  %i.jz = sub i64 %i.hj, %i.jy
  %diff.check593 = icmp ugt i64 %i.jz, -128
  %or.cond916 = select i1 %min.iters.check591, i1 true, i1 %diff.check593
  br i1 %or.cond916, label %vec.epilog.scalar.ph609.preheader, label %vector.main.loop.iter.check594

vector.main.loop.iter.check594:                   ; preds = %iter.check607
  %min.iters.check595 = icmp ult i32 %i.aq, 32
  br i1 %min.iters.check595, label %vec.epilog.ph611, label %vector.ph596

vector.ph596:                                     ; preds = %vector.main.loop.iter.check594
  %i.ka = and i64 %i.ar, 28
  %n.vec597 = and i64 %i.ar, 4294967264           ; 4 uses
  br label %vector.body598

vector.body598:                                   ; preds = %vector.ph596, %vector.body598
  %index599 = phi i64 [ 0, %vector.ph596 ], [ %index.next604, %vector.body598 ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index599 ; 4 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %index599 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 96
  %wide.load600 = load <8 x float>, ptr %i.kc, align 4, !tbaa !20
  %wide.load601 = load <8 x float>, ptr %i.kd, align 4, !tbaa !20
  %wide.load602 = load <8 x float>, ptr %i.ke, align 4, !tbaa !20
  %wide.load603 = load <8 x float>, ptr %i.kf, align 4, !tbaa !20
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  store <8 x float> %wide.load600, ptr %i.kb, align 4, !tbaa !20
  store <8 x float> %wide.load601, ptr %i.kg, align 4, !tbaa !20
  store <8 x float> %wide.load602, ptr %i.kh, align 4, !tbaa !20
  store <8 x float> %wide.load603, ptr %i.ki, align 4, !tbaa !20
  %index.next604 = add nuw i64 %index599, 32      ; 2 uses
  %i.kj = icmp eq i64 %index.next604, %n.vec597
  br i1 %i.kj, label %middle.block605, label %vector.body598, !llvm.loop !431

middle.block605:                                  ; preds = %vector.body598
  %cmp.n606 = icmp eq i64 %n.vec597, %i.ar
  br i1 %cmp.n606, label %._crit_edge.i218, label %vec.epilog.iter.check608

vec.epilog.iter.check608:                         ; preds = %middle.block605
  %min.epilog.iters.check610 = icmp eq i64 %i.ka, 0
  br i1 %min.epilog.iters.check610, label %vec.epilog.scalar.ph609.preheader, label %vec.epilog.ph611, !prof !152

vec.epilog.ph611:                                 ; preds = %vector.main.loop.iter.check594, %vec.epilog.iter.check608
  %vec.epilog.resume.val612 = phi i64 [ %n.vec597, %vec.epilog.iter.check608 ], [ 0, %vector.main.loop.iter.check594 ]
  %n.vec613 = and i64 %i.ar, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body614

vec.epilog.vector.body614:                        ; preds = %vec.epilog.vector.body614, %vec.epilog.ph611
  %index615 = phi i64 [ %vec.epilog.resume.val612, %vec.epilog.ph611 ], [ %index.next617, %vec.epilog.vector.body614 ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index615
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %index615
  %wide.load616 = load <4 x float>, ptr %i.kl, align 4, !tbaa !20
  store <4 x float> %wide.load616, ptr %i.kk, align 4, !tbaa !20
  %index.next617 = add nuw i64 %index615, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next617, %n.vec613
  br i1 %i.km, label %vec.epilog.middle.block618, label %vec.epilog.vector.body614, !llvm.loop !432

vec.epilog.middle.block618:                       ; preds = %vec.epilog.vector.body614
  %cmp.n619 = icmp eq i64 %n.vec613, %i.ar
  br i1 %cmp.n619, label %._crit_edge.i218, label %vec.epilog.scalar.ph609.preheader

vec.epilog.scalar.ph609.preheader:                ; preds = %iter.check607, %vec.epilog.iter.check608, %vec.epilog.middle.block618
  %.017.i216.ph = phi i64 [ 0, %iter.check607 ], [ %n.vec597, %vec.epilog.iter.check608 ], [ %n.vec613, %vec.epilog.middle.block618 ] ; 4 uses
  %i.kn = sub nsw i64 %i.ar, %.017.i216.ph
  %xtraiter939 = and i64 %i.kn, 7                 ; 2 uses
  %lcmp.mod940.not = icmp eq i64 %xtraiter939, 0
  br i1 %lcmp.mod940.not, label %vec.epilog.scalar.ph609.prol.loopexit, label %vec.epilog.scalar.ph609.prol

vec.epilog.scalar.ph609.prol:                     ; preds = %vec.epilog.scalar.ph609.preheader, %vec.epilog.scalar.ph609.prol
  %.017.i216.prol = phi i64 [ %i.kr, %vec.epilog.scalar.ph609.prol ], [ %.017.i216.ph, %vec.epilog.scalar.ph609.preheader ] ; 3 uses
  %prol.iter941 = phi i64 [ %prol.iter941.next, %vec.epilog.scalar.ph609.prol ], [ 0, %vec.epilog.scalar.ph609.preheader ]
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.017.i216.prol
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.017.i216.prol
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !20
  store float %i.kq, ptr %i.ko, align 4, !tbaa !20
  %i.kr = add nuw i64 %.017.i216.prol, 1          ; 2 uses
  %prol.iter941.next = add i64 %prol.iter941, 1   ; 2 uses
  %prol.iter941.cmp.not = icmp eq i64 %prol.iter941.next, %xtraiter939
  br i1 %prol.iter941.cmp.not, label %vec.epilog.scalar.ph609.prol.loopexit, label %vec.epilog.scalar.ph609.prol, !llvm.loop !433

vec.epilog.scalar.ph609.prol.loopexit:            ; preds = %vec.epilog.scalar.ph609.prol, %vec.epilog.scalar.ph609.preheader
  %.017.i216.unr = phi i64 [ %.017.i216.ph, %vec.epilog.scalar.ph609.preheader ], [ %i.kr, %vec.epilog.scalar.ph609.prol ]
  %i.ks = sub nsw i64 %.017.i216.ph, %i.ar
  %i.kt = icmp ugt i64 %i.ks, -8
  br i1 %i.kt, label %._crit_edge.i218, label %vec.epilog.scalar.ph609

._crit_edge.i218:                                 ; preds = %vec.epilog.scalar.ph609.prol.loopexit, %vec.epilog.scalar.ph609, %middle.block605, %vec.epilog.middle.block618, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i213
  store i64 %i.ar, ptr %i.hq, align 8, !tbaa !154
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit246

vec.epilog.scalar.ph609:                          ; preds = %vec.epilog.scalar.ph609.prol.loopexit, %vec.epilog.scalar.ph609
  %.017.i216 = phi i64 [ %i.lz, %vec.epilog.scalar.ph609 ], [ %.017.i216.unr, %vec.epilog.scalar.ph609.prol.loopexit ] ; 10 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.017.i216
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.017.i216
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !20
  store float %i.kw, ptr %i.ku, align 4, !tbaa !20
  %i.kx = add nuw i64 %.017.i216, 1               ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.kx
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.kx
  %i.la = load float, ptr %i.kz, align 4, !tbaa !20
  store float %i.la, ptr %i.ky, align 4, !tbaa !20
  %i.lb = add nuw i64 %.017.i216, 2               ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.lb
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.lb
  %i.le = load float, ptr %i.ld, align 4, !tbaa !20
  store float %i.le, ptr %i.lc, align 4, !tbaa !20
  %i.lf = add nuw i64 %.017.i216, 3               ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.lf
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.lf
  %i.li = load float, ptr %i.lh, align 4, !tbaa !20
  store float %i.li, ptr %i.lg, align 4, !tbaa !20
  %i.lj = add nuw i64 %.017.i216, 4               ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.lj
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.lj
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !20
  store float %i.lm, ptr %i.lk, align 4, !tbaa !20
  %i.ln = add nuw i64 %.017.i216, 5               ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.ln
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !20
  store float %i.lq, ptr %i.lo, align 4, !tbaa !20
  %i.lr = add nuw i64 %.017.i216, 6               ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.lr
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !20
  store float %i.lu, ptr %i.ls, align 4, !tbaa !20
  %i.lv = add nuw i64 %.017.i216, 7               ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.lv
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.lv
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !20
  store float %i.ly, ptr %i.lw, align 4, !tbaa !20
  %i.lz = add nuw i64 %.017.i216, 8               ; 2 uses
  %exitcond.not.i217.7 = icmp eq i64 %i.lz, %i.ar
  br i1 %exitcond.not.i217.7, label %._crit_edge.i218, label %vec.epilog.scalar.ph609, !llvm.loop !434

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit246: ; preds = %._crit_edge.i218, %bb.p
  %i.ma = phi i64 [ %i.ar, %._crit_edge.i218 ], [ %i.ho, %bb.p ]
  %i.mb = phi ptr [ %i.hi, %._crit_edge.i218 ], [ %i.hm, %bb.p ] ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !154
  %.not.i.i.i.i247 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i.i247, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit248, label %bb.r

bb.r:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit246
  %i.mc = shl i64 %i.ma, 2
  %i.md = load ptr, ptr %i.as, align 8, !tbaa !118
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mf = load ptr, ptr %i.me, align 8
  invoke void %i.mf(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %i.mb, i64 noundef %i.mc, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit248 unwind label %bb.s, !inline_history !3

bb.s:                                             ; preds = %bb.r
  %i.mg = landingpad { ptr, i32 }
          catch ptr null
  %i.mh = extractvalue { ptr, i32 } %i.mg, 0
  call void @__clang_call_terminate(ptr %i.mh) #34
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit248: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit246, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %8, label %bb.t, label %bb.ao

bb.t:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit248
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.mi = load i32, ptr %i.b, align 4, !tbaa !158
  %i.mj = mul i32 %i.mi, %i.he                    ; 5 uses
  %i.mk = zext i32 %i.mj to i64                   ; 18 uses
  %i.ml = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 6 uses
  %i.mm = ptrtoint ptr %i.ml to i64
  store i64 %i.mm, ptr %11, align 8, !tbaa !159
  %i.mn = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %.not.i.not.i.i249 = icmp eq i32 %i.mj, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i249, label %bb.u, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i250

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i250: ; preds = %bb.t
  %i.mq = shl nuw nsw i64 %i.mk, 2                ; 2 uses
  %i.mr = load ptr, ptr %i.ml, align 8, !tbaa !118
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = invoke noundef ptr %i.mt(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, i64 noundef %i.mq, i64 noundef 4)
          to label %.lr.ph.i.i259 unwind label %bb.ai, !inline_history !2 ; 3 uses

.lr.ph.i.i259:                                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i250
  store i64 %i.mk, ptr %i.mo, align 8, !tbaa !155
  store ptr %i.mu, ptr %i.mn, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr align 4 %i.mu, i8 0, i64 %i.mq, i1 false), !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i259, %bb.t
  %i.mv = phi ptr [ %i.mu, %.lr.ph.i.i259 ], [ null, %bb.t ] ; 14 uses
  %i.mw = ptrtoaddr ptr %i.mv to i64
  store i64 %i.mk, ptr %i.mp, align 8, !tbaa !154
  %i.mx = load ptr, ptr %i.o, align 8, !tbaa !160 ; 3 uses
  %i.my = icmp eq ptr %i.mx, %i.ml
  br i1 %i.my, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.mz = load ptr, ptr %i.p, align 8, !tbaa !148 ; 2 uses
  store ptr %i.mv, ptr %i.p, align 8, !tbaa !148
  store ptr %i.mz, ptr %i.mn, align 8, !tbaa !148
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !71 ; 2 uses
  store i64 %i.mk, ptr %i.na, align 8, !tbaa !71
  store i64 %i.nb, ptr %i.mo, align 8, !tbaa !71
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.mk, ptr %i.nc, align 8, !tbaa !71
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit300

bb.w:                                             ; preds = %bb.u
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i64 0, ptr %i.nd, align 8, !tbaa !154
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !155
  %.not.i.i266 = icmp ult i64 %i.nf, %i.mk
  br i1 %.not.i.i266, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i273, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i267

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i273: ; preds = %bb.w
  %i.ng = shl nuw nsw i64 %i.mk, 2
  %i.nh = load ptr, ptr %i.mx, align 8, !tbaa !118
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = invoke noundef ptr %i.nj(ptr noundef nonnull align 8 dereferenceable(8) %i.mx, i64 noundef %i.ng, i64 noundef 4)
          to label %.noexc298 unwind label %bb.aj, !inline_history !161 ; 13 uses

.noexc298:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i273
  %.pre.i274 = load i64, ptr %i.nd, align 8, !tbaa !154 ; 11 uses
  %.not13.i.i275 = icmp eq i64 %.pre.i274, 0
  %.pre.i.i277 = load ptr, ptr %i.p, align 8, !tbaa !149 ; 14 uses
  br i1 %.not13.i.i275, label %._crit_edge.i.i290, label %iter.check675

iter.check675:                                    ; preds = %.noexc298
  %.pre.i.i277658 = ptrtoaddr ptr %.pre.i.i277 to i64
  %i.nl = ptrtoaddr ptr %i.nk to i64
  %min.iters.check659 = icmp ult i64 %.pre.i274, 4
  %i.nm = sub i64 %.pre.i.i277658, %i.nl
  %diff.check661 = icmp ugt i64 %i.nm, -128
  %or.cond917 = select i1 %min.iters.check659, i1 true, i1 %diff.check661
  br i1 %or.cond917, label %.lr.ph.i.i278.preheader, label %vector.main.loop.iter.check662

vector.main.loop.iter.check662:                   ; preds = %iter.check675
  %min.iters.check663 = icmp ult i64 %.pre.i274, 32
  br i1 %min.iters.check663, label %vec.epilog.ph679, label %vector.ph664

vector.ph664:                                     ; preds = %vector.main.loop.iter.check662
  %i.nn = and i64 %.pre.i274, 28
  %n.vec665 = and i64 %.pre.i274, -32             ; 4 uses
  br label %vector.body666

vector.body666:                                   ; preds = %vector.ph664, %vector.body666
  %index667 = phi i64 [ 0, %vector.ph664 ], [ %index.next672, %vector.body666 ] ; 3 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %index667 ; 4 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %index667 ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 96
  %wide.load668 = load <8 x float>, ptr %i.np, align 4, !tbaa !20
  %wide.load669 = load <8 x float>, ptr %i.nq, align 4, !tbaa !20
  %wide.load670 = load <8 x float>, ptr %i.nr, align 4, !tbaa !20
  %wide.load671 = load <8 x float>, ptr %i.ns, align 4, !tbaa !20
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 96
  store <8 x float> %wide.load668, ptr %i.no, align 4, !tbaa !20
  store <8 x float> %wide.load669, ptr %i.nt, align 4, !tbaa !20
  store <8 x float> %wide.load670, ptr %i.nu, align 4, !tbaa !20
  store <8 x float> %wide.load671, ptr %i.nv, align 4, !tbaa !20
  %index.next672 = add nuw i64 %index667, 32      ; 2 uses
  %i.nw = icmp eq i64 %index.next672, %n.vec665
  br i1 %i.nw, label %middle.block673, label %vector.body666, !llvm.loop !435

middle.block673:                                  ; preds = %vector.body666
  %cmp.n674 = icmp eq i64 %.pre.i274, %n.vec665
  br i1 %cmp.n674, label %._crit_edge.thread.i.i282, label %vec.epilog.iter.check676

vec.epilog.iter.check676:                         ; preds = %middle.block673
  %min.epilog.iters.check678 = icmp eq i64 %i.nn, 0
  br i1 %min.epilog.iters.check678, label %.lr.ph.i.i278.preheader, label %vec.epilog.ph679, !prof !152

vec.epilog.ph679:                                 ; preds = %vector.main.loop.iter.check662, %vec.epilog.iter.check676
  %vec.epilog.resume.val680 = phi i64 [ %n.vec665, %vec.epilog.iter.check676 ], [ 0, %vector.main.loop.iter.check662 ]
  %n.vec681 = and i64 %.pre.i274, -4              ; 3 uses
  br label %vec.epilog.vector.body682

vec.epilog.vector.body682:                        ; preds = %vec.epilog.vector.body682, %vec.epilog.ph679
  %index683 = phi i64 [ %vec.epilog.resume.val680, %vec.epilog.ph679 ], [ %index.next685, %vec.epilog.vector.body682 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %index683
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %index683
  %wide.load684 = load <4 x float>, ptr %i.ny, align 4, !tbaa !20
  store <4 x float> %wide.load684, ptr %i.nx, align 4, !tbaa !20
  %index.next685 = add nuw i64 %index683, 4       ; 2 uses
  %i.nz = icmp eq i64 %index.next685, %n.vec681
  br i1 %i.nz, label %vec.epilog.middle.block686, label %vec.epilog.vector.body682, !llvm.loop !436

vec.epilog.middle.block686:                       ; preds = %vec.epilog.vector.body682
  %cmp.n687 = icmp eq i64 %.pre.i274, %n.vec681
  br i1 %cmp.n687, label %._crit_edge.thread.i.i282, label %.lr.ph.i.i278.preheader

.lr.ph.i.i278.preheader:                          ; preds = %iter.check675, %vec.epilog.iter.check676, %vec.epilog.middle.block686
  %indvars.iv.i.i279.ph = phi i64 [ 0, %iter.check675 ], [ %n.vec665, %vec.epilog.iter.check676 ], [ %n.vec681, %vec.epilog.middle.block686 ] ; 4 uses
  %i.oa = sub i64 %.pre.i274, %indvars.iv.i.i279.ph
  %xtraiter951 = and i64 %i.oa, 7                 ; 2 uses
  %lcmp.mod952.not = icmp eq i64 %xtraiter951, 0
  br i1 %lcmp.mod952.not, label %.lr.ph.i.i278.prol.loopexit, label %.lr.ph.i.i278.prol

.lr.ph.i.i278.prol:                               ; preds = %.lr.ph.i.i278.preheader, %.lr.ph.i.i278.prol
  %indvars.iv.i.i279.prol = phi i64 [ %indvars.iv.next.i.i280.prol, %.lr.ph.i.i278.prol ], [ %indvars.iv.i.i279.ph, %.lr.ph.i.i278.preheader ] ; 3 uses
  %prol.iter953 = phi i64 [ %prol.iter953.next, %.lr.ph.i.i278.prol ], [ 0, %.lr.ph.i.i278.preheader ]
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i.i279.prol
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %indvars.iv.i.i279.prol
  %i.od = load float, ptr %i.oc, align 4, !tbaa !20
  store float %i.od, ptr %i.ob, align 4, !tbaa !20
  %indvars.iv.next.i.i280.prol = add nuw nsw i64 %indvars.iv.i.i279.prol, 1 ; 2 uses
  %prol.iter953.next = add i64 %prol.iter953, 1   ; 2 uses
  %prol.iter953.cmp.not = icmp eq i64 %prol.iter953.next, %xtraiter951
  br i1 %prol.iter953.cmp.not, label %.lr.ph.i.i278.prol.loopexit, label %.lr.ph.i.i278.prol, !llvm.loop !437

.lr.ph.i.i278.prol.loopexit:                      ; preds = %.lr.ph.i.i278.prol, %.lr.ph.i.i278.preheader
  %indvars.iv.i.i279.unr = phi i64 [ %indvars.iv.i.i279.ph, %.lr.ph.i.i278.preheader ], [ %indvars.iv.next.i.i280.prol, %.lr.ph.i.i278.prol ]
  %i.oe = sub i64 %indvars.iv.i.i279.ph, %.pre.i274
  %i.of = icmp ugt i64 %i.oe, -8
  br i1 %i.of, label %._crit_edge.thread.i.i282, label %.lr.ph.i.i278

._crit_edge.i.i290:                               ; preds = %.noexc298
  %.not.i.i.i.i.i294 = icmp eq ptr %.pre.i.i277, null
  br i1 %.not.i.i.i.i.i294, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i286, label %._crit_edge.thread.i.i282

._crit_edge.thread.i.i282:                        ; preds = %.lr.ph.i.i278.prol.loopexit, %.lr.ph.i.i278, %middle.block673, %vec.epilog.middle.block686, %._crit_edge.i.i290
  %i.og = load i64, ptr %i.ne, align 8, !tbaa !155
  %i.oh = shl i64 %i.og, 2
  %i.oi = load ptr, ptr %i.o, align 8, !tbaa !160 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !118
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load ptr, ptr %i.ok, align 8
  invoke void %i.ol(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull %.pre.i.i277, i64 noundef %i.oh, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i286 unwind label %bb.aj, !inline_history !161

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i286: ; preds = %._crit_edge.thread.i.i282, %._crit_edge.i.i290
  store i64 %i.mk, ptr %i.ne, align 8, !tbaa !155
  store ptr %i.nk, ptr %i.p, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i267

.lr.ph.i.i278:                                    ; preds = %.lr.ph.i.i278.prol.loopexit, %.lr.ph.i.i278
  %indvars.iv.i.i279 = phi i64 [ %indvars.iv.next.i.i280.7, %.lr.ph.i.i278 ], [ %indvars.iv.i.i279.unr, %.lr.ph.i.i278.prol.loopexit ] ; 10 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.i.i279
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %indvars.iv.i.i279
  %i.oo = load float, ptr %i.on, align 4, !tbaa !20
  store float %i.oo, ptr %i.om, align 4, !tbaa !20
  %indvars.iv.next.i.i280 = add nuw nsw i64 %indvars.iv.i.i279, 1 ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i.i280
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %indvars.iv.next.i.i280
  %i.or = load float, ptr %i.oq, align 4, !tbaa !20
  store float %i.or, ptr %i.op, align 4, !tbaa !20
  %indvars.iv.next.i.i280.1 = add nuw nsw i64 %indvars.iv.i.i279, 2 ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i.i280.1
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %indvars.iv.next.i.i280.1
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !20
  store float %i.ou, ptr %i.os, align 4, !tbaa !20
  %indvars.iv.next.i.i280.2 = add nuw nsw i64 %indvars.iv.i.i279, 3 ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i.i280.2
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %indvars.iv.next.i.i280.2
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !20
  store float %i.ox, ptr %i.ov, align 4, !tbaa !20
  %indvars.iv.next.i.i280.3 = add nuw nsw i64 %indvars.iv.i.i279, 4 ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i.i280.3
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %indvars.iv.next.i.i280.3
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !20
  store float %i.pa, ptr %i.oy, align 4, !tbaa !20
  %indvars.iv.next.i.i280.4 = add nuw nsw i64 %indvars.iv.i.i279, 5 ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i.i280.4
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %indvars.iv.next.i.i280.4
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !20
  store float %i.pd, ptr %i.pb, align 4, !tbaa !20
  %indvars.iv.next.i.i280.5 = add nuw nsw i64 %indvars.iv.i.i279, 6 ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i.i280.5
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %indvars.iv.next.i.i280.5
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !20
  store float %i.pg, ptr %i.pe, align 4, !tbaa !20
  %indvars.iv.next.i.i280.6 = add nuw nsw i64 %indvars.iv.i.i279, 7 ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.next.i.i280.6
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i277, i64 %indvars.iv.next.i.i280.6
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !20
  store float %i.pj, ptr %i.ph, align 4, !tbaa !20
  %indvars.iv.next.i.i280.7 = add nuw nsw i64 %indvars.iv.i.i279, 8 ; 2 uses
  %exitcond.not.i.i281.7 = icmp eq i64 %indvars.iv.next.i.i280.7, %.pre.i274
  br i1 %exitcond.not.i.i281.7, label %._crit_edge.thread.i.i282, label %.lr.ph.i.i278, !llvm.loop !438

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i267: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i286, %bb.w
  %.not.i268 = icmp eq i32 %i.mj, 0
  br i1 %.not.i268, label %._crit_edge.i272, label %iter.check707

iter.check707:                                    ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i267
  %i.pk = load ptr, ptr %i.p, align 8, !tbaa !149 ; 12 uses
  %min.iters.check691 = icmp ult i32 %i.mj, 4
  %i.pl = ptrtoaddr ptr %i.pk to i64
  %i.pm = sub i64 %i.mw, %i.pl
  %diff.check693 = icmp ugt i64 %i.pm, -128
  %or.cond919 = select i1 %min.iters.check691, i1 true, i1 %diff.check693
  br i1 %or.cond919, label %vec.epilog.scalar.ph709.preheader, label %vector.main.loop.iter.check694

vector.main.loop.iter.check694:                   ; preds = %iter.check707
  %min.iters.check695 = icmp ult i32 %i.mj, 32
  br i1 %min.iters.check695, label %vec.epilog.ph711, label %vector.ph696

vector.ph696:                                     ; preds = %vector.main.loop.iter.check694
  %i.pn = and i64 %i.mk, 28
  %n.vec697 = and i64 %i.mk, 4294967264           ; 4 uses
  br label %vector.body698

vector.body698:                                   ; preds = %vector.ph696, %vector.body698
  %index699 = phi i64 [ 0, %vector.ph696 ], [ %index.next704, %vector.body698 ] ; 3 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %index699 ; 4 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %index699 ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 96
  %wide.load700 = load <8 x float>, ptr %i.pp, align 4, !tbaa !20
  %wide.load701 = load <8 x float>, ptr %i.pq, align 4, !tbaa !20
  %wide.load702 = load <8 x float>, ptr %i.pr, align 4, !tbaa !20
  %wide.load703 = load <8 x float>, ptr %i.ps, align 4, !tbaa !20
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 64
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 96
  store <8 x float> %wide.load700, ptr %i.po, align 4, !tbaa !20
  store <8 x float> %wide.load701, ptr %i.pt, align 4, !tbaa !20
  store <8 x float> %wide.load702, ptr %i.pu, align 4, !tbaa !20
  store <8 x float> %wide.load703, ptr %i.pv, align 4, !tbaa !20
  %index.next704 = add nuw i64 %index699, 32      ; 2 uses
  %i.pw = icmp eq i64 %index.next704, %n.vec697
  br i1 %i.pw, label %middle.block705, label %vector.body698, !llvm.loop !439

middle.block705:                                  ; preds = %vector.body698
  %cmp.n706 = icmp eq i64 %n.vec697, %i.mk
  br i1 %cmp.n706, label %._crit_edge.i272, label %vec.epilog.iter.check708

vec.epilog.iter.check708:                         ; preds = %middle.block705
  %min.epilog.iters.check710 = icmp eq i64 %i.pn, 0
  br i1 %min.epilog.iters.check710, label %vec.epilog.scalar.ph709.preheader, label %vec.epilog.ph711, !prof !152

vec.epilog.ph711:                                 ; preds = %vector.main.loop.iter.check694, %vec.epilog.iter.check708
  %vec.epilog.resume.val712 = phi i64 [ %n.vec697, %vec.epilog.iter.check708 ], [ 0, %vector.main.loop.iter.check694 ]
  %n.vec713 = and i64 %i.mk, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body714

vec.epilog.vector.body714:                        ; preds = %vec.epilog.vector.body714, %vec.epilog.ph711
  %index715 = phi i64 [ %vec.epilog.resume.val712, %vec.epilog.ph711 ], [ %index.next717, %vec.epilog.vector.body714 ] ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %index715
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %index715
  %wide.load716 = load <4 x float>, ptr %i.py, align 4, !tbaa !20
  store <4 x float> %wide.load716, ptr %i.px, align 4, !tbaa !20
  %index.next717 = add nuw i64 %index715, 4       ; 2 uses
  %i.pz = icmp eq i64 %index.next717, %n.vec713
  br i1 %i.pz, label %vec.epilog.middle.block718, label %vec.epilog.vector.body714, !llvm.loop !440

vec.epilog.middle.block718:                       ; preds = %vec.epilog.vector.body714
  %cmp.n719 = icmp eq i64 %n.vec713, %i.mk
  br i1 %cmp.n719, label %._crit_edge.i272, label %vec.epilog.scalar.ph709.preheader

vec.epilog.scalar.ph709.preheader:                ; preds = %iter.check707, %vec.epilog.iter.check708, %vec.epilog.middle.block718
  %.017.i270.ph = phi i64 [ 0, %iter.check707 ], [ %n.vec697, %vec.epilog.iter.check708 ], [ %n.vec713, %vec.epilog.middle.block718 ] ; 4 uses
  %i.qa = sub nsw i64 %i.mk, %.017.i270.ph
  %xtraiter954 = and i64 %i.qa, 7                 ; 2 uses
  %lcmp.mod955.not = icmp eq i64 %xtraiter954, 0
  br i1 %lcmp.mod955.not, label %vec.epilog.scalar.ph709.prol.loopexit, label %vec.epilog.scalar.ph709.prol

vec.epilog.scalar.ph709.prol:                     ; preds = %vec.epilog.scalar.ph709.preheader, %vec.epilog.scalar.ph709.prol
  %.017.i270.prol = phi i64 [ %i.qe, %vec.epilog.scalar.ph709.prol ], [ %.017.i270.ph, %vec.epilog.scalar.ph709.preheader ] ; 3 uses
  %prol.iter956 = phi i64 [ %prol.iter956.next, %vec.epilog.scalar.ph709.prol ], [ 0, %vec.epilog.scalar.ph709.preheader ]
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %.017.i270.prol
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.017.i270.prol
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !20
  store float %i.qd, ptr %i.qb, align 4, !tbaa !20
  %i.qe = add nuw i64 %.017.i270.prol, 1          ; 2 uses
  %prol.iter956.next = add i64 %prol.iter956, 1   ; 2 uses
  %prol.iter956.cmp.not = icmp eq i64 %prol.iter956.next, %xtraiter954
  br i1 %prol.iter956.cmp.not, label %vec.epilog.scalar.ph709.prol.loopexit, label %vec.epilog.scalar.ph709.prol, !llvm.loop !441

vec.epilog.scalar.ph709.prol.loopexit:            ; preds = %vec.epilog.scalar.ph709.prol, %vec.epilog.scalar.ph709.preheader
  %.017.i270.unr = phi i64 [ %.017.i270.ph, %vec.epilog.scalar.ph709.preheader ], [ %i.qe, %vec.epilog.scalar.ph709.prol ]
  %i.qf = sub nsw i64 %.017.i270.ph, %i.mk
  %i.qg = icmp ugt i64 %i.qf, -8
  br i1 %i.qg, label %._crit_edge.i272, label %vec.epilog.scalar.ph709

._crit_edge.i272:                                 ; preds = %vec.epilog.scalar.ph709.prol.loopexit, %vec.epilog.scalar.ph709, %middle.block705, %vec.epilog.middle.block718, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i267
  store i64 %i.mk, ptr %i.nd, align 8, !tbaa !154
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit300

vec.epilog.scalar.ph709:                          ; preds = %vec.epilog.scalar.ph709.prol.loopexit, %vec.epilog.scalar.ph709
  %.017.i270 = phi i64 [ %i.rm, %vec.epilog.scalar.ph709 ], [ %.017.i270.unr, %vec.epilog.scalar.ph709.prol.loopexit ] ; 10 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %.017.i270
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.017.i270
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !20
  store float %i.qj, ptr %i.qh, align 4, !tbaa !20
  %i.qk = add nuw i64 %.017.i270, 1               ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.qk
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.qk
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !20
  store float %i.qn, ptr %i.ql, align 4, !tbaa !20
  %i.qo = add nuw i64 %.017.i270, 2               ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.qo
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.qo
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !20
  store float %i.qr, ptr %i.qp, align 4, !tbaa !20
  %i.qs = add nuw i64 %.017.i270, 3               ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.qs
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.qs
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !20
  store float %i.qv, ptr %i.qt, align 4, !tbaa !20
  %i.qw = add nuw i64 %.017.i270, 4               ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.qw
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.qw
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !20
  store float %i.qz, ptr %i.qx, align 4, !tbaa !20
  %i.ra = add nuw i64 %.017.i270, 5               ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.ra
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.ra
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !20
  store float %i.rd, ptr %i.rb, align 4, !tbaa !20
  %i.re = add nuw i64 %.017.i270, 6               ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.re
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.re
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !20
  store float %i.rh, ptr %i.rf, align 4, !tbaa !20
  %i.ri = add nuw i64 %.017.i270, 7               ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.ri
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.ri
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !20
  store float %i.rl, ptr %i.rj, align 4, !tbaa !20
  %i.rm = add nuw i64 %.017.i270, 8               ; 2 uses
  %exitcond.not.i271.7 = icmp eq i64 %i.rm, %i.mk
  br i1 %exitcond.not.i271.7, label %._crit_edge.i272, label %vec.epilog.scalar.ph709, !llvm.loop !442

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit300: ; preds = %._crit_edge.i272, %bb.v
  %i.rn = phi i64 [ %i.mk, %._crit_edge.i272 ], [ %i.nb, %bb.v ]
  %i.ro = phi ptr [ %i.mv, %._crit_edge.i272 ], [ %i.mz, %bb.v ] ; 2 uses
  store i64 0, ptr %i.mp, align 8, !tbaa !154
  %.not.i.i.i.i301 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i.i.i301, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit302, label %bb.x

bb.x:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit300
  %i.rp = shl i64 %i.rn, 2
  %i.rq = load ptr, ptr %i.ml, align 8, !tbaa !118
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8
  invoke void %i.rs(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef nonnull %i.ro, i64 noundef %i.rp, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit302 unwind label %bb.y, !inline_history !3

bb.y:                                             ; preds = %bb.x
  %i.rt = landingpad { ptr, i32 }
          catch ptr null
  %i.ru = extractvalue { ptr, i32 } %i.rt, 0
  call void @__clang_call_terminate(ptr %i.ru) #34
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit302: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit300, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.rv = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31 ; 6 uses
  %i.rw = ptrtoint ptr %i.rv to i64
  store i64 %i.rw, ptr %12, align 8, !tbaa !159
  %i.rx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rx, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i, label %bb.z, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i304

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i304: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit302
  %i.sa = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  %i.sb = load ptr, ptr %i.rv, align 8, !tbaa !118
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = invoke noundef ptr %i.sd(ptr noundef nonnull align 8 dereferenceable(8) %i.rv, i64 noundef %i.sa, i64 noundef 4)
          to label %.lr.ph.i.i313 unwind label %bb.al, !inline_history !2 ; 3 uses

.lr.ph.i.i313:                                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i304
  store i64 %i.ar, ptr %i.ry, align 8, !tbaa !155
  store ptr %i.se, ptr %i.rx, align 8, !tbaa !149
  call void @llvm.memset.p0.i64(ptr align 4 %i.se, i8 0, i64 %i.sa, i1 false), !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i313, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit302
  %i.sf = phi ptr [ %i.se, %.lr.ph.i.i313 ], [ null, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit302 ] ; 14 uses
  %i.sg = ptrtoaddr ptr %i.sf to i64
  store i64 %i.ar, ptr %i.rz, align 8, !tbaa !154
  %i.sh = load ptr, ptr %i.q, align 8, !tbaa !160 ; 3 uses
  %i.si = icmp eq ptr %i.sh, %i.rv
  br i1 %i.si, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.sj = load ptr, ptr %i.r, align 8, !tbaa !148 ; 2 uses
  store ptr %i.sf, ptr %i.r, align 8, !tbaa !148
  store ptr %i.sj, ptr %i.rx, align 8, !tbaa !148
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !71 ; 2 uses
  store i64 %i.ar, ptr %i.sk, align 8, !tbaa !71
  store i64 %i.sl, ptr %i.ry, align 8, !tbaa !71
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.ar, ptr %i.sm, align 8, !tbaa !71
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit354

bb.ab:                                            ; preds = %bb.z
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i64 0, ptr %i.sn, align 8, !tbaa !154
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !155
  %.not.i.i320 = icmp ult i64 %i.sp, %i.ar
  br i1 %.not.i.i320, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i327, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i321

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i327: ; preds = %bb.ab
  %i.sq = shl nuw nsw i64 %i.ar, 2
  %i.sr = load ptr, ptr %i.sh, align 8, !tbaa !118
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.st = load ptr, ptr %i.ss, align 8
  %i.su = invoke noundef ptr %i.st(ptr noundef nonnull align 8 dereferenceable(8) %i.sh, i64 noundef %i.sq, i64 noundef 4)
          to label %.noexc352 unwind label %bb.am, !inline_history !161 ; 13 uses

.noexc352:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i327
  %.pre.i328 = load i64, ptr %i.sn, align 8, !tbaa !154 ; 11 uses
  %.not13.i.i329 = icmp eq i64 %.pre.i328, 0
  %.pre.i.i331 = load ptr, ptr %i.r, align 8, !tbaa !149 ; 14 uses
  br i1 %.not13.i.i329, label %._crit_edge.i.i344, label %iter.check741

iter.check741:                                    ; preds = %.noexc352
  %.pre.i.i331724 = ptrtoaddr ptr %.pre.i.i331 to i64
  %i.sv = ptrtoaddr ptr %i.su to i64
  %min.iters.check725 = icmp ult i64 %.pre.i328, 4
  %i.sw = sub i64 %.pre.i.i331724, %i.sv
  %diff.check727 = icmp ugt i64 %i.sw, -128
  %or.cond920 = select i1 %min.iters.check725, i1 true, i1 %diff.check727
  br i1 %or.cond920, label %.lr.ph.i.i332.preheader, label %vector.main.loop.iter.check728

vector.main.loop.iter.check728:                   ; preds = %iter.check741
  %min.iters.check729 = icmp ult i64 %.pre.i328, 32
  br i1 %min.iters.check729, label %vec.epilog.ph745, label %vector.ph730

vector.ph730:                                     ; preds = %vector.main.loop.iter.check728
  %i.sx = and i64 %.pre.i328, 28
  %n.vec731 = and i64 %.pre.i328, -32             ; 4 uses
  br label %vector.body732

vector.body732:                                   ; preds = %vector.ph730, %vector.body732
  %index733 = phi i64 [ 0, %vector.ph730 ], [ %index.next738, %vector.body732 ] ; 3 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %index733 ; 4 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %index733 ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 96
  %wide.load734 = load <8 x float>, ptr %i.sz, align 4, !tbaa !20
  %wide.load735 = load <8 x float>, ptr %i.ta, align 4, !tbaa !20
  %wide.load736 = load <8 x float>, ptr %i.tb, align 4, !tbaa !20
  %wide.load737 = load <8 x float>, ptr %i.tc, align 4, !tbaa !20
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  %i.te = getelementptr inbounds nuw i8, ptr %i.sy, i64 64
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 96
  store <8 x float> %wide.load734, ptr %i.sy, align 4, !tbaa !20
  store <8 x float> %wide.load735, ptr %i.td, align 4, !tbaa !20
  store <8 x float> %wide.load736, ptr %i.te, align 4, !tbaa !20
  store <8 x float> %wide.load737, ptr %i.tf, align 4, !tbaa !20
  %index.next738 = add nuw i64 %index733, 32      ; 2 uses
  %i.tg = icmp eq i64 %index.next738, %n.vec731
  br i1 %i.tg, label %middle.block739, label %vector.body732, !llvm.loop !443

middle.block739:                                  ; preds = %vector.body732
  %cmp.n740 = icmp eq i64 %.pre.i328, %n.vec731
  br i1 %cmp.n740, label %._crit_edge.thread.i.i336, label %vec.epilog.iter.check742

vec.epilog.iter.check742:                         ; preds = %middle.block739
  %min.epilog.iters.check744 = icmp eq i64 %i.sx, 0
  br i1 %min.epilog.iters.check744, label %.lr.ph.i.i332.preheader, label %vec.epilog.ph745, !prof !152

vec.epilog.ph745:                                 ; preds = %vector.main.loop.iter.check728, %vec.epilog.iter.check742
  %vec.epilog.resume.val746 = phi i64 [ %n.vec731, %vec.epilog.iter.check742 ], [ 0, %vector.main.loop.iter.check728 ]
  %n.vec747 = and i64 %.pre.i328, -4              ; 3 uses
  br label %vec.epilog.vector.body748

vec.epilog.vector.body748:                        ; preds = %vec.epilog.vector.body748, %vec.epilog.ph745
  %index749 = phi i64 [ %vec.epilog.resume.val746, %vec.epilog.ph745 ], [ %index.next751, %vec.epilog.vector.body748 ] ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %index749
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %index749
  %wide.load750 = load <4 x float>, ptr %i.ti, align 4, !tbaa !20
  store <4 x float> %wide.load750, ptr %i.th, align 4, !tbaa !20
  %index.next751 = add nuw i64 %index749, 4       ; 2 uses
  %i.tj = icmp eq i64 %index.next751, %n.vec747
  br i1 %i.tj, label %vec.epilog.middle.block752, label %vec.epilog.vector.body748, !llvm.loop !444

vec.epilog.middle.block752:                       ; preds = %vec.epilog.vector.body748
  %cmp.n753 = icmp eq i64 %.pre.i328, %n.vec747
  br i1 %cmp.n753, label %._crit_edge.thread.i.i336, label %.lr.ph.i.i332.preheader

.lr.ph.i.i332.preheader:                          ; preds = %iter.check741, %vec.epilog.iter.check742, %vec.epilog.middle.block752
  %indvars.iv.i.i333.ph = phi i64 [ 0, %iter.check741 ], [ %n.vec731, %vec.epilog.iter.check742 ], [ %n.vec747, %vec.epilog.middle.block752 ] ; 4 uses
  %i.tk = sub i64 %.pre.i328, %indvars.iv.i.i333.ph
  %xtraiter957 = and i64 %i.tk, 7                 ; 2 uses
  %lcmp.mod958.not = icmp eq i64 %xtraiter957, 0
  br i1 %lcmp.mod958.not, label %.lr.ph.i.i332.prol.loopexit, label %.lr.ph.i.i332.prol

.lr.ph.i.i332.prol:                               ; preds = %.lr.ph.i.i332.preheader, %.lr.ph.i.i332.prol
  %indvars.iv.i.i333.prol = phi i64 [ %indvars.iv.next.i.i334.prol, %.lr.ph.i.i332.prol ], [ %indvars.iv.i.i333.ph, %.lr.ph.i.i332.preheader ] ; 3 uses
  %prol.iter959 = phi i64 [ %prol.iter959.next, %.lr.ph.i.i332.prol ], [ 0, %.lr.ph.i.i332.preheader ]
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.i.i333.prol
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %indvars.iv.i.i333.prol
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !20
  store float %i.tn, ptr %i.tl, align 4, !tbaa !20
  %indvars.iv.next.i.i334.prol = add nuw nsw i64 %indvars.iv.i.i333.prol, 1 ; 2 uses
  %prol.iter959.next = add i64 %prol.iter959, 1   ; 2 uses
  %prol.iter959.cmp.not = icmp eq i64 %prol.iter959.next, %xtraiter957
  br i1 %prol.iter959.cmp.not, label %.lr.ph.i.i332.prol.loopexit, label %.lr.ph.i.i332.prol, !llvm.loop !445

.lr.ph.i.i332.prol.loopexit:                      ; preds = %.lr.ph.i.i332.prol, %.lr.ph.i.i332.preheader
  %indvars.iv.i.i333.unr = phi i64 [ %indvars.iv.i.i333.ph, %.lr.ph.i.i332.preheader ], [ %indvars.iv.next.i.i334.prol, %.lr.ph.i.i332.prol ]
  %i.to = sub i64 %indvars.iv.i.i333.ph, %.pre.i328
  %i.tp = icmp ugt i64 %i.to, -8
  br i1 %i.tp, label %._crit_edge.thread.i.i336, label %.lr.ph.i.i332

._crit_edge.i.i344:                               ; preds = %.noexc352
  %.not.i.i.i.i.i348 = icmp eq ptr %.pre.i.i331, null
  br i1 %.not.i.i.i.i.i348, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i340, label %._crit_edge.thread.i.i336

._crit_edge.thread.i.i336:                        ; preds = %.lr.ph.i.i332.prol.loopexit, %.lr.ph.i.i332, %middle.block739, %vec.epilog.middle.block752, %._crit_edge.i.i344
  %i.tq = load i64, ptr %i.so, align 8, !tbaa !155
  %i.tr = shl i64 %i.tq, 2
  %i.ts = load ptr, ptr %i.q, align 8, !tbaa !160 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !118
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8
  invoke void %i.tv(ptr noundef nonnull align 8 dereferenceable(8) %i.ts, ptr noundef nonnull %.pre.i.i331, i64 noundef %i.tr, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i340 unwind label %bb.am, !inline_history !161

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i340: ; preds = %._crit_edge.thread.i.i336, %._crit_edge.i.i344
  store i64 %i.ar, ptr %i.so, align 8, !tbaa !155
  store ptr %i.su, ptr %i.r, align 8, !tbaa !149
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i321

.lr.ph.i.i332:                                    ; preds = %.lr.ph.i.i332.prol.loopexit, %.lr.ph.i.i332
  %indvars.iv.i.i333 = phi i64 [ %indvars.iv.next.i.i334.7, %.lr.ph.i.i332 ], [ %indvars.iv.i.i333.unr, %.lr.ph.i.i332.prol.loopexit ] ; 10 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.i.i333
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %indvars.iv.i.i333
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !20
  store float %i.ty, ptr %i.tw, align 4, !tbaa !20
  %indvars.iv.next.i.i334 = add nuw nsw i64 %indvars.iv.i.i333, 1 ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.next.i.i334
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %indvars.iv.next.i.i334
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !20
  store float %i.ub, ptr %i.tz, align 4, !tbaa !20
  %indvars.iv.next.i.i334.1 = add nuw nsw i64 %indvars.iv.i.i333, 2 ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.next.i.i334.1
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %indvars.iv.next.i.i334.1
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !20
  store float %i.ue, ptr %i.uc, align 4, !tbaa !20
  %indvars.iv.next.i.i334.2 = add nuw nsw i64 %indvars.iv.i.i333, 3 ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.next.i.i334.2
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %indvars.iv.next.i.i334.2
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !20
  store float %i.uh, ptr %i.uf, align 4, !tbaa !20
  %indvars.iv.next.i.i334.3 = add nuw nsw i64 %indvars.iv.i.i333, 4 ; 2 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.next.i.i334.3
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %indvars.iv.next.i.i334.3
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !20
  store float %i.uk, ptr %i.ui, align 4, !tbaa !20
  %indvars.iv.next.i.i334.4 = add nuw nsw i64 %indvars.iv.i.i333, 5 ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.next.i.i334.4
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %indvars.iv.next.i.i334.4
  %i.un = load float, ptr %i.um, align 4, !tbaa !20
  store float %i.un, ptr %i.ul, align 4, !tbaa !20
  %indvars.iv.next.i.i334.5 = add nuw nsw i64 %indvars.iv.i.i333, 6 ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.next.i.i334.5
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %indvars.iv.next.i.i334.5
  %i.uq = load float, ptr %i.up, align 4, !tbaa !20
  store float %i.uq, ptr %i.uo, align 4, !tbaa !20
  %indvars.iv.next.i.i334.6 = add nuw nsw i64 %indvars.iv.i.i333, 7 ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv.next.i.i334.6
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i331, i64 %indvars.iv.next.i.i334.6
  %i.ut = load float, ptr %i.us, align 4, !tbaa !20
  store float %i.ut, ptr %i.ur, align 4, !tbaa !20
  %indvars.iv.next.i.i334.7 = add nuw nsw i64 %indvars.iv.i.i333, 8 ; 2 uses
  %exitcond.not.i.i335.7 = icmp eq i64 %indvars.iv.next.i.i334.7, %.pre.i328
  br i1 %exitcond.not.i.i335.7, label %._crit_edge.thread.i.i336, label %.lr.ph.i.i332, !llvm.loop !446

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i321: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i340, %bb.ab
  %.not.i322 = icmp eq i32 %i.aq, 0
  br i1 %.not.i322, label %._crit_edge.i326, label %iter.check773

iter.check773:                                    ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i321
  %i.uu = load ptr, ptr %i.r, align 8, !tbaa !149 ; 12 uses
  %min.iters.check757 = icmp ult i32 %i.aq, 4
  %i.uv = ptrtoaddr ptr %i.uu to i64
  %i.uw = sub i64 %i.sg, %i.uv
  %diff.check759 = icmp ugt i64 %i.uw, -128
  %or.cond922 = select i1 %min.iters.check757, i1 true, i1 %diff.check759
  br i1 %or.cond922, label %vec.epilog.scalar.ph775.preheader, label %vector.main.loop.iter.check760

vector.main.loop.iter.check760:                   ; preds = %iter.check773
  %min.iters.check761 = icmp ult i32 %i.aq, 32
  br i1 %min.iters.check761, label %vec.epilog.ph777, label %vector.ph762

vector.ph762:                                     ; preds = %vector.main.loop.iter.check760
  %i.ux = and i64 %i.ar, 28
  %n.vec763 = and i64 %i.ar, 4294967264           ; 4 uses
  br label %vector.body764

vector.body764:                                   ; preds = %vector.ph762, %vector.body764
  %index765 = phi i64 [ 0, %vector.ph762 ], [ %index.next770, %vector.body764 ] ; 3 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %index765 ; 4 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %index765 ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 32
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 96
  %wide.load766 = load <8 x float>, ptr %i.uz, align 4, !tbaa !20
  %wide.load767 = load <8 x float>, ptr %i.va, align 4, !tbaa !20
  %wide.load768 = load <8 x float>, ptr %i.vb, align 4, !tbaa !20
  %wide.load769 = load <8 x float>, ptr %i.vc, align 4, !tbaa !20
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uy, i64 32
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uy, i64 64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uy, i64 96
  store <8 x float> %wide.load766, ptr %i.uy, align 4, !tbaa !20
  store <8 x float> %wide.load767, ptr %i.vd, align 4, !tbaa !20
  store <8 x float> %wide.load768, ptr %i.ve, align 4, !tbaa !20
  store <8 x float> %wide.load769, ptr %i.vf, align 4, !tbaa !20
  %index.next770 = add nuw i64 %index765, 32      ; 2 uses
  %i.vg = icmp eq i64 %index.next770, %n.vec763
  br i1 %i.vg, label %middle.block771, label %vector.body764, !llvm.loop !447

middle.block771:                                  ; preds = %vector.body764
  %cmp.n772 = icmp eq i64 %n.vec763, %i.ar
  br i1 %cmp.n772, label %._crit_edge.i326, label %vec.epilog.iter.check774

vec.epilog.iter.check774:                         ; preds = %middle.block771
  %min.epilog.iters.check776 = icmp eq i64 %i.ux, 0
  br i1 %min.epilog.iters.check776, label %vec.epilog.scalar.ph775.preheader, label %vec.epilog.ph777, !prof !152

vec.epilog.ph777:                                 ; preds = %vector.main.loop.iter.check760, %vec.epilog.iter.check774
  %vec.epilog.resume.val778 = phi i64 [ %n.vec763, %vec.epilog.iter.check774 ], [ 0, %vector.main.loop.iter.check760 ]
  %n.vec779 = and i64 %i.ar, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body780

vec.epilog.vector.body780:                        ; preds = %vec.epilog.vector.body780, %vec.epilog.ph777
  %index781 = phi i64 [ %vec.epilog.resume.val778, %vec.epilog.ph777 ], [ %index.next783, %vec.epilog.vector.body780 ] ; 3 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %index781
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %index781
  %wide.load782 = load <4 x float>, ptr %i.vi, align 4, !tbaa !20
  store <4 x float> %wide.load782, ptr %i.vh, align 4, !tbaa !20
  %index.next783 = add nuw i64 %index781, 4       ; 2 uses
  %i.vj = icmp eq i64 %index.next783, %n.vec779
  br i1 %i.vj, label %vec.epilog.middle.block784, label %vec.epilog.vector.body780, !llvm.loop !448

vec.epilog.middle.block784:                       ; preds = %vec.epilog.vector.body780
  %cmp.n785 = icmp eq i64 %n.vec779, %i.ar
  br i1 %cmp.n785, label %._crit_edge.i326, label %vec.epilog.scalar.ph775.preheader

vec.epilog.scalar.ph775.preheader:                ; preds = %iter.check773, %vec.epilog.iter.check774, %vec.epilog.middle.block784
  %.017.i324.ph = phi i64 [ 0, %iter.check773 ], [ %n.vec763, %vec.epilog.iter.check774 ], [ %n.vec779, %vec.epilog.middle.block784 ] ; 4 uses
  %i.vk = sub nsw i64 %i.ar, %.017.i324.ph
  %xtraiter960 = and i64 %i.vk, 7                 ; 2 uses
  %lcmp.mod961.not = icmp eq i64 %xtraiter960, 0
  br i1 %lcmp.mod961.not, label %vec.epilog.scalar.ph775.prol.loopexit, label %vec.epilog.scalar.ph775.prol

vec.epilog.scalar.ph775.prol:                     ; preds = %vec.epilog.scalar.ph775.preheader, %vec.epilog.scalar.ph775.prol
  %.017.i324.prol = phi i64 [ %i.vo, %vec.epilog.scalar.ph775.prol ], [ %.017.i324.ph, %vec.epilog.scalar.ph775.preheader ] ; 3 uses
  %prol.iter962 = phi i64 [ %prol.iter962.next, %vec.epilog.scalar.ph775.prol ], [ 0, %vec.epilog.scalar.ph775.preheader ]
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %.017.i324.prol
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %.017.i324.prol
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !20
  store float %i.vn, ptr %i.vl, align 4, !tbaa !20
  %i.vo = add nuw i64 %.017.i324.prol, 1          ; 2 uses
  %prol.iter962.next = add i64 %prol.iter962, 1   ; 2 uses
  %prol.iter962.cmp.not = icmp eq i64 %prol.iter962.next, %xtraiter960
  br i1 %prol.iter962.cmp.not, label %vec.epilog.scalar.ph775.prol.loopexit, label %vec.epilog.scalar.ph775.prol, !llvm.loop !449

vec.epilog.scalar.ph775.prol.loopexit:            ; preds = %vec.epilog.scalar.ph775.prol, %vec.epilog.scalar.ph775.preheader
  %.017.i324.unr = phi i64 [ %.017.i324.ph, %vec.epilog.scalar.ph775.preheader ], [ %i.vo, %vec.epilog.scalar.ph775.prol ]
  %i.vp = sub nsw i64 %.017.i324.ph, %i.ar
  %i.vq = icmp ugt i64 %i.vp, -8
  br i1 %i.vq, label %._crit_edge.i326, label %vec.epilog.scalar.ph775

._crit_edge.i326:                                 ; preds = %vec.epilog.scalar.ph775.prol.loopexit, %vec.epilog.scalar.ph775, %middle.block771, %vec.epilog.middle.block784, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i321
  store i64 %i.ar, ptr %i.sn, align 8, !tbaa !154
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit354

vec.epilog.scalar.ph775:                          ; preds = %vec.epilog.scalar.ph775.prol.loopexit, %vec.epilog.scalar.ph775
  %.017.i324 = phi i64 [ %i.ww, %vec.epilog.scalar.ph775 ], [ %.017.i324.unr, %vec.epilog.scalar.ph775.prol.loopexit ] ; 10 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %.017.i324
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %.017.i324
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !20
  store float %i.vt, ptr %i.vr, align 4, !tbaa !20
  %i.vu = add nuw i64 %.017.i324, 1               ; 2 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.vu
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.vu
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !20
  store float %i.vx, ptr %i.vv, align 4, !tbaa !20
  %i.vy = add nuw i64 %.017.i324, 2               ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.vy
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.vy
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !20
  store float %i.wb, ptr %i.vz, align 4, !tbaa !20
  %i.wc = add nuw i64 %.017.i324, 3               ; 2 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.wc
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.wc
  %i.wf = load float, ptr %i.we, align 4, !tbaa !20
  store float %i.wf, ptr %i.wd, align 4, !tbaa !20
  %i.wg = add nuw i64 %.017.i324, 4               ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.wg
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.wg
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !20
  store float %i.wj, ptr %i.wh, align 4, !tbaa !20
  %i.wk = add nuw i64 %.017.i324, 5               ; 2 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.wk
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.wk
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !20
  store float %i.wn, ptr %i.wl, align 4, !tbaa !20
  %i.wo = add nuw i64 %.017.i324, 6               ; 2 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.wo
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.wo
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !20
  store float %i.wr, ptr %i.wp, align 4, !tbaa !20
  %i.ws = add nuw i64 %.017.i324, 7               ; 2 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.ws
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.ws
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !20
  store float %i.wv, ptr %i.wt, align 4, !tbaa !20
  %i.ww = add nuw i64 %.017.i324, 8               ; 2 uses
  %exitcond.not.i325.7 = icmp eq i64 %i.ww, %i.ar
  br i1 %exitcond.not.i325.7, label %._crit_edge.i326, label %vec.epilog.scalar.ph775, !llvm.loop !450

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit354: ; preds = %._crit_edge.i326, %bb.aa
  %i.wx = phi i64 [ %i.ar, %._crit_edge.i326 ], [ %i.sl, %bb.aa ]
  %i.wy = phi ptr [ %i.sf, %._crit_edge.i326 ], [ %i.sj, %bb.aa ] ; 2 uses
  store i64 0, ptr %i.rz, align 8, !tbaa !154
  %.not.i.i.i.i355 = icmp eq ptr %i.wy, null
  br i1 %.not.i.i.i.i355, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit356, label %bb.ac

bb.ac:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit354
  %i.wz = shl i64 %i.wx, 2
  %i.xa = load ptr, ptr %i.rv, align 8, !tbaa !118
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 24
  %i.xc = load ptr, ptr %i.xb, align 8
  invoke void %i.xc(ptr noundef nonnull align 8 dereferenceable(8) %i.rv, ptr noundef nonnull %i.wy, i64 noundef %i.wz, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit356 unwind label %bb.ad, !inline_history !3

bb.ad:                                            ; preds = %bb.ac
  %i.xd = landingpad { ptr, i32 }
          catch ptr null
  %i.xe = extractvalue { ptr, i32 } %i.xd, 0
  call void @__clang_call_terminate(ptr %i.xe) #34
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit356: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_.exit354, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %.not439 = icmp eq i32 %i.he, 0
  br i1 %.not439, label %.loopexit, label %.preheader371.lr.ph

.preheader371.lr.ph:                              ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit356
  %i.xf = load ptr, ptr %i.n, align 8, !tbaa !149 ; 2 uses
  %i.xg = ptrtoaddr ptr %i.xf to i64
  %i.xh = load ptr, ptr %i.r, align 8, !tbaa !149
  %i.xi = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.xj = load i32, ptr %i.b, align 4, !tbaa !158 ; 12 uses
  %i.xk = icmp sgt i32 %i.xj, 0
  %i.xl = add i32 %i.xj, -1                       ; 4 uses
  %i.xm = icmp sgt i32 %i.xj, 1
  %i.xn = sext i32 %i.xl to i64
  %i.xo = zext i32 %i.ap to i64                   ; 17 uses
  %.not440 = icmp eq i32 %i.ap, 0                 ; 2 uses
  %i.xp = sext i32 %i.xj to i64                   ; 6 uses
  %.not441 = icmp eq i32 %i.xj, 0
  %i.xq = sext i32 %3 to i64                      ; 16 uses
  %wide.trip.count459 = zext i32 %i.xj to i64     ; 8 uses
  %wide.trip.count465 = zext nneg i32 %i.xj to i64
  %wide.trip.count470 = zext i32 %i.xl to i64     ; 2 uses
  %min.iters.check887 = icmp ugt i32 %i.xj, 3
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond923 = and i1 %min.iters.check887, %ident.check.not
  %min.iters.check889 = icmp ult i32 %i.xj, 32
  %i.xr = and i64 %wide.trip.count459, 28
  %n.vec891 = and i64 %wide.trip.count459, 2147483616 ; 4 uses
  %cmp.n896 = icmp eq i64 %n.vec891, %wide.trip.count459
  %min.epilog.iters.check900 = icmp eq i64 %i.xr, 0
  %n.vec903 = and i64 %wide.trip.count459, 2147483644 ; 3 uses
  %cmp.n908 = icmp eq i64 %n.vec903, %wide.trip.count459
  %xtraiter973 = and i64 %wide.trip.count470, 1
  %i.xs = icmp eq i32 %i.xl, 1
  %unroll_iter977 = and i64 %wide.trip.count470, 4294967294
  %lcmp.mod975.not = icmp eq i64 %xtraiter973, 0
  %lcmp.mod976 = trunc i32 %i.xl to i1
  %min.iters.check855 = icmp ult i32 %i.ap, 4
  %min.iters.check857 = icmp ult i32 %i.ap, 32
  %i.xt = and i64 %i.xo, 28
  %n.vec859 = and i64 %i.xo, 4294967264           ; 4 uses
  %cmp.n870 = icmp eq i64 %n.vec859, %i.xo
  %min.epilog.iters.check874 = icmp eq i64 %i.xt, 0
  %n.vec877 = and i64 %i.xo, 4294967292           ; 3 uses
  %cmp.n885 = icmp eq i64 %n.vec877, %i.xo
  %min.iters.check823 = icmp ult i32 %i.xj, 4
  %min.iters.check825 = icmp ult i32 %i.xj, 32
  %n.vec827 = and i64 %i.xp, -32                  ; 4 uses
  %cmp.n838 = icmp eq i64 %n.vec827, %i.xp
  %i.xu = and i32 %i.xj, 28
  %min.epilog.iters.check842 = icmp eq i32 %i.xu, 0
  %n.vec845 = and i64 %i.xp, -4                   ; 3 uses
  %cmp.n853 = icmp eq i64 %n.vec845, %i.xp
  %min.iters.check789 = icmp ult i32 %i.ap, 4
  %i.xv = sub i64 %i.a, %i.xg
  %diff.check791 = icmp ugt i64 %i.xv, -128
  %or.cond924 = select i1 %min.iters.check789, i1 true, i1 %diff.check791
  %min.iters.check793 = icmp ult i32 %i.ap, 32
  %i.xw = and i64 %i.xo, 28
  %n.vec795 = and i64 %i.xo, 4294967264           ; 4 uses
  %cmp.n806 = icmp eq i64 %n.vec795, %i.xo
  %min.epilog.iters.check810 = icmp eq i64 %i.xw, 0
  %n.vec813 = and i64 %i.xo, 4294967292           ; 3 uses
  %cmp.n821 = icmp eq i64 %n.vec813, %i.xo
  br label %.preheader371

.preheader371:                                    ; preds = %.preheader371.lr.ph, %._crit_edge429
  %.0135435 = phi ptr [ %2, %.preheader371.lr.ph ], [ %i.afm, %._crit_edge429 ] ; 17 uses
  %.0166434 = phi i32 [ 0, %.preheader371.lr.ph ], [ %i.afn, %._crit_edge429 ]
  %.0167433 = phi ptr [ %i.xf, %.preheader371.lr.ph ], [ %i.afl, %._crit_edge429 ] ; 12 uses
  %.0168431 = phi ptr [ %i.xh, %.preheader371.lr.ph ], [ %i.afk, %._crit_edge429 ] ; 27 uses
  %.0169430 = phi ptr [ %i.xi, %.preheader371.lr.ph ], [ %i.afj, %._crit_edge429 ] ; 10 uses
  br i1 %i.xk, label %.lr.ph410, label %._crit_edge411.thread

._crit_edge411.thread:                            ; preds = %.preheader371
  store float 0.000000e+00, ptr %.0169430, align 4, !tbaa !20
  br label %._crit_edge418

.lr.ph410:                                        ; preds = %.preheader371
  %i.xx = load i32, ptr %0, align 8, !tbaa !157   ; 3 uses
  %i.xy = icmp sgt i32 %i.xx, 1
  br i1 %i.xy, label %.lr.ph407.us.preheader, label %iter.check897

iter.check897:                                    ; preds = %.lr.ph410
  br i1 %or.cond923, label %vector.main.loop.iter.check888, label %.lr.ph410.split.preheader

vector.main.loop.iter.check888:                   ; preds = %iter.check897
  br i1 %min.iters.check889, label %vec.epilog.ph901, label %vector.body892

vector.body892:                                   ; preds = %vector.main.loop.iter.check888, %vector.body892
  %index893 = phi i64 [ %index.next894, %vector.body892 ], [ 0, %vector.main.loop.iter.check888 ] ; 2 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %index893 ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 32
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 64
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 96
  store <8 x float> zeroinitializer, ptr %i.xz, align 4, !tbaa !20
  store <8 x float> zeroinitializer, ptr %i.ya, align 4, !tbaa !20
  store <8 x float> zeroinitializer, ptr %i.yb, align 4, !tbaa !20
  store <8 x float> zeroinitializer, ptr %i.yc, align 4, !tbaa !20
  %index.next894 = add nuw i64 %index893, 32      ; 2 uses
  %i.yd = icmp eq i64 %index.next894, %n.vec891
  br i1 %i.yd, label %middle.block895, label %vector.body892, !llvm.loop !451

middle.block895:                                  ; preds = %vector.body892
  br i1 %cmp.n896, label %._crit_edge411, label %vec.epilog.iter.check898

vec.epilog.iter.check898:                         ; preds = %middle.block895
  br i1 %min.epilog.iters.check900, label %.lr.ph410.split.preheader, label %vec.epilog.ph901, !prof !152

vec.epilog.ph901:                                 ; preds = %vector.main.loop.iter.check888, %vec.epilog.iter.check898
  %vec.epilog.resume.val902 = phi i64 [ %n.vec891, %vec.epilog.iter.check898 ], [ 0, %vector.main.loop.iter.check888 ]
  br label %vec.epilog.vector.body904

vec.epilog.vector.body904:                        ; preds = %vec.epilog.vector.body904, %vec.epilog.ph901
  %index905 = phi i64 [ %vec.epilog.resume.val902, %vec.epilog.ph901 ], [ %index.next906, %vec.epilog.vector.body904 ] ; 2 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %index905
  store <4 x float> zeroinitializer, ptr %i.ye, align 4, !tbaa !20
  %index.next906 = add nuw i64 %index905, 4       ; 2 uses
  %i.yf = icmp eq i64 %index.next906, %n.vec903
  br i1 %i.yf, label %vec.epilog.middle.block907, label %vec.epilog.vector.body904, !llvm.loop !452

vec.epilog.middle.block907:                       ; preds = %vec.epilog.vector.body904
  br i1 %cmp.n908, label %._crit_edge411, label %.lr.ph410.split.preheader

.lr.ph410.split.preheader:                        ; preds = %iter.check897, %vec.epilog.iter.check898, %vec.epilog.middle.block907
  %indvars.iv456.ph = phi i64 [ 0, %iter.check897 ], [ %n.vec891, %vec.epilog.iter.check898 ], [ %n.vec903, %vec.epilog.middle.block907 ] ; 4 uses
  %i.yg = sub nsw i64 %wide.trip.count459, %indvars.iv456.ph
  %xtraiter963 = and i64 %i.yg, 7                 ; 2 uses
  %lcmp.mod964.not = icmp eq i64 %xtraiter963, 0
  br i1 %lcmp.mod964.not, label %.lr.ph410.split.prol.loopexit, label %.lr.ph410.split.prol

.lr.ph410.split.prol:                             ; preds = %.lr.ph410.split.preheader, %.lr.ph410.split.prol
  %indvars.iv456.prol = phi i64 [ %indvars.iv.next457.prol, %.lr.ph410.split.prol ], [ %indvars.iv456.ph, %.lr.ph410.split.preheader ] ; 2 uses
  %prol.iter965 = phi i64 [ %prol.iter965.next, %.lr.ph410.split.prol ], [ 0, %.lr.ph410.split.preheader ]
  %i.yh = mul nsw i64 %indvars.iv456.prol, %i.xq
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.yh
  store float 0.000000e+00, ptr %i.yi, align 4, !tbaa !20
  %indvars.iv.next457.prol = add nuw nsw i64 %indvars.iv456.prol, 1 ; 2 uses
  %prol.iter965.next = add i64 %prol.iter965, 1   ; 2 uses
  %prol.iter965.cmp.not = icmp eq i64 %prol.iter965.next, %xtraiter963
  br i1 %prol.iter965.cmp.not, label %.lr.ph410.split.prol.loopexit, label %.lr.ph410.split.prol, !llvm.loop !453

.lr.ph410.split.prol.loopexit:                    ; preds = %.lr.ph410.split.prol, %.lr.ph410.split.preheader
  %indvars.iv456.unr = phi i64 [ %indvars.iv456.ph, %.lr.ph410.split.preheader ], [ %indvars.iv.next457.prol, %.lr.ph410.split.prol ]
  %i.yj = sub nsw i64 %indvars.iv456.ph, %wide.trip.count459
  %i.yk = icmp ugt i64 %i.yj, -8
  br i1 %i.yk, label %._crit_edge411, label %.lr.ph410.split

.lr.ph407.us.preheader:                           ; preds = %.lr.ph410
  %i.yl = add nsw i32 %i.xx, -2
  %i.ym = add nsw i32 %i.xx, -1                   ; 2 uses
  %xtraiter967 = and i32 %i.ym, 3                 ; 3 uses
  %i.yn = icmp ult i32 %i.yl, 3
  %unroll_iter971 = and i32 %i.ym, -4
  %lcmp.mod969.not = icmp eq i32 %xtraiter967, 0
  %lcmp.mod970 = icmp ne i32 %xtraiter967, 0
  br label %.lr.ph407.us

.lr.ph407.us:                                     ; preds = %.lr.ph407.us.preheader, %._crit_edge408.us
  %indvars.iv462 = phi i64 [ 0, %.lr.ph407.us.preheader ], [ %indvars.iv.next463, %._crit_edge408.us ] ; 2 uses
  %i.yo = mul nsw i64 %indvars.iv462, %i.xq       ; 3 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.yo
  store float 0.000000e+00, ptr %i.yp, align 4, !tbaa !20
  br i1 %i.yn, label %.epil.preheader966, label %.lr.ph407.us.new

.lr.ph407.us.new:                                 ; preds = %.lr.ph407.us, %.lr.ph407.us.new
  %.0163404.us = phi i64 [ %i.zs, %.lr.ph407.us.new ], [ %i.yo, %.lr.ph407.us ] ; 5 uses
  %.0164403.us = phi double [ %i.zx, %.lr.ph407.us.new ], [ 0.000000e+00, %.lr.ph407.us ]
  %niter972 = phi i32 [ %niter972.next.3, %.lr.ph407.us.new ], [ 0, %.lr.ph407.us ]
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.0135435, i64 %.0163404.us
  %i.yr = add nsw i64 %.0163404.us, 1             ; 2 uses
  %i.ys = load <2 x float>, ptr %i.yq, align 4, !tbaa !20
  %i.yt = fpext <2 x float> %i.ys to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.yt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.yt
  %i.yu = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.yv = fmul double %i.yu, 5.000000e-01
  %i.yw = fadd double %.0164403.us, %i.yv         ; 2 uses
  %i.yx = fptrunc double %i.yw to float
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.yr
  store float %i.yx, ptr %i.yy, align 4, !tbaa !20
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.0135435, i64 %i.yr
  %i.za = add nsw i64 %.0163404.us, 2             ; 2 uses
  %i.zb = load <2 x float>, ptr %i.yz, align 4, !tbaa !20
  %i.zc = fpext <2 x float> %i.zb to <2 x double> ; 2 uses
  %shift.1 = shufflevector <2 x double> %i.zc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x double> %shift.1, %i.zc
  %i.zd = extractelement <2 x double> %foldExtExtBinop.1, i64 0
  %i.ze = fmul double %i.zd, 5.000000e-01
  %i.zf = fadd double %i.yw, %i.ze                ; 2 uses
  %i.zg = fptrunc double %i.zf to float
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.za
  store float %i.zg, ptr %i.zh, align 4, !tbaa !20
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %.0135435, i64 %i.za
  %i.zj = add nsw i64 %.0163404.us, 3             ; 2 uses
  %i.zk = load <2 x float>, ptr %i.zi, align 4, !tbaa !20
  %i.zl = fpext <2 x float> %i.zk to <2 x double> ; 2 uses
  %shift.2 = shufflevector <2 x double> %i.zl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.2 = fadd <2 x double> %shift.2, %i.zl
  %i.zm = extractelement <2 x double> %foldExtExtBinop.2, i64 0
  %i.zn = fmul double %i.zm, 5.000000e-01
  %i.zo = fadd double %i.zf, %i.zn                ; 2 uses
  %i.zp = fptrunc double %i.zo to float
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.zj
  store float %i.zp, ptr %i.zq, align 4, !tbaa !20
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %.0135435, i64 %i.zj
  %i.zs = add nsw i64 %.0163404.us, 4             ; 3 uses
  %i.zt = load <2 x float>, ptr %i.zr, align 4, !tbaa !20
  %i.zu = fpext <2 x float> %i.zt to <2 x double> ; 2 uses
  %shift.3 = shufflevector <2 x double> %i.zu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.3 = fadd <2 x double> %shift.3, %i.zu
  %i.zv = extractelement <2 x double> %foldExtExtBinop.3, i64 0
  %i.zw = fmul double %i.zv, 5.000000e-01
  %i.zx = fadd double %i.zo, %i.zw                ; 3 uses
  %i.zy = fptrunc double %i.zx to float
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.zs
  store float %i.zy, ptr %i.zz, align 4, !tbaa !20
  %niter972.next.3 = add i32 %niter972, 4         ; 2 uses
  %niter972.ncmp.3 = icmp eq i32 %niter972.next.3, %unroll_iter971
  br i1 %niter972.ncmp.3, label %._crit_edge408.us.unr-lcssa, label %.lr.ph407.us.new, !llvm.loop !454

._crit_edge408.us.unr-lcssa:                      ; preds = %.lr.ph407.us.new
  br i1 %lcmp.mod969.not, label %._crit_edge408.us, label %.epil.preheader966

.epil.preheader966:                               ; preds = %._crit_edge408.us.unr-lcssa, %.lr.ph407.us
  %.0163404.us.epil.init = phi i64 [ %i.yo, %.lr.ph407.us ], [ %i.zs, %._crit_edge408.us.unr-lcssa ]
  %.0164403.us.epil.init = phi double [ 0.000000e+00, %.lr.ph407.us ], [ %i.zx, %._crit_edge408.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod970)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader966
  %.0163404.us.epil = phi i64 [ %.0163404.us.epil.init, %.epil.preheader966 ], [ %i.aab, %bb.ae ] ; 2 uses
  %.0164403.us.epil = phi double [ %.0164403.us.epil.init, %.epil.preheader966 ], [ %i.aag, %bb.ae ]
  %epil.iter968 = phi i32 [ 0, %.epil.preheader966 ], [ %epil.iter968.next, %bb.ae ]
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.0135435, i64 %.0163404.us.epil
  %i.aab = add nsw i64 %.0163404.us.epil, 1       ; 2 uses
  %i.aac = load <2 x float>, ptr %i.aaa, align 4, !tbaa !20
  %i.aad = fpext <2 x float> %i.aac to <2 x double> ; 2 uses
  %shift.epil = shufflevector <2 x double> %i.aad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.epil = fadd <2 x double> %shift.epil, %i.aad
  %i.aae = extractelement <2 x double> %foldExtExtBinop.epil, i64 0
  %i.aaf = fmul double %i.aae, 5.000000e-01
  %i.aag = fadd double %.0164403.us.epil, %i.aaf  ; 2 uses
  %i.aah = fptrunc double %i.aag to float
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.aab
  store float %i.aah, ptr %i.aai, align 4, !tbaa !20
  %epil.iter968.next = add i32 %epil.iter968, 1   ; 2 uses
  %epil.iter968.cmp.not = icmp eq i32 %epil.iter968.next, %xtraiter967
  br i1 %epil.iter968.cmp.not, label %._crit_edge408.us, label %bb.ae, !llvm.loop !455

._crit_edge408.us:                                ; preds = %bb.ae, %._crit_edge408.us.unr-lcssa
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge411, label %.lr.ph407.us, !llvm.loop !456

bb.af:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.thread.i.i228, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i219
  %i.aak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.aak, %bb.ag ], [ %i.aaj, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.loopexit.split-lp

bb.ai:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i250
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.thread.i.i282, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i273
  %i.aam = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #31
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn174 = phi { ptr, i32 } [ %i.aam, %bb.aj ], [ %i.aal, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.loopexit.split-lp

bb.al:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i304
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.thread.i.i336, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i327
  %i.aao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #31
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn176 = phi { ptr, i32 } [ %i.aao, %bb.am ], [ %i.aan, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %.loopexit.split-lp

._crit_edge411:                                   ; preds = %.lr.ph410.split.prol.loopexit, %.lr.ph410.split, %._crit_edge408.us, %middle.block895, %vec.epilog.middle.block907
  store float 0.000000e+00, ptr %.0169430, align 4, !tbaa !20
  br i1 %i.xm, label %.lr.ph417.preheader, label %._crit_edge418

.lr.ph417.preheader:                              ; preds = %._crit_edge411
  br i1 %i.xs, label %.lr.ph417.epil.preheader, label %.lr.ph417

.lr.ph410.split:                                  ; preds = %.lr.ph410.split.prol.loopexit, %.lr.ph410.split
  %indvars.iv456 = phi i64 [ %indvars.iv.next457.7, %.lr.ph410.split ], [ %indvars.iv456.unr, %.lr.ph410.split.prol.loopexit ] ; 9 uses
  %i.aap = mul nsw i64 %indvars.iv456, %i.xq
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.aap
  store float 0.000000e+00, ptr %i.aaq, align 4, !tbaa !20
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1
  %i.aar = mul nsw i64 %indvars.iv.next457, %i.xq
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.aar
  store float 0.000000e+00, ptr %i.aas, align 4, !tbaa !20
  %indvars.iv.next457.1 = add nuw nsw i64 %indvars.iv456, 2
  %i.aat = mul nsw i64 %indvars.iv.next457.1, %i.xq
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.aat
  store float 0.000000e+00, ptr %i.aau, align 4, !tbaa !20
  %indvars.iv.next457.2 = add nuw nsw i64 %indvars.iv456, 3
  %i.aav = mul nsw i64 %indvars.iv.next457.2, %i.xq
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.aav
  store float 0.000000e+00, ptr %i.aaw, align 4, !tbaa !20
  %indvars.iv.next457.3 = add nuw nsw i64 %indvars.iv456, 4
  %i.aax = mul nsw i64 %indvars.iv.next457.3, %i.xq
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.aax
  store float 0.000000e+00, ptr %i.aay, align 4, !tbaa !20
  %indvars.iv.next457.4 = add nuw nsw i64 %indvars.iv456, 5
  %i.aaz = mul nsw i64 %indvars.iv.next457.4, %i.xq
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.aaz
  store float 0.000000e+00, ptr %i.aba, align 4, !tbaa !20
  %indvars.iv.next457.5 = add nuw nsw i64 %indvars.iv456, 6
  %i.abb = mul nsw i64 %indvars.iv.next457.5, %i.xq
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.abb
  store float 0.000000e+00, ptr %i.abc, align 4, !tbaa !20
  %indvars.iv.next457.6 = add nuw nsw i64 %indvars.iv456, 7
  %i.abd = mul nsw i64 %indvars.iv.next457.6, %i.xq
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %i.abd
  store float 0.000000e+00, ptr %i.abe, align 4, !tbaa !20
  %indvars.iv.next457.7 = add nuw nsw i64 %indvars.iv456, 8 ; 2 uses
  %exitcond460.not.7 = icmp eq i64 %indvars.iv.next457.7, %wide.trip.count459
  br i1 %exitcond460.not.7, label %._crit_edge411, label %.lr.ph410.split, !llvm.loop !457

._crit_edge418.loopexit.unr-lcssa:                ; preds = %.lr.ph417
  br i1 %lcmp.mod975.not, label %._crit_edge418, label %.lr.ph417.epil.preheader

.lr.ph417.epil.preheader:                         ; preds = %._crit_edge418.loopexit.unr-lcssa, %.lr.ph417.preheader
  %indvars.iv467.epil.init = phi i64 [ 0, %.lr.ph417.preheader ], [ %indvars.iv.next468.1, %._crit_edge418.loopexit.unr-lcssa ] ; 2 uses
  %.0161414.epil.init = phi double [ 0.000000e+00, %.lr.ph417.preheader ], [ %i.adn, %._crit_edge418.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod976)
  %indvars.iv.next468.epil = add nuw nsw i64 %indvars.iv467.epil.init, 1 ; 2 uses
  %i.abf = mul nsw i64 %indvars.iv.next468.epil, %i.xq
  %i.abg = getelementptr [4 x i8], ptr %.0168431, i64 %i.abf
  %i.abh = getelementptr i8, ptr %i.abg, i64 -4
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !20
  %i.abj = fpext float %i.abi to double
  %i.abk = add nuw nsw i64 %indvars.iv467.epil.init, 2
  %i.abl = mul nsw i64 %i.abk, %i.xq
  %i.abm = getelementptr [4 x i8], ptr %.0168431, i64 %i.abl
  %i.abn = getelementptr i8, ptr %i.abm, i64 -4
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !20
  %i.abp = fpext float %i.abo to double
  %i.abq = fadd double %i.abj, %i.abp
  %i.abr = fmul double %i.abq, 5.000000e-01
  %i.abs = fadd double %.0161414.epil.init, %i.abr
  %i.abt = fptrunc double %i.abs to float
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %.0169430, i64 %indvars.iv.next468.epil
  store float %i.abt, ptr %i.abu, align 4, !tbaa !20
  br label %._crit_edge418

._crit_edge418:                                   ; preds = %.lr.ph417.epil.preheader, %._crit_edge418.loopexit.unr-lcssa, %._crit_edge411.thread, %._crit_edge411
  %i.abv = getelementptr inbounds [4 x i8], ptr %.0169430, i64 %i.xn
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !20
  %i.abx = fdiv float 1.000000e+00, %i.abw        ; 17 uses
  br i1 %.not440, label %.preheader370, label %iter.check871

iter.check871:                                    ; preds = %._crit_edge418
  br i1 %min.iters.check855, label %.lr.ph422.preheader, label %vector.main.loop.iter.check856

vector.main.loop.iter.check856:                   ; preds = %iter.check871
  br i1 %min.iters.check857, label %vec.epilog.ph875, label %vector.ph858

vector.ph858:                                     ; preds = %vector.main.loop.iter.check856
  %broadcast.splatinsert860 = insertelement <8 x float> poison, float %i.abx, i64 0
  %broadcast.splat861 = shufflevector <8 x float> %broadcast.splatinsert860, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body862

vector.body862:                                   ; preds = %vector.ph858, %vector.body862
  %index863 = phi i64 [ 0, %vector.ph858 ], [ %index.next868, %vector.body862 ] ; 2 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %index863 ; 5 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 32 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 64 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 96 ; 2 uses
  %wide.load864 = load <8 x float>, ptr %i.aby, align 4, !tbaa !20
  %wide.load865 = load <8 x float>, ptr %i.abz, align 4, !tbaa !20
  %wide.load866 = load <8 x float>, ptr %i.aca, align 4, !tbaa !20
  %wide.load867 = load <8 x float>, ptr %i.acb, align 4, !tbaa !20
  %i.acc = fmul <8 x float> %broadcast.splat861, %wide.load864
  %i.acd = fmul <8 x float> %broadcast.splat861, %wide.load865
  %i.ace = fmul <8 x float> %broadcast.splat861, %wide.load866
  %i.acf = fmul <8 x float> %broadcast.splat861, %wide.load867
  store <8 x float> %i.acc, ptr %i.aby, align 4, !tbaa !20
  store <8 x float> %i.acd, ptr %i.abz, align 4, !tbaa !20
  store <8 x float> %i.ace, ptr %i.aca, align 4, !tbaa !20
  store <8 x float> %i.acf, ptr %i.acb, align 4, !tbaa !20
  %index.next868 = add nuw i64 %index863, 32      ; 2 uses
  %i.acg = icmp eq i64 %index.next868, %n.vec859
  br i1 %i.acg, label %middle.block869, label %vector.body862, !llvm.loop !458

middle.block869:                                  ; preds = %vector.body862
  br i1 %cmp.n870, label %.preheader370, label %vec.epilog.iter.check872

vec.epilog.iter.check872:                         ; preds = %middle.block869
  br i1 %min.epilog.iters.check874, label %.lr.ph422.preheader, label %vec.epilog.ph875, !prof !152

vec.epilog.ph875:                                 ; preds = %vector.main.loop.iter.check856, %vec.epilog.iter.check872
  %vec.epilog.resume.val876 = phi i64 [ %n.vec859, %vec.epilog.iter.check872 ], [ 0, %vector.main.loop.iter.check856 ]
  %broadcast.splatinsert878 = insertelement <4 x float> poison, float %i.abx, i64 0
  %broadcast.splat879 = shufflevector <4 x float> %broadcast.splatinsert878, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body880

vec.epilog.vector.body880:                        ; preds = %vec.epilog.vector.body880, %vec.epilog.ph875
  %index881 = phi i64 [ %vec.epilog.resume.val876, %vec.epilog.ph875 ], [ %index.next883, %vec.epilog.vector.body880 ] ; 2 uses
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %.0168431, i64 %index881 ; 2 uses
  %wide.load882 = load <4 x float>, ptr %i.ach, align 4, !tbaa !20
  %i.aci = fmul <4 x float> %broadcast.splat879, %wide.load882
  store <4 x float> %i.aci, ptr %i.ach, align 4, !tbaa !20
  %index.next883 = add nuw i64 %index881, 4       ; 2 uses
  %i.acj = icmp eq i64 %index.next883, %n.vec877
  br i1 %i.acj, label %vec.epilog.middle.block884, label %vec.epilog.vector.body880, !llvm.loop !459

vec.epilog.middle.block884:                       ; preds = %vec.epilog.vector.body880
  br i1 %cmp.n885, label %.preheader370, label %.lr.ph422.preheader

.lr.ph422.preheader:                              ; preds = %iter.check871, %vec.epilog.iter.check872, %vec.epilog.middle.block884
  %.0159420.ph = phi i64 [ 0, %iter.check871 ], [ %n.vec859, %vec.epilog.iter.check872 ], [ %n.vec877, %vec.epilog.middle.block884 ]
  br label %.lr.ph422

.lr.ph417:                                        ; preds = %.lr.ph417.preheader, %.lr.ph417
  %indvars.iv467 = phi i64 [ %indvars.iv.next468.1, %.lr.ph417 ], [ 0, %.lr.ph417.preheader ] ; 4 uses
  %.0161414 = phi double [ %i.adn, %.lr.ph417 ], [ 0.000000e+00, %.lr.ph417.preheader ]
  %niter978 = phi i64 [ %niter978.next.1, %.lr.ph417 ], [ 0, %.lr.ph417.preheader ]
  %indvars.iv.next468 = or disjoint i64 %indvars.iv467, 1 ; 2 uses
  %i.ack = mul nsw i64 %indvars.iv.next468, %i.xq
  %i.acl = getelementptr [4 x i8], ptr %.0168431, i64 %i.ack
  %i.acm = getelementptr i8, ptr %i.acl, i64 -4
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !20
  %i.aco = fpext float %i.acn to double
  %i.acp = add nuw nsw i64 %indvars.iv467, 2
  %i.acq = mul nsw i64 %i.acp, %i.xq
  %i.acr = getelementptr [4 x i8], ptr %.0168431, i64 %i.acq
  %i.acs = getelementptr i8, ptr %i.acr, i64 -4
  %i.act = load float, ptr %i.acs, align 4, !tbaa !20
  %i.acu = fpext float %i.act to double
  %i.acv = fadd double %i.aco, %i.acu
  %i.acw = fmul double %i.acv, 5.000000e-01
  %i.acx = fadd double %.0161414, %i.acw          ; 2 uses
  %i.acy = fptrunc double %i.acx to float
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %.0169430, i64 %indvars.iv.next468
  store float %i.acy, ptr %i.acz, align 4, !tbaa !20
  %indvars.iv.next468.1 = add nuw nsw i64 %indvars.iv467, 2 ; 4 uses
  %i.ada = mul nsw i64 %indvars.iv.next468.1, %i.xq
  %i.adb = getelementptr [4 x i8], ptr %.0168431, i64 %i.ada
  %i.adc = getelementptr i8, ptr %i.adb, i64 -4
  %i.add = load float, ptr %i.adc, align 4, !tbaa !20
  %i.ade = fpext float %i.add to double
  %i.adf = add nuw nsw i64 %indvars.iv467, 3
  %i.adg = mul nsw i64 %i.adf, %i.xq
  %i.adh = getelementptr [4 x i8], ptr %.0168431, i64 %i.adg
  %i.adi = getelementptr i8, ptr %i.adh, i64 -4
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !20
  %i.adk = fpext float %i.adj to double
  %i.adl = fadd double %i.ade, %i.adk
  %i.adm = fmul double %i.adl, 5.000000e-01
  %i.adn = fadd double %i.acx, %i.adm             ; 3 uses
  %i.ado = fptrunc double %i.adn to float
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.0169430, i64 %indvars.iv.next468.1
  store float %i.ado, ptr %i.adp, align 4, !tbaa !20
  %niter978.next.1 = add nuw i64 %niter978, 2     ; 2 uses
  %niter978.ncmp.1 = icmp eq i64 %niter978.next.1, %unroll_iter977
  br i1 %niter978.ncmp.1, label %._crit_edge418.loopexit.unr-lcssa, label %.lr.ph417, !llvm.loop !460

.preheader370:                                    ; preds = %.lr.ph422, %middle.block869, %vec.epilog.middle.block884, %._crit_edge418
  br i1 %.not441, label %.preheader, label %iter.check839

iter.check839:                                    ; preds = %.preheader370
  br i1 %min.iters.check823, label %.lr.ph425.preheader, label %vector.main.loop.iter.check824

vector.main.loop.iter.check824:                   ; preds = %iter.check839
  br i1 %min.iters.check825, label %vec.epilog.ph843, label %vector.ph826

vector.ph826:                                     ; preds = %vector.main.loop.iter.check824
  %broadcast.splatinsert828 = insertelement <8 x float> poison, float %i.abx, i64 0
  %broadcast.splat829 = shufflevector <8 x float> %broadcast.splatinsert828, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body830

vector.body830:                                   ; preds = %vector.ph826, %vector.body830
end_hunk_1
