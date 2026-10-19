Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CTFTransform?download=true
inline.NumInlined: 3283
inline.NumDeleted: 894
begin_hunk_0
%"class.std::shared_ptr.78" = type { %"class.std::__shared_ptr.79" }
%"class.std::__shared_ptr.79" = type { ptr, %"class.std::__shared_count" }
%"class.OpenColorIO_v2_5::(anonymous namespace)::Lut1DWriter" = type { %"class.OpenColorIO_v2_5::(anonymous namespace)::OpWriter", %"class.std::shared_ptr.78" }
%"class.std::shared_ptr.86" = type { %"class.std::__shared_ptr.87" }
%"class.std::__shared_ptr.87" = type { ptr, %"class.std::__shared_count" }
%"class.OpenColorIO_v2_5::(anonymous namespace)::Lut3DWriter" = type { %"class.OpenColorIO_v2_5::(anonymous namespace)::OpWriter", %"class.std::shared_ptr.86" }
%"class.std::shared_ptr.89" = type { %"class.std::__shared_ptr.90" }
%"class.std::__shared_ptr.90" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.93" = type { %"class.std::__shared_ptr.94" }
%"class.std::__shared_ptr.94" = type { ptr, %"class.std::__shared_count" }
%"class.OpenColorIO_v2_5::(anonymous namespace)::MatrixWriter" = type { %"class.OpenColorIO_v2_5::(anonymous namespace)::OpWriter", %"class.OpenColorIO_v2_5::CTFVersion", %"class.std::shared_ptr.89" }
%"class.std::shared_ptr.96" = type { %"class.std::__shared_ptr.97" }
%"class.std::__shared_ptr.97" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.99" = type { %"class.std::__shared_ptr.100" }
%"class.std::__shared_ptr.100" = type { ptr, %"class.std::__shared_count" }
%"class.OpenColorIO_v2_5::(anonymous namespace)::RangeWriter" = type { %"class.OpenColorIO_v2_5::(anonymous namespace)::OpWriter", %"class.std::shared_ptr.96" }
%"class.std::allocator" = type { i8 }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"struct.OpenColorIO_v2_5::GradingPrimary" = type { %"struct.OpenColorIO_v2_5::GradingRGBM", %"struct.OpenColorIO_v2_5::GradingRGBM", %"struct.OpenColorIO_v2_5::GradingRGBM", %"struct.OpenColorIO_v2_5::GradingRGBM", %"struct.OpenColorIO_v2_5::GradingRGBM", %"struct.OpenColorIO_v2_5::GradingRGBM", %"struct.OpenColorIO_v2_5::GradingRGBM", double, double, double, double, double, double }
%"struct.OpenColorIO_v2_5::GradingRGBM" = type { double, double, double, double }
%"class.std::shared_ptr.114" = type { %"class.std::__shared_ptr.115" }
%"class.std::__shared_ptr.115" = type { ptr, %"class.std::__shared_count" }
%"class.std::allocator.124" = type { i8 }
%"class.std::shared_ptr.128" = type { %"class.std::__shared_ptr.129" }
%"class.std::__shared_ptr.129" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.139" = type { %"class.std::__shared_ptr.140" }
%"class.std::__shared_ptr.140" = type { ptr, %"class.std::__shared_count" }
%"struct.OpenColorIO_v2_5::GradingTone" = type { %"struct.OpenColorIO_v2_5::GradingRGBMSW", %"struct.OpenColorIO_v2_5::GradingRGBMSW", %"struct.OpenColorIO_v2_5::GradingRGBMSW", %"struct.OpenColorIO_v2_5::GradingRGBMSW", %"struct.OpenColorIO_v2_5::GradingRGBMSW", double }
%"struct.OpenColorIO_v2_5::GradingRGBMSW" = type { double, double, double, double, double, double }

$_ZN16OpenColorIO_v2_511NumberUtils6LocaleD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56OpDataEESaIS4_EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA3_KcRS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev = comdat any

$_ZNSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EEC2ERKS3_ = comdat any

