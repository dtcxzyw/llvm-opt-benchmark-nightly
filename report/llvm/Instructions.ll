Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Instructions?download=true
inline.NumInlined: 4574
inline.NumDeleted: 2152
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0
%"struct.llvm::fltSemantics" = type <{ i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8] }>
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type { %"union.std::_Optional_payload_base<llvm::TypeSize>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::TypeSize>::_Storage" = type { %"class.llvm::TypeSize" }
%"class.llvm::TypeSize" = type { %"class.llvm::details::FixedOrScalableQuantity.base", [7 x i8] }
%"class.llvm::details::FixedOrScalableQuantity.base" = type <{ i64, i8 }>
%"class.llvm::APInt" = type <{ %union.anon.34, i32, [4 x i8] }>
%union.anon.34 = type { i64 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::ArrayRef.420" = type { ptr, i64 }
%"class.llvm::SmallVector.422" = type { %"class.llvm::SmallVectorImpl.423", %"struct.llvm::SmallVectorStorage.426" }
%"class.llvm::SmallVectorImpl.423" = type { %"class.llvm::SmallVectorTemplateBase.424" }
%"class.llvm::SmallVectorTemplateBase.424" = type { %"class.llvm::SmallVectorTemplateCommon.425" }
%"class.llvm::SmallVectorTemplateCommon.425" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.426" = type { [128 x i8] }
%"class.llvm::SmallVector.40" = type { %"class.llvm::SmallVectorImpl.41", %"struct.llvm::SmallVectorStorage.44" }
%"class.llvm::SmallVectorImpl.41" = type { %"class.llvm::SmallVectorTemplateBase.42" }
%"class.llvm::SmallVectorTemplateBase.42" = type { %"class.llvm::SmallVectorTemplateCommon.43" }
%"class.llvm::SmallVectorTemplateCommon.43" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.44" = type { [112 x i8] }
%"struct.llvm::OperandBundleUse" = type { %"class.llvm::ArrayRef.45", ptr }
%"class.llvm::ArrayRef.45" = type { ptr, i64 }
%"class.llvm::AttributeList" = type { ptr }
%"class.std::optional.66" = type { %"struct.std::_Optional_base.67" }
%"struct.std::_Optional_base.67" = type { %"struct.std::_Optional_payload.69" }
%"struct.std::_Optional_payload.69" = type { %"struct.std::_Optional_payload.base.73", [7 x i8] }
%"struct.std::_Optional_payload.base.73" = type { %"struct.std::_Optional_payload_base.base.72" }
%"struct.std::_Optional_payload_base.base.72" = type { %"union.std::_Optional_payload_base<llvm::ConstantRange>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::ConstantRange>::_Storage" = type { %"class.llvm::ConstantRange" }
%"class.llvm::ConstantRange" = type { %"class.llvm::APInt", %"class.llvm::APInt" }
%"class.llvm::Attribute" = type { ptr }
%"class.llvm::SmallVector.417" = type { %"class.llvm::SmallVectorImpl.41", %"struct.llvm::SmallVectorStorage.418" }
%"struct.llvm::SmallVectorStorage.418" = type { [56 x i8] }
%"class.llvm::AttributeSet" = type { ptr }
%"class.llvm::InsertPosition" = type { %"class.llvm::ilist_iterator_w_bits" }
%"class.llvm::ilist_iterator_w_bits" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.llvm::SmallVector.436" = type { %"class.llvm::SmallVectorImpl.431", %"struct.llvm::SmallVectorStorage.437" }
%"class.llvm::SmallVectorImpl.431" = type { %"class.llvm::SmallVectorTemplateBase.432" }
%"class.llvm::SmallVectorTemplateBase.432" = type { %"class.llvm::SmallVectorTemplateCommon.433" }
%"class.llvm::SmallVectorTemplateCommon.433" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.437" = type { [64 x i8] }
%"class.llvm::SmallVector.447" = type { %"class.llvm::SmallVectorImpl.448", %"struct.llvm::SmallVectorStorage.451" }
%"class.llvm::SmallVectorImpl.448" = type { %"class.llvm::SmallVectorTemplateBase.449" }
%"class.llvm::SmallVectorTemplateBase.449" = type { %"class.llvm::SmallVectorTemplateCommon.450" }
%"class.llvm::SmallVectorTemplateCommon.450" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.451" = type { [128 x i8] }
%"class.llvm::SmallVector.485" = type { %"class.llvm::SmallVectorImpl.457", %"struct.llvm::SmallVectorStorage.486" }
%"class.llvm::SmallVectorImpl.457" = type { %"class.llvm::SmallVectorTemplateBase.458" }
%"class.llvm::SmallVectorTemplateBase.458" = type { %"class.llvm::SmallVectorTemplateCommon.459" }
%"class.llvm::SmallVectorTemplateCommon.459" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.486" = type { [32 x i8] }
%"struct.llvm::PatternMatch::cstval_pred_ty" = type { ptr }
%"class.llvm::SmallVector.491" = type { %"class.llvm::SmallVectorImpl.457", %"struct.llvm::SmallVectorStorage.492" }
%"struct.llvm::SmallVectorStorage.492" = type { [48 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZN4llvm18checkedMulUnsignedImEENSt9enable_ifIXsr3stdE13is_unsigned_vIT_EESt8optionalIS2_EE4typeES2_S2_ = comdat any

$_ZN4llvm15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEE12emplace_backIJRS4_EEES7_DpOT_ = comdat any

$_ZNK4llvm8CallBase25getFnAttrOnCalledFunctionINS_9Attribute8AttrKindEEES2_T_ = comdat any

$_ZNK4llvm8CallBase25getFnAttrOnCalledFunctionINS_9StringRefEEENS_9AttributeET_ = comdat any

$_ZNK4llvm8CallBase28getParamAttrOnCalledFunctionINS_9Attribute8AttrKindEEES2_jT_ = comdat any

$_ZNK4llvm8CallBase28getParamAttrOnCalledFunctionINS_9StringRefEEENS_9AttributeEjT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE9push_backERKS4_ = comdat any

$_ZNK4llvm8CallBase26hasOperandBundlesOtherThanENS_8ArrayRefIjEE = comdat any

$_ZNK4llvm8CallBase8arg_sizeEv = comdat any

$_ZNK4llvm11ConstantInt3ugeEm = comdat any

$_ZN4llvm8ICmpInst12swapOperandsEv = comdat any

$_ZN4llvm8FCmpInst12swapOperandsEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_ = comdat any

$_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_27is_non_zero_not_denormal_fpENS_10ConstantFPELb1EE11matchVectorEPKNS_5ValueE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZN4llvm10SelectInst4initEPNS_5ValueES2_S2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_ = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE18growAndEmplaceBackIJRNS_16OperandBundleUseEEEERS4_DpOT_ = comdat any

$_ZN4llvm17OperandBundleDefTIPNS_5ValueEEC2ERKNS_16OperandBundleUseE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE19moveElementsForGrowEPS4_ = comdat any

$_ZNSt6vectorIPN4llvm5ValueESaIS2_EE15_M_range_insertIPKNS0_3UseEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SD_St20forward_iterator_tag = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE18growAndEmplaceBackIJRS4_EEES7_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE18growAndEmplaceBackIJNS_16OperandBundleUseEEEERS4_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE4growEm = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi = comdat any

$_ZN4llvm15SmallVectorImplIjEaSEOS1_ = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL16DisableI2pP2iOpt = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"disable-i2p-p2i-opt\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Disables inttoptr/ptrtoint roundtrip optimization\00", align 1
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [42 x i8] c"both values to select must have same type\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"select values cannot have token type\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"vector select condition element type must be i1\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"selected values for vector select must be vectors\00", align 1
@.str.6 = private unnamed_addr constant [91 x i8] c"vector select requires selected vectors to have the same vector length as select condition\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"select condition must be i1 or <n x i1>\00", align 1
@constinit = private unnamed_addr constant [6 x i32] [i32 8, i32 9, i32 15, i32 16, i32 17, i32 18], align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"xchg\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"umin\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"fmax\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"fmin\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"fmaximum\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"fminimum\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"fmaximumnum\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"fminimumnum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"uinc_wrap\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"udec_wrap\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"usub_cond\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"usub_sat\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"<invalid operation>\00", align 1
@_ZZN4llvm8CastInst20isEliminableCastPairENS_11Instruction7CastOpsES2_PNS_4TypeES4_S4_PKNS_10DataLayoutEE11CastResults = internal unnamed_addr constant [14 x [14 x i8]] [[14 x i8] c"\01\00\00cc\00\00cccc\00\03\00", [14 x i8] c"\08\01\09cc\02\11cccc\02\03\00", [14 x i8] c"\08\00\01cc\00\02cccc\00\03\00", [14 x i8] c"\00\00\00cc\00\00cccc\00\03\00", [14 x i8] c"\00\00\00cc\00\00cccc\00\03\00", [14 x i8] c"ccc\00\00cc\00\00ccc\04\00", [14 x i8] c"ccc\00\00cc\00\00ccc\04\00", [14 x i8] c"ccc\00\00cc\00\00ccc\04\00", [14 x i8] c"ccc\02\02cc\08\02ccc\04\00", [14 x i8] c"\01\00\00cc\00\00cccc\07\03\00", [14 x i8] c"\00\00\00cc\00\00cccc\00\03\00", [14 x i8] c"ccccccccc\0B\0Bc\0F\00", [14 x i8] c"\05\05\05\00\00\05\05\00\00\10\10\05\01\0E", [14 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\0D\0C"], align 16
@.str.32 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"oeq\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"oge\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"ole\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"uno\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ueq\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"ugt\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"uge\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"ult\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"ule\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"une\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"sge\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@.str.56 = private unnamed_addr constant [15 x i8] c"trap-func-name\00", align 1
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.58 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Instructions.cpp, ptr null }]
@switch.table._ZN4llvm13AtomicRMWInst16getOperationNameENS0_5BinOpE = private unnamed_addr constant [24 x i8] c"\04\03\03\03\04\02\03\03\03\04\04\04\04\04\04\08\08\0B\0B\09\09\09\08\13", align 8
@switch.table._ZN4llvm13AtomicRMWInst16getOperationNameENS0_5BinOpE.12 = private unnamed_addr constant [24 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 8
@switch.table._ZN4llvmlsERNS_11raw_ostreamENS_7CmpInst9PredicateE = private unnamed_addr constant [42 x i8] c"\05\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\02\02\03\03\03\03\03\03\03\03", align 8
@switch.table._ZN4llvmlsERNS_11raw_ostreamENS_7CmpInst9PredicateE.14 = private unnamed_addr constant [42 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.49, ptr @.str.50, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], align 8
@switch.table._ZN4llvm8ICmpInst20getUnsignedPredicateENS_7CmpInst9PredicateE = private unnamed_addr constant [10 x i8] c" !\22#$%\22#$%", align 4
@switch.table._ZN4llvm7CmpInst19getSwappedPredicateENS0_9PredicateE = private unnamed_addr constant [42 x i8] [i8 0, i8 1, i8 4, i8 5, i8 2, i8 3, i8 6, i8 7, i8 8, i8 9, i8 12, i8 13, i8 10, i8 11, i8 14, i8 15, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 32, i8 33, i8 36, i8 37, i8 34, i8 35, i8 40, i8 41, i8 38, i8 39], align 4
@switch.table._ZN4llvm7CmpInst18getStrictPredicateENS0_9PredicateE = private unnamed_addr constant [39 x i8] [i8 2, i8 poison, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 10, i8 poison, i8 12, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 34, i8 poison, i8 36, i8 poison, i8 38, i8 poison, i8 40], align 4
@switch.table._ZN4llvm7CmpInst21getNonStrictPredicateENS0_9PredicateE = private unnamed_addr constant [39 x i8] [i8 3, i8 poison, i8 5, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 11, i8 poison, i8 13, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 35, i8 poison, i8 37, i8 poison, i8 39, i8 poison, i8 41], align 4
@switch.table._ZN4llvm7CmpInst29getFlippedStrictnessPredicateENS0_9PredicateE = private unnamed_addr constant [40 x i8] [i8 3, i8 2, i8 5, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 11, i8 10, i8 13, i8 12, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 35, i8 34, i8 37, i8 36, i8 39, i8 38, i8 41, i8 40], align 4
@switch.table._ZNK4llvm12CmpPredicate27getPreferredSignedPredicateEv = private unnamed_addr constant [10 x i8] c" !&'()&'()", align 4
@switch.table._ZN4llvm12CmpPredicate10getInverseES0_ = private unnamed_addr constant [42 x i8] [i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 33, i8 32, i8 37, i8 36, i8 35, i8 34, i8 41, i8 40, i8 39, i8 38], align 8

@_ZN4llvm7PHINodeC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm7PHINodeC2ERKS0_
@_ZN4llvm14LandingPadInstC1EPNS_4TypeEjRKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i64), ptr @_ZN4llvm14LandingPadInstC2EPNS_4TypeEjRKNS_5TwineENS_14InsertPositionE
@_ZN4llvm14LandingPadInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm14LandingPadInstC2ERKS0_
@_ZN4llvm8CallInstC1EPNS_12FunctionTypeEPNS_5ValueERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN4llvm8CallInstC2EPNS_12FunctionTypeEPNS_5ValueERKNS_5TwineENS_4User9AllocInfoENS_14InsertPositionE
@_ZN4llvm8CallInstC1ERKS0_NS_4User9AllocInfoE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm8CallInstC2ERKS0_NS_4User9AllocInfoE
@_ZN4llvm10InvokeInstC1ERKS0_NS_4User9AllocInfoE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm10InvokeInstC2ERKS0_NS_4User9AllocInfoE
@_ZN4llvm10CallBrInstC1ERKS0_NS_4User9AllocInfoE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm10CallBrInstC2ERKS0_NS_4User9AllocInfoE
@_ZN4llvm10ReturnInstC1ERKS0_NS_4User9AllocInfoE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm10ReturnInstC2ERKS0_NS_4User9AllocInfoE
@_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueENS_4User9AllocInfoENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, i64), ptr @_ZN4llvm10ReturnInstC2ERNS_11LLVMContextEPNS_5ValueENS_4User9AllocInfoENS_14InsertPositionE
@_ZN4llvm10ResumeInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm10ResumeInstC2ERKS0_
@_ZN4llvm10ResumeInstC1EPNS_5ValueENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN4llvm10ResumeInstC2EPNS_5ValueENS_14InsertPositionE
@_ZN4llvm17CleanupReturnInstC1ERKS0_NS_4User9AllocInfoE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm17CleanupReturnInstC2ERKS0_NS_4User9AllocInfoE
@_ZN4llvm17CleanupReturnInstC1EPNS_5ValueEPNS_10BasicBlockENS_4User9AllocInfoENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, i64), ptr @_ZN4llvm17CleanupReturnInstC2EPNS_5ValueEPNS_10BasicBlockENS_4User9AllocInfoENS_14InsertPositionE
@_ZN4llvm15CatchReturnInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm15CatchReturnInstC2ERKS0_
@_ZN4llvm15CatchReturnInstC1EPNS_5ValueEPNS_10BasicBlockENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm15CatchReturnInstC2EPNS_5ValueEPNS_10BasicBlockENS_14InsertPositionE
@_ZN4llvm15CatchSwitchInstC1EPNS_5ValueEPNS_10BasicBlockEjRKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN4llvm15CatchSwitchInstC2EPNS_5ValueEPNS_10BasicBlockEjRKNS_5TwineENS_14InsertPositionE
@_ZN4llvm15CatchSwitchInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm15CatchSwitchInstC2ERKS0_
@_ZN4llvm14FuncletPadInstC1ERKS0_NS_4User9AllocInfoE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm14FuncletPadInstC2ERKS0_NS_4User9AllocInfoE
@_ZN4llvm14FuncletPadInstC1ENS_11Instruction13FuncletPadOpsEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, i32, ptr, ptr, i64, i32, ptr, ptr), ptr @_ZN4llvm14FuncletPadInstC2ENS_11Instruction13FuncletPadOpsEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm15UnreachableInstC1ERNS_11LLVMContextENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN4llvm15UnreachableInstC2ERNS_11LLVMContextENS_14InsertPositionE
@_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN4llvm12UncondBrInstC2EPNS_10BasicBlockENS_14InsertPositionE
@_ZN4llvm12UncondBrInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm12UncondBrInstC2ERKS0_
@_ZN4llvm10CondBrInstC1EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm10CondBrInstC2EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE
@_ZN4llvm10CondBrInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm10CondBrInstC2ERKS0_
@_ZN4llvm10AllocaInstC1EPNS_4TypeEjRKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i64), ptr @_ZN4llvm10AllocaInstC2EPNS_4TypeEjRKNS_5TwineENS_14InsertPositionE
@_ZN4llvm10AllocaInstC1EPNS_4TypeEjPNS_5ValueERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, ptr), ptr @_ZN4llvm10AllocaInstC2EPNS_4TypeEjPNS_5ValueERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm10AllocaInstC1EPNS_4TypeEjPNS_5ValueENS_5AlignERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, i32, ptr, i8, ptr, ptr), ptr @_ZN4llvm10AllocaInstC2EPNS_4TypeEjPNS_5ValueENS_5AlignERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm8LoadInstC2EPNS_4TypeEPNS_5ValueERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i1, ptr), ptr @_ZN4llvm8LoadInstC2EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_14InsertPositionE
@_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i1, i8, ptr), ptr @_ZN4llvm8LoadInstC2EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE
@_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineERKNS_23LoadStoreInstPropertiesENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN4llvm8LoadInstC2EPNS_4TypeEPNS_5ValueERKNS_5TwineERKNS_23LoadStoreInstPropertiesENS_14InsertPositionE
@_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14AtomicOrderingEhNS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i1, i8, i32, i8, ptr), ptr @_ZN4llvm8LoadInstC2EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14AtomicOrderingEhNS_14InsertPositionE
@_ZN4llvm9StoreInstC1EPNS_5ValueES2_NS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm9StoreInstC2EPNS_5ValueES2_NS_14InsertPositionE
@_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i1, ptr, i64), ptr @_ZN4llvm9StoreInstC2EPNS_5ValueES2_bNS_14InsertPositionE
@_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i1, i8, ptr), ptr @_ZN4llvm9StoreInstC2EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE
@_ZN4llvm9StoreInstC1EPNS_5ValueES2_RKNS_23LoadStoreInstPropertiesENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm9StoreInstC2EPNS_5ValueES2_RKNS_23LoadStoreInstPropertiesENS_14InsertPositionE
@_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14AtomicOrderingEhNS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i1, i8, i32, i8, ptr), ptr @_ZN4llvm9StoreInstC2EPNS_5ValueES2_bNS_5AlignENS_14AtomicOrderingEhNS_14InsertPositionE
@_ZN4llvm17AtomicCmpXchgInstC1EPNS_5ValueES2_S2_NS_5AlignENS_14AtomicOrderingES4_hNS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i8, i32, i32, i8, ptr), ptr @_ZN4llvm17AtomicCmpXchgInstC2EPNS_5ValueES2_S2_NS_5AlignENS_14AtomicOrderingES4_hNS_14InsertPositionE
@_ZN4llvm13AtomicRMWInstC1ENS0_5BinOpEPNS_5ValueES3_NS_5AlignENS_14AtomicOrderingEhbNS_14InsertPositionE = unnamed_addr alias void (ptr, i32, ptr, ptr, i8, i32, i8, i1, ptr), ptr @_ZN4llvm13AtomicRMWInstC2ENS0_5BinOpEPNS_5ValueES3_NS_5AlignENS_14AtomicOrderingEhbNS_14InsertPositionE
@_ZN4llvm9FenceInstC1ERNS_11LLVMContextENS_14AtomicOrderingEhNS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, i32, i8, ptr, i64), ptr @_ZN4llvm9FenceInstC2ERNS_11LLVMContextENS_14AtomicOrderingEhNS_14InsertPositionE
@_ZN4llvm17GetElementPtrInstC1ERKS0_NS_4User9AllocInfoE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4llvm17GetElementPtrInstC2ERKS0_NS_4User9AllocInfoE
@_ZN4llvm18ExtractElementInstC1EPNS_5ValueES2_RKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm18ExtractElementInstC2EPNS_5ValueES2_RKNS_5TwineENS_14InsertPositionE
@_ZN4llvm17InsertElementInstC1EPNS_5ValueES2_S2_RKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN4llvm17InsertElementInstC2EPNS_5ValueES2_S2_RKNS_5TwineENS_14InsertPositionE
@_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_RKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm17ShuffleVectorInstC2EPNS_5ValueES2_RKNS_5TwineENS_14InsertPositionE
@_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i64, ptr, ptr), ptr @_ZN4llvm17ShuffleVectorInstC2EPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_S2_RKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN4llvm17ShuffleVectorInstC2EPNS_5ValueES2_S2_RKNS_5TwineENS_14InsertPositionE
@_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, ptr, ptr), ptr @_ZN4llvm17ShuffleVectorInstC2EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm15InsertValueInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm15InsertValueInstC2ERKS0_
@_ZN4llvm16ExtractValueInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm16ExtractValueInstC2ERKS0_
@_ZN4llvm13UnaryOperatorC1ENS_11Instruction8UnaryOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, i32, ptr, ptr, ptr, ptr), ptr @_ZN4llvm13UnaryOperatorC2ENS_11Instruction8UnaryOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm14BinaryOperatorC1ENS_11Instruction9BinaryOpsEPNS_5ValueES4_PNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, i32, ptr, ptr, ptr, ptr, ptr), ptr @_ZN4llvm14BinaryOperatorC2ENS_11Instruction9BinaryOpsEPNS_5ValueES4_PNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm9TruncInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm9TruncInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm8ZExtInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm8SExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm8SExtInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm11FPTruncInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm11FPTruncInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm9FPExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm9FPExtInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm10UIToFPInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm10UIToFPInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm10SIToFPInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm10SIToFPInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm10FPToUIInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm10FPToUIInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm10FPToSIInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm10FPToSIInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm12PtrToIntInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm12PtrToIntInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm13PtrToAddrInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm13PtrToAddrInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm12IntToPtrInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm12IntToPtrInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm11BitCastInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm11BitCastInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm17AddrSpaceCastInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm17AddrSpaceCastInstC2EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE
@_ZN4llvm7CmpInstC1EPNS_4TypeENS_11Instruction8OtherOpsENS0_9PredicateEPNS_5ValueES7_RKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, i32, i32, ptr, ptr, ptr, ptr), ptr @_ZN4llvm7CmpInstC2EPNS_4TypeENS_11Instruction8OtherOpsENS0_9PredicateEPNS_5ValueES7_RKNS_5TwineENS_14InsertPositionE
@_ZN4llvm10SwitchInstC1EPNS_5ValueEPNS_10BasicBlockEjNS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, i64), ptr @_ZN4llvm10SwitchInstC2EPNS_5ValueEPNS_10BasicBlockEjNS_14InsertPositionE
@_ZN4llvm10SwitchInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm10SwitchInstC2ERKS0_
@_ZN4llvm14IndirectBrInstC1EPNS_5ValueEjNS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, i32, ptr, i64), ptr @_ZN4llvm14IndirectBrInstC2EPNS_5ValueEjNS_14InsertPositionE
@_ZN4llvm14IndirectBrInstC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm14IndirectBrInstC2ERKS0_
@_ZN4llvm10FreezeInstC1EPNS_5ValueERKNS_5TwineENS_14InsertPositionE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64), ptr @_ZN4llvm10FreezeInstC2EPNS_5ValueERKNS_5TwineENS_14InsertPositionE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #30, !inline_history !204 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !208, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !209
  tail call void @free(ptr noundef %i.i) #30
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #30
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm10AllocaInst17getAllocationSizeERKNS_10DataLayoutE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(912) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %2, ptr noundef %i.b) #30 ; 2 uses
  %.fca.0.extract2 = extractvalue { i64, i8 } %i.c, 0 ; 4 uses
  %.fca.1.extract3 = extractvalue { i64, i8 } %i.c, 1 ; 3 uses
  %i.d = icmp eq i64 %.fca.0.extract2, 0
  br i1 %i.d, label %_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 5 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !47
  %.not.i = icmp eq i8 %i.g, 5
  br i1 %.not.i, label %bb.c, label %_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.k = icmp ult i32 %i.j, 65
  br i1 %i.k, label %.split, label %_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit

