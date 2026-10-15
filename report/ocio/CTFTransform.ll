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
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !367
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !59, !noalias !367
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.db, align 4, !tbaa !59, !noalias !367
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.df = atomicrmw volatile add ptr %i.db, i32 1 acq_rel, align 4, !noalias !367 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.u, %bb.t, %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 232
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !129, !noalias !366
  %i.di = fcmp une double %i.dh, f0x3FB6872B020C49BA
  br i1 %i.di, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 240
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !130, !noalias !366
  %i.dl = fcmp oeq double %i.dk, 4.350000e-01
  br i1 %i.dl, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_522ExposureContrastOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.dm = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56, !noalias !366
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i: ; preds = %bb.w, %bb.v
  %.sroa.43.0.i = phi i32 [ %i.do, %bb.w ], [ %i.cw, %bb.v ] ; 4 uses
  %.sroa.23.0.i = phi i32 [ %i.dn, %bb.w ], [ %i.cv, %bb.v ] ; 4 uses
  %.sroa.0.0.i = phi i32 [ %i.dm, %bb.w ], [ %i.cu, %bb.v ] ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8, !noalias !366 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.dp, align 8, !tbaa !76, !noalias !366
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !77, !noalias !366
  %i.du = load ptr, ptr %i.da, align 8, !tbaa !79, !noalias !366
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !366
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #27, !noalias !366, !inline_history !341
  %i.dx = load ptr, ptr %i.da, align 8, !tbaa !79, !noalias !366
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !366
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #27, !noalias !366, !inline_history !341
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i = phi i32 [ %i.ds, %bb.aa ], [ %i.ec, %bb.ab ]
  %i.ed = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ed, label %bb.ac, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ad:                                            ; preds = %.noexc80
  %i.ee = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56, !noalias !366
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58, !noalias !366
  %i.eh = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !368, !nonnull !98, !noundef !98
  %i.ei = call ptr @__dynamic_cast(ptr nonnull %i.eh, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 0) #27, !noalias !368 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !74, !noalias !368 ; 9 uses
  %.not.i.i.i.i21.i.i = icmp eq ptr %i.ek, null   ; 2 uses
  br i1 %.not.i.i.i.i21.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 3 uses
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !368
  %.not.i.i.i.i.i22.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i22.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.en = load i32, ptr %i.el, align 4, !tbaa !59, !noalias !368
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.el, align 4, !tbaa !59, !noalias !368
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ep = atomicrmw volatile add ptr %i.el, i32 1 acq_rel, align 4, !noalias !368 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.ag, %bb.af, %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 168
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !138, !noalias !366
  %switch.tableidx = add i32 %i.er, -10           ; 5 uses
  %i.es = icmp ult i32 %switch.tableidx, 32
  %switch.shifted = lshr i32 -4093, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond406 = select i1 %i.es, i1 %switch.lobit, i1 false
  br i1 %or.cond406, label %switch.lookup, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i