$_ZNSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_514ExponentOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_522ExposureContrastOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_520GradingPrimaryOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingRGBCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_517GradingToneOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA3_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA12_KcRPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA8_KcRA2_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRA9_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcSA_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRA8_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA15_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EEC2ESt16initializer_listIS1_ERKS2_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRA10_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingRGBCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA13_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt12__shared_ptrIKN16OpenColorIO_v2_515GradingHueCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA14_KcRPS8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA9_KcRA5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRA4_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56OpDataEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZNSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_ = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@__dso_handle = external hidden global i8
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E = internal unnamed_addr global %"class.OpenColorIO_v2_5::CTFVersion" zeroinitializer, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.0 = internal unnamed_addr global i1 false, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.1 = internal unnamed_addr global i1 false, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.0 = internal unnamed_addr global i1 false, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.1 = internal unnamed_addr global i1 false, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E = internal unnamed_addr global %"class.OpenColorIO_v2_5::CTFVersion" zeroinitializer, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E.0 = internal unnamed_addr global i1 false, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E.1 = internal unnamed_addr global i1 false, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E = internal global %"class.OpenColorIO_v2_5::CTFVersion" zeroinitializer, align 8
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_1E = internal unnamed_addr global %"class.OpenColorIO_v2_5::CTFVersion" zeroinitializer, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_4E = internal unnamed_addr global %"class.OpenColorIO_v2_5::CTFVersion" zeroinitializer, align 4
@_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E = internal unnamed_addr global %"class.OpenColorIO_v2_5::CTFVersion" zeroinitializer, align 4
@_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE.0 = internal unnamed_addr global i1 false, align 4
@_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE.1 = internal unnamed_addr global i1 false, align 4
@_ZN16OpenColorIO_v2_511NumberUtilsL3locE = internal global %"struct.OpenColorIO_v2_5::NumberUtils::Locale" zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"' is not a valid version. \00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Expecting MAJOR[.MINOR[.REVISION]] \00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.15 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@_ZN16OpenColorIO_v2_513METADATA_INFOE = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN16OpenColorIO_v2_513METADATA_NAMEE = external local_unnamed_addr global ptr, align 8
@_ZN16OpenColorIO_v2_511METADATA_IDE = external local_unnamed_addr global ptr, align 8
@_ZN16OpenColorIO_v2_5L15ATTR_INVERSE_OFE = internal constant [10 x i8] c"inverseOf\00", align 1
@_ZN16OpenColorIO_v2_525METADATA_INPUT_DESCRIPTORE = external local_unnamed_addr global ptr, align 8
@_ZN16OpenColorIO_v2_526METADATA_OUTPUT_DESCRIPTORE = external local_unnamed_addr global ptr, align 8
@_ZN16OpenColorIO_v2_520METADATA_DESCRIPTIONE = external local_unnamed_addr global ptr, align 8
@_ZTVN16OpenColorIO_v2_515TransformWriterE = hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_515TransformWriterE, ptr @_ZN16OpenColorIO_v2_515TransformWriterD2Ev, ptr @_ZN16OpenColorIO_v2_515TransformWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_515TransformWriter5writeEv] }, align 8
@_ZN16OpenColorIO_v2_5L16TAG_PROCESS_LISTE = internal unnamed_addr constant [12 x i8] c"ProcessList\00", align 1
@_ZN16OpenColorIO_v2_5L21ATTR_COMP_CLF_VERSIONE = internal unnamed_addr constant [15 x i8] c"compCLFversion\00", align 1
@_ZN16OpenColorIO_v2_5L12ATTR_VERSIONE = internal unnamed_addr constant [8 x i8] c"version\00", align 1
@_ZN16OpenColorIO_v2_5L7ATTR_IDE = internal constant [3 x i8] c"id\00", align 1
@_ZN16OpenColorIO_v2_5L9ATTR_NAMEE = internal constant [5 x i8] c"name\00", align 1
@_ZN16OpenColorIO_v2_5L15TAG_DESCRIPTIONE = internal constant [12 x i8] c"Description\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Exponent with alpha\00", align 1
@.str.18 = private constant [17 x i8] c"ExposureContrast\00", align 16
@.str.19 = private constant [14 x i8] c"FixedFunction\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Gamma with alpha component\00", align 1
@.str.21 = private constant [15 x i8] c"GradingPrimary\00", align 1
@.str.22 = private constant [16 x i8] c"GradingRGBCurve\00", align 16
@.str.23 = private constant [16 x i8] c"GradingHueCurve\00", align 16
@.str.24 = private constant [12 x i8] c"GradingTone\00", align 1
@.str.25 = private constant [13 x i8] c"InverseLUT1D\00", align 1
@.str.26 = private constant [13 x i8] c"InverseLUT3D\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Matrix with alpha component\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"Reference ops should have been replaced by their content.\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Noop ops should have been removed.\00", align 1
@_ZTIN16OpenColorIO_v2_515TransformWriterE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_515TransformWriterE, ptr @_ZTIN16OpenColorIO_v2_516XmlElementWriterE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_515TransformWriterE = hidden constant [38 x i8] c"N16OpenColorIO_v2_515TransformWriterE\00", align 1
@_ZTIN16OpenColorIO_v2_516XmlElementWriterE = external constant ptr
@.str.30 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.31 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19CDLWriter5getOpEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19CDLWriter10getTagNameEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19CDLWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19CDLWriter12writeContentEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19CDLWriter19writeFormatMetadataEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterE = internal constant [45 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterE\00", align 1
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE, ptr @_ZTIN16OpenColorIO_v2_516XmlElementWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE = internal constant [44 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE\00", align 1
@_ZN16OpenColorIO_v2_5L16ATTR_BITDEPTH_INE = internal constant [11 x i8] c"inBitDepth\00", align 1
@_ZN16OpenColorIO_v2_5L17ATTR_BITDEPTH_OUTE = internal constant [12 x i8] c"outBitDepth\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"8i\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"10i\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"12i\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"16i\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"16f\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"32f\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"Bitdepth has not been validated before calling this.\00", align 1
@_ZN16OpenColorIO_v2_5L7TAG_CDLE = internal constant [8 x i8] c"ASC_CDL\00", align 1
@_ZN16OpenColorIO_v2_5L10ATTR_STYLEE = internal constant [6 x i8] c"style\00", align 1
@_ZN16OpenColorIO_v2_5L11TAG_SOPNODEE = internal unnamed_addr constant [8 x i8] c"SOPNode\00", align 1
@_ZN16OpenColorIO_v2_5L24METADATA_SOP_DESCRIPTIONE = internal unnamed_addr constant [15 x i8] c"SOPDescription\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZN16OpenColorIO_v2_5L9TAG_SLOPEE = internal unnamed_addr constant [6 x i8] c"Slope\00", align 1
@_ZN16OpenColorIO_v2_5L10TAG_OFFSETE = internal constant [7 x i8] c"Offset\00", align 1
@_ZN16OpenColorIO_v2_5L9TAG_POWERE = internal unnamed_addr constant [6 x i8] c"Power\00", align 1
@_ZN16OpenColorIO_v2_5L11TAG_SATNODEE = internal unnamed_addr constant [8 x i8] c"SatNode\00", align 1
@_ZN16OpenColorIO_v2_5L24METADATA_SAT_DESCRIPTIONE = internal unnamed_addr constant [15 x i8] c"SATDescription\00", align 1
@_ZN16OpenColorIO_v2_5L26METADATA_INPUT_DESCRIPTIONE = internal constant [17 x i8] c"InputDescription\00", align 16
@_ZN16OpenColorIO_v2_5L28METADATA_VIEWING_DESCRIPTIONE = internal constant [19 x i8] c"ViewingDescription\00", align 16
@.str.41 = private unnamed_addr constant [21 x i8] c"Transform uses the '\00", align 1
@.str.42 = private unnamed_addr constant [76 x i8] c"' op which cannot be written as CLF.  Use CTF format or Bake the transform.\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111GammaWriter5getOpEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111GammaWriter10getTagNameEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111GammaWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_111GammaWriter12writeContentEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter19writeFormatMetadataEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterE = internal constant [48 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterE\00", align 1
@_ZN16OpenColorIO_v2_5L9TAG_GAMMAE = internal constant [6 x i8] c"Gamma\00", align 1
@_ZN16OpenColorIO_v2_5L12TAG_EXPONENTE = internal constant [9 x i8] c"Exponent\00", align 1
@_ZN16OpenColorIO_v2_5L16TAG_GAMMA_PARAMSE = internal constant [12 x i8] c"GammaParams\00", align 1
@_ZN16OpenColorIO_v2_5L19TAG_EXPONENT_PARAMSE = internal constant [15 x i8] c"ExponentParams\00", align 1
@_ZN16OpenColorIO_v2_5L9ATTR_CHANE = internal constant [8 x i8] c"channel\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@_ZN16OpenColorIO_v2_5L10ATTR_GAMMAE = internal unnamed_addr constant [6 x i8] c"gamma\00", align 1
@_ZN16OpenColorIO_v2_5L13ATTR_EXPONENTE = internal unnamed_addr constant [9 x i8] c"exponent\00", align 1
@_ZN16OpenColorIO_v2_5L11ATTR_OFFSETE = internal unnamed_addr constant [7 x i8] c"offset\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriter5getOpEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriter10getTagNameEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriter12writeContentEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter19writeFormatMetadataEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterE = internal constant [59 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterE\00", align 1
@_ZN16OpenColorIO_v2_5L10ATTR_PIVOTE = internal unnamed_addr constant [6 x i8] c"pivot\00", align 1
@_ZN16OpenColorIO_v2_5L20ATTR_LOGEXPOSURESTEPE = internal unnamed_addr constant [16 x i8] c"logExposureStep\00", align 16
@_ZN16OpenColorIO_v2_5L15ATTR_LOGMIDGRAYE = internal unnamed_addr constant [11 x i8] c"logMidGray\00", align 1
@_ZN16OpenColorIO_v2_5L10ATTR_PARAME = internal constant [6 x i8] c"param\00", align 1
@_ZN16OpenColorIO_v2_5L21TAG_DYN_PROP_EXPOSUREE = internal constant [9 x i8] c"EXPOSURE\00", align 1
@_ZN16OpenColorIO_v2_5L21TAG_DYNAMIC_PARAMETERE = internal unnamed_addr constant [17 x i8] c"DynamicParameter\00", align 16
@_ZN16OpenColorIO_v2_5L21TAG_DYN_PROP_CONTRASTE = internal constant [9 x i8] c"CONTRAST\00", align 1
@_ZN16OpenColorIO_v2_5L18TAG_DYN_PROP_GAMMAE = internal constant [6 x i8] c"GAMMA\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriter5getOpEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriter10getTagNameEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriter12writeContentEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter19writeFormatMetadataEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterE = internal constant [56 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterE\00", align 1
@_ZN16OpenColorIO_v2_5L11ATTR_PARAMSE = internal unnamed_addr constant [7 x i8] c"params\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriter5getOpEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriter10getTagNameEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriter12writeContentEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter19writeFormatMetadataEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterE = internal constant [57 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterE\00", align 1
@_ZN16OpenColorIO_v2_5L22TAG_PRIMARY_BRIGHTNESSE = internal constant [11 x i8] c"Brightness\00", align 1
@_ZN16OpenColorIO_v2_5L20TAG_PRIMARY_CONTRASTE = internal constant [9 x i8] c"Contrast\00", align 1
@_ZN16OpenColorIO_v2_5L17TAG_PRIMARY_GAMMAE = internal constant [6 x i8] c"Gamma\00", align 1
@_ZN16OpenColorIO_v2_5L22TAG_PRIMARY_SATURATIONE = internal unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@_ZN16OpenColorIO_v2_5L21ATTR_PRIMARY_CONTRASTE = internal constant [9 x i8] c"contrast\00", align 1
@_ZN16OpenColorIO_v2_5L18ATTR_PRIMARY_BLACKE = internal constant [6 x i8] c"black\00", align 1
@_ZN16OpenColorIO_v2_5L18ATTR_PRIMARY_WHITEE = internal constant [6 x i8] c"white\00", align 1
@_ZN16OpenColorIO_v2_5L17TAG_PRIMARY_PIVOTE = internal unnamed_addr constant [6 x i8] c"Pivot\00", align 1
@_ZN16OpenColorIO_v2_5L20TAG_PRIMARY_EXPOSUREE = internal constant [9 x i8] c"Exposure\00", align 1
@_ZN16OpenColorIO_v2_5L16TAG_PRIMARY_LIFTE = internal constant [5 x i8] c"Lift\00", align 1
@_ZN16OpenColorIO_v2_5L16TAG_PRIMARY_GAINE = internal constant [5 x i8] c"Gain\00", align 1
@_ZN16OpenColorIO_v2_5L17TAG_PRIMARY_CLAMPE = internal unnamed_addr constant [6 x i8] c"Clamp\00", align 1
@_ZN16OpenColorIO_v2_5L20TAG_DYN_PROP_PRIMARYE = internal constant [8 x i8] c"PRIMARY\00", align 1
@_ZN16OpenColorIO_v2_5L8ATTR_RGBE = internal unnamed_addr constant [4 x i8] c"rgb\00", align 1
@_ZN16OpenColorIO_v2_5L11ATTR_MASTERE = internal unnamed_addr constant [7 x i8] c"master\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter5getOpEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter10getTagNameEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter19writeFormatMetadataEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterE = internal constant [58 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterE\00", align 1
@_ZN16OpenColorIO_v2_5L22ATTR_BYPASS_LIN_TO_LOGE = internal constant [15 x i8] c"bypassLinToLog\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_ZN16OpenColorIO_v2_519GradingRGBCurveImpl10DefaultLinE = external global %"class.OpenColorIO_v2_5::GradingBSplineCurveImpl", align 8
@_ZN16OpenColorIO_v2_519GradingRGBCurveImpl7DefaultE = external global %"class.OpenColorIO_v2_5::GradingBSplineCurveImpl", align 8
@_ZZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEvE9curveTags = internal global %"class.std::vector.122" zeroinitializer, align 8
@_ZGVZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEvE9curveTags = internal global i64 0, align 8
@_ZN16OpenColorIO_v2_5L17TAG_RGB_CURVE_REDE = internal constant [4 x i8] c"Red\00", align 1
@_ZN16OpenColorIO_v2_5L19TAG_RGB_CURVE_GREENE = internal constant [6 x i8] c"Green\00", align 1
@_ZN16OpenColorIO_v2_5L18TAG_RGB_CURVE_BLUEE = internal constant [5 x i8] c"Blue\00", align 1
@_ZN16OpenColorIO_v2_5L20TAG_RGB_CURVE_MASTERE = internal constant [7 x i8] c"Master\00", align 1
@constinit = private unnamed_addr constant [4 x ptr] [ptr @_ZN16OpenColorIO_v2_5L17TAG_RGB_CURVE_REDE, ptr @_ZN16OpenColorIO_v2_5L19TAG_RGB_CURVE_GREENE, ptr @_ZN16OpenColorIO_v2_5L18TAG_RGB_CURVE_BLUEE, ptr @_ZN16OpenColorIO_v2_5L20TAG_RGB_CURVE_MASTERE], align 8
@_ZN16OpenColorIO_v2_5L21TAG_DYN_PROP_RGBCURVEE = internal constant [10 x i8] c"RGB_CURVE\00", align 1
@_ZN16OpenColorIO_v2_5L19TAG_CURVE_CTRL_PNTSE = internal unnamed_addr constant [14 x i8] c"ControlPoints\00", align 1
@_ZN16OpenColorIO_v2_5L16TAG_CURVE_SLOPESE = internal unnamed_addr constant [7 x i8] c"Slopes\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter5getOpEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter10getTagNameEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter19writeFormatMetadataEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterE = internal constant [58 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterE\00", align 1
@_ZN16OpenColorIO_v2_5L15ATTR_RGB_TO_HSYE = internal constant [13 x i8] c"hsyTransform\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@_ZN16OpenColorIO_v2_519GradingHueCurveImpl16DefaultCurvesLinE = external local_unnamed_addr global %"struct.std::array.142", align 8
@_ZN16OpenColorIO_v2_519GradingHueCurveImpl13DefaultCurvesE = external local_unnamed_addr global %"struct.std::array.142", align 8
@_ZZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEvE9curveTags = internal global %"class.std::vector.122" zeroinitializer, align 8
@_ZGVZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEvE9curveTags = internal global i64 0, align 8
@_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_HUE_HUEE = internal constant [7 x i8] c"HueHue\00", align 1
@_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_HUE_SATE = internal constant [7 x i8] c"HueSat\00", align 1
@_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_HUE_LUME = internal constant [7 x i8] c"HueLum\00", align 1
@_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_LUM_SATE = internal constant [7 x i8] c"LumSat\00", align 1
@_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_SAT_SATE = internal constant [7 x i8] c"SatSat\00", align 1
@_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_LUM_LUME = internal constant [7 x i8] c"LumLum\00", align 1
@_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_SAT_LUME = internal constant [7 x i8] c"SatLum\00", align 1
@_ZN16OpenColorIO_v2_5L20TAG_HUE_CURVE_HUE_FXE = internal constant [6 x i8] c"HueFx\00", align 1
@constinit.55 = private unnamed_addr constant [8 x ptr] [ptr @_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_HUE_HUEE, ptr @_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_HUE_SATE, ptr @_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_HUE_LUME, ptr @_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_LUM_SATE, ptr @_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_SAT_SATE, ptr @_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_LUM_LUME, ptr @_ZN16OpenColorIO_v2_5L21TAG_HUE_CURVE_SAT_LUME, ptr @_ZN16OpenColorIO_v2_5L20TAG_HUE_CURVE_HUE_FXE], align 8
@_ZN16OpenColorIO_v2_5L21TAG_DYN_PROP_HUECURVEE = internal constant [10 x i8] c"HUE_CURVE\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter5getOpEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter10getTagNameEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriter12writeContentEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter19writeFormatMetadataEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterE = internal constant [54 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterE\00", align 1
@_ZN16OpenColorIO_v2_5L15TAG_TONE_BLACKSE = internal constant [7 x i8] c"Blacks\00", align 1
@_ZN16OpenColorIO_v2_5L16TAG_TONE_SHADOWSE = internal constant [8 x i8] c"Shadows\00", align 1
@_ZN16OpenColorIO_v2_5L17TAG_TONE_MIDTONESE = internal constant [9 x i8] c"Midtones\00", align 1
@_ZN16OpenColorIO_v2_5L19TAG_TONE_HIGHLIGHTSE = internal constant [11 x i8] c"Highlights\00", align 1
@_ZN16OpenColorIO_v2_5L15TAG_TONE_WHITESE = internal constant [7 x i8] c"Whites\00", align 1
@_ZN16OpenColorIO_v2_5L18TAG_TONE_SCONTRASTE = internal unnamed_addr constant [10 x i8] c"SContrast\00", align 1
@_ZN16OpenColorIO_v2_5L17TAG_DYN_PROP_TONEE = internal constant [5 x i8] c"TONE\00", align 1
@_ZN16OpenColorIO_v2_5L11ATTR_CENTERE = internal unnamed_addr constant [7 x i8] c"center\00", align 1
@_ZN16OpenColorIO_v2_5L10ATTR_STARTE = internal unnamed_addr constant [6 x i8] c"start\00", align 1
@_ZN16OpenColorIO_v2_5L10ATTR_WIDTHE = internal unnamed_addr constant [6 x i8] c"width\00", align 1
@_ZTVN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterD2Ev, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterD0Ev, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter5writeEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19LogWriter5getOpEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19LogWriter10getTagNameEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19LogWriter13getAttributesERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EE, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_19LogWriter12writeContentEv, ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_18OpWriter19writeFormatMetadataEv] }, align 8
@_ZTIN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterE, ptr @_ZTIN16OpenColorIO_v2_512_GLOBAL__N_18OpWriterE }, align 8
@_ZTSN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterE = internal constant [45 x i8] c"N16OpenColorIO_v2_512_GLOBAL__N_19LogWriterE\00", align 1
@_ZN16OpenColorIO_v2_5L7TAG_LOGE = internal constant [4 x i8] c"Log\00", align 1
@_ZN16OpenColorIO_v2_57LogUtilL8LOG2_STRE = internal constant [5 x i8] c"log2\00", align 1
@_ZN16OpenColorIO_v2_57LogUtilL13ANTI_LOG2_STRE = internal constant [9 x i8] c"antiLog2\00", align 1
@_ZN16OpenColorIO_v2_57LogUtilL9LOG10_STRE = internal constant [6 x i8] c"log10\00", align 1
@_ZN16OpenColorIO_v2_57LogUtilL14ANTI_LOG10_STRE = internal constant [10 x i8] c"antiLog10\00", align 1
@_ZN16OpenColorIO_v2_57LogUtilL21CAMERA_LIN_TO_LOG_STRE = internal constant [15 x i8] c"cameraLinToLog\00", align 1
@_ZN16OpenColorIO_v2_57LogUtilL21CAMERA_LOG_TO_LIN_STRE = internal constant [15 x i8] c"cameraLogToLin\00", align 1
@_ZN16OpenColorIO_v2_57LogUtilL14LIN_TO_LOG_STRE = internal constant [9 x i8] c"linToLog\00", align 1
@_ZN16OpenColorIO_v2_57LogUtilL14LOG_TO_LIN_STRE = internal constant [9 x i8] c"logToLin\00", align 1
@_ZN16OpenColorIO_v2_5L14TAG_LOG_PARAMSE = internal unnamed_addr constant [10 x i8] c"LogParams\00", align 1
@_ZN16OpenColorIO_v2_5L9ATTR_BASEE = internal constant [5 x i8] c"base\00", align 1
@_ZN16OpenColorIO_v2_5L17ATTR_LINSIDESLOPEE = internal constant [13 x i8] c"linSideSlope\00", align 1
@_ZN16OpenColorIO_v2_5L18ATTR_LINSIDEOFFSETE = internal constant [14 x i8] c"linSideOffset\00", align 1
@_ZN16OpenColorIO_v2_5L17ATTR_LOGSIDESLOPEE = internal constant [13 x i8] c"logSideSlope\00", align 1
@_ZN16OpenColorIO_v2_5L18ATTR_LOGSIDEOFFSETE = internal constant [14 x i8] c"logSideOffset\00", align 1
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_515TransformWriter5writeEv:._crit_edge.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !367
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !59, !noalias !367
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !59, !noalias !367
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.de = atomicrmw volatile add ptr %i.da, i32 1 acq_rel, align 4, !noalias !367 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 232
  %i.dg = load double, ptr %i.df, align 8, !tbaa !129, !noalias !366
  %i.dh = fcmp une double %i.dg, f0x3FB6872B020C49BA
  br i1 %i.dh, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 240
  %i.dj = load double, ptr %i.di, align 8, !tbaa !130, !noalias !366
  %i.dk = fcmp oeq double %i.dj, 4.350000e-01
  br i1 %i.dk, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.dl = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56, !noalias !366
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i: ; preds = %bb.v, %bb.u
  %.sroa.43.0.i = phi i32 [ %i.dn, %bb.v ], [ %i.cv, %bb.u ] ; 4 uses
  %.sroa.23.0.i = phi i32 [ %i.dm, %bb.v ], [ %i.cu, %bb.u ] ; 4 uses
  %.sroa.0.0.i = phi i32 [ %i.dl, %bb.v ], [ %i.ct, %bb.u ] ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8, !noalias !366 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.do, align 8, !tbaa !76, !noalias !366
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !77, !noalias !366
  %i.dt = load ptr, ptr %i.cz, align 8, !tbaa !79, !noalias !366
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !366
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #27, !noalias !366, !inline_history !341
  %i.dw = load ptr, ptr %i.cz, align 8, !tbaa !79, !noalias !366
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !366
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #27, !noalias !366, !inline_history !341
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.y:                                             ; preds = %bb.w
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i.i.i = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = add nsw i32 %i.dr, -1
  store i32 %i.ea, ptr %i.do, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.eb = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i = phi i32 [ %i.dr, %bb.z ], [ %i.eb, %bb.aa ]
  %i.ec = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ec, label %bb.ab, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ac:                                            ; preds = %.noexc80
  %i.ed = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56, !noalias !366
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58, !noalias !366
  %i.eg = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !368, !nonnull !98, !noundef !98
  %i.eh = call ptr @__dynamic_cast(ptr nonnull %i.eg, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 0) #27, !noalias !368 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !74, !noalias !368 ; 9 uses
  %.not.i.i.i.i21.i.i = icmp eq ptr %i.ej, null   ; 2 uses
  br i1 %.not.i.i.i.i21.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !368
  %.not.i.i.i.i.i22.i.i = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i.i22.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !59, !noalias !368
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !59, !noalias !368
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.af:                                            ; preds = %bb.ad
  %i.eo = atomicrmw volatile add ptr %i.ek, i32 1 acq_rel, align 4, !noalias !368 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.af, %bb.ae, %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 168
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !138, !noalias !366
  %switch.tableidx = add i32 %i.eq, -10           ; 5 uses
  %i.er = icmp ult i32 %switch.tableidx, 32
  %switch.shifted = lshr i32 -4093, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond412 = select i1 %i.er, i1 %switch.lobit, i1 false
  br i1 %or.cond412, label %switch.lookup, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i