.split:                                           ; preds = %bb.c
  %i.l = load i64, ptr %i.h, align 8, !tbaa !50
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit.thread.sink.split, label %bb.d

_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit:  ; preds = %bb.c
  %i.n = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #31
  %i.o = add i32 %i.j, -1
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit, %.split
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %i.t = icmp ult i32 %i.s, 65                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.neg.i.i.i = add nsw i32 %i.s, -64
  %i.u = load i64, ptr %i.q, align 8, !tbaa !50
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 false)
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = add nsw i32 %.neg.i.i.i, %i.w
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.y = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #31
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.f, %bb.e
  %.0.i.i.i8 = phi i32 [ %i.x, %bb.e ], [ %i.y, %bb.f ]
  %i.z = sub i32 %i.s, %.0.i.i.i8
  %i.aa = icmp ult i32 %i.z, 65
  br i1 %i.aa, label %bb.g, label %_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit.thread

bb.g:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %i.ab = load ptr, ptr %i.q, align 8
  %spec.select.i.i9 = select i1 %i.t, ptr %i.q, ptr %i.ab
  %.0.i.i = load i64, ptr %spec.select.i.i9, align 8, !tbaa !50
  %i.ac = tail call { i64, i8 } @_ZN4llvm18checkedMulUnsignedImEENSt9enable_ifIXsr3stdE13is_unsigned_vIT_EESt8optionalIS2_EE4typeES2_S2_(i64 noundef %.fca.0.extract2, i64 noundef %.0.i.i) ; 2 uses
  %i.ad = extractvalue { i64, i8 } %i.ac, 1
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %.fca.0.extract = extractvalue { i64, i8 } %i.ac, 0
  br label %_ZNK4llvm10AllocaInst17isArrayAllocationEv.exit.thread.sink.split