switch.lookup:                                    ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.et = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_515TransformWriter5writeEv, i64 %i.et
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.eu = zext nneg i32 %switch.tableidx to i64
  %switch.gep402 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_515TransformWriter5writeEv.11, i64 %i.eu
  %switch.load403 = load ptr, ptr %switch.gep402, align 8
  %i.ev = zext nneg i32 %switch.tableidx to i64
  %switch.gep404 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK16OpenColorIO_v2_515TransformWriter5writeEv.12, i64 %i.ev
  %switch.load405 = load ptr, ptr %switch.gep404, align 8
  %.sroa.0.1.i = load i32, ptr %switch.load403, align 4, !tbaa !56, !noalias !366
  %.sroa.23.1.i = load i32, ptr %switch.load, align 4, !tbaa !57, !noalias !366
  %.sink.i.i = load i32, ptr %switch.load405, align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i: ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %switch.lookup
  %.sroa.43.1.i = phi i32 [ %i.eg, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sink.i.i, %switch.lookup ] ; 4 uses
  %.sroa.23.2.i = phi i32 [ %i.ef, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sroa.23.1.i, %switch.lookup ] ; 4 uses
  %.sroa.0.2.i = phi i32 [ %i.ee, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_519FixedFunctionOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sroa.0.1.i, %switch.lookup ] ; 4 uses
  br i1 %.not.i.i.i.i21.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8, !noalias !366 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ew, align 8, !tbaa !76, !noalias !366
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !77, !noalias !366
  %i.fb = load ptr, ptr %i.ek, align 8, !tbaa !79, !noalias !366
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !366
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #27, !noalias !366, !inline_history !344
  %i.fe = load ptr, ptr %i.ek, align 8, !tbaa !79, !noalias !366
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !366
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #27, !noalias !366, !inline_history !344
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i30.i.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i30.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i32.i.i = phi i32 [ %i.ez, %bb.ak ], [ %i.fj, %bb.al ]
  %i.fk = icmp eq i32 %.0.i.i.i.i32.i.i, 1
  br i1 %i.fk, label %bb.am, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.an:                                            ; preds = %.noexc80, %.noexc80, %.noexc80, %.noexc80
  %i.fl = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56, !noalias !366
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ao:                                            ; preds = %.noexc80
  %i.fo = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, align 4, !tbaa !56, !noalias !366
  %i.fp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_5E, i64 8), align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ap:                                            ; preds = %.noexc80
  %i.fr = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !369, !nonnull !98, !noundef !98
  %i.fs = call ptr @__dynamic_cast(ptr nonnull %i.fr, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_514ExponentOpDataE, i64 0) #27, !noalias !369 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !74, !noalias !369 ; 9 uses
  %.not.i.i.i.i38.i.i = icmp eq ptr %i.fu, null   ; 2 uses
  br i1 %.not.i.i.i.i38.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !369
  %.not.i.i.i.i.i39.i.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i.i39.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !59, !noalias !369
  %i.fy = add nsw i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !59, !noalias !369
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.fz = atomicrmw volatile add ptr %i.fv, i32 1 acq_rel, align 4, !noalias !369 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 192
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !139, !noalias !366
  %i.gc = fcmp oeq double %i.gb, 1.000000e+00     ; 3 uses
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val10.i = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !noalias !365
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.0, align 4
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i = zext i1 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i.b to i32
  %20 = select i1 %i.gc, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val10.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val11.i ; 4 uses
  %.val120.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !noalias !366
  %.val121.i.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.1, align 4
  %.val121.i.i = select i1 %.val121.i.i.b, i32 5, i32 0
  %21 = select i1 %i.gc, i32 %.val120.i.i, i32 %.val121.i.i ; 4 uses
  %.val122.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !noalias !366
  %22 = select i1 %i.gc, i32 %.val122.i.i, i32 0  ; 4 uses
  br i1 %.not.i.i.i.i38.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8, !noalias !366 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.gd, align 8, !tbaa !76, !noalias !366
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !77, !noalias !366
  %i.gi = load ptr, ptr %i.fu, align 8, !tbaa !79, !noalias !366
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !366
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #27, !noalias !366, !inline_history !347
  %i.gl = load ptr, ptr %i.fu, align 8, !tbaa !79, !noalias !366
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !366
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #27, !noalias !366, !inline_history !347
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.av:                                            ; preds = %bb.at
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i43.i.i = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i43.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