switch.lookup:                                    ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.es = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_515TransformWriter5writeEv, i64 %i.es
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.et = zext nneg i32 %switch.tableidx to i64
  %switch.gep408 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_515TransformWriter5writeEv.11, i64 %i.et
  %switch.load409 = load ptr, ptr %switch.gep408, align 8
  %i.eu = zext nneg i32 %switch.tableidx to i64
  %switch.gep410 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_515TransformWriter5writeEv.12, i64 %i.eu
  %switch.load411 = load ptr, ptr %switch.gep410, align 8
  %.sroa.0.1.i = load i32, ptr %switch.load409, align 4, !tbaa !56, !noalias !366
  %.sroa.23.1.i = load i32, ptr %switch.load, align 4, !tbaa !57, !noalias !366
  %.sink.i.i = load i32, ptr %switch.load411, align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i: ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %switch.lookup
  %.sroa.43.1.i = phi i32 [ %i.ef, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sink.i.i, %switch.lookup ] ; 4 uses
  %.sroa.23.2.i = phi i32 [ %i.ee, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sroa.23.1.i, %switch.lookup ] ; 4 uses
  %.sroa.0.2.i = phi i32 [ %i.ed, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sroa.0.1.i, %switch.lookup ] ; 4 uses
  br i1 %.not.i.i.i.i21.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8, !noalias !366 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 4294967297
  %i.ey = trunc i64 %i.ew to i32                  ; 2 uses
  br i1 %i.ex, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ev, align 8, !tbaa !76, !noalias !366
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 0, ptr %i.ez, align 4, !tbaa !77, !noalias !366
  %i.fa = load ptr, ptr %i.ej, align 8, !tbaa !79, !noalias !366
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !366
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #27, !noalias !366, !inline_history !344
  %i.fd = load ptr, ptr %i.ej, align 8, !tbaa !79, !noalias !366
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !366
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #27, !noalias !366, !inline_history !344
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.fg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i30.i.i = icmp eq i8 %i.fg, 0
  br i1 %.not.i.i.i30.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fh = add nsw i32 %i.ey, -1
  store i32 %i.fh, ptr %i.ev, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.fi = atomicrmw volatile add ptr %i.ev, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i32.i.i = phi i32 [ %i.ey, %bb.aj ], [ %i.fi, %bb.ak ]
  %i.fj = icmp eq i32 %.0.i.i.i.i32.i.i, 1
  br i1 %i.fj, label %bb.al, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.am:                                            ; preds = %.noexc80, %.noexc80, %.noexc80, %.noexc80
  %i.fk = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56, !noalias !366
  %i.fl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.an:                                            ; preds = %.noexc80
  %i.fn = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, align 4, !tbaa !56, !noalias !366
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 8), align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ao:                                            ; preds = %.noexc80
  %i.fq = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !369, !nonnull !98, !noundef !98
  %i.fr = call ptr @__dynamic_cast(ptr nonnull %i.fq, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_514ExponentOpDataE, i64 0) #27, !noalias !369 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fr) ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !74, !noalias !369 ; 9 uses
  %.not.i.i.i.i38.i.i = icmp eq ptr %i.ft, null   ; 2 uses
  br i1 %.not.i.i.i.i38.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 3 uses
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !369
  %.not.i.i.i.i.i39.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i39.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !59, !noalias !369
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fu, align 4, !tbaa !59, !noalias !369
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.fy = atomicrmw volatile add ptr %i.fu, i32 1 acq_rel, align 4, !noalias !369 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.ar, %bb.aq, %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 192
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !139, !noalias !366
  %i.gb = fcmp oeq double %i.ga, 1.000000e+00     ; 3 uses
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val10.i = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !noalias !365
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.0, align 4
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i = zext i1 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i.b to i32
  %20 = select i1 %i.gb, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val10.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i ; 4 uses
  %.val120.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !noalias !366
  %.val121.i.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.1, align 4
  %.val121.i.i = select i1 %.val121.i.i.b, i32 5, i32 0
  %21 = select i1 %i.gb, i32 %.val120.i.i, i32 %.val121.i.i ; 4 uses
  %.val122.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !noalias !366
  %22 = select i1 %i.gb, i32 %.val122.i.i, i32 0  ; 4 uses
  br i1 %.not.i.i.i.i38.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 4 uses
  %i.gd = load atomic i64, ptr %i.gc acquire, align 8, !noalias !366 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 4294967297
  %i.gf = trunc i64 %i.gd to i32                  ; 2 uses
  br i1 %i.ge, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.gc, align 8, !tbaa !76, !noalias !366
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 0, ptr %i.gg, align 4, !tbaa !77, !noalias !366
  %i.gh = load ptr, ptr %i.ft, align 8, !tbaa !79, !noalias !366
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !366
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #27, !noalias !366, !inline_history !347
  %i.gk = load ptr, ptr %i.ft, align 8, !tbaa !79, !noalias !366
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !366
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #27, !noalias !366, !inline_history !347
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.au:                                            ; preds = %bb.as
  %i.gn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i43.i.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i43.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = add nsw i32 %i.gf, -1
  store i32 %i.go, ptr %i.gc, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