end_hunk_0
begin_hunk_1_@_ZN4llvm8FCmpInst7compareERKNS_7APFloatES3_NS_7CmpInst9PredicateE:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK4llvm6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #30
  br label %_ZNK4llvm7APFloat7compareERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK4llvm6detail13DoubleAPFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #30
  br label %_ZNK4llvm7APFloat7compareERKS0_.exit

_ZNK4llvm7APFloat7compareERKS0_.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 15 uses
  switch i32 %2, label %bb.d [
    i32 0, label %bb.t
    i32 15, label %bb.e
    i32 8, label %bb.f
    i32 7, label %bb.g
    i32 9, label %bb.h
    i32 1, label %bb.i
    i32 14, label %bb.j
    i32 6, label %bb.k
    i32 12, label %bb.l
    i32 4, label %bb.m
    i32 10, label %bb.n
    i32 2, label %bb.o
    i32 13, label %bb.p
    i32 5, label %bb.q
    i32 11, label %bb.r
    i32 3, label %bb.s
  ]

bb.d:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  unreachable

bb.e:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  br label %bb.t

bb.f:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.d = icmp eq i32 %.0.i, 3
  br label %bb.t

bb.g:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.e = icmp ne i32 %.0.i, 3
  br label %bb.t

bb.h:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.f = and i32 %.0.i, -3
  %i.g = icmp eq i32 %i.f, 1
  br label %bb.t