bb.ax:                                            ; preds = %bb.av
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i45.i.i = phi i32 [ %i.gg, %bb.aw ], [ %i.gq, %bb.ax ]
  %i.gr = icmp eq i32 %.0.i.i.i.i45.i.i, 1
  br i1 %i.gr, label %bb.ay, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.az:                                            ; preds = %.noexc80
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27, !noalias !366
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.gs = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !371, !nonnull !98, !noundef !98
  %i.gt = call ptr @__dynamic_cast(ptr nonnull %i.gs, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_511GammaOpDataE, i64 0) #27, !noalias !371 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gt) ]
  store ptr %i.gt, ptr %1, align 8, !tbaa !142, !alias.scope !370, !noalias !366
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !74, !noalias !371 ; 3 uses
  store ptr %i.gv, ptr %i.ck, align 8, !tbaa !74, !alias.scope !370, !noalias !366
  %.not.i.i.i.i47.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i47.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 3 uses
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !371
  %.not.i.i.i.i.i48.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i48.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !59, !noalias !371
  %i.gz = add nsw i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gw, align 4, !tbaa !59, !noalias !371
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.ha = atomicrmw volatile add ptr %i.gw, i32 1 acq_rel, align 4, !noalias !371 ; 0 uses
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !142, !noalias !366
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.bc, %bb.bb, %bb.az
  %i.hb = phi ptr [ %i.gt, %bb.az ], [ %i.gt, %bb.bb ], [ %.pre.i.i, %bb.bc ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 168
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !145, !noalias !366
  switch i32 %i.hd, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i [
    i32 0, label %bb.bd
    i32 1, label %bb.bd
    i32 6, label %bb.bd
    i32 7, label %bb.bd
    i32 2, label %bb.bg
    i32 3, label %bb.bg
    i32 4, label %bb.bg
    i32 5, label %bb.bg
    i32 8, label %bb.bg
    i32 9, label %bb.bg
  ]

bb.bd:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.he = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_511GammaOpData24isAlphaComponentIdentityEv(ptr noundef nonnull align 8 dereferenceable(272) %i.hb)
          to label %bb.be unwind label %bb.bf, !noalias !366 ; 3 uses

bb.be:                                            ; preds = %bb.bd
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val9.i = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !noalias !365
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.0, align 4
  %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i = zext i1 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i.b to i32
  %23 = select i1 %i.he, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E.val9.i, i32 %_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.val.i
  %.val116.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !noalias !366
  %.val117.i.i.b = load i1, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_5E.1, align 4
  %.val117.i.i = select i1 %.val117.i.i.b, i32 5, i32 0
  %24 = select i1 %i.he, i32 %.val116.i.i, i32 %.val117.i.i
  %.val118.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !noalias !366
  %25 = select i1 %i.he, i32 %.val118.i.i, i32 0
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27, !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !366
  br label %.body82

bb.bg:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.hg = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56, !noalias !366
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.hi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i: ; preds = %bb.bg, %bb.be, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %.sroa.43.2.i = phi i32 [ 0, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %25, %bb.be ], [ %i.hi, %bb.bg ]
  %.sroa.23.4.i = phi i32 [ %i.cm, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %24, %bb.be ], [ %i.hh, %bb.bg ]
  %.sroa.0.4.i = phi i32 [ %i.cl, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511GammaOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %23, %bb.be ], [ %i.hg, %bb.bg ]
  %i.hj = load ptr, ptr %i.ck, align 8, !tbaa !74, !noalias !366 ; 8 uses
  %.not.i.i53.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i53.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 4 uses
  %i.hl = load atomic i64, ptr %i.hk acquire, align 8, !noalias !366 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 4294967297
  %i.hn = trunc i64 %i.hl to i32                  ; 2 uses
  br i1 %i.hm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.hk, align 8, !tbaa !76, !noalias !366
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 0, ptr %i.ho, align 4, !tbaa !77, !noalias !366
  %i.hp = load ptr, ptr %i.hj, align 8, !tbaa !79, !noalias !366
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !366
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #27, !noalias !366, !inline_history !350
  %i.hs = load ptr, ptr %i.hj, align 8, !tbaa !79, !noalias !366
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !366
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #27, !noalias !366, !inline_history !350
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i54.i.i = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i54.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hw = add nsw i32 %i.hn, -1
  store i32 %i.hw, ptr %i.hk, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.hx = atomicrmw volatile add ptr %i.hk, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i56.i.i = phi i32 [ %i.hn, %bb.bk ], [ %i.hx, %bb.bl ]
  %i.hy = icmp eq i32 %.0.i.i.i.i56.i.i, 1
  br i1 %i.hy, label %bb.bm, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !80

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #27, !noalias !366
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i55.i.i, %bb.bi, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit50.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.bn:                                            ; preds = %.noexc80
  %i.hz = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !372, !nonnull !98, !noundef !98
  %i.ia = call ptr @__dynamic_cast(ptr nonnull %i.hz, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_511Lut1DOpDataE, i64 0) #27, !noalias !372 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ia) ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !74, !noalias !372 ; 9 uses
  %.not.i.i.i.i58.i.i = icmp eq ptr %i.ic, null   ; 2 uses
  br i1 %.not.i.i.i.i58.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 3 uses
  %i.ie = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !372
  %.not.i.i.i.i.i59.i.i = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i.i.i59.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.if = load i32, ptr %i.id, align 4, !tbaa !59, !noalias !372
  %i.ig = add nsw i32 %i.if, 1
  store i32 %i.ig, ptr %i.id, align 4, !tbaa !59, !noalias !372
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.ih = atomicrmw volatile add ptr %i.id, i32 1 acq_rel, align 4, !noalias !372 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.bq, %bb.bp, %bb.bn
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 232
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !160, !noalias !366
  switch i32 %i.ij, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i [
    i32 0, label %bb.br
    i32 1, label %bb.bs
  ]

bb.br:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 228
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !161, !noalias !366
  %.not12.i.i = icmp eq i32 %i.il, 0              ; 3 uses
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

bb.bs:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 228
  %i.in = load i32, ptr %i.im, align 4, !tbaa !161, !noalias !366
  %.not.i.i79 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i79, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.io = getelementptr inbounds nuw i8, ptr %i.ia, i64 224
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !162, !noalias !366
  %i.iq = trunc i32 %i.ip to i1
  %spec.select.i.i = select i1 %i.iq, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %29 = phi ptr [ @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, %bb.bs ], [ %spec.select.i.i, %bb.bt ] ; 3 uses
  %i.ir = load i32, ptr %29, align 4, !tbaa !56, !noalias !366
  %i.is = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !57, !noalias !366
  %i.iu = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i: ; preds = %bb.bu, %bb.br, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %.sroa.43.3.i = phi i32 [ 0, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %28, %bb.br ], [ %i.iv, %bb.bu ] ; 4 uses
  %.sroa.23.6.i = phi i32 [ %i.cm, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %27, %bb.br ], [ %i.it, %bb.bu ] ; 4 uses
  %.sroa.0.6.i = phi i32 [ %i.cl, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut1DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %26, %bb.br ], [ %i.ir, %bb.bu ] ; 4 uses
  br i1 %.not.i.i.i.i58.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8, !noalias !366 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.iw, align 8, !tbaa !76, !noalias !366
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !77, !noalias !366
  %i.jb = load ptr, ptr %i.ic, align 8, !tbaa !79, !noalias !366
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !noalias !366
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #27, !noalias !366, !inline_history !353
  %i.je = load ptr, ptr %i.ic, align 8, !tbaa !79, !noalias !366
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !366
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #27, !noalias !366, !inline_history !353
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i65.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i65.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i67.i.i = phi i32 [ %i.iz, %bb.by ], [ %i.jj, %bb.bz ]
  %i.jk = icmp eq i32 %.0.i.i.i.i67.i.i, 1
  br i1 %i.jk, label %bb.ca, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cb:                                            ; preds = %.noexc80
  %i.jl = load ptr, ptr %.sroa.01.013.i, align 8, !tbaa !111, !noalias !373, !nonnull !98, !noundef !98
  %i.jm = call ptr @__dynamic_cast(ptr nonnull %i.jl, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_511Lut3DOpDataE, i64 0) #27, !noalias !373 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jm) ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !74, !noalias !373 ; 9 uses
  %.not.i.i.i.i69.i.i = icmp eq ptr %i.jo, null   ; 2 uses
  br i1 %.not.i.i.i.i69.i.i, label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 3 uses
  %i.jq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !373
  %.not.i.i.i.i.i70.i.i = icmp eq i8 %i.jq, 0
  br i1 %.not.i.i.i.i.i70.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jr = load i32, ptr %i.jp, align 4, !tbaa !59, !noalias !373
  %i.js = add nsw i32 %i.jr, 1
  store i32 %i.js, ptr %i.jp, align 4, !tbaa !59, !noalias !373
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.jt = atomicrmw volatile add ptr %i.jp, i32 1 acq_rel, align 4, !noalias !373 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i: ; preds = %bb.ce, %bb.cd, %bb.cb
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 224
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !165, !noalias !366
  switch i32 %i.jv, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i [
    i32 0, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i
    i32 1, label %bb.cf
  ]

bb.cf:                                            ; preds = %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i: ; preds = %bb.cf, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %storemerge8.in.i = phi ptr [ @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, %bb.cf ], [ @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ]
  %storemerge.in.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 4), %bb.cf ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ]
  %.sink136.in.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_6E, i64 8), %bb.cf ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ]
  %storemerge8.i = load i32, ptr %storemerge8.in.i, align 4, !tbaa !56, !noalias !366
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4, !tbaa !57, !noalias !366
  %.sink136.i.i = load i32, ptr %.sink136.in.i.i, align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i: ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i
  %.sroa.43.4.i = phi i32 [ 0, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %.sink136.i.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i ] ; 4 uses
  %.sroa.23.7.i = phi i32 [ %i.cm, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %storemerge.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i ] ; 4 uses
  %.sroa.0.7.i.a = phi i32 [ %i.cl, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_511Lut3DOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %storemerge8.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.sink.split.i.i ] ; 4 uses
  br i1 %.not.i.i.i.i69.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, label %bb.cg