bb.aw:                                            ; preds = %bb.au
  %i.gp = atomicrmw volatile add ptr %i.gc, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i45.i.i = phi i32 [ %i.gf, %bb.av ], [ %i.gp, %bb.aw ]
  %i.gq = icmp eq i32 %.0.i.i.i.i45.i.i, 1
  br i1 %i.gq, label %bb.ax, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ay:                                            ; preds = %.noexc80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27, !noalias !366
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.gr = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !371, !nonnull !98, !noundef !98
  %i.gs = call ptr @__dynamic_cast(ptr nonnull %i.gr, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_511GammaOpDataE, i64 0) #27, !noalias !371 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gs) ]
  store ptr %i.gs, ptr %1, align 8, !tbaa !142, !alias.scope !370, !noalias !366
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !74, !noalias !371 ; 3 uses
  store ptr %i.gu, ptr %i.cj, align 8, !tbaa !74, !alias.scope !370, !noalias !366
  %.not.i.i.i.i47.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i47.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 3 uses
  %i.gw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !371
  %.not.i.i.i.i.i48.i.i = icmp eq i8 %i.gw, 0
  br i1 %.not.i.i.i.i.i48.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !59, !noalias !371
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gv, align 4, !tbaa !59, !noalias !371
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gz = atomicrmw volatile add ptr %i.gv, i32 1 acq_rel, align 4, !noalias !371 ; 0 uses
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !142, !noalias !366
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.bb, %bb.ba, %bb.ay
  %i.ha = phi ptr [ %i.gs, %bb.ay ], [ %i.gs, %bb.ba ], [ %.pre.i.i, %bb.bb ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 168
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !145, !noalias !366
  switch i32 %i.hc, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i [
    i32 0, label %bb.bc
    i32 1, label %bb.bc
    i32 6, label %bb.bc
    i32 7, label %bb.bc
    i32 2, label %bb.bf
    i32 3, label %bb.bf
    i32 4, label %bb.bf
    i32 5, label %bb.bf
    i32 8, label %bb.bf
    i32 9, label %bb.bf
  ]

bb.bc:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.hd = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_511GammaOpData24isAlphaComponentIdentityEv(ptr noundef nonnull align 8 dereferenceable(272) %i.ha)
          to label %bb.bd unwind label %bb.be, !noalias !366 ; 3 uses

bb.bd:                                            ; preds = %bb.bc
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val9.i = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !noalias !365
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.0, align 4
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i = zext i1 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i.b to i32
  %23 = select i1 %i.hd, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val9.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i
  %.val116.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !noalias !366
  %.val117.i.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.1, align 4
  %.val117.i.i = select i1 %.val117.i.i.b, i32 5, i32 0
  %24 = select i1 %i.hd, i32 %.val116.i.i, i32 %.val117.i.i
  %.val118.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !noalias !366
  %25 = select i1 %i.hd, i32 %.val118.i.i, i32 0
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i

bb.be:                                            ; preds = %bb.bc
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27, !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !366
  br label %.body82

bb.bf:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.hf = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56, !noalias !366
  %i.hg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i: ; preds = %bb.bf, %bb.bd, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %.sroa.43.2.i = phi i32 [ 0, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %25, %bb.bd ], [ %i.hh, %bb.bf ]
  %.sroa.23.4.i = phi i32 [ %i.cl, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %24, %bb.bd ], [ %i.hg, %bb.bf ]
  %.sroa.0.4.i = phi i32 [ %i.ck, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %23, %bb.bd ], [ %i.hf, %bb.bf ]
  %i.hi = load ptr, ptr %i.cj, align 8, !tbaa !74, !noalias !366 ; 8 uses
  %.not.i.i53.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i53.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8, !noalias !366 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.hj, align 8, !tbaa !76, !noalias !366
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !77, !noalias !366
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !79, !noalias !366
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !366
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !noalias !366, !inline_history !350
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !79, !noalias !366
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !366
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !noalias !366, !inline_history !350
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i54.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i54.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i56.i.i = phi i32 [ %i.hm, %bb.bj ], [ %i.hw, %bb.bk ]
  %i.hx = icmp eq i32 %.0.i.i.i.i56.i.i, 1
  br i1 %i.hx, label %bb.bl, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !80

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #27, !noalias !366
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i, %bb.bh, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.bm:                                            ; preds = %.noexc80
  %i.hy = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !372, !nonnull !98, !noundef !98
  %i.hz = call ptr @__dynamic_cast(ptr nonnull %i.hy, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_511Lut1DOpDataE, i64 0) #27, !noalias !372 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hz) ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !74, !noalias !372 ; 9 uses
  %.not.i.i.i.i58.i.i = icmp eq ptr %i.ib, null   ; 2 uses
  br i1 %.not.i.i.i.i58.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 3 uses
  %i.id = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !372
  %.not.i.i.i.i.i59.i.i = icmp eq i8 %i.id, 0
  br i1 %.not.i.i.i.i.i59.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ie = load i32, ptr %i.ic, align 4, !tbaa !59, !noalias !372
  %i.if = add nsw i32 %i.ie, 1
  store i32 %i.if, ptr %i.ic, align 4, !tbaa !59, !noalias !372
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ig = atomicrmw volatile add ptr %i.ic, i32 1 acq_rel, align 4, !noalias !372 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.bp, %bb.bo, %bb.bm
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 232
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !160, !noalias !366
  switch i32 %i.ii, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i [
    i32 0, label %bb.bq
    i32 1, label %bb.br
  ]

bb.bq:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 228
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !161, !noalias !366
  %.not12.i.i = icmp eq i32 %i.ik, 0              ; 3 uses
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val.i = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !noalias !365
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.val.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.0, align 4
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.val.i = zext i1 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.val.i.b to i32
  %26 = select i1 %.not12.i.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.val.i
  %.val.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !noalias !366
  %.val113.i.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.1, align 4
  %.val113.i.i = select i1 %.val113.i.i.b, i32 4, i32 0
  %27 = select i1 %.not12.i.i, i32 %.val.i.i, i32 %.val113.i.i
  %.val114.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !noalias !366
  %28 = select i1 %.not12.i.i, i32 %.val114.i.i, i32 0
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i

bb.br:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 228
  %i.im = load i32, ptr %i.il, align 4, !tbaa !161, !noalias !366
  %.not.i.i79 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i79, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 224
  %i.io = load i32, ptr %i.in, align 8, !tbaa !162, !noalias !366
  %i.ip = trunc i32 %i.io to i1
  %spec.select.i.i = select i1 %i.ip, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %29 = phi ptr [ @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, %bb.br ], [ %spec.select.i.i, %bb.bs ] ; 3 uses
  %i.iq = load i32, ptr %29, align 4, !tbaa !56, !noalias !366
  %i.ir = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !57, !noalias !366
  %i.it = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i: ; preds = %bb.bt, %bb.bq, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %.sroa.43.3.i = phi i32 [ 0, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %28, %bb.bq ], [ %i.iu, %bb.bt ] ; 4 uses
  %.sroa.23.6.i = phi i32 [ %i.cl, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %27, %bb.bq ], [ %i.is, %bb.bt ] ; 4 uses
  %.sroa.0.6.i = phi i32 [ %i.ck, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %26, %bb.bq ], [ %i.iq, %bb.bt ] ; 4 uses
  br i1 %.not.i.i.i.i58.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 4 uses
  %i.iw = load atomic i64, ptr %i.iv acquire, align 8, !noalias !366 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 4294967297
  %i.iy = trunc i64 %i.iw to i32                  ; 2 uses
  br i1 %i.ix, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.iv, align 8, !tbaa !76, !noalias !366
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 0, ptr %i.iz, align 4, !tbaa !77, !noalias !366
  %i.ja = load ptr, ptr %i.ib, align 8, !tbaa !79, !noalias !366
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !366
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #27, !noalias !366, !inline_history !353
  %i.jd = load ptr, ptr %i.ib, align 8, !tbaa !79, !noalias !366
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !noalias !366
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #27, !noalias !366, !inline_history !353
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.jg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i65.i.i = icmp eq i8 %i.jg, 0
  br i1 %.not.i.i.i65.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jh = add nsw i32 %i.iy, -1
  store i32 %i.jh, ptr %i.iv, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i

bb.by:                                            ; preds = %bb.bw
  %i.ji = atomicrmw volatile add ptr %i.iv, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i67.i.i = phi i32 [ %i.iy, %bb.bx ], [ %i.ji, %bb.by ]
  %i.jj = icmp eq i32 %.0.i.i.i.i67.i.i, 1
  br i1 %i.jj, label %bb.bz, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ca:                                            ; preds = %.noexc80
  %i.jk = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !373, !nonnull !98, !noundef !98
  %i.jl = call ptr @__dynamic_cast(ptr nonnull %i.jk, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_511Lut3DOpDataE, i64 0) #27, !noalias !373 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jl) ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !74, !noalias !373 ; 9 uses
  %.not.i.i.i.i69.i.i = icmp eq ptr %i.jn, null   ; 2 uses
  br i1 %.not.i.i.i.i69.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 3 uses
  %i.jp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !373
  %.not.i.i.i.i.i70.i.i = icmp eq i8 %i.jp, 0
  br i1 %.not.i.i.i.i.i70.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jq = load i32, ptr %i.jo, align 4, !tbaa !59, !noalias !373
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.jo, align 4, !tbaa !59, !noalias !373
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.js = atomicrmw volatile add ptr %i.jo, i32 1 acq_rel, align 4, !noalias !373 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.cd, %bb.cc, %bb.ca
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 224
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !165, !noalias !366
  switch i32 %i.ju, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i [
    i32 0, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i
    i32 1, label %bb.ce
  ]

bb.ce:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i: ; preds = %bb.ce, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %storemerge8.in.i = phi ptr [ @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, %bb.ce ], [ @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ]
  %storemerge.in.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 4), %bb.ce ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ]
  %.sink136.in.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 8), %bb.ce ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ]
  %storemerge8.i = load i32, ptr %storemerge8.in.i, align 4, !tbaa !56, !noalias !366
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4, !tbaa !57, !noalias !366
  %.sink136.i.i = load i32, ptr %.sink136.in.i.i, align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i: ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %.sroa.43.4.i = phi i32 [ 0, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sink136.i.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i ] ; 4 uses
  %.sroa.23.7.i = phi i32 [ %i.cl, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %storemerge.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i ] ; 4 uses
  %.sroa.0.7.i.a = phi i32 [ %i.ck, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %storemerge8.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i ] ; 4 uses
  br i1 %.not.i.i.i.i69.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 4 uses
  %i.jw = load atomic i64, ptr %i.jv acquire, align 8, !noalias !366 ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 4294967297
  %i.jy = trunc i64 %i.jw to i32                  ; 2 uses
  br i1 %i.jx, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.jv, align 8, !tbaa !76, !noalias !366
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  store i32 0, ptr %i.jz, align 4, !tbaa !77, !noalias !366
  %i.ka = load ptr, ptr %i.jn, align 8, !tbaa !79, !noalias !366
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !366
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jn) #27, !noalias !366, !inline_history !356
  %i.kd = load ptr, ptr %i.jn, align 8, !tbaa !79, !noalias !366
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !366
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(16) %i.jn) #27, !noalias !366, !inline_history !356
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.kg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i76.i.i = icmp eq i8 %i.kg, 0
  br i1 %.not.i.i.i76.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kh = add nsw i32 %i.jy, -1
  store i32 %i.kh, ptr %i.jv, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.ki = atomicrmw volatile add ptr %i.jv, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i78.i.i = phi i32 [ %i.jy, %bb.ci ], [ %i.ki, %bb.cj ]
  %i.kj = icmp eq i32 %.0.i.i.i.i78.i.i, 1
  br i1 %i.kj, label %bb.ck, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jn) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cl:                                            ; preds = %.noexc80, %.noexc80
  %i.kk = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !56, !noalias !366
  %i.kl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.km = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cm:                                            ; preds = %.noexc80
  %i.kn = call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !366 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef nonnull @.str.28)
          to label %.noexc7.i unwind label %bb.cn, !noalias !366

