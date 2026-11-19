Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfileProbe?download=true
inline.NumInlined: 2571
inline.NumDeleted: 1500
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::cl::parser.10" = type { %"class.llvm::cl::basic_parser.11" }
%"class.llvm::cl::basic_parser.11" = type { %"class.llvm::cl::basic_parser_impl" }
%"class.std::function.12" = type { %"class.std::_Function_base", ptr }
%"class.llvm::StringSet" = type { %"class.llvm::StringMap.base", [4 x i8] }
%"class.llvm::StringMap.base" = type { %"class.llvm::StringMapImpl.base" }
%"class.llvm::StringMapImpl.base" = type <{ ptr, i32, i32, i32 }>
%"struct.llvm::AnalysisKey" = type { [8 x i8] }
%class.anon = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::optional.208" = type { %"struct.std::_Optional_base.209" }
%"struct.std::_Optional_base.209" = type { %"struct.std::_Optional_payload.211" }
%"struct.std::_Optional_payload.211" = type { %"struct.std::_Optional_payload_base.base.213", [3 x i8] }
%"struct.std::_Optional_payload_base.base.213" = type <{ %"union.std::_Optional_payload_base<llvm::PseudoProbe>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::PseudoProbe>::_Storage" = type { %"struct.llvm::PseudoProbe" }
%"struct.llvm::PseudoProbe" = type { i32, i32, i32, i32, float }
%"class.llvm::DenseMap.174" = type { ptr, ptr, i32, i32 }
%"struct.std::pair" = type { i64, i64 }
%class.anon.383 = type { ptr }
%"class.llvm::format_object" = type <{ ptr, %"class.std::tuple.222", [4 x i8] }>
%"class.std::tuple.222" = type { %"struct.std::_Tuple_impl.223" }
%"struct.std::_Tuple_impl.223" = type { %"struct.std::_Head_base.224" }
%"struct.std::_Head_base.224" = type { float }
%"class.llvm::MD5" = type { %struct.anon.328 }
%struct.anon.328 = type { i32, i32, i32, i32, i32, i32, [64 x i8], [16 x i32] }
%"struct.llvm::MD5::MD5Result" = type { %"struct.std::array" }
%"struct.std::array" = type { [16 x i8] }
%"class.llvm::DenseSet" = type { %"class.llvm::detail::DenseSetImpl" }
%"class.llvm::detail::DenseSetImpl" = type { %"class.llvm::DenseMap.229" }
%"class.llvm::DenseMap.229" = type { ptr, ptr, i32, i32 }
%class.anon.405 = type { i8 }
%"class.llvm::DenseMap.386" = type { ptr, ptr, i32, i32 }
%"struct.llvm::detail::DenseMapPair.392" = type { %"struct.std::pair.base.395", [4 x i8] }
%"struct.std::pair.base.395" = type <{ ptr, i32 }>
%"class.llvm::DiagnosticInfoSampleProfile" = type { %"class.llvm::DiagnosticInfo.base", %"class.llvm::StringRef", i32, ptr }
%"class.llvm::DiagnosticInfo.base" = type <{ ptr, i32, i8 }>
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::JamCRC" = type { i32 }
%"class.llvm::MDBuilder" = type { ptr }
%"class.llvm::IRBuilder" = type { %"class.llvm::IRBuilderBase", %"class.llvm::ConstantFolder", %"class.llvm::IRBuilderDefaultInserter" }
%"class.llvm::IRBuilderBase" = type { %"class.llvm::DebugLoc", ptr, %"class.llvm::ilist_iterator_w_bits.244", ptr, ptr, ptr, ptr, %"class.llvm::FastMathFlags", i8, i8, i8, %"class.llvm::ArrayRef.264" }
%"class.llvm::DebugLoc" = type { ptr }
%"class.llvm::ilist_iterator_w_bits.244" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.llvm::FastMathFlags" = type { i32 }
%"class.llvm::ArrayRef.264" = type { ptr, i64 }
%"class.llvm::ConstantFolder" = type { %"class.llvm::IRBuilderFolder" }
%"class.llvm::IRBuilderFolder" = type { ptr }
%"class.llvm::IRBuilderDefaultInserter" = type { ptr }
%"class.llvm::PreservedAnalyses" = type { %"class.llvm::SmallPtrSet.278", %"class.llvm::SmallPtrSet.281" }
%"class.llvm::SmallPtrSet.278" = type { %"class.llvm::SmallPtrSetImpl.base.280", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.280" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSet.281" = type { %"class.llvm::SmallPtrSetImpl.base.283", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.283" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SampleProfileProber" = type <{ ptr, %"class.std::__cxx11::basic_string", i64, %"class.llvm::DenseMap.225", %"class.llvm::DenseMap.227", i32, [4 x i8] }>
%"class.llvm::DenseMap.225" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.227" = type { ptr, ptr, i32, i32 }
%"class.llvm::Any" = type { %"class.std::unique_ptr.49" }
%"class.std::unique_ptr.49" = type { %"struct.std::__uniq_ptr_data.50" }
%"struct.std::__uniq_ptr_data.50" = type { %"class.std::__uniq_ptr_impl.51" }
%"class.std::__uniq_ptr_impl.51" = type { %"class.std::tuple.52" }
%"class.std::tuple.52" = type { %"struct.std::_Tuple_impl.53" }
%"struct.std::_Tuple_impl.53" = type { %"struct.std::_Head_base.56" }
%"struct.std::_Head_base.56" = type { ptr }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev = comdat any

$_ZN4llvm9StringSetINS_15MallocAllocatorEEC2IRNS_2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS4_6parserISB_EEEEEENS_12from_range_tEOT_ = comdat any

$_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEED2Ev = comdat any

$_ZNK4llvm10DILocation22cloneWithDiscriminatorEj = comdat any

$_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16handleOccurrenceEjNS_9StringRefESB_ = comdat any

$_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE27getValueExpectedFlagDefaultEv = comdat any

$_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED0Ev = comdat any

$_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE14getOptionWidthEv = comdat any

$_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE15printOptionInfoEm = comdat any

$_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16printOptionValueEmb = comdat any

$_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE10setDefaultEv = comdat any

$_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE = comdat any

$_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNK4llvm10DILocation24getSubprogramLinkageNameEv = comdat any

$_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE = comdat any

$_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEES3_fS5_S8_E24lookupOrInsertIntoBucketIS3_JEEES2_IPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEES3_fS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEES3_fS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEES3_fS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEES3_fS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEES2_IPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJfEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ = comdat any

$_ZTVN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEEE = comdat any

$_ZTVN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL17VerifyPseudoProbe = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"verify-pseudo-probe\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Do pseudo probe verification\00", align 1
@__dso_handle = external hidden global i8
@_ZL25VerifyPseudoProbeFuncListB5cxx11 = internal global %"class.llvm::cl::list" zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"verify-pseudo-probe-funcs\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"The option to specify the name of the functions to verify.\00", align 1
@_ZL17UpdatePseudoProbe = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"update-pseudo-probe\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Update pseudo probe distribution factor\00", align 1
@_ZZN4llvm19PseudoProbeVerifier20shouldVerifyFunctionEPKNS_8FunctionEE15VerifyFuncNames = internal global %"class.llvm::StringSet" zeroinitializer, align 8
@_ZGVZN4llvm19PseudoProbeVerifier20shouldVerifyFunctionEPKNS_8FunctionEE15VerifyFuncNames = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"\0A*** Pseudo Probe Verification After \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" ***\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Function \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Probe \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\09previous factor \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%0.2f\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"\09current factor \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Pseudo instrumentation incomplete for \00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c" because it's too large\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"llvm.pseudo_probe_desc\00", align 1
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEEE = linkonce_odr unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16handleOccurrenceEjNS_9StringRefESB_, ptr @_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE27getValueExpectedFlagDefaultEv, ptr @_ZN4llvm2cl6Option6anchorEv, ptr @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev, ptr @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED0Ev, ptr @_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE14getOptionWidthEv, ptr @_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE15printOptionInfoEm, ptr @_ZNK4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE16printOptionValueEmb, ptr @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE10setDefaultEv, ptr @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE, ptr @_ZN4llvm2cl6Option13addOccurrenceEjNS_9StringRefES2_b] }, comdat, align 8
@_ZTVN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZTVN4llvm27DiagnosticInfoSampleProfileE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZN4llvm21EnableFSDiscriminatorE = external local_unnamed_addr global %"class.llvm::cl::opt", align 8
@_ZN4llvm25InnerAnalysisManagerProxyINS_15AnalysisManagerINS_8FunctionEJEEENS_6ModuleEJEE3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZTVN4llvm14ConstantFolderE = external unnamed_addr constant { [22 x ptr] }, align 8
@_ZTVN4llvm24IRBuilderDefaultInserterE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN4llvm3Any6TypeIdIPKNS_6ModuleEE2IdE = external global i8, align 1
@_ZN4llvm3Any6TypeIdIPKNS_8FunctionEE2IdE = external global i8, align 1
@_ZN4llvm3Any6TypeIdIPKNS_13LazyCallGraph3SCCEE2IdE = external global i8, align 1
@_ZN4llvm22BlockFrequencyAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SampleProfileProbe.cpp, ptr null }]