bb.cg:                                            ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.jx = load atomic i64, ptr %i.jw acquire, align 8, !noalias !366 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 4294967297
  %i.jz = trunc i64 %i.jx to i32                  ; 2 uses
  br i1 %i.jy, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.jw, align 8, !tbaa !76, !noalias !366
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 0, ptr %i.ka, align 4, !tbaa !77, !noalias !366
  %i.kb = load ptr, ptr %i.jo, align 8, !tbaa !79, !noalias !366
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !366
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #27, !noalias !366, !inline_history !356
  %i.ke = load ptr, ptr %i.jo, align 8, !tbaa !79, !noalias !366
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !366
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #27, !noalias !366, !inline_history !356
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.kh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53, !noalias !366
  %.not.i.i.i76.i.i = icmp eq i8 %i.kh, 0
  br i1 %.not.i.i.i76.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ki = add nsw i32 %i.jz, -1
  store i32 %i.ki, ptr %i.jw, align 8, !tbaa !59, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.kj = atomicrmw volatile add ptr %i.jw, i32 -1 acq_rel, align 4, !noalias !366
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i78.i.i = phi i32 [ %i.jz, %bb.cj ], [ %i.kj, %bb.ck ]
  %i.kk = icmp eq i32 %.0.i.i.i.i78.i.i, 1
  br i1 %i.kk, label %bb.cl, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i, !prof !80

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #27, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cm:                                            ; preds = %.noexc80, %.noexc80
  %i.kl = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !56, !noalias !366
  %i.km = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.kn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