.noexc7.i:                                        ; preds = %bb.cm
  invoke void @__cxa_throw(ptr nonnull %i.kn, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #28
          to label %.noexc81 unwind label %.loopexit.split-lp227.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %.noexc7.i
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kn) #27, !noalias !366
  br label %.body82

bb.co:                                            ; preds = %.noexc80
  %i.kp = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !56, !noalias !366
  %i.kq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.kr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i: ; preds = %bb.co, %bb.cl, %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i, %bb.cg, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i, %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i, %bb.bv, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i, %bb.at, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %bb.an, %bb.am, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i, %bb.ah, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.x, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i, %bb.p, %.noexc80
  %.sroa.43.5.i = phi i32 [ 0, %.noexc80 ], [ 0, %bb.p ], [ %.sroa.43.0.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i ], [ %.sroa.43.0.i, %bb.x ], [ %.sroa.43.0.i, %bb.ab ], [ %.sroa.43.0.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.sroa.43.1.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i ], [ %.sroa.43.1.i, %bb.ah ], [ %.sroa.43.1.i, %bb.al ], [ %.sroa.43.1.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i ], [ %i.fm, %bb.am ], [ %i.fp, %bb.an ], [ %22, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %22, %bb.at ], [ %22, %bb.ax ], [ %22, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i ], [ %.sroa.43.2.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %.sroa.43.3.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i ], [ %.sroa.43.3.i, %bb.bv ], [ %.sroa.43.3.i, %bb.bz ], [ %.sroa.43.3.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i ], [ %.sroa.43.4.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i ], [ %.sroa.43.4.i, %bb.cg ], [ %.sroa.43.4.i, %bb.ck ], [ %.sroa.43.4.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i ], [ %i.km, %bb.cl ], [ %i.kr, %bb.co ] ; 2 uses
  %.sroa.23.8.i = phi i32 [ %i.cl, %.noexc80 ], [ %i.cs, %bb.p ], [ %.sroa.23.0.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i ], [ %.sroa.23.0.i, %bb.x ], [ %.sroa.23.0.i, %bb.ab ], [ %.sroa.23.0.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.sroa.23.2.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i ], [ %.sroa.23.2.i, %bb.ah ], [ %.sroa.23.2.i, %bb.al ], [ %.sroa.23.2.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i ], [ %i.fl, %bb.am ], [ %i.fo, %bb.an ], [ %21, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %21, %bb.at ], [ %21, %bb.ax ], [ %21, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i ], [ %.sroa.23.4.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %.sroa.23.6.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i ], [ %.sroa.23.6.i, %bb.bv ], [ %.sroa.23.6.i, %bb.bz ], [ %.sroa.23.6.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i ], [ %.sroa.23.7.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i ], [ %.sroa.23.7.i, %bb.cg ], [ %.sroa.23.7.i, %bb.ck ], [ %.sroa.23.7.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i ], [ %i.kl, %bb.cl ], [ %i.kq, %bb.co ] ; 3 uses
  %.sroa.0.8.i = phi i32 [ %i.ck, %.noexc80 ], [ %i.cr, %bb.p ], [ %.sroa.0.0.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i ], [ %.sroa.0.0.i, %bb.x ], [ %.sroa.0.0.i, %bb.ab ], [ %.sroa.0.0.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.sroa.0.2.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i ], [ %.sroa.0.2.i, %bb.ah ], [ %.sroa.0.2.i, %bb.al ], [ %.sroa.0.2.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i ], [ %i.fk, %bb.am ], [ %i.fn, %bb.an ], [ %20, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %20, %bb.at ], [ %20, %bb.ax ], [ %20, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i ], [ %.sroa.0.4.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %.sroa.0.6.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i ], [ %.sroa.0.6.i, %bb.bv ], [ %.sroa.0.6.i, %bb.bz ], [ %.sroa.0.6.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i ], [ %.sroa.0.7.i.a, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i ], [ %.sroa.0.7.i.a, %bb.cg ], [ %.sroa.0.7.i.a, %bb.ck ], [ %.sroa.0.7.i.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i ], [ %i.kk, %bb.cl ], [ %i.kp, %bb.co ] ; 3 uses
  %i.ks = icmp ult i32 %.sroa.0220.0, %.sroa.0.8.i
  br i1 %i.ks, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i
  %i.kt = icmp ugt i32 %.sroa.0220.0, %.sroa.0.8.i
  br i1 %i.kt, label %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ku = icmp ult i32 %.sroa.7.0, %.sroa.23.8.i
  br i1 %i.ku, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kv = icmp ule i32 %.sroa.7.0, %.sroa.23.8.i
  %i.kw = icmp ult i32 %.sroa.11.0, %.sroa.43.5.i
  %or.cond = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %or.cond, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, label %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i: ; preds = %bb.cr, %bb.cq, %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i
  br label %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i