bb.i:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.h = icmp eq i32 %.0.i, 1
  br label %bb.t

bb.j:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.i = icmp ne i32 %.0.i, 1
  br label %bb.t

bb.k:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.j = and i32 %.0.i, -3
  %i.k = icmp eq i32 %i.j, 0
  br label %bb.t

bb.l:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.l = icmp eq i32 %.0.i, 3
  %i.m = icmp eq i32 %.0.i, 0
  %i.n = or i1 %i.l, %i.m
  br label %bb.t

bb.m:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.o = icmp eq i32 %.0.i, 0
  br label %bb.t

bb.n:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.p = and i32 %.0.i, -2
  %i.q = icmp eq i32 %i.p, 2
  br label %bb.t

bb.o:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.r = icmp eq i32 %.0.i, 2
  br label %bb.t

bb.p:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.s = icmp ne i32 %.0.i, 2
  br label %bb.t

bb.q:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.t = icmp ult i32 %.0.i, 2
  br label %bb.t

bb.r:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.u = icmp ne i32 %.0.i, 0
  br label %bb.t

bb.s:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit
  %i.v = add i32 %.0.i, -1
  %i.w = icmp ult i32 %i.v, 2
  br label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm7APFloat7compareERKS0_.exit, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0 = phi i1 [ %i.w, %bb.s ], [ true, %bb.e ], [ %i.d, %bb.f ], [ %i.e, %bb.g ], [ %i.g, %bb.h ], [ %i.h, %bb.i ], [ %i.i, %bb.j ], [ %i.k, %bb.k ], [ %i.n, %bb.l ], [ %i.o, %bb.m ], [ %i.q, %bb.n ], [ %i.r, %bb.o ], [ %i.s, %bb.p ], [ %i.t, %bb.q ], [ %i.u, %bb.r ], [ false, %_ZNK4llvm7APFloat7compareERKS0_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i16 @_ZN4llvm8ICmpInst7compareERKNS_9KnownBitsES3_NS_7CmpInst9PredicateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  switch i32 %2, label %bb.l [
    i32 32, label %bb.b
    i32 33, label %bb.c
    i32 35, label %bb.d
    i32 34, label %bb.e
    i32 37, label %bb.f
    i32 36, label %bb.g
    i32 39, label %bb.h
    i32 38, label %bb.i
    i32 41, label %bb.j
    i32 40, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i16 @_ZN4llvm9KnownBits2eqERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i16 @_ZN4llvm9KnownBits2neERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.c = tail call i16 @_ZN4llvm9KnownBits3ugeERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.d = tail call i16 @_ZN4llvm9KnownBits3ugtERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.e = tail call i16 @_ZN4llvm9KnownBits3uleERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.f = tail call i16 @_ZN4llvm9KnownBits3ultERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.g = tail call i16 @_ZN4llvm9KnownBits3sgeERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.h = tail call i16 @_ZN4llvm9KnownBits3sgtERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.i = tail call i16 @_ZN4llvm9KnownBits3sleERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.j = tail call i16 @_ZN4llvm9KnownBits3sltERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i16 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ %i.f, %bb.g ], [ %i.g, %bb.h ], [ %i.h, %bb.i ], [ %i.i, %bb.j ], [ %i.j, %bb.k ]
  ret i16 %.sroa.0.0
}