bb.cn:                                            ; preds = %.noexc80
  %i.ko = call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !366 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull @.str.28)
          to label %.noexc7.i unwind label %bb.co, !noalias !366

.noexc7.i:                                        ; preds = %bb.cn
  invoke void @__cxa_throw(ptr nonnull %i.ko, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #28
          to label %.noexc81 unwind label %.loopexit.split-lp227

.noexc81:                                         ; preds = %.noexc7.i
  unreachable

bb.co:                                            ; preds = %bb.cn
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ko) #27, !noalias !366
  br label %.body82

bb.cp:                                            ; preds = %.noexc80
  %i.kq = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, align 4, !tbaa !56, !noalias !366
  %i.kr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 4), align 4, !tbaa !57, !noalias !366
  %i.ks = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_1_3E, i64 8), align 4, !tbaa !58, !noalias !366
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i: ; preds = %bb.cp, %bb.cm, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i, %bb.ch, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i, %bb.bw, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i, %bb.au, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i, %bb.ao, %bb.an, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i, %bb.ai, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.y, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i, %bb.q, %.noexc80
  %.sroa.43.5.i = phi i32 [ 0, %.noexc80 ], [ 0, %bb.q ], [ %.sroa.43.0.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i ], [ %.sroa.43.0.i, %bb.y ], [ %.sroa.43.0.i, %bb.ac ], [ %.sroa.43.0.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.sroa.43.1.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i ], [ %.sroa.43.1.i, %bb.ai ], [ %.sroa.43.1.i, %bb.am ], [ %.sroa.43.1.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i ], [ %i.fn, %bb.an ], [ %i.fq, %bb.ao ], [ %22, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %22, %bb.au ], [ %22, %bb.ay ], [ %22, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i ], [ %.sroa.43.2.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %.sroa.43.3.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i ], [ %.sroa.43.3.i, %bb.bw ], [ %.sroa.43.3.i, %bb.ca ], [ %.sroa.43.3.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i ], [ %.sroa.43.4.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i ], [ %.sroa.43.4.i, %bb.ch ], [ %.sroa.43.4.i, %bb.cl ], [ %.sroa.43.4.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i ], [ %i.kn, %bb.cm ], [ %i.ks, %bb.cp ] ; 2 uses
  %.sroa.23.8.i = phi i32 [ %i.cm, %.noexc80 ], [ %i.ct, %bb.q ], [ %.sroa.23.0.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i ], [ %.sroa.23.0.i, %bb.y ], [ %.sroa.23.0.i, %bb.ac ], [ %.sroa.23.0.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.sroa.23.2.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i ], [ %.sroa.23.2.i, %bb.ai ], [ %.sroa.23.2.i, %bb.am ], [ %.sroa.23.2.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i ], [ %i.fm, %bb.an ], [ %i.fp, %bb.ao ], [ %21, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %21, %bb.au ], [ %21, %bb.ay ], [ %21, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i ], [ %.sroa.23.4.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %.sroa.23.6.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i ], [ %.sroa.23.6.i, %bb.bw ], [ %.sroa.23.6.i, %bb.ca ], [ %.sroa.23.6.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i ], [ %.sroa.23.7.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i ], [ %.sroa.23.7.i, %bb.ch ], [ %.sroa.23.7.i, %bb.cl ], [ %.sroa.23.7.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i ], [ %i.km, %bb.cm ], [ %i.kr, %bb.cp ] ; 3 uses
  %.sroa.0.8.i = phi i32 [ %i.cl, %.noexc80 ], [ %i.cs, %bb.q ], [ %.sroa.0.0.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit17.i.i ], [ %.sroa.0.0.i, %bb.y ], [ %.sroa.0.0.i, %bb.ac ], [ %.sroa.0.0.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %.sroa.0.2.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit24.i.i ], [ %.sroa.0.2.i, %bb.ai ], [ %.sroa.0.2.i, %bb.am ], [ %.sroa.0.2.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i31.i.i ], [ %i.fl, %bb.an ], [ %i.fo, %bb.ao ], [ %20, %_ZSt20dynamic_pointer_castIKN16OpenColorIO_v2_514ExponentOpDataEKNS0_6OpDataEESt10shared_ptrIT_ERKS5_IT0_E.exit.i.i ], [ %20, %bb.au ], [ %20, %bb.ay ], [ %20, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i44.i.i ], [ %.sroa.0.4.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ], [ %.sroa.0.6.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit61.i.i ], [ %.sroa.0.6.i, %bb.bw ], [ %.sroa.0.6.i, %bb.ca ], [ %.sroa.0.6.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66.i.i ], [ %.sroa.0.7.i.a, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit72.i.i ], [ %.sroa.0.7.i.a, %bb.ch ], [ %.sroa.0.7.i.a, %bb.cl ], [ %.sroa.0.7.i.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i ], [ %i.kl, %bb.cm ], [ %i.kq, %bb.cp ] ; 3 uses
  %i.kt = icmp ult i32 %.sroa.0220.0, %.sroa.0.8.i
  br i1 %i.kt, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, label %bb.cq