_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i: ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, %bb.cr, %bb.cp
  %.sroa.0220.1 = phi i32 [ %.sroa.0.8.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i ], [ %.sroa.0220.0, %bb.cp ], [ %.sroa.0220.0, %bb.cr ] ; 2 uses
  %.sroa.7.1 = phi i32 [ %.sroa.23.8.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i ], [ %.sroa.7.0, %bb.cp ], [ %.sroa.7.0, %bb.cr ] ; 2 uses
  %.sroa.11.1 = phi i32 [ %.sroa.43.5.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i ], [ %.sroa.11.0, %bb.cp ], [ %.sroa.11.0, %bb.cr ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.kx, %.val.val67
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit, label %.noexc.i78

_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit: ; preds = %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i, %bb.o
  %.sroa.0220.2 = phi i32 [ %i.cg, %bb.o ], [ %.sroa.0220.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 2 uses
  %.sroa.7.2 = phi i32 [ %i.ch, %bb.o ], [ %.sroa.7.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 3 uses
  %.sroa.11.2 = phi i32 [ %i.ci, %bb.o ], [ %.sroa.11.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 3 uses
  store i32 %.sroa.0220.2, ptr %4, align 8, !tbaa !56
  store i32 %.sroa.7.2, ptr %i.g, align 4, !tbaa !57
  store i32 %.sroa.11.2, ptr %i.i, align 8, !tbaa !58
  %i.ky = zext i32 %.sroa.0220.2 to i64
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.ky)
          to label %.noexc86 unwind label %.loopexit.split-lp227.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc86:                                         ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit
  %.not.i85 = icmp eq i32 %.sroa.7.2, 0
  %.not10.i = icmp eq i32 %.sroa.11.2, 0          ; 2 uses
  %or.cond225 = select i1 %.not.i85, i1 %.not10.i, i1 false
  br i1 %or.cond225, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.cs

bb.cs:                                            ; preds = %.noexc86
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %.noexc87 unwind label %.loopexit.split-lp227.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc87:                                         ; preds = %bb.cs
  %i.lb = zext i32 %.sroa.7.2 to i64
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.lb)
          to label %.noexc88 unwind label %.loopexit.split-lp227.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc88:                                         ; preds = %.noexc87
  br i1 %.not10.i, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.ct

bb.ct:                                            ; preds = %.noexc88
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %.noexc89 unwind label %.loopexit.split-lp227.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc89:                                         ; preds = %bb.ct
  %i.le = zext i32 %.sroa.11.2 to i64
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.le)
          to label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit unwind label %.loopexit.split-lp227.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit: ; preds = %.noexc86, %.noexc88, %.noexc89
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.lg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.lg, ptr %9, align 8, !tbaa !60, !alias.scope !376
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.lh, align 8, !tbaa !52, !alias.scope !376
  store i8 0, ptr %i.lg, align 8, !tbaa !53, !alias.scope !376
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !102, !noalias !376 ; 3 uses
  %.not.i.not.i.i91 = icmp eq ptr %i.lj, null
  %i.lk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !376 ; 2 uses
  %i.lm = icmp ugt ptr %i.lj, %i.ll
  %.08.i.i.i92 = select i1 %i.lm, ptr %i.lj, ptr %i.ll ; 2 uses
  %.not5.i.i93 = icmp eq ptr %.08.i.i.i92, null
  %.not.i.i94 = select i1 %.not.i.not.i.i91, i1 true, i1 %.not5.i.i93
  br i1 %.not.i.i94, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !103, !noalias !376 ; 2 uses
  %i.lp = ptrtoint ptr %.08.i.i.i92 to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.lo, i64 noundef %i.lr)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100 unwind label %bb.cv ; 0 uses