declare i16 @_ZN4llvm9KnownBits2eqERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i16 @_ZN4llvm9KnownBits2neERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i16 @_ZN4llvm9KnownBits3ugeERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i16 @_ZN4llvm9KnownBits3ugtERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i16 @_ZN4llvm9KnownBits3uleERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i16 @_ZN4llvm9KnownBits3ultERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i16 @_ZN4llvm9KnownBits3sgeERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i16 @_ZN4llvm9KnownBits3sgtERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i16 @_ZN4llvm9KnownBits3sleERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i16 @_ZN4llvm9KnownBits3sltERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local noundef range(i32 1, 42) i32 @_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE(i32 noundef %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = add i32 %0, -32
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 16
  tail call void @llvm.assume(i1 %i.c)
  br label %_ZN4llvm8ICmpInst20getUnsignedPredicateENS_7CmpInst9PredicateE.exit

_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit: ; preds = %bb.a
  %i.d = and i32 %0, 46
  %i.e = icmp eq i32 %i.d, 32
  br i1 %i.e, label %_ZN4llvm8ICmpInst20getUnsignedPredicateENS_7CmpInst9PredicateE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit
  %i.f = add nsw i32 %0, -38
  %i.g = icmp ult i32 %i.f, 4
  br i1 %i.g, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.c
  %switch.offset = add nsw i32 %0, -4
  br label %_ZN4llvm8ICmpInst20getUnsignedPredicateENS_7CmpInst9PredicateE.exit

.thread:                                          ; preds = %bb.c
  %1 = icmp slt i32 %0, 38
  tail call void @llvm.assume(i1 %1)
  %switch.offset14 = add nuw nsw i32 %0, 4
  br label %_ZN4llvm8ICmpInst20getUnsignedPredicateENS_7CmpInst9PredicateE.exit

_ZN4llvm8ICmpInst20getUnsignedPredicateENS_7CmpInst9PredicateE.exit: ; preds = %.thread, %switch.lookup, %bb.b, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit
  %.0 = phi i32 [ %switch.offset, %switch.lookup ], [ %switch.offset14, %.thread ], [ %0, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit ], [ %0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm7CmpInst9isOrderedENS0_9PredicateE(i32 noundef %0) local_unnamed_addr #12 align 2 {
bb.a:
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 7
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm7CmpInst11isUnorderedENS0_9PredicateE(i32 noundef %0) local_unnamed_addr #12 align 2 {
bb.a:
  %.off = add i32 %0, -8
  %switch = icmp ult i32 %.off, 7
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm7CmpInst15isTrueWhenEqualENS0_9PredicateE(i32 noundef %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 42
  %switch.cast = zext nneg i32 %0 to i42
  %switch.downshift = lshr i42 -1473173739008, %switch.cast
  %switch.masked = trunc i42 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm7CmpInst16isFalseWhenEqualENS0_9PredicateE(i32 noundef %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 41
  %switch.cast = zext nneg i32 %0 to i41
  %switch.downshift = lshr i41 -730144440235, %switch.cast
  %switch.masked = trunc i41 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i16 0, 258) i16 @_ZN4llvm8ICmpInst22isImpliedByMatchingCmpENS_12CmpPredicateES1_(i64 %0, i64 %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZL26isImpliedTrueByMatchingCmpN4llvm12CmpPredicateES0_(i64 %0, i64 %1)
  br i1 %i.a, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.b = and i64 %1, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm12CmpPredicate10getInverseES0_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %.sroa.22.0.insert.ext.i.i = and i64 %1, 1095216660480
  %.sroa.01.0.insert.insert.i.i = or disjoint i64 %.sroa.22.0.insert.ext.i.i, %switch.ext
  %i.c = tail call fastcc noundef zeroext i1 @_ZL26isImpliedTrueByMatchingCmpN4llvm12CmpPredicateES0_(i64 %0, i64 %.sroa.01.0.insert.insert.i.i)
  %i.d = select i1 %i.c, i16 256, i16 0
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0.insert.insert = phi i16 [ %i.d, %switch.lookup ], [ 257, %bb.a ]
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define internal fastcc noundef zeroext i1 @_ZL26isImpliedTrueByMatchingCmpN4llvm12CmpPredicateES0_(i64 %0, i64 %1) unnamed_addr #17 {
bb.a:
  %.sroa.029.0.extract.trunc = trunc i64 %0 to i32 ; 24 uses
  %.sroa.015.0.extract.trunc = trunc i64 %1 to i32 ; 23 uses
  %.sroa.16.0.extract.shift = lshr i64 %1, 32     ; 2 uses
  %i.a = icmp eq i32 %.sroa.029.0.extract.trunc, %.sroa.015.0.extract.trunc
  br i1 %i.a, label %_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %.sroa.029.0.extract.trunc, 16 ; 2 uses
  %i.c = icmp ult i32 %.sroa.015.0.extract.trunc, 16 ; 2 uses
  %or.cond.i = or i1 %i.b, %i.c
  %i.d = and i64 %0, 4294967296
  %.pre = icmp ne i64 %i.d, 0                     ; 2 uses
  br i1 %or.cond.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.pre, label %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i.i, label %bb.e

_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i.i: ; preds = %bb.c
  %i.e = add i32 %.sroa.015.0.extract.trunc, -32
  %i.f = icmp ult i32 %i.e, 10
  tail call void @llvm.assume(i1 %i.f)
  %i.g = and i32 %.sroa.015.0.extract.trunc, 46
  %i.h = icmp eq i32 %i.g, 32
  br i1 %i.h, label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i.i
  %i.i = add nsw i32 %.sroa.015.0.extract.trunc, -38
  %i.j = icmp ult i32 %i.i, 4
  br i1 %i.j, label %switch.lookup.i.i, label %.thread.i.i

switch.lookup.i.i:                                ; preds = %bb.d
  %switch.offset.i.i = add nsw i32 %.sroa.015.0.extract.trunc, -4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit.i

.thread.i.i:                                      ; preds = %bb.d
  %i.k = icmp samesign ult i32 %.sroa.015.0.extract.trunc, 38
  tail call void @llvm.assume(i1 %i.k)
  %switch.offset14.i.i = add nuw nsw i32 %.sroa.015.0.extract.trunc, 4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit.i

_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit.i: ; preds = %.thread.i.i, %switch.lookup.i.i, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i.i
  %.0.i.i = phi i32 [ %switch.offset.i.i, %switch.lookup.i.i ], [ %switch.offset14.i.i, %.thread.i.i ], [ %.sroa.015.0.extract.trunc, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i.i ]
  %i.l = icmp eq i32 %.0.i.i, %.sroa.029.0.extract.trunc
  br i1 %i.l, label %_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit.i, %bb.c
  %i.m = trunc i64 %.sroa.16.0.extract.shift to i1
  br i1 %i.m, label %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4.i, label %._crit_edge

_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4.i: ; preds = %bb.e
  %i.n = add i32 %.sroa.029.0.extract.trunc, -32
  %i.o = icmp ult i32 %i.n, 10
  tail call void @llvm.assume(i1 %i.o)
  %i.p = and i32 %.sroa.029.0.extract.trunc, 46
  %i.q = icmp eq i32 %i.p, 32
  br i1 %i.q, label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4.i
  %i.r = add nsw i32 %.sroa.029.0.extract.trunc, -38
  %i.s = icmp ult i32 %i.r, 4
  br i1 %i.s, label %switch.lookup.i5.i, label %.thread.i2.i

switch.lookup.i5.i:                               ; preds = %bb.f
  %switch.offset.i6.i = add nsw i32 %.sroa.029.0.extract.trunc, -4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7.i

.thread.i2.i:                                     ; preds = %bb.f
  %i.t = icmp samesign ult i32 %.sroa.029.0.extract.trunc, 38
  tail call void @llvm.assume(i1 %i.t)
  %switch.offset14.i3.i = add nuw nsw i32 %.sroa.029.0.extract.trunc, 4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7.i

_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7.i: ; preds = %.thread.i2.i, %switch.lookup.i5.i, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4.i
  %.0.i1.i = phi i32 [ %switch.offset.i6.i, %switch.lookup.i5.i ], [ %switch.offset14.i3.i, %.thread.i2.i ], [ %.sroa.029.0.extract.trunc, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4.i ]
  %i.u = icmp eq i32 %.0.i1.i, %.sroa.015.0.extract.trunc
  br i1 %i.u, label %_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.e, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7.i
  %i.v = add i32 %.sroa.015.0.extract.trunc, -38
  %i.w = icmp ult i32 %i.v, 4                     ; 2 uses
  %or.cond = and i1 %i.w, %.pre
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %._crit_edge
  %i.x = add i32 %.sroa.029.0.extract.trunc, -32
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.b)
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit

_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i: ; preds = %bb.g
  %i.z = and i32 %.sroa.029.0.extract.trunc, 46
  %i.aa = icmp eq i32 %i.z, 32
  br i1 %i.aa, label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i
  %i.ab = add nsw i32 %.sroa.029.0.extract.trunc, -38
  %i.ac = icmp ult i32 %i.ab, 4
  br i1 %i.ac, label %switch.lookup.i, label %.thread.i

switch.lookup.i:                                  ; preds = %bb.i
  %switch.offset.i = add nsw i32 %.sroa.029.0.extract.trunc, -4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit

.thread.i:                                        ; preds = %bb.i
  %i.ad = icmp samesign ult i32 %.sroa.029.0.extract.trunc, 38
  tail call void @llvm.assume(i1 %i.ad)
  %switch.offset14.i = add nuw nsw i32 %.sroa.029.0.extract.trunc, 4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ae = trunc i64 %.sroa.16.0.extract.shift to i1
  %i.af = add i32 %.sroa.029.0.extract.trunc, -38
  %i.ag = icmp ult i32 %i.af, 4
  %or.cond42 = and i1 %i.ag, %i.ae
  br i1 %or.cond42, label %bb.k, label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %.sroa.015.0.extract.trunc, -32
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i6, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.assume(i1 %i.c)
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit

_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i6: ; preds = %bb.k
  %i.aj = and i32 %.sroa.015.0.extract.trunc, 46
  %i.ak = icmp eq i32 %i.aj, 32
  br i1 %i.ak, label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i6
  br i1 %i.w, label %switch.lookup.i7, label %.thread.i4

switch.lookup.i7:                                 ; preds = %bb.m
  %switch.offset.i8 = add nsw i32 %.sroa.015.0.extract.trunc, -4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit

.thread.i4:                                       ; preds = %bb.m
  %i.al = icmp samesign ult i32 %.sroa.015.0.extract.trunc, 38
  tail call void @llvm.assume(i1 %i.al)
  %switch.offset14.i5 = add nuw nsw i32 %.sroa.015.0.extract.trunc, 4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit

_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit: ; preds = %.thread.i4, %switch.lookup.i7, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i6, %bb.l, %.thread.i, %switch.lookup.i, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i, %bb.h, %bb.j
  %.sroa.015.0 = phi i32 [ %.sroa.015.0.extract.trunc, %bb.j ], [ %.sroa.015.0.extract.trunc, %.thread.i ], [ %.sroa.015.0.extract.trunc, %bb.l ], [ %.sroa.015.0.extract.trunc, %bb.h ], [ %.sroa.015.0.extract.trunc, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i ], [ %.sroa.015.0.extract.trunc, %switch.lookup.i ], [ %switch.offset.i8, %switch.lookup.i7 ], [ %switch.offset14.i5, %.thread.i4 ], [ %.sroa.015.0.extract.trunc, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i6 ] ; 6 uses
  %.sroa.029.0 = phi i32 [ %.sroa.029.0.extract.trunc, %bb.j ], [ %switch.offset14.i, %.thread.i ], [ %.sroa.029.0.extract.trunc, %bb.l ], [ %.sroa.029.0.extract.trunc, %bb.h ], [ %.sroa.029.0.extract.trunc, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i ], [ %switch.offset.i, %switch.lookup.i ], [ %.sroa.029.0.extract.trunc, %switch.lookup.i7 ], [ %.sroa.029.0.extract.trunc, %.thread.i4 ], [ %.sroa.029.0.extract.trunc, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i6 ]
  switch i32 %.sroa.029.0, label %_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread [
    i32 32, label %bb.n
    i32 34, label %bb.o
    i32 36, label %bb.p
    i32 38, label %bb.q
    i32 40, label %bb.r
  ]

bb.n:                                             ; preds = %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit
  %i.am = add i32 %.sroa.015.0, -35
  %switch.and = and i32 %i.am, -7
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  br label %_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread

bb.o:                                             ; preds = %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit
  %i.an = and i32 %.sroa.015.0, -3
  %spec.select = icmp eq i32 %i.an, 33
  br label %_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread

bb.p:                                             ; preds = %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit
  %i.ao = and i32 %.sroa.015.0, -5
  %spec.select43 = icmp eq i32 %i.ao, 33
  br label %_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread

bb.q:                                             ; preds = %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit
  %i.ap = icmp eq i32 %.sroa.015.0, 33
  %i.aq = icmp eq i32 %.sroa.015.0, 39
  %spec.select44 = or i1 %i.ap, %i.aq
  br label %_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread

bb.r:                                             ; preds = %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit
  %i.ar = and i32 %.sroa.015.0, -9
  %spec.select45 = icmp eq i32 %i.ar, 33
  br label %_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread

_ZN4llvm12CmpPredicate11getMatchingES0_S0_.exit.thread: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.a, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7.i, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit.i, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit
  %.0 = phi i1 [ %spec.select43, %bb.p ], [ %spec.select44, %bb.q ], [ false, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit ], [ true, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit.i ], [ %switch.selectcmp, %bb.n ], [ %spec.select, %bb.o ], [ true, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7.i ], [ true, %bb.a ], [ %spec.select45, %bb.r ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local { i64, i8 } @_ZN4llvm12CmpPredicate11getMatchingES0_S0_(i64 %0, i64 %1) local_unnamed_addr #17 align 2 {
bb.a:
  %.sroa.015.0.extract.trunc = trunc i64 %0 to i32 ; 10 uses
  %.sroa.8.0.extract.shift21 = lshr i64 %0, 32    ; 2 uses
  %.sroa.09.0.extract.trunc = trunc i64 %1 to i32 ; 10 uses
  %.sroa.6.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %i.a = icmp eq i32 %.sroa.015.0.extract.trunc, %.sroa.09.0.extract.trunc
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.8.0.extract.trunc22 = trunc i64 %.sroa.8.0.extract.shift21 to i8
  %i.b = icmp eq i8 %.sroa.8.0.extract.trunc22, %.sroa.6.0.extract.trunc
  %i.c = and i64 %0, 1095216660480
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %.sroa.015.0.extract.trunc, 16
  %i.f = icmp ult i32 %.sroa.09.0.extract.trunc, 16
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = trunc i64 %.sroa.8.0.extract.shift21 to i1
  br i1 %i.g, label %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i, label %bb.f

_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i: ; preds = %bb.d
  %i.h = add i32 %.sroa.09.0.extract.trunc, -32
  %i.i = icmp ult i32 %i.h, 10
  tail call void @llvm.assume(i1 %i.i)
  %i.j = and i32 %.sroa.09.0.extract.trunc, 46
  %i.k = icmp eq i32 %i.j, 32
  br i1 %i.k, label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i
  %i.l = add nsw i32 %.sroa.09.0.extract.trunc, -38
  %i.m = icmp ult i32 %i.l, 4
  br i1 %i.m, label %switch.lookup.i, label %.thread.i

switch.lookup.i:                                  ; preds = %bb.e
  %switch.offset.i = add nsw i32 %.sroa.09.0.extract.trunc, -4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit

.thread.i:                                        ; preds = %bb.e
  %i.n = icmp samesign ult i32 %.sroa.09.0.extract.trunc, 38
  tail call void @llvm.assume(i1 %i.n)
  %switch.offset14.i = add nuw nsw i32 %.sroa.09.0.extract.trunc, 4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit

_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit: ; preds = %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i, %switch.lookup.i, %.thread.i
  %.0.i = phi i32 [ %switch.offset.i, %switch.lookup.i ], [ %switch.offset14.i, %.thread.i ], [ %.sroa.09.0.extract.trunc, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i ]
  %i.o = icmp eq i32 %.0.i, %.sroa.015.0.extract.trunc
  br i1 %i.o, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit, %bb.d
  %i.p = trunc i64 %.sroa.6.0.extract.shift to i1
  br i1 %i.p, label %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4, label %bb.h

_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4: ; preds = %bb.f
  %i.q = add i32 %.sroa.015.0.extract.trunc, -32
  %i.r = icmp ult i32 %i.q, 10
  tail call void @llvm.assume(i1 %i.r)
  %i.s = and i32 %.sroa.015.0.extract.trunc, 46
  %i.t = icmp eq i32 %i.s, 32
  br i1 %i.t, label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4
  %i.u = add nsw i32 %.sroa.015.0.extract.trunc, -38
  %i.v = icmp ult i32 %i.u, 4
  br i1 %i.v, label %switch.lookup.i5, label %.thread.i2

switch.lookup.i5:                                 ; preds = %bb.g
  %switch.offset.i6 = add nsw i32 %.sroa.015.0.extract.trunc, -4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7

.thread.i2:                                       ; preds = %bb.g
  %i.w = icmp samesign ult i32 %.sroa.015.0.extract.trunc, 38
  tail call void @llvm.assume(i1 %i.w)
  %switch.offset14.i3 = add nuw nsw i32 %.sroa.015.0.extract.trunc, 4
  br label %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7

_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7: ; preds = %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4, %switch.lookup.i5, %.thread.i2
  %.0.i1 = phi i32 [ %switch.offset.i6, %switch.lookup.i5 ], [ %switch.offset14.i3, %.thread.i2 ], [ %.sroa.015.0.extract.trunc, %_ZN4llvm7CmpInst10isEqualityENS0_9PredicateE.exit.i4 ]
  %i.x = icmp eq i32 %.0.i1, %.sroa.09.0.extract.trunc
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit, %bb.c, %bb.h, %bb.b
  %.sroa.024.0 = phi i64 [ %0, %bb.b ], [ 0, %bb.h ], [ 0, %bb.c ], [ %1, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit ], [ %0, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7 ]
  %.sroa.4.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.h ], [ 0, %bb.c ], [ 0, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit ], [ 0, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7 ]
  %.sroa.625.sroa.2.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.h ], [ 0, %bb.c ], [ 1, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit ], [ 1, %_ZN4llvm8ICmpInst29getFlippedSignednessPredicateENS_7CmpInst9PredicateE.exit7 ]
  %.sroa.024.0.insert.ext = and i64 %.sroa.024.0, 4294967295
  %.sroa.024.0.insert.insert = or i64 %.sroa.4.0, %.sroa.024.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.024.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.625.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4llvm12CmpPredicate27getPreferredSignedPredicateEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(5) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !382, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i32, ptr %0, align 4, !tbaa !383    ; 2 uses
  br i1 %i.c, label %switch.lookup, label %_ZN4llvm8ICmpInst18getSignedPredicateENS_7CmpInst9PredicateE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr i8, ptr @switch.table._ZNK4llvm12CmpPredicate27getPreferredSignedPredicateEv, i64 %i.e
  %switch.gep = getelementptr i8, ptr %i.f, i64 -32
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4llvm8ICmpInst18getSignedPredicateENS_7CmpInst9PredicateE.exit

_ZN4llvm8ICmpInst18getSignedPredicateENS_7CmpInst9PredicateE.exit: ; preds = %switch.lookup, %bb.a
  %i.g = phi i32 [ %switch.ext, %switch.lookup ], [ %i.d, %bb.a ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967360) i64 @_ZN4llvm12CmpPredicate3getEPKNS_7CmpInstE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !47
  %i.b = icmp eq i8 %i.a, 85
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = lshr i8 %i.d, 1
  %.lobit.i = and i8 %i.e, 1
  %i.f = zext nneg i8 %.lobit.i to i64
  %i.g = shl nuw nsw i64 %i.f, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.sroa.3.1 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.sroa.0.1.in.in.in = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.0.sroa.0.1.in.in = load i16, ptr %.sroa.0.sroa.0.1.in.in.in, align 2, !tbaa !78
  %.sroa.0.sroa.0.1.in = and i16 %.sroa.0.sroa.0.1.in.in, 63
  %.sroa.0.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.sroa.0.1.in to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.3.1, %.sroa.0.sroa.0.0.insert.ext
  ret i64 %.sroa.0.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 1095216660522) i64 @_ZN4llvm12CmpPredicate10getInverseES0_(i64 %0) local_unnamed_addr #12 align 2 {
switch.lookup:
  %i.a = and i64 %0, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm12CmpPredicate10getInverseES0_, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %.sroa.22.0.insert.ext = and i64 %0, 1095216660480
  %.sroa.01.0.insert.insert = or disjoint i64 %.sroa.22.0.insert.ext, %switch.ext
  ret i64 %.sroa.01.0.insert.insert
end_hunk_1