bb.cq:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i
  %i.ku = icmp ugt i32 %.sroa.0220.0, %.sroa.0.8.i
  br i1 %i.ku, label %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kv = icmp ult i32 %.sroa.7.0, %.sroa.23.8.i
  br i1 %i.kv, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kw = icmp ule i32 %.sroa.7.0, %.sroa.23.8.i
  %i.kx = icmp ult i32 %.sroa.11.0, %.sroa.43.5.i
  %or.cond = select i1 %i.kw, i1 %i.kx, i1 false
  br i1 %or.cond, label %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, label %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i

_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i: ; preds = %bb.cs, %bb.cr, %_ZN16OpenColorIO_v2_512_GLOBAL__N_119GetOpMinimumVersionERKSt10shared_ptrIKNS_6OpDataEE.exit.i
  br label %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i

_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i: ; preds = %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i, %bb.cs, %bb.cq
  %.sroa.0220.1 = phi i32 [ %.sroa.0.8.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i ], [ %.sroa.0220.0, %bb.cq ], [ %.sroa.0220.0, %bb.cs ] ; 2 uses
  %.sroa.7.1 = phi i32 [ %.sroa.23.8.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i ], [ %.sroa.7.0, %bb.cq ], [ %.sroa.7.0, %bb.cs ] ; 2 uses
  %.sroa.11.1 = phi i32 [ %.sroa.43.5.i, %_ZN16OpenColorIO_v2_510CTFVersionaSERKS0_.exit.i ], [ %.sroa.11.0, %bb.cq ], [ %.sroa.11.0, %bb.cs ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ky, %.val.val67
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit, label %.noexc.i78

_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit: ; preds = %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i, %bb.p
  %.sroa.0220.2 = phi i32 [ %i.ch, %bb.p ], [ %.sroa.0220.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 2 uses
  %.sroa.7.2 = phi i32 [ %i.ci, %bb.p ], [ %.sroa.7.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 3 uses
  %.sroa.11.2 = phi i32 [ %i.cj, %bb.p ], [ %.sroa.11.1, %_ZNK16OpenColorIO_v2_510CTFVersiongtERKS0_.exit.thread.i ] ; 3 uses
  store i32 %.sroa.0220.2, ptr %4, align 8, !tbaa !56
  store i32 %.sroa.7.2, ptr %i.g, align 4, !tbaa !57
  store i32 %.sroa.11.2, ptr %i.i, align 8, !tbaa !58
  %i.kz = zext i32 %.sroa.0220.2 to i64
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.kz)
          to label %.noexc86 unwind label %bb.n   ; 0 uses

.noexc86:                                         ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_117GetMinimumVersionERKSt10shared_ptrIKNS_18CTFReaderTransformEE.exit
  %.not.i85 = icmp eq i32 %.sroa.7.2, 0
  %.not10.i = icmp eq i32 %.sroa.11.2, 0          ; 2 uses
  %or.cond225 = select i1 %.not.i85, i1 %.not10.i, i1 false
  br i1 %or.cond225, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.ct

bb.ct:                                            ; preds = %.noexc86
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %.noexc87 unwind label %bb.n   ; 0 uses

.noexc87:                                         ; preds = %bb.ct
  %i.lc = zext i32 %.sroa.7.2 to i64
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.lc)
          to label %.noexc88 unwind label %bb.n   ; 0 uses

.noexc88:                                         ; preds = %.noexc87
  br i1 %.not10.i, label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit, label %bb.cu

bb.cu:                                            ; preds = %.noexc88
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %.noexc89 unwind label %bb.n   ; 0 uses

.noexc89:                                         ; preds = %bb.cu
  %i.lf = zext i32 %.sroa.11.2 to i64
  %i.lg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.lf)
          to label %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit unwind label %bb.n ; 0 uses