bb.cv:                                            ; preds = %bb.cw, %bb.cu
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lu = load ptr, ptr %9, align 8, !tbaa !51, !alias.scope !376 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.lg
  br i1 %i.lv, label %.body98, label %.body98.sink.split

bb.cw:                                            ; preds = %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.lw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100 unwind label %bb.cv

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100: ; preds = %bb.cw, %bb.cu
  %i.lx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.lx, ptr %8, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.lx, ptr noundef nonnull align 1 dereferenceable(7) @_ZN16OpenColorIO_v2_5L12ATTR_VERSIONE, i64 7, i1 false)
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 7, ptr %i.ly, align 8, !tbaa !52
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 23
  store i8 0, ptr %i.lz, align 1, !tbaa !53
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 10 uses
  store ptr %i.mb, ptr %i.ma, align 8, !tbaa !60
  %i.mc = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.lg
  br i1 %i.md, label %bb.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

bb.cx:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100
  %i.me = load i64, ptr %i.lh, align 8, !tbaa !52 ; 3 uses
  %i.mf = icmp ult i64 %i.me, 16
  call void @llvm.assume(i1 %i.mf)
  %i.mg = add nuw nsw i64 %i.me, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mb, ptr noundef nonnull align 8 dereferenceable(1) %i.lg, i64 %i.mg, i1 false)
  br label %bb.cy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100
  store ptr %i.mc, ptr %i.ma, align 8, !tbaa !51
  %i.mh = load i64, ptr %i.lg, align 8, !tbaa !53
  store i64 %i.mh, ptr %i.mb, align 8, !tbaa !53
  %.pre = load i64, ptr %i.lh, align 8, !tbaa !52
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.cx
  %i.mi = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.me, %bb.cx ]
  %i.mj = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !52
  store ptr %i.lg, ptr %9, align 8, !tbaa !51
  store i64 0, ptr %i.lh, align 8, !tbaa !52
  store i8 0, ptr %i.lg, align 8, !tbaa !53
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !106 ; 10 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !107
  %.not.i.i105 = icmp eq ptr %i.ml, %i.mn
  br i1 %.not.i.i105, label %bb.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i107: ; preds = %bb.cy
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 16 ; 3 uses
  store ptr %i.mo, ptr %i.ml, align 8, !tbaa !60
  %i.mp = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.lx
  %spec.store.select = select i1 %i.mq, ptr %i.mo, ptr %i.mp
  store ptr %spec.store.select, ptr %i.ml, align 8, !tbaa !60
  %i.mr = load i64, ptr %i.lx, align 8
  store i64 %i.mr, ptr %i.mo, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store i64 7, ptr %i.ms, align 8, !tbaa !52
  store ptr %i.lx, ptr %8, align 8, !tbaa !51
  store i64 0, ptr %i.ly, align 8, !tbaa !52
  store i8 0, ptr %i.lx, align 8, !tbaa !53
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 32 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ml, i64 48 ; 3 uses
  store ptr %i.mu, ptr %i.mt, align 8, !tbaa !60
  %i.mv = load ptr, ptr %i.ma, align 8, !tbaa !51 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.mb
  br i1 %i.mw, label %bb.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i108

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i107
  %i.mx = load i64, ptr %i.mj, align 8, !tbaa !52 ; 3 uses
  %i.my = icmp ult i64 %i.mx, 16
  call void @llvm.assume(i1 %i.my)
  %i.mz = add nuw nsw i64 %i.mx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mu, ptr noundef nonnull align 8 dereferenceable(1) %i.mb, i64 %i.mz, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit111.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i107
  store ptr %i.mv, ptr %i.mt, align 8, !tbaa !51
  %i.na = load i64, ptr %i.mb, align 8, !tbaa !53
  store i64 %i.na, ptr %i.mu, align 8, !tbaa !53
  %.pre237 = load i64, ptr %i.mj, align 8, !tbaa !52
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit111.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit111.thread: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i108
  %i.nb = phi i64 [ %.pre237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i108 ], [ %i.mx, %bb.cz ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  store i64 %i.nb, ptr %i.nc, align 8, !tbaa !52
  store ptr %i.mb, ptr %i.ma, align 8, !tbaa !51
  store i64 0, ptr %i.mj, align 8, !tbaa !52
  store i8 0, ptr %i.mb, align 8, !tbaa !53
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ml, i64 64
  store ptr %i.nd, ptr %i.mk, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i113

bb.da:                                            ; preds = %bb.cy
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.g
  %i.cd = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ], [ %i.bz, %bb.g ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !52, !alias.scope !848
  store ptr %i.bw, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !849
  store i64 0, ptr %i.ce, align 8, !tbaa !52, !alias.scope !849
  store i8 0, ptr %i.bw, align 8, !tbaa !53, !alias.scope !849
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !60, !alias.scope !848
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !51, !alias.scope !849 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !52, !alias.scope !849 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false), !alias.scope !850
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !51, !alias.scope !848
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !53, !alias.scope !849
  store i64 %i.cq, ptr %i.ci, align 8, !tbaa !53, !alias.scope !848
  %.phi.trans.insert5.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %.pre6.i.i.i.i26 = load i64, ptr %.phi.trans.insert5.i.i.i.i25, align 8, !tbaa !52, !alias.scope !849
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24, %bb.h
  %i.cr = phi i64 [ %i.cn, %bb.h ], [ %.pre6.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !52, !alias.scope !848
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !51, !alias.scope !849
  store i64 0, ptr %i.cs, align 8, !tbaa !52, !alias.scope !849
  store i8 0, ptr %i.ck, align 8, !tbaa !53, !alias.scope !849
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.cu, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30, label %.lr.ph.i.i.i17, !llvm.loop !841

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.bt, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.cv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !107
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cz) #29
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !168
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !106
  %i.da = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.da, ptr %i.cw, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.a) #27, !inline_history !851
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_511GammaOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !297  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !53
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN16OpenColorIO_v2_511GammaOpDataC1ERKNS0_5StyleERKSt6vectorIdSaIdEES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(260) dereferenceable(260) %i.a) #27, !inline_history !852
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512MatrixOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !297  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !53
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN16OpenColorIO_v2_512MatrixOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(260)) unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_CTFTransform.cpp() #23 section ".text.startup" {
bb.a:
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !56
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !58
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.0, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_4E.1, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.0, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.1, align 4
  store i32 1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, align 4, !tbaa !56
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 4), align 4, !tbaa !57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 8), align 4, !tbaa !58
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E.0, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_7E.1, align 4
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_1E, align 4, !tbaa !56
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_1E, i64 4), align 4, !tbaa !57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_1E, i64 8), align 4, !tbaa !58
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_4E, align 4, !tbaa !56
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_4E, i64 4), align 4, !tbaa !57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_4E, i64 8), align 4, !tbaa !58
  store i32 2, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, align 4, !tbaa !56
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 4), align 4, !tbaa !57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 8), align 4, !tbaa !58
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE.0, align 4
  store i1 true, ptr @_ZN16OpenColorIO_v2_5L24CTF_PROCESS_LIST_VERSIONE.1, align 4
  %i.a = tail call ptr @newlocale(i32 noundef 8127, ptr noundef nonnull @.str.30, ptr noundef null) #27
  store ptr %i.a, ptr @_ZN16OpenColorIO_v2_511NumberUtilsL3locE, align 8, !tbaa !46
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_511NumberUtils6LocaleD2Ev, ptr nonnull @_ZN16OpenColorIO_v2_511NumberUtilsL3locE, ptr nonnull @__dso_handle) #27 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!35, !36}
!llvm.ident = !{!37}
!llvm.errno.tbaa = !{!42}