@_ZN4llvm19SampleProfileProberC1ERNS_8FunctionE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm19SampleProfileProberC2ERNS_8FunctionE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #24, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !24, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.i) #24
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #24
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl4listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS0_6parserIS7_EEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #24, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !225  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !226  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZSt8_DestroyIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i ], [ %i.n, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %.05.i.i.i.i, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !41
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #25
  br label %_ZSt8_DestroyIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !224

_ZSt8_DestroyIPN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.m, align 8, !tbaa !225
  br label %_ZSt8_DestroyIPN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exit.i.i

_ZSt8_DestroyIPN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exitthread-pre-split.i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.x = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exitthread-pre-split.i.i ], [ %i.n, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS9_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !227
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS9_EED2Ev.exit.i

_ZNSt6vectorIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS9_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SB_.exit.i.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !45  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS9_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.al, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ad, %_ZNSt6vectorIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS9_EED2Ev.exit.i ] ; 3 uses
  %i.ag = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.al, %i.af
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.l, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS9_EED2Ev.exit.i
  %i.am = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ad, %_ZNSt6vectorIN4llvm2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS9_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i6.i, label %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #25
  br label %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit

_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load i8, ptr %i.as, align 8, !tbaa !24, !range !25, !noundef !26
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.aw) #24
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.f, %_ZN4llvm2cl12list_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.ay) #24
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.g
end_hunk_0
begin_hunk_1_@_ZN4llvm19PseudoProbeVerifier12runAfterPassENS_9StringRefENS_3AnyE:bb.a
  store i8 %i.h, ptr %i.g, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !72, !noalias !242 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !52, !alias.scope !242
  %i.k = load ptr, ptr %6, align 8, !tbaa !40, !alias.scope !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !242
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.8, i64 noundef 37) #24, !noalias !243 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !71, !alias.scope !243
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store ptr %i.o, ptr %5, align 8, !tbaa !40, !alias.scope !243
  %i.v = load i64, ptr %i.p, align 8, !tbaa !41
  store i64 %i.v, ptr %i.n, align 8, !tbaa !41, !alias.scope !243
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !52
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.w, ptr %i.y, align 8, !tbaa !52, !alias.scope !243
  store ptr %i.p, ptr %i.m, align 8, !tbaa !40
  store i64 0, ptr %i.x, align 8, !tbaa !52
  store i8 0, ptr %i.p, align 8, !tbaa !41
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.z = add i64 %i.w, -4611686018427387899
  %i.aa = icmp ult i64 %i.z, 5
  br i1 %i.aa, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #26, !noalias !244
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, i64 noundef 5) #24, !noalias !244 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !71, !alias.scope !244
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ad, ptr %4, align 8, !tbaa !40, !alias.scope !244
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !41
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !41, !alias.scope !244
  %.phi.trans.insert.i14 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i15 = load i64, ptr %.phi.trans.insert.i14, align 8, !tbaa !52
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.al = phi i64 [ %i.ah, %bb.i ], [ %.pre.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.an, align 8, !tbaa !52, !alias.scope !244
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !40
  store i64 0, ptr %i.am, align 8, !tbaa !52
  store i8 0, ptr %i.ae, align 8, !tbaa !41
  %i.ao = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.n
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !41
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.as = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !41
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() #24
  %i.ay = load ptr, ptr %4, align 8, !tbaa !40
  %i.az = load i64, ptr %i.an, align 8, !tbaa !52
  %i.ba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef %i.ay, i64 noundef %i.az) #24 ; 0 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !74, !nonnull !26, !noundef !26 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #24, !inline_history !238
  %i.bg = icmp eq ptr %i.bf, @_ZN4llvm3Any6TypeIdIPKNS_6ModuleEE2IdE
  %i.bh = load ptr, ptr %3, align 8, !tbaa !74    ; 3 uses
  br i1 %i.bg, label %bb.j, label %_ZNK4llvm3Any3isaIPKNS_8FunctionEEEbv.exit.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !245 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %.sroa.05.08.i = load ptr, ptr %i.bk, align 8, !tbaa !78 ; 2 uses
  %.not9.i = icmp eq ptr %.sroa.05.08.i, %i.bl
  br i1 %.not9.i, label %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.05.010.i = phi ptr [ %.sroa.05.0.i, %.lr.ph.i ], [ %.sroa.05.08.i, %bb.j ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.05.010.i, i64 -64
  call void @_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 8
  %.sroa.05.0.i = load ptr, ptr %i.bn, align 8, !tbaa !78 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.05.0.i, %i.bl
  br i1 %.not.i21, label %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit, label %.lr.ph.i

_ZNK4llvm3Any3isaIPKNS_8FunctionEEEbv.exit.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #24, !inline_history !239
  %i.bs = icmp eq ptr %i.br, @_ZN4llvm3Any6TypeIdIPKNS_8FunctionEE2IdE
  %i.bt = load ptr, ptr %3, align 8, !tbaa !74    ; 3 uses
  br i1 %i.bs, label %bb.k, label %_ZNK4llvm3Any3isaIPKNS_13LazyCallGraph3SCCEEEbv.exit.i

bb.k:                                             ; preds = %_ZNK4llvm3Any3isaIPKNS_8FunctionEEEbv.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  br label %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit.sink.split

_ZNK4llvm3Any3isaIPKNS_13LazyCallGraph3SCCEEEbv.exit.i: ; preds = %_ZNK4llvm3Any3isaIPKNS_8FunctionEEEbv.exit.i
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef ptr %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #24, !inline_history !240
  %i.bz = icmp eq ptr %i.by, @_ZN4llvm3Any6TypeIdIPKNS_13LazyCallGraph3SCCEE2IdE
  %i.ca = load ptr, ptr %3, align 8, !tbaa !74    ; 3 uses
  br i1 %i.bz, label %bb.l, label %.thread43

bb.l:                                             ; preds = %_ZNK4llvm3Any3isaIPKNS_13LazyCallGraph3SCCEEEbv.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !247 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !29 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !64 ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %.idx.i = shl nuw nsw i64 %i.ch, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.cg, 0
  br i1 %.not8.i, label %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.l, %.lr.ph.i28
  %.sroa.05.09.i = phi ptr [ %i.cm, %.lr.ph.i28 ], [ %i.ce, %bb.l ] ; 2 uses
  %i.cj = load ptr, ptr %.sroa.05.09.i, align 8, !tbaa !80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !89
  call void @_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.not.i29 = icmp eq ptr %i.cm, %i.ci
  br i1 %.not.i29, label %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit, label %.lr.ph.i28

.thread43:                                        ; preds = %_ZNK4llvm3Any3isaIPKNS_13LazyCallGraph3SCCEEEbv.exit.i
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #24, !inline_history !241 ; 0 uses
  %i.cr = load ptr, ptr %3, align 8, !tbaa !74
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !249
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !92
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !94
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  br label %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit.sink.split

_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit.sink.split: ; preds = %.thread43, %bb.k
  %.sink.in = phi ptr [ %i.bu, %bb.k ], [ %i.cx, %.thread43 ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !250
  call void @_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.sink)
  br label %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit

_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit: ; preds = %.lr.ph.i28, %.lr.ph.i, %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit.sink.split, %bb.l, %bb.j
  %i.cy = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ac
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit
  %i.da = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.05.08 = load ptr, ptr %i.a, align 8, !tbaa !78 ; 2 uses
  %.not9 = icmp eq ptr %.sroa.05.08, %i.b
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.010 = phi ptr [ %.sroa.05.0, %.lr.ph ], [ %.sroa.05.08, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.05.010, i64 -64
  tail call void @_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 8
  %.sroa.05.0 = load ptr, ptr %i.d, align 8, !tbaa !78 ; 2 uses
  %.not = icmp eq ptr %.sroa.05.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19PseudoProbeVerifier12runAfterPassEPKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.208", align 4 ; 6 uses
  %3 = alloca %"class.llvm::DenseMap.174", align 8 ; 12 uses
  %i.a = tail call noundef zeroext i1 @_ZN4llvm19PseudoProbeVerifier20shouldVerifyFunctionEPKNS_8FunctionE(ptr nonnull align 8 poison, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.08.016 = load ptr, ptr %i.b, align 8, !tbaa !78 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.08.016, %i.c
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4llvm19PseudoProbeVerifier19collectProbeFactorsEPKNS_10BasicBlockERNS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_fEEEE.exit, %bb.b
  call void @_ZN4llvm19PseudoProbeVerifier18verifyProbeFactorsEPKNS_8FunctionERKNS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_fEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !97   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN4llvm8DenseMapISt4pairImmEfNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_fEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.l = load ptr, ptr %3, align 8, !tbaa !98
  %i.m = zext i32 %i.j to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapISt4pairImmEfNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_fEEED2Ev.exit

_ZN4llvm8DenseMapISt4pairImmEfNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_fEEED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm19PseudoProbeVerifier19collectProbeFactorsEPKNS_10BasicBlockERNS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_fEEEE.exit
  %.sroa.08.018 = phi ptr [ %.sroa.08.016, %.lr.ph ], [ %.sroa.08.0, %_ZN4llvm19PseudoProbeVerifier19collectProbeFactorsEPKNS_10BasicBlockERNS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_fEEEE.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 24 ; 2 uses
  %.sroa.012.015.i = load ptr, ptr %i.s, align 8, !tbaa !101 ; 2 uses
  %.not16.i = icmp eq ptr %.sroa.012.015.i, %i.t
  br i1 %.not16.i, label %_ZN4llvm19PseudoProbeVerifier19collectProbeFactorsEPKNS_10BasicBlockERNS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_fEEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.j
  %.sroa.012.017.i = phi ptr [ %.sroa.012.0.i, %bb.j ], [ %.sroa.012.015.i, %bb.d ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.012.017.i, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4llvm12extractProbeERKNS_11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.208") align 4 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.u) #24
  %i.v = load i8, ptr %i.d, align 4, !tbaa !103, !range !25, !noundef !26
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr i8, ptr %.sroa.012.017.i, i64 24
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !106
  %i.y = call fastcc noundef i64 @_ZL20computeCallStackHashRKN4llvm11InstructionE(ptr %.val.i) ; 5 uses
  %i.z = load float, ptr %i.e, align 4, !tbaa !109
  %i.aa = load i32, ptr %2, align 4, !tbaa !110
  %i.ab = zext i32 %i.aa to i64                   ; 5 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !98, !noalias !259 ; 3 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !111, !noalias !259 ; 3 uses
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !97, !noalias !259 ; 4 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  %i.ah = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ai = lshr i64 %i.ah, 31
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = mul i64 %i.y, -4658895280553007687      ; 2 uses
  %i.al = lshr i64 %i.ak, 31
  %i.am = xor i64 %i.al, %i.ak
  %i.an = shl i64 %i.aj, 32
  %i.ao = and i64 %i.am, 4294967295
  %i.ap = or disjoint i64 %i.an, %i.ao
  %i.aq = mul i64 %i.ap, -4658895280553007687     ; 2 uses
  %i.ar = lshr i64 %i.aq, 31
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.ag, %i.at                    ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.av ; 2 uses
  %i.ax = lshr i64 %i.av, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !110
  %i.ba = and i32 %i.au, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph.i.i, label %.loopexit.i, !prof !112

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %i.bd = phi ptr [ %i.bn, %bb.g ], [ %i.aw, %bb.f ] ; 4 uses
  %.024.i.i = phi i32 [ %i.bl, %bb.g ], [ %i.au, %bb.f ]
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72
  %i.bf = icmp eq i64 %i.be, %i.ab
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = icmp eq i64 %i.y, %i.bh
  %i.bj = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %i.bj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEES3_fS5_S8_E24lookupOrInsertIntoBucketIS3_JEEES2_IPS8_bEOT_DpOT0_.exit.loopexit, label %bb.g, !prof !66

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bk = add nuw i32 %.024.i.i, 1
  %i.bl = and i32 %i.bk, %i.ag                    ; 3 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.bm ; 2 uses
  %i.bo = lshr i64 %i.bm, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !110
  %i.br = and i32 %i.bl, 31
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  br i1 %i.bt, label %.lr.ph.i.i, label %.loopexit.i, !prof !113, !llvm.loop !2

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.e
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.aw, %bb.f ], [ null, %bb.e ], [ %i.bn, %bb.g ]
  %i.bu = load i32, ptr %i.h, align 8, !tbaa !114
  %i.bv = shl i32 %i.bu, 2
  %i.bw = add i32 %i.bv, 4
  %i.bx = mul i32 %i.ae, 3
  %.not.i.i = icmp ult i32 %i.bw, %i.bx
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEES3_fS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i, label %bb.h, !prof !66

bb.h:                                             ; preds = %.loopexit.i
  %i.by = shl i32 %i.ae, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEES3_fS5_S8_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.by)
  %i.bz = load ptr, ptr %3, align 8, !tbaa !98, !noalias !260 ; 5 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !111, !noalias !260 ; 5 uses
  %i.cb = load i32, ptr %i.g, align 4, !tbaa !97, !noalias !260 ; 2 uses
  %i.cc = icmp ne i32 %i.cb, 0
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add i32 %i.cb, -1                       ; 2 uses
end_hunk_1