_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit: ; preds = %.noexc86, %.noexc88, %.noexc89
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 12 uses
  store ptr %i.lh, ptr %9, align 8, !tbaa !60, !alias.scope !376
  %i.li = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.li, align 8, !tbaa !52, !alias.scope !376
  store i8 0, ptr %i.lh, align 8, !tbaa !53, !alias.scope !376
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !102, !noalias !376 ; 3 uses
  %.not.i.not.i.i91 = icmp eq ptr %i.lk, null
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !376 ; 2 uses
  %i.ln = icmp ugt ptr %i.lk, %i.lm
  %.08.i.i.i92 = select i1 %i.ln, ptr %i.lk, ptr %i.lm ; 2 uses
  %.not5.i.i93 = icmp eq ptr %.08.i.i.i92, null
  %.not.i.i94 = select i1 %.not.i.not.i.i91, i1 true, i1 %.not5.i.i93
  br i1 %.not.i.i94, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit
  %i.lo = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !103, !noalias !376 ; 2 uses
  %i.lq = ptrtoint ptr %.08.i.i.i92 to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.lp, i64 noundef %i.ls)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100 unwind label %bb.cw ; 0 uses

bb.cw:                                            ; preds = %bb.cx, %bb.cv
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lv = load ptr, ptr %9, align 8, !tbaa !51, !alias.scope !376 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.lh
  br i1 %i.lw, label %.body98, label %.body98.sink.split

bb.cx:                                            ; preds = %_ZN16OpenColorIO_v2_5lsERSoRKNS_10CTFVersionE.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.lx)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100 unwind label %bb.cw

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100: ; preds = %bb.cx, %bb.cv
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.ly, ptr %8, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ly, ptr noundef nonnull align 1 dereferenceable(7) @_ZN16OpenColorIO_v2_5L12ATTR_VERSIONE, i64 7, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 7, ptr %i.lz, align 8, !tbaa !52
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 23
  store i8 0, ptr %i.ma, align 1, !tbaa !53
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 10 uses
  store ptr %i.mc, ptr %i.mb, align 8, !tbaa !60
  %i.md = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.lh
  br i1 %i.me, label %bb.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