!0 = distinct !{!0, !54}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{null, null}
!3 = distinct !{!3, !54}
!4 = distinct !{!4, !54}
!5 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_19CDLWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59CDLOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111GammaWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_522ExposureContrastOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!10 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_122ExposureContrastWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_522ExposureContrastOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!11 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!12 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_119FixedFunctionWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!13 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_520GradingPrimaryOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120GradingPrimaryWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_520GradingPrimaryOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!15 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingRGBCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!16 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingRGBCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!17 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!18 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_521GradingHueCurveOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!19 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_517GradingToneOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!20 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_117GradingToneWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_517GradingToneOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!21 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!22 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_19LogWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!23 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!24 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut1DWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!25 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!26 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!27 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!28 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!29 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!30 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!31 = distinct !{ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_111RangeWriterD2Ev, ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!32 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511RangeOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!33 = distinct !{null, null, null}
!34 = distinct !{ptr @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!35 = !{i32 8, !"PIC Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"omnipotent char", !38, i64 0}
!40 = !{!"int", !39, i64 0}
!41 = !{!"__libc_errno", !40, i64 0}
!42 = !{!41, !40, i64 0}
!43 = !{!"any pointer", !39, i64 0}
!44 = !{!"p1 _ZTS15__locale_struct", !43, i64 0}
!45 = !{!"_ZTSN16OpenColorIO_v2_511NumberUtils6LocaleE", !44, i64 0}
!46 = !{!45, !44, i64 0}
!47 = !{!"p1 omnipotent char", !43, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !47, i64 0}
!49 = !{!"long", !39, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !49, i64 8, !39, i64 16}
!51 = !{!50, !47, i64 0}
!52 = !{!50, !49, i64 8}
!53 = !{!39, !39, i64 0}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"_ZTSN16OpenColorIO_v2_510CTFVersionE", !40, i64 0, !40, i64 4, !40, i64 8}
!56 = !{!55, !40, i64 0}
!57 = !{!55, !40, i64 4}
!58 = !{!55, !40, i64 8}
!59 = !{!40, !40, i64 0}
!60 = !{!48, !47, i64 0}
!61 = !{!47, !47, i64 0}
!62 = !{!49, !49, i64 0}
!63 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !43, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 0}
!66 = !{!64, !63, i64 8}
!67 = !{!64, !63, i64 16}
!68 = !{!"p1 _ZTSSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEE", !43, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN16OpenColorIO_v2_56OpDataEESaIS4_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!69, !68, i64 0}
!71 = !{!69, !68, i64 8}
!72 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!73 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0}
!74 = !{!73, !72, i64 0}
!75 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 8, !40, i64 12}
!76 = !{!75, !40, i64 8}
!77 = !{!75, !40, i64 12}
!78 = !{!"vtable pointer", !38, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!81 = !{!69, !68, i64 16}
!82 = !{!43, !43, i64 0}
!83 = !{!"p1 _ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !43, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!63, !63, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!87 = !{!86, !83, i64 8}
!88 = !{!86, !83, i64 16}
!89 = !{!"p1 _ZTSN16OpenColorIO_v2_512XmlFormatterE", !43, i64 0}
!90 = !{!"_ZTSN16OpenColorIO_v2_516XmlElementWriterE", !89, i64 8}
!91 = !{!"p1 _ZTSN16OpenColorIO_v2_518CTFReaderTransformE", !43, i64 0}
!92 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !73, i64 8}
!93 = !{!"_ZTSSt10shared_ptrIKN16OpenColorIO_v2_518CTFReaderTransformEE", !92, i64 0}
!94 = !{!"bool", !39, i64 0}
!95 = !{!"_ZTSN16OpenColorIO_v2_515TransformWriterE", !90, i64 0, !93, i64 16, !94, i64 32}
!96 = !{!95, !94, i64 32}
!97 = !{i8 0, i8 2}
!98 = !{}
!99 = !{!"p1 _ZTSNSt6locale5_ImplE", !43, i64 0}
!100 = !{!"_ZTSSt6locale", !99, i64 0}
!101 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !100, i64 56}
!102 = !{!101, !47, i64 40}
!103 = !{!101, !47, i64 32}
!104 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !43, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!106 = !{!105, !104, i64 8}
!107 = !{!105, !104, i64 16}
!108 = !{!92, !91, i64 0}
!109 = !{!"p1 _ZTSN16OpenColorIO_v2_56OpDataE", !43, i64 0}
!110 = !{!"_ZTSSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EE", !109, i64 0, !73, i64 8}
!111 = !{!110, !109, i64 0}
!112 = !{!"_ZTSSt12__mutex_base", !39, i64 0}
!113 = !{!"_ZTSSt5mutex", !112, i64 0}
!114 = !{!"_ZTSN16OpenColorIO_v2_514FormatMetadataE"}
!115 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !105, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !116, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_Vector_implE", !86, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !118, i64 0}
!120 = !{!"_ZTSSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE", !119, i64 0}
!121 = !{!"_ZTSN16OpenColorIO_v2_518FormatMetadataImplE", !114, i64 0, !50, i64 8, !50, i64 40, !117, i64 72, !120, i64 96}
!122 = !{!"_ZTSN16OpenColorIO_v2_56OpDataE", !113, i64 8, !121, i64 48}
end_hunk_2