bb.cy:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100
  %i.mf = load i64, ptr %i.li, align 8, !tbaa !52 ; 3 uses
  %i.mg = icmp ult i64 %i.mf, 16
  call void @llvm.assume(i1 %i.mg)
  %i.mh = add nuw nsw i64 %i.mf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mc, ptr noundef nonnull align 8 dereferenceable(1) %i.lh, i64 %i.mh, i1 false)
  br label %bb.cz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit100
  store ptr %i.md, ptr %i.mb, align 8, !tbaa !51
  %i.mi = load i64, ptr %i.lh, align 8, !tbaa !53
  store i64 %i.mi, ptr %i.mc, align 8, !tbaa !53
  %.pre = load i64, ptr %i.li, align 8, !tbaa !52
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.cy
  %i.mj = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.mf, %bb.cy ]
  %i.mk = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store i64 %i.mj, ptr %i.mk, align 8, !tbaa !52
  store ptr %i.lh, ptr %9, align 8, !tbaa !51
  store i64 0, ptr %i.li, align 8, !tbaa !52
  store i8 0, ptr %i.lh, align 8, !tbaa !53
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !106 ; 10 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !107
  %.not.i.i105 = icmp eq ptr %i.mm, %i.mo
  br i1 %.not.i.i105, label %bb.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i107: ; preds = %bb.cz
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 16 ; 3 uses
  store ptr %i.mp, ptr %i.mm, align 8, !tbaa !60
  %i.mq = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.ly
  %spec.store.select = select i1 %i.mr, ptr %i.mp, ptr %i.mq
  store ptr %spec.store.select, ptr %i.mm, align 8, !tbaa !60
  %i.ms = load i64, ptr %i.ly, align 8
  store i64 %i.ms, ptr %i.mp, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store i64 7, ptr %i.mt, align 8, !tbaa !52
  store ptr %i.ly, ptr %8, align 8, !tbaa !51
  store i64 0, ptr %i.lz, align 8, !tbaa !52
  store i8 0, ptr %i.ly, align 8, !tbaa !53
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 32 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mm, i64 48 ; 3 uses
  store ptr %i.mv, ptr %i.mu, align 8, !tbaa !60
  %i.mw = load ptr, ptr %i.mb, align 8, !tbaa !51 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.mc
  br i1 %i.mx, label %bb.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i108

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i107
  %i.my = load i64, ptr %i.mk, align 8, !tbaa !52 ; 3 uses
  %i.mz = icmp ult i64 %i.my, 16
  call void @llvm.assume(i1 %i.mz)
  %i.na = add nuw nsw i64 %i.my, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mv, ptr noundef nonnull align 8 dereferenceable(1) %i.mc, i64 %i.na, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit111.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i107
  store ptr %i.mw, ptr %i.mu, align 8, !tbaa !51
  %i.nb = load i64, ptr %i.mc, align 8, !tbaa !53
  store i64 %i.nb, ptr %i.mv, align 8, !tbaa !53
  %.pre234 = load i64, ptr %i.mk, align 8, !tbaa !52
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit111.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit111.thread: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i108
  %i.nc = phi i64 [ %.pre234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i108 ], [ %i.my, %bb.da ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !52
  store ptr %i.mc, ptr %i.mb, align 8, !tbaa !51
  store i64 0, ptr %i.mk, align 8, !tbaa !52
  store i8 0, ptr %i.mc, align 8, !tbaa !53
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mm, i64 64
  store ptr %i.ne, ptr %i.ml, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i113

bb.db:                                            ; preds = %bb.cz
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.g
  %i.cd = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ], [ %i.bz, %bb.g ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !52, !alias.scope !848, !noalias !849
  store ptr %i.bw, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !849, !noalias !848
  store i64 0, ptr %i.ce, align 8, !tbaa !52, !alias.scope !849, !noalias !848
  store i8 0, ptr %i.bw, align 8, !tbaa !53, !alias.scope !849, !noalias !848
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !60, !alias.scope !848, !noalias !849
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !51, !alias.scope !849, !noalias !848 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !52, !alias.scope !849, !noalias !848 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false), !alias.scope !850
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !51, !alias.scope !848, !noalias !849
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !53, !alias.scope !849, !noalias !848
  store i64 %i.cq, ptr %i.ci, align 8, !tbaa !53, !alias.scope !848, !noalias !849
  %.phi.trans.insert5.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %.pre6.i.i.i.i26 = load i64, ptr %.phi.trans.insert5.i.i.i.i25, align 8, !tbaa !52, !alias.scope !849, !noalias !848
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24, %bb.h
  %i.cr = phi i64 [ %i.cn, %bb.h ], [ %.pre6.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !52, !alias.scope !848, !noalias !849
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !51, !alias.scope !849, !noalias !848
  store i64 0, ptr %i.cs, align 8, !tbaa !52, !alias.scope !849, !noalias !848
  store i8 0, ptr %i.ck, align 8, !tbaa !53, !alias.scope !849, !noalias !848
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
