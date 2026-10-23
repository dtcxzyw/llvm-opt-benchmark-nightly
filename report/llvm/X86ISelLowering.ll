Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 254
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 339
begin_hunk_0
$_ZN4llvm8SmallSetINS_7SDValueELj8ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj8ES3_EEbEOT_ = comdat any

$_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_12is_sign_maskENS_11ConstantIntELb1EE11matchVectorEPKNS_5ValueE = comdat any

$_ZN4llvm14SDPatternMatch15BinaryOpc_matchINS0_11Value_matchENS0_13AllOnes_matchELb1ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIPNS_17MachineBasicBlockELj2EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ = comdat any

$_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable = comdat any

$_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable = comdat any

$_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = comdat any

$_ZTVN4llvm2cl11OptionValueIiEE = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL38ExperimentalPrefInnermostLoopAlignment = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"x86-experimental-pref-innermost-loop-alignment\00", align 1
@.str.1 = private unnamed_addr constant [184 x i8] c"Sets the preferable loop alignment for experiments (as log2 bytes) for innermost loops only. If specified, this option overrides alignment set by x86-experimental-pref-loop-alignment.\00", align 1
@__dso_handle = external hidden global i8
@_ZL23BrMergingBaseCostThresh = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"x86-br-merging-base-cost\00", align 1
@.str.4 = private unnamed_addr constant [364 x i8] c"Sets the cost threshold for when multiple conditionals will be merged into one branch versus be split in multiple branches. Merging conditionals saves branches at the cost of additional instructions. This value sets the instruction cost limit, below which conditionals will be merged, and above which conditionals will be split. Set to -1 to never merge branches.\00", align 1
@_ZL17BrMergingCcmpBias = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"x86-br-merging-ccmp-bias\00", align 1
@.str.7 = private unnamed_addr constant [105 x i8] c"Increases 'x86-br-merging-base-cost' in cases that the target supports conditional compare instructions.\00", align 1
@_ZL10WidenShift = internal global %"class.llvm::cl::opt.0" zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"x86-widen-shift\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Replace narrow shifts with wider shifts.\00", align 1
@_ZL19BrMergingLikelyBias = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"x86-br-merging-likely-bias\00", align 1
@.str.13 = private unnamed_addr constant [391 x i8] c"Increases 'x86-br-merging-base-cost' in cases that it is likely that all conditionals will be executed. For example for merging the conditionals (a == b && c > d), if its known that a == b is likely, then it is likely that if the conditionals are split both sides will be executed, so it may be desirable to increase the instruction cost threshold. Set to -1 to never merge likely branches.\00", align 1
@_ZL21BrMergingUnlikelyBias = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"x86-br-merging-unlikely-bias\00", align 1
@.str.16 = private unnamed_addr constant [399 x i8] c"Decreases 'x86-br-merging-base-cost' in cases that it is unlikely that all conditionals will be executed. For example for merging the conditionals (a == b && c > d), if its known that a == b is unlikely, then it is unlikely that if the conditionals are split both sides will be executed, so it may be desirable to decrease the instruction cost threshold. Set to -1 to never merge unlikely branches.\00", align 1
@_ZL23MulConstantOptimization = internal global %"class.llvm::cl::opt.0" zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"mul-constant-optimization\00", align 1
@.str.19 = private unnamed_addr constant [78 x i8] c"Replace 'mul x, Const' with more effective instructions like SHIFT, LEA, etc.\00", align 1
@_ZTVN4llvm17X86TargetLoweringE = external unnamed_addr constant { [338 x ptr] }, align 8
@_ZN4llvm25X86MCRegisterClassStorageE = external global %"struct.llvm::MCRegisterClassStorage", align 8
@constinit.24 = private unnamed_addr constant [35 x i32] [i32 268, i32 118, i32 267, i32 117, i32 269, i32 119, i32 276, i32 120, i32 284, i32 135, i32 265, i32 115, i32 271, i32 122, i32 281, i32 124, i32 290, i32 136, i32 103, i32 108, i32 278, i32 126, i32 280, i32 127, i32 273, i32 111, i32 264, i32 114, i32 270, i32 121, i32 266, i32 116, i32 272, i32 123, i32 307], align 4
@constinit.25 = private unnamed_addr constant [73 x i32] [i32 171, i32 174, i32 163, i32 164, i32 165, i32 166, i32 167, i32 248, i32 220, i32 219, i32 198, i32 199, i32 200, i32 194, i32 193, i32 183, i32 184, i32 181, i32 182, i32 214, i32 59, i32 85, i32 87, i32 99, i32 100, i32 260, i32 155, i32 109, i32 295, i32 296, i32 303, i32 304, i32 60, i32 356, i32 316, i32 293, i32 294, i32 384, i32 317, i32 385, i32 230, i32 228, i32 229, i32 227, i32 236, i32 237, i32 238, i32 239, i32 406, i32 234, i32 235, i32 240, i32 148, i32 149, i32 242, i32 243, i32 222, i32 61, i32 195, i32 387, i32 386, i32 250, i32 247, i32 151, i32 244, i32 150, i32 201, i32 202, i32 203, i32 204, i32 50, i32 48, i32 49], align 4
@.str.26 = private unnamed_addr constant [25 x i8] c"import-call-optimization\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"_tls_array\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"_tls_index\00", align 1
@constinit.29 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 16 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@_ZZNK4llvm17X86TargetLowering13LowerTRUNCATEENS_7SDValueERNS_12SelectionDAGEE8ShufMask = internal constant [8 x i32] [i32 0, i32 2, i32 4, i32 6, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@_ZZNK4llvm17X86TargetLowering13LowerTRUNCATEENS_7SDValueERNS_12SelectionDAGEE8ShufMask_0 = internal constant [4 x i32] [i32 0, i32 2, i32 4, i32 6], align 16
@_ZZNK4llvm17X86TargetLowering13LowerTRUNCATEENS_7SDValueERNS_12SelectionDAGEE9ShufMask1 = internal constant [32 x i32] [i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@_ZZNK4llvm17X86TargetLowering13LowerTRUNCATEENS_7SDValueERNS_12SelectionDAGEE9ShufMask2 = internal constant [4 x i32] [i32 0, i32 2, i32 -1, i32 -1], align 16
@constinit.31 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 97 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@constinit.32 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 8 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@constinit.37 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 7 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@.str.38 = private unnamed_addr constant [71 x i8] c"Cannot use segmented stacks with functions that have nested arguments.\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"GCC_except_table\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"llvm.eh.recoverfp must take a function as the first argument\00", align 1
@.str.41 = private unnamed_addr constant [58 x i8] c"Target OS doesn't support __builtin_thread_pointer() yet.\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c" is allocatable: function has no frame pointer\00", align 1
@.str.50 = private unnamed_addr constant [58 x i8] c"Nest register in use - reduce number of inreg parameters!\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"rounding mode is not supported by X86 hardware\00", align 1
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@constinit.56 = private unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@constinit.58 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 73 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@.str.68 = private unnamed_addr constant [33 x i8] c"__morestack_allocate_stack_space\00", align 1
@.str.69 = private unnamed_addr constant [71 x i8] c"calling convention incompatible with retpoline, no available registers\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"cf-protection-return\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"cf-protection-branch\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"Glue output operand is of invalid type\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"{st}\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"{flags}\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"{dirflag}\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"{fpsr}\00", align 1
@.str.78 = private unnamed_addr constant [49 x i8] c"Failed to unfold memory operand for a KCFI check\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"no-stack-arg-probe\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"probe-stack\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"stack-probe-size\00", align 1
@_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@.str.83 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4llvm11APFloatBase11semIEEEhalfE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4llvm11APFloatBase20semX87DoubleExtendedE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4llvm11APFloatBase11semIEEEquadE = external global %"struct.llvm::fltSemantics", align 4
@_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable = linkonce_odr local_unnamed_addr constant <{ [215 x i16], [57 x i16] }> <{ [215 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15], [57 x i16] zeroinitializer }>, comdat, align 16
@_ZN4llvm11APFloatBase9semBFloatE = external global %"struct.llvm::fltSemantics", align 4
@.str.84 = private unnamed_addr constant [146 x i8] c"Possible incorrect use of MVT::getVectorNumElements() for scalable vector. Scalable flag may be dropped, use MVT::getVectorElementCount() instead\00", align 1
@_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable = linkonce_odr local_unnamed_addr constant <{ [215 x i16], [57 x i16] }> <{ [215 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 128, i16 256, i16 64, i16 128, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 16, i16 24, i16 32, i16 48, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 1, i16 2, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 2048, i16 4096, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 1, i16 2, i16 3, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 1, i16 2, i16 4, i16 8, i16 16, i16 1, i16 2, i16 4, i16 8], [57 x i16] zeroinitializer }>, comdat, align 16
@.str.85 = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@_ZN4llvmL19IntrinsicsWithChainE = internal constant [180 x %"struct.llvm::IntrinsicData"] [%"struct.llvm::IntrinsicData" { i16 15028, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15029, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15030, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15031, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15032, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15033, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15034, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15035, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15036, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15037, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15038, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15039, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15040, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15041, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15042, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15043, i16 51, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15168, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15169, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15170, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15171, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15172, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15173, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15174, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15175, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15176, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15177, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15178, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15179, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15180, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15181, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15182, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15183, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15184, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15185, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15186, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15187, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15188, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15189, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15190, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15191, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15279, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15280, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15281, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15282, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15283, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15284, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15285, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15286, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15287, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15288, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15289, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15290, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15291, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15292, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15293, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15294, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15295, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15296, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15297, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15298, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15299, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15300, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15301, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15302, i16 1, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15328, i16 46, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15329, i16 46, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15330, i16 46, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15334, i16 47, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15335, i16 47, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15336, i16 47, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15340, i16 46, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15341, i16 46, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15342, i16 46, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15344, i16 48, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15345, i16 48, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15346, i16 48, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15350, i16 47, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15351, i16 47, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15352, i16 47, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15354, i16 46, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15355, i16 46, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15356, i16 46, i16 980, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15360, i16 46, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15361, i16 46, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15362, i16 46, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15366, i16 47, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15367, i16 47, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15368, i16 47, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15372, i16 46, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15373, i16 46, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15374, i16 46, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15378, i16 48, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15379, i16 48, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15380, i16 48, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15384, i16 47, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15385, i16 47, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15386, i16 47, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15390, i16 46, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15391, i16 46, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15392, i16 46, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15396, i16 46, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15397, i16 46, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15398, i16 46, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15402, i16 47, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15403, i16 47, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15404, i16 47, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15408, i16 46, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15409, i16 46, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15410, i16 46, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15414, i16 48, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15415, i16 48, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15416, i16 48, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15420, i16 47, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15421, i16 47, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15422, i16 47, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15426, i16 46, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15427, i16 46, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15428, i16 46, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15461, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15462, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15463, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15464, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15465, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15466, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15467, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15468, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15469, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15470, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15471, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15472, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15473, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15474, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15475, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15476, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15477, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15478, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15479, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15480, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15481, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15482, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15483, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15484, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15596, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15597, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15598, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15599, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15600, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15601, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15602, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15603, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15604, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15605, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15606, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15607, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15608, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15609, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15610, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15611, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15612, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15613, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15614, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15615, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15616, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15617, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15618, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15619, i16 2, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15903, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15904, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15991, i16 6, i16 3720, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15992, i16 54, i16 3721, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15993, i16 5, i16 782, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15994, i16 5, i16 782, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15995, i16 5, i16 782, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15996, i16 4, i16 783, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15997, i16 4, i16 783, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15998, i16 4, i16 783, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16001, i16 7, i16 3730, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16002, i16 7, i16 3731, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16308, i16 9, i16 22186, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16370, i16 8, i16 991, i16 0 }], align 16
@.str.86 = private unnamed_addr constant [146 x i8] c"Possible incorrect use of EVT::getVectorNumElements() for scalable vector. Scalable flag may be dropped, use EVT::getVectorElementCount() instead\00", align 1
@_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = linkonce_odr local_unnamed_addr constant <{ [263 x { i64, i8 }], [9 x { i64, i8 }] }> <{ [263 x { i64, i8 }] [{ i64, i8 } zeroinitializer, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 3, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 5, i8 0 }, { i64, i8 } { i64 6, i8 0 }, { i64, i8 } { i64 7, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 24, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 40, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 56, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 768, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 1536, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 131072, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 1, i8 1 }, { i64, i8 } { i64 2, i8 1 }, { i64, i8 } { i64 4, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 2048, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 24, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 40, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 56, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 80, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 112, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 160, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 224, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 320, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 448, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } zeroinitializer, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }], [9 x { i64, i8 }] zeroinitializer }>, comdat, align 16
@constinit.87 = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3], align 4
@constinit.88 = private unnamed_addr constant [8 x i32] [i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7], align 4
@.str.89 = private unnamed_addr constant [18 x i8] c"_TLS_MODULE_BASE_\00", align 1
@constinit.90 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 14 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@constinit.92 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 106 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@constinit.95 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 154 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@constinit.96 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 156 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@_ZZL19LowerUINT_TO_FP_i64N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEE3CV0 = internal constant [4 x i32] [i32 1127219200, i32 1160773632, i32 0, i32 0], align 16
@constinit.97 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 15 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@_ZN4llvm11APFloatBase13semIEEEsingleE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4llvm11APFloatBase13semIEEEdoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE6MaskHi = internal constant [4 x i32] [i32 1, i32 1, i32 3, i32 3], align 16
@_ZZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE6MaskHi_0 = internal constant [4 x i32] [i32 1, i32 1, i32 3, i32 3], align 16
@_ZZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE6MaskLo = internal constant [4 x i32] [i32 0, i32 0, i32 2, i32 2], align 16
@_ZZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE6MaskHi_1 = internal constant [4 x i32] [i32 1, i32 1, i32 3, i32 3], align 16
@_ZZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE6MaskLo_0 = internal constant [4 x i32] [i32 0, i32 0, i32 2, i32 2], align 16
@_ZZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE4Mask = internal constant [4 x i32] [i32 1, i32 0, i32 3, i32 2], align 16
@_ZN4llvmL22IntrinsicsWithoutChainE = internal constant [1075 x %"struct.llvm::IntrinsicData"] [%"struct.llvm::IntrinsicData" { i16 14690, i16 10, i16 539, i16 540 }, %"struct.llvm::IntrinsicData" { i16 14691, i16 10, i16 539, i16 540 }, %"struct.llvm::IntrinsicData" { i16 14727, i16 13, i16 541, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14728, i16 13, i16 541, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14729, i16 24, i16 553, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14730, i16 24, i16 553, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14731, i16 14, i16 574, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14732, i16 14, i16 574, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14733, i16 12, i16 890, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14734, i16 12, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14735, i16 12, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14736, i16 12, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14737, i16 12, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14739, i16 13, i16 645, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14740, i16 13, i16 645, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14741, i16 13, i16 646, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14742, i16 13, i16 646, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14752, i16 13, i16 304, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14753, i16 13, i16 304, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14754, i16 13, i16 303, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14755, i16 13, i16 303, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14756, i16 12, i16 745, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14757, i16 12, i16 745, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14761, i16 12, i16 681, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14762, i16 52, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14763, i16 52, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14764, i16 12, i16 682, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14765, i16 13, i16 941, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14766, i16 13, i16 941, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14767, i16 13, i16 941, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14768, i16 13, i16 941, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14783, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14784, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14785, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14786, i16 32, i16 641, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14787, i16 32, i16 641, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14788, i16 32, i16 641, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14789, i16 33, i16 896, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14790, i16 33, i16 896, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14791, i16 33, i16 896, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14792, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14793, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14794, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14795, i16 33, i16 957, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14796, i16 33, i16 957, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14797, i16 33, i16 957, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14798, i16 33, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14799, i16 33, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14800, i16 33, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14801, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14802, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14803, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14804, i16 33, i16 794, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14805, i16 33, i16 794, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14806, i16 33, i16 794, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14807, i16 33, i16 891, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14808, i16 33, i16 891, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14809, i16 33, i16 891, i16 892 }, %"struct.llvm::IntrinsicData" { i16 14810, i16 42, i16 854, i16 900 }, %"struct.llvm::IntrinsicData" { i16 14811, i16 33, i16 854, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14812, i16 33, i16 854, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14813, i16 42, i16 855, i16 901 }, %"struct.llvm::IntrinsicData" { i16 14814, i16 33, i16 855, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14815, i16 33, i16 855, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14816, i16 42, i16 856, i16 902 }, %"struct.llvm::IntrinsicData" { i16 14817, i16 33, i16 856, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14818, i16 33, i16 856, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14819, i16 42, i16 857, i16 903 }, %"struct.llvm::IntrinsicData" { i16 14820, i16 33, i16 857, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14821, i16 33, i16 857, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14822, i16 32, i16 858, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14823, i16 32, i16 858, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14824, i16 32, i16 858, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14825, i16 41, i16 859, i16 904 }, %"struct.llvm::IntrinsicData" { i16 14826, i16 32, i16 859, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14827, i16 32, i16 859, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14828, i16 41, i16 860, i16 905 }, %"struct.llvm::IntrinsicData" { i16 14829, i16 32, i16 860, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14830, i16 32, i16 860, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14831, i16 41, i16 861, i16 906 }, %"struct.llvm::IntrinsicData" { i16 14832, i16 32, i16 861, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14833, i16 32, i16 861, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14834, i16 41, i16 862, i16 907 }, %"struct.llvm::IntrinsicData" { i16 14835, i16 32, i16 862, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14836, i16 32, i16 862, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14837, i16 32, i16 582, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14838, i16 32, i16 582, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14839, i16 32, i16 582, i16 583 }, %"struct.llvm::IntrinsicData" { i16 14840, i16 32, i16 584, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14841, i16 32, i16 584, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14842, i16 32, i16 584, i16 585 }, %"struct.llvm::IntrinsicData" { i16 14843, i16 32, i16 582, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14844, i16 32, i16 582, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14845, i16 32, i16 582, i16 583 }, %"struct.llvm::IntrinsicData" { i16 14846, i16 32, i16 584, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14847, i16 32, i16 584, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14848, i16 32, i16 584, i16 585 }, %"struct.llvm::IntrinsicData" { i16 14849, i16 44, i16 604, i16 734 }, %"struct.llvm::IntrinsicData" { i16 14850, i16 32, i16 604, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14851, i16 32, i16 604, i16 605 }, %"struct.llvm::IntrinsicData" { i16 14852, i16 32, i16 604, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14853, i16 32, i16 604, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14854, i16 32, i16 604, i16 605 }, %"struct.llvm::IntrinsicData" { i16 14855, i16 44, i16 608, i16 736 }, %"struct.llvm::IntrinsicData" { i16 14856, i16 32, i16 608, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14857, i16 32, i16 608, i16 609 }, %"struct.llvm::IntrinsicData" { i16 14858, i16 32, i16 608, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14859, i16 32, i16 608, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14860, i16 32, i16 608, i16 609 }, %"struct.llvm::IntrinsicData" { i16 14861, i16 32, i16 599, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14862, i16 32, i16 599, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14863, i16 29, i16 599, i16 600 }, %"struct.llvm::IntrinsicData" { i16 14864, i16 32, i16 601, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14865, i16 32, i16 601, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14866, i16 29, i16 601, i16 602 }, %"struct.llvm::IntrinsicData" { i16 14867, i16 32, i16 604, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14868, i16 32, i16 604, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14869, i16 32, i16 604, i16 605 }, %"struct.llvm::IntrinsicData" { i16 14870, i16 32, i16 599, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14871, i16 32, i16 599, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14872, i16 32, i16 599, i16 600 }, %"struct.llvm::IntrinsicData" { i16 14873, i16 32, i16 601, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14874, i16 32, i16 601, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14875, i16 29, i16 601, i16 602 }, %"struct.llvm::IntrinsicData" { i16 14876, i16 32, i16 604, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14877, i16 32, i16 604, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14878, i16 32, i16 604, i16 605 }, %"struct.llvm::IntrinsicData" { i16 14879, i16 32, i16 608, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14880, i16 32, i16 608, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14881, i16 32, i16 608, i16 609 }, %"struct.llvm::IntrinsicData" { i16 14882, i16 32, i16 608, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14883, i16 32, i16 608, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14884, i16 32, i16 608, i16 609 }, %"struct.llvm::IntrinsicData" { i16 14885, i16 31, i16 909, i16 912 }, %"struct.llvm::IntrinsicData" { i16 14886, i16 31, i16 909, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14887, i16 31, i16 909, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14888, i16 31, i16 909, i16 912 }, %"struct.llvm::IntrinsicData" { i16 14889, i16 31, i16 909, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14890, i16 31, i16 909, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14891, i16 31, i16 909, i16 912 }, %"struct.llvm::IntrinsicData" { i16 14892, i16 31, i16 909, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14893, i16 31, i16 909, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14894, i16 39, i16 910, i16 911 }, %"struct.llvm::IntrinsicData" { i16 14895, i16 39, i16 910, i16 911 }, %"struct.llvm::IntrinsicData" { i16 14896, i16 39, i16 910, i16 911 }, %"struct.llvm::IntrinsicData" { i16 14903, i16 22, i16 575, i16 17 }, %"struct.llvm::IntrinsicData" { i16 14904, i16 22, i16 575, i16 19 }, %"struct.llvm::IntrinsicData" { i16 14905, i16 22, i16 575, i16 18 }, %"struct.llvm::IntrinsicData" { i16 14906, i16 22, i16 575, i16 21 }, %"struct.llvm::IntrinsicData" { i16 14907, i16 22, i16 575, i16 20 }, %"struct.llvm::IntrinsicData" { i16 14908, i16 22, i16 575, i16 22 }, %"struct.llvm::IntrinsicData" { i16 14909, i16 13, i16 850, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14910, i16 13, i16 850, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14911, i16 13, i16 850, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14912, i16 13, i16 851, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14913, i16 13, i16 851, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14914, i16 13, i16 851, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14915, i16 13, i16 852, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14916, i16 13, i16 852, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14917, i16 13, i16 852, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14918, i16 13, i16 853, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14919, i16 13, i16 853, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14920, i16 13, i16 853, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14921, i16 12, i16 582, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14922, i16 12, i16 582, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14923, i16 12, i16 582, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14924, i16 12, i16 584, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14925, i16 12, i16 584, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14926, i16 12, i16 584, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14927, i16 12, i16 599, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14928, i16 12, i16 599, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14929, i16 12, i16 599, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14930, i16 12, i16 601, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14931, i16 12, i16 601, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14932, i16 12, i16 601, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14933, i16 27, i16 612, i16 613 }, %"struct.llvm::IntrinsicData" { i16 14934, i16 27, i16 612, i16 613 }, %"struct.llvm::IntrinsicData" { i16 14935, i16 27, i16 616, i16 617 }, %"struct.llvm::IntrinsicData" { i16 14936, i16 27, i16 616, i16 617 }, %"struct.llvm::IntrinsicData" { i16 14937, i16 27, i16 612, i16 613 }, %"struct.llvm::IntrinsicData" { i16 14938, i16 27, i16 612, i16 613 }, %"struct.llvm::IntrinsicData" { i16 14939, i16 27, i16 616, i16 617 }, %"struct.llvm::IntrinsicData" { i16 14940, i16 27, i16 616, i16 617 }, %"struct.llvm::IntrinsicData" { i16 14944, i16 14, i16 622, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14945, i16 14, i16 622, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14946, i16 14, i16 622, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14982, i16 13, i16 304, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14983, i16 13, i16 304, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14984, i16 13, i16 304, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14985, i16 13, i16 303, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14986, i16 13, i16 303, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14987, i16 13, i16 303, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14988, i16 14, i16 909, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14989, i16 14, i16 909, i16 0 }, %"struct.llvm::IntrinsicData" { i16 14990, i16 14, i16 909, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15009, i16 16, i16 752, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15013, i16 14, i16 921, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15014, i16 14, i16 922, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15015, i16 14, i16 923, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15016, i16 14, i16 924, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15017, i16 14, i16 927, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15018, i16 14, i16 928, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15019, i16 14, i16 931, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15020, i16 14, i16 932, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15021, i16 14, i16 933, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15022, i16 14, i16 934, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15023, i16 14, i16 935, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15024, i16 14, i16 936, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15052, i16 16, i16 752, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15053, i16 13, i16 759, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15054, i16 13, i16 759, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15055, i16 13, i16 760, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15056, i16 13, i16 760, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15057, i16 13, i16 184, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15058, i16 13, i16 184, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15059, i16 24, i16 553, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15060, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15061, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15062, i16 13, i16 699, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15063, i16 13, i16 700, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15064, i16 13, i16 699, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15065, i16 13, i16 701, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15066, i16 13, i16 702, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15067, i16 13, i16 701, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15068, i16 13, i16 946, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15069, i16 13, i16 947, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15070, i16 12, i16 745, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15071, i16 13, i16 753, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15072, i16 13, i16 180, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15073, i16 13, i16 179, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15074, i16 13, i16 773, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15075, i16 13, i16 774, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15079, i16 13, i16 967, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15080, i16 13, i16 967, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15081, i16 13, i16 967, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15082, i16 21, i16 970, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15083, i16 21, i16 970, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15084, i16 21, i16 970, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15085, i16 13, i16 971, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15086, i16 13, i16 971, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15087, i16 13, i16 971, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15088, i16 13, i16 971, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15089, i16 13, i16 973, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15090, i16 13, i16 973, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15091, i16 21, i16 974, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15092, i16 21, i16 974, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15093, i16 13, i16 975, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15094, i16 13, i16 975, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15095, i16 13, i16 976, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15096, i16 13, i16 976, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15097, i16 13, i16 976, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15098, i16 21, i16 978, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15099, i16 21, i16 978, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15100, i16 21, i16 978, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15101, i16 13, i16 979, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15102, i16 13, i16 979, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15103, i16 13, i16 979, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15104, i16 13, i16 979, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15105, i16 14, i16 921, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15106, i16 14, i16 921, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15107, i16 14, i16 922, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15108, i16 14, i16 922, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15109, i16 14, i16 923, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15110, i16 14, i16 923, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15111, i16 14, i16 924, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15112, i16 14, i16 924, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15113, i16 14, i16 927, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15114, i16 14, i16 927, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15115, i16 14, i16 928, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15116, i16 14, i16 928, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15117, i16 14, i16 931, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15118, i16 14, i16 931, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15119, i16 14, i16 932, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15120, i16 14, i16 932, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15121, i16 14, i16 933, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15122, i16 14, i16 933, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15123, i16 14, i16 934, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15124, i16 14, i16 934, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15125, i16 14, i16 935, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15126, i16 14, i16 935, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15127, i16 14, i16 936, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15128, i16 14, i16 936, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15129, i16 13, i16 99, i16 634 }, %"struct.llvm::IntrinsicData" { i16 15130, i16 13, i16 99, i16 634 }, %"struct.llvm::IntrinsicData" { i16 15137, i16 12, i16 578, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15138, i16 12, i16 578, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15139, i16 12, i16 578, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15140, i16 12, i16 578, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15141, i16 12, i16 578, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15142, i16 12, i16 578, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15143, i16 13, i16 790, i16 791 }, %"struct.llvm::IntrinsicData" { i16 15144, i16 13, i16 790, i16 791 }, %"struct.llvm::IntrinsicData" { i16 15145, i16 13, i16 790, i16 791 }, %"struct.llvm::IntrinsicData" { i16 15146, i16 27, i16 611, i16 614 }, %"struct.llvm::IntrinsicData" { i16 15147, i16 27, i16 611, i16 614 }, %"struct.llvm::IntrinsicData" { i16 15148, i16 27, i16 615, i16 618 }, %"struct.llvm::IntrinsicData" { i16 15149, i16 27, i16 615, i16 618 }, %"struct.llvm::IntrinsicData" { i16 15150, i16 27, i16 611, i16 614 }, %"struct.llvm::IntrinsicData" { i16 15151, i16 27, i16 611, i16 614 }, %"struct.llvm::IntrinsicData" { i16 15152, i16 27, i16 615, i16 618 }, %"struct.llvm::IntrinsicData" { i16 15153, i16 27, i16 615, i16 618 }, %"struct.llvm::IntrinsicData" { i16 15154, i16 13, i16 792, i16 793 }, %"struct.llvm::IntrinsicData" { i16 15155, i16 13, i16 792, i16 793 }, %"struct.llvm::IntrinsicData" { i16 15156, i16 13, i16 792, i16 793 }, %"struct.llvm::IntrinsicData" { i16 15157, i16 16, i16 620, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15158, i16 16, i16 620, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15159, i16 16, i16 620, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15160, i16 13, i16 102, i16 640 }, %"struct.llvm::IntrinsicData" { i16 15161, i16 13, i16 102, i16 640 }, %"struct.llvm::IntrinsicData" { i16 15162, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15163, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15164, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15165, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15166, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15167, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15192, i16 13, i16 707, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15193, i16 13, i16 707, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15194, i16 13, i16 707, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15195, i16 13, i16 707, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15204, i16 36, i16 632, i16 633 }, %"struct.llvm::IntrinsicData" { i16 15205, i16 36, i16 632, i16 633 }, %"struct.llvm::IntrinsicData" { i16 15206, i16 19, i16 572, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15207, i16 19, i16 572, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15208, i16 19, i16 572, i16 573 }, %"struct.llvm::IntrinsicData" { i16 15209, i16 19, i16 572, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15210, i16 19, i16 572, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15211, i16 19, i16 572, i16 573 }, %"struct.llvm::IntrinsicData" { i16 15212, i16 20, i16 684, i16 685 }, %"struct.llvm::IntrinsicData" { i16 15213, i16 20, i16 684, i16 685 }, %"struct.llvm::IntrinsicData" { i16 15214, i16 40, i16 576, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15215, i16 44, i16 586, i16 728 }, %"struct.llvm::IntrinsicData" { i16 15216, i16 32, i16 586, i16 587 }, %"struct.llvm::IntrinsicData" { i16 15217, i16 26, i16 890, i16 908 }, %"struct.llvm::IntrinsicData" { i16 15218, i16 32, i16 890, i16 895 }, %"struct.llvm::IntrinsicData" { i16 15219, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15220, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15221, i16 32, i16 586, i16 587 }, %"struct.llvm::IntrinsicData" { i16 15222, i16 44, i16 588, i16 729 }, %"struct.llvm::IntrinsicData" { i16 15223, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15224, i16 32, i16 588, i16 589 }, %"struct.llvm::IntrinsicData" { i16 15225, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15226, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15227, i16 32, i16 588, i16 589 }, %"struct.llvm::IntrinsicData" { i16 15228, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15229, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15230, i16 32, i16 586, i16 587 }, %"struct.llvm::IntrinsicData" { i16 15231, i16 29, i16 247, i16 889 }, %"struct.llvm::IntrinsicData" { i16 15232, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15233, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15234, i16 32, i16 586, i16 587 }, %"struct.llvm::IntrinsicData" { i16 15235, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15236, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15237, i16 32, i16 588, i16 589 }, %"struct.llvm::IntrinsicData" { i16 15238, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15239, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15240, i16 32, i16 588, i16 589 }, %"struct.llvm::IntrinsicData" { i16 15241, i16 45, i16 598, i16 732 }, %"struct.llvm::IntrinsicData" { i16 15242, i16 38, i16 893, i16 894 }, %"struct.llvm::IntrinsicData" { i16 15243, i16 37, i16 887, i16 888 }, %"struct.llvm::IntrinsicData" { i16 15244, i16 44, i16 603, i16 733 }, %"struct.llvm::IntrinsicData" { i16 15245, i16 29, i16 603, i16 606 }, %"struct.llvm::IntrinsicData" { i16 15246, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15247, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15248, i16 29, i16 603, i16 606 }, %"struct.llvm::IntrinsicData" { i16 15249, i16 44, i16 607, i16 735 }, %"struct.llvm::IntrinsicData" { i16 15250, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15251, i16 29, i16 607, i16 610 }, %"struct.llvm::IntrinsicData" { i16 15252, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15253, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15254, i16 29, i16 607, i16 610 }, %"struct.llvm::IntrinsicData" { i16 15255, i16 29, i16 603, i16 606 }, %"struct.llvm::IntrinsicData" { i16 15256, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15257, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15258, i16 29, i16 603, i16 606 }, %"struct.llvm::IntrinsicData" { i16 15259, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15260, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15261, i16 29, i16 607, i16 610 }, %"struct.llvm::IntrinsicData" { i16 15262, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15263, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15264, i16 29, i16 607, i16 610 }, %"struct.llvm::IntrinsicData" { i16 15265, i16 45, i16 619, i16 737 }, %"struct.llvm::IntrinsicData" { i16 15266, i16 36, i16 638, i16 639 }, %"struct.llvm::IntrinsicData" { i16 15267, i16 36, i16 638, i16 639 }, %"struct.llvm::IntrinsicData" { i16 15268, i16 40, i16 630, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15269, i16 49, i16 872, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15270, i16 49, i16 872, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15271, i16 49, i16 872, i16 875 }, %"struct.llvm::IntrinsicData" { i16 15272, i16 49, i16 872, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15273, i16 49, i16 872, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15274, i16 49, i16 872, i16 875 }, %"struct.llvm::IntrinsicData" { i16 15275, i16 49, i16 873, i16 874 }, %"struct.llvm::IntrinsicData" { i16 15276, i16 49, i16 873, i16 874 }, %"struct.llvm::IntrinsicData" { i16 15277, i16 11, i16 885, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15278, i16 11, i16 885, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15303, i16 32, i16 641, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15304, i16 32, i16 641, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15305, i16 29, i16 641, i16 644 }, %"struct.llvm::IntrinsicData" { i16 15306, i16 32, i16 641, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15307, i16 32, i16 641, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15308, i16 29, i16 641, i16 644 }, %"struct.llvm::IntrinsicData" { i16 15309, i16 37, i16 642, i16 643 }, %"struct.llvm::IntrinsicData" { i16 15310, i16 37, i16 642, i16 643 }, %"struct.llvm::IntrinsicData" { i16 15311, i16 30, i16 896, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15312, i16 30, i16 896, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15313, i16 30, i16 896, i16 899 }, %"struct.llvm::IntrinsicData" { i16 15314, i16 30, i16 896, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15315, i16 30, i16 896, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15316, i16 30, i16 896, i16 899 }, %"struct.llvm::IntrinsicData" { i16 15317, i16 39, i16 897, i16 898 }, %"struct.llvm::IntrinsicData" { i16 15318, i16 39, i16 897, i16 898 }, %"struct.llvm::IntrinsicData" { i16 15319, i16 37, i16 656, i16 657 }, %"struct.llvm::IntrinsicData" { i16 15320, i16 37, i16 656, i16 657 }, %"struct.llvm::IntrinsicData" { i16 15321, i16 37, i16 660, i16 661 }, %"struct.llvm::IntrinsicData" { i16 15322, i16 37, i16 660, i16 661 }, %"struct.llvm::IntrinsicData" { i16 15323, i16 36, i16 667, i16 668 }, %"struct.llvm::IntrinsicData" { i16 15324, i16 36, i16 667, i16 668 }, %"struct.llvm::IntrinsicData" { i16 15325, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15326, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15327, i16 41, i16 230, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15331, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15332, i16 41, i16 230, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15333, i16 41, i16 230, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15337, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15338, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15339, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15343, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15347, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15348, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15349, i16 41, i16 230, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15353, i16 41, i16 980, i16 913 }, %"struct.llvm::IntrinsicData" { i16 15357, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15358, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15359, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15363, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15364, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15365, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15369, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15370, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15371, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15375, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15376, i16 32, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15377, i16 32, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15381, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15382, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15383, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15387, i16 41, i16 981, i16 914 }, %"struct.llvm::IntrinsicData" { i16 15388, i16 32, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15389, i16 32, i16 981, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15393, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15394, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15395, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15399, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15400, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15401, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15405, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15406, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15407, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15411, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15412, i16 32, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15413, i16 32, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15417, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15418, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15419, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15423, i16 41, i16 984, i16 917 }, %"struct.llvm::IntrinsicData" { i16 15424, i16 32, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15425, i16 32, i16 984, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15429, i16 31, i16 953, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15430, i16 31, i16 953, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15431, i16 31, i16 953, i16 956 }, %"struct.llvm::IntrinsicData" { i16 15432, i16 31, i16 953, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15433, i16 31, i16 953, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15434, i16 31, i16 953, i16 956 }, %"struct.llvm::IntrinsicData" { i16 15435, i16 36, i16 954, i16 955 }, %"struct.llvm::IntrinsicData" { i16 15436, i16 36, i16 954, i16 955 }, %"struct.llvm::IntrinsicData" { i16 15437, i16 30, i16 957, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15438, i16 30, i16 957, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15439, i16 30, i16 957, i16 960 }, %"struct.llvm::IntrinsicData" { i16 15440, i16 30, i16 957, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15441, i16 30, i16 957, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15442, i16 30, i16 957, i16 960 }, %"struct.llvm::IntrinsicData" { i16 15443, i16 36, i16 958, i16 959 }, %"struct.llvm::IntrinsicData" { i16 15444, i16 36, i16 958, i16 959 }, %"struct.llvm::IntrinsicData" { i16 15445, i16 30, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15446, i16 30, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15447, i16 30, i16 961, i16 964 }, %"struct.llvm::IntrinsicData" { i16 15448, i16 30, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15449, i16 30, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15450, i16 30, i16 961, i16 964 }, %"struct.llvm::IntrinsicData" { i16 15451, i16 36, i16 962, i16 963 }, %"struct.llvm::IntrinsicData" { i16 15452, i16 36, i16 962, i16 963 }, %"struct.llvm::IntrinsicData" { i16 15453, i16 33, i16 794, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15454, i16 33, i16 794, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15455, i16 33, i16 794, i16 797 }, %"struct.llvm::IntrinsicData" { i16 15456, i16 33, i16 794, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15457, i16 33, i16 794, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15458, i16 33, i16 794, i16 797 }, %"struct.llvm::IntrinsicData" { i16 15459, i16 36, i16 795, i16 796 }, %"struct.llvm::IntrinsicData" { i16 15460, i16 36, i16 795, i16 796 }, %"struct.llvm::IntrinsicData" { i16 15485, i16 36, i16 688, i16 689 }, %"struct.llvm::IntrinsicData" { i16 15486, i16 36, i16 688, i16 689 }, %"struct.llvm::IntrinsicData" { i16 15487, i16 36, i16 692, i16 693 }, %"struct.llvm::IntrinsicData" { i16 15488, i16 36, i16 692, i16 693 }, %"struct.llvm::IntrinsicData" { i16 15489, i16 29, i16 590, i16 591 }, %"struct.llvm::IntrinsicData" { i16 15490, i16 43, i16 592, i16 730 }, %"struct.llvm::IntrinsicData" { i16 15491, i16 43, i16 592, i16 730 }, %"struct.llvm::IntrinsicData" { i16 15492, i16 43, i16 592, i16 730 }, %"struct.llvm::IntrinsicData" { i16 15493, i16 50, i16 872, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15494, i16 50, i16 872, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15495, i16 50, i16 872, i16 875 }, %"struct.llvm::IntrinsicData" { i16 15496, i16 50, i16 872, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15497, i16 50, i16 872, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15498, i16 50, i16 872, i16 875 }, %"struct.llvm::IntrinsicData" { i16 15499, i16 50, i16 873, i16 874 }, %"struct.llvm::IntrinsicData" { i16 15500, i16 50, i16 873, i16 874 }, %"struct.llvm::IntrinsicData" { i16 15501, i16 28, i16 304, i16 658 }, %"struct.llvm::IntrinsicData" { i16 15502, i16 28, i16 304, i16 658 }, %"struct.llvm::IntrinsicData" { i16 15503, i16 28, i16 303, i16 662 }, %"struct.llvm::IntrinsicData" { i16 15504, i16 28, i16 303, i16 662 }, %"struct.llvm::IntrinsicData" { i16 15505, i16 13, i16 101, i16 669 }, %"struct.llvm::IntrinsicData" { i16 15506, i16 13, i16 101, i16 669 }, %"struct.llvm::IntrinsicData" { i16 15507, i16 13, i16 759, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15508, i16 13, i16 759, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15509, i16 13, i16 760, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15510, i16 13, i16 760, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15511, i16 13, i16 184, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15512, i16 13, i16 184, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15513, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15514, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15515, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15516, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15517, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15518, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15519, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15520, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15521, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15522, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15523, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15524, i16 35, i16 942, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15525, i16 13, i16 946, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15526, i16 13, i16 947, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15527, i16 13, i16 753, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15528, i16 13, i16 180, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15529, i16 13, i16 179, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15530, i16 13, i16 754, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15531, i16 13, i16 754, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15532, i16 13, i16 754, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15533, i16 13, i16 773, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15534, i16 13, i16 774, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15535, i16 13, i16 967, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15536, i16 13, i16 967, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15537, i16 13, i16 967, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15538, i16 21, i16 970, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15539, i16 21, i16 970, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15540, i16 21, i16 970, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15541, i16 13, i16 971, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15542, i16 13, i16 971, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15543, i16 13, i16 971, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15544, i16 13, i16 971, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15545, i16 13, i16 971, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15546, i16 13, i16 973, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15547, i16 13, i16 973, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15548, i16 13, i16 973, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15549, i16 13, i16 973, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15550, i16 13, i16 973, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15551, i16 21, i16 974, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15552, i16 21, i16 974, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15553, i16 21, i16 974, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15554, i16 21, i16 974, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15555, i16 21, i16 974, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15556, i16 13, i16 975, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15557, i16 13, i16 975, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15558, i16 13, i16 975, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15559, i16 13, i16 975, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15560, i16 13, i16 975, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15561, i16 13, i16 975, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15562, i16 13, i16 975, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15563, i16 13, i16 976, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15564, i16 13, i16 976, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15565, i16 13, i16 976, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15566, i16 21, i16 978, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15567, i16 21, i16 978, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15568, i16 21, i16 978, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15569, i16 13, i16 979, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15570, i16 13, i16 979, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15571, i16 13, i16 979, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15572, i16 13, i16 979, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15573, i16 13, i16 979, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15574, i16 15, i16 952, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15575, i16 15, i16 952, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15576, i16 15, i16 952, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15577, i16 15, i16 952, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15578, i16 15, i16 952, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15579, i16 15, i16 952, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15580, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15581, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15582, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15583, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15584, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15585, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15586, i16 36, i16 780, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15587, i16 36, i16 780, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15588, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15589, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15590, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15591, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15592, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15593, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15594, i16 36, i16 788, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15595, i16 36, i16 788, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15620, i16 12, i16 234, i16 804 }, %"struct.llvm::IntrinsicData" { i16 15621, i16 12, i16 262, i16 690 }, %"struct.llvm::IntrinsicData" { i16 15622, i16 12, i16 262, i16 690 }, %"struct.llvm::IntrinsicData" { i16 15623, i16 13, i16 100, i16 694 }, %"struct.llvm::IntrinsicData" { i16 15624, i16 13, i16 100, i16 694 }, %"struct.llvm::IntrinsicData" { i16 15625, i16 12, i16 235, i16 836 }, %"struct.llvm::IntrinsicData" { i16 15626, i16 14, i16 845, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15627, i16 14, i16 845, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15628, i16 14, i16 846, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15629, i16 14, i16 846, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15630, i16 23, i16 575, i16 834 }, %"struct.llvm::IntrinsicData" { i16 15631, i16 23, i16 575, i16 834 }, %"struct.llvm::IntrinsicData" { i16 15632, i16 12, i16 594, i16 595 }, %"struct.llvm::IntrinsicData" { i16 15633, i16 12, i16 594, i16 595 }, %"struct.llvm::IntrinsicData" { i16 15634, i16 12, i16 596, i16 597 }, %"struct.llvm::IntrinsicData" { i16 15635, i16 12, i16 596, i16 597 }, %"struct.llvm::IntrinsicData" { i16 15636, i16 12, i16 594, i16 595 }, %"struct.llvm::IntrinsicData" { i16 15637, i16 12, i16 594, i16 595 }, %"struct.llvm::IntrinsicData" { i16 15638, i16 12, i16 596, i16 597 }, %"struct.llvm::IntrinsicData" { i16 15639, i16 12, i16 596, i16 597 }, %"struct.llvm::IntrinsicData" { i16 15640, i16 14, i16 155, i16 654 }, %"struct.llvm::IntrinsicData" { i16 15641, i16 14, i16 155, i16 654 }, %"struct.llvm::IntrinsicData" { i16 15642, i16 14, i16 155, i16 654 }, %"struct.llvm::IntrinsicData" { i16 15643, i16 14, i16 155, i16 654 }, %"struct.llvm::IntrinsicData" { i16 15644, i16 14, i16 652, i16 653 }, %"struct.llvm::IntrinsicData" { i16 15645, i16 14, i16 652, i16 653 }, %"struct.llvm::IntrinsicData" { i16 15652, i16 14, i16 925, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15653, i16 14, i16 925, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15654, i16 14, i16 925, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15655, i16 14, i16 926, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15656, i16 14, i16 926, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15657, i16 14, i16 926, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15658, i16 14, i16 929, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15659, i16 14, i16 929, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15660, i16 14, i16 929, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15661, i16 14, i16 930, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15662, i16 14, i16 930, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15663, i16 14, i16 930, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15664, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15665, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15666, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15667, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15668, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15669, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15670, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15671, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15672, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15673, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15674, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15675, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15676, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15677, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15678, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15679, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15680, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15681, i16 14, i16 943, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15682, i16 13, i16 941, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15683, i16 13, i16 941, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15684, i16 34, i16 944, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15685, i16 34, i16 944, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15686, i16 34, i16 944, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15687, i16 34, i16 945, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15688, i16 34, i16 945, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15689, i16 34, i16 945, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15690, i16 13, i16 951, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15691, i16 13, i16 951, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15692, i16 13, i16 951, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15693, i16 13, i16 891, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15694, i16 13, i16 891, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15695, i16 13, i16 891, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15696, i16 12, i16 581, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15697, i16 12, i16 581, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15698, i16 14, i16 621, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15699, i16 14, i16 621, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15700, i16 14, i16 621, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15701, i16 0, i16 581, i16 727 }, %"struct.llvm::IntrinsicData" { i16 15702, i16 13, i16 99, i16 634 }, %"struct.llvm::IntrinsicData" { i16 15703, i16 13, i16 102, i16 640 }, %"struct.llvm::IntrinsicData" { i16 15704, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15705, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15706, i16 13, i16 884, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15707, i16 36, i16 632, i16 633 }, %"struct.llvm::IntrinsicData" { i16 15708, i16 19, i16 572, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15709, i16 19, i16 572, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15710, i16 19, i16 572, i16 573 }, %"struct.llvm::IntrinsicData" { i16 15711, i16 20, i16 684, i16 685 }, %"struct.llvm::IntrinsicData" { i16 15712, i16 36, i16 638, i16 639 }, %"struct.llvm::IntrinsicData" { i16 15713, i16 11, i16 885, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15714, i16 32, i16 641, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15715, i16 32, i16 641, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15716, i16 29, i16 641, i16 644 }, %"struct.llvm::IntrinsicData" { i16 15717, i16 37, i16 642, i16 643 }, %"struct.llvm::IntrinsicData" { i16 15718, i16 30, i16 896, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15719, i16 30, i16 896, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15720, i16 30, i16 896, i16 899 }, %"struct.llvm::IntrinsicData" { i16 15721, i16 39, i16 897, i16 898 }, %"struct.llvm::IntrinsicData" { i16 15722, i16 37, i16 656, i16 657 }, %"struct.llvm::IntrinsicData" { i16 15723, i16 37, i16 660, i16 661 }, %"struct.llvm::IntrinsicData" { i16 15724, i16 36, i16 667, i16 668 }, %"struct.llvm::IntrinsicData" { i16 15725, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15726, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15727, i16 32, i16 779, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15728, i16 36, i16 780, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15729, i16 30, i16 957, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15730, i16 30, i16 957, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15731, i16 30, i16 957, i16 960 }, %"struct.llvm::IntrinsicData" { i16 15732, i16 36, i16 958, i16 959 }, %"struct.llvm::IntrinsicData" { i16 15733, i16 30, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15734, i16 30, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15735, i16 30, i16 961, i16 964 }, %"struct.llvm::IntrinsicData" { i16 15736, i16 36, i16 962, i16 963 }, %"struct.llvm::IntrinsicData" { i16 15737, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15738, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15739, i16 32, i16 787, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15740, i16 36, i16 788, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15741, i16 33, i16 794, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15742, i16 33, i16 794, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15743, i16 33, i16 794, i16 797 }, %"struct.llvm::IntrinsicData" { i16 15744, i16 36, i16 795, i16 796 }, %"struct.llvm::IntrinsicData" { i16 15745, i16 36, i16 688, i16 689 }, %"struct.llvm::IntrinsicData" { i16 15746, i16 36, i16 692, i16 693 }, %"struct.llvm::IntrinsicData" { i16 15747, i16 41, i16 598, i16 732 }, %"struct.llvm::IntrinsicData" { i16 15748, i16 41, i16 890, i16 908 }, %"struct.llvm::IntrinsicData" { i16 15749, i16 41, i16 890, i16 908 }, %"struct.llvm::IntrinsicData" { i16 15750, i16 32, i16 890, i16 895 }, %"struct.llvm::IntrinsicData" { i16 15751, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15752, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15753, i16 32, i16 586, i16 587 }, %"struct.llvm::IntrinsicData" { i16 15754, i16 32, i16 886, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15755, i16 32, i16 886, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15756, i16 29, i16 247, i16 889 }, %"struct.llvm::IntrinsicData" { i16 15757, i16 32, i16 886, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15758, i16 32, i16 247, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15759, i16 29, i16 247, i16 889 }, %"struct.llvm::IntrinsicData" { i16 15760, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15761, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15762, i16 32, i16 586, i16 587 }, %"struct.llvm::IntrinsicData" { i16 15763, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15764, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15765, i16 32, i16 588, i16 589 }, %"struct.llvm::IntrinsicData" { i16 15766, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15767, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15768, i16 32, i16 588, i16 589 }, %"struct.llvm::IntrinsicData" { i16 15769, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15770, i16 32, i16 588, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15771, i16 32, i16 588, i16 589 }, %"struct.llvm::IntrinsicData" { i16 15772, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15773, i16 32, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15774, i16 32, i16 586, i16 587 }, %"struct.llvm::IntrinsicData" { i16 15775, i16 41, i16 890, i16 908 }, %"struct.llvm::IntrinsicData" { i16 15776, i16 32, i16 890, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15777, i16 32, i16 890, i16 895 }, %"struct.llvm::IntrinsicData" { i16 15778, i16 41, i16 598, i16 732 }, %"struct.llvm::IntrinsicData" { i16 15779, i16 41, i16 598, i16 732 }, %"struct.llvm::IntrinsicData" { i16 15780, i16 38, i16 893, i16 894 }, %"struct.llvm::IntrinsicData" { i16 15781, i16 37, i16 887, i16 888 }, %"struct.llvm::IntrinsicData" { i16 15782, i16 37, i16 887, i16 888 }, %"struct.llvm::IntrinsicData" { i16 15783, i16 38, i16 893, i16 894 }, %"struct.llvm::IntrinsicData" { i16 15784, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15785, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15786, i16 29, i16 603, i16 606 }, %"struct.llvm::IntrinsicData" { i16 15787, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15788, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15789, i16 29, i16 603, i16 606 }, %"struct.llvm::IntrinsicData" { i16 15790, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15791, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15792, i16 29, i16 607, i16 610 }, %"struct.llvm::IntrinsicData" { i16 15793, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15794, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15795, i16 29, i16 607, i16 610 }, %"struct.llvm::IntrinsicData" { i16 15796, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15797, i16 32, i16 607, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15798, i16 29, i16 607, i16 610 }, %"struct.llvm::IntrinsicData" { i16 15799, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15800, i16 32, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15801, i16 29, i16 603, i16 606 }, %"struct.llvm::IntrinsicData" { i16 15802, i16 41, i16 619, i16 737 }, %"struct.llvm::IntrinsicData" { i16 15803, i16 41, i16 619, i16 737 }, %"struct.llvm::IntrinsicData" { i16 15804, i16 41, i16 619, i16 737 }, %"struct.llvm::IntrinsicData" { i16 15805, i16 17, i16 864, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15806, i16 17, i16 864, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15807, i16 17, i16 864, i16 867 }, %"struct.llvm::IntrinsicData" { i16 15808, i16 17, i16 865, i16 866 }, %"struct.llvm::IntrinsicData" { i16 15809, i16 33, i16 868, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15810, i16 33, i16 868, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15811, i16 33, i16 868, i16 871 }, %"struct.llvm::IntrinsicData" { i16 15812, i16 36, i16 869, i16 870 }, %"struct.llvm::IntrinsicData" { i16 15813, i16 17, i16 876, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15814, i16 17, i16 876, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15815, i16 17, i16 876, i16 879 }, %"struct.llvm::IntrinsicData" { i16 15816, i16 17, i16 877, i16 878 }, %"struct.llvm::IntrinsicData" { i16 15817, i16 33, i16 880, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15818, i16 33, i16 880, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15819, i16 33, i16 880, i16 883 }, %"struct.llvm::IntrinsicData" { i16 15820, i16 36, i16 881, i16 882 }, %"struct.llvm::IntrinsicData" { i16 15821, i16 18, i16 864, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15822, i16 18, i16 864, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15823, i16 18, i16 864, i16 867 }, %"struct.llvm::IntrinsicData" { i16 15824, i16 18, i16 865, i16 866 }, %"struct.llvm::IntrinsicData" { i16 15825, i16 18, i16 876, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15826, i16 18, i16 876, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15827, i16 18, i16 876, i16 879 }, %"struct.llvm::IntrinsicData" { i16 15828, i16 18, i16 877, i16 878 }, %"struct.llvm::IntrinsicData" { i16 15829, i16 13, i16 304, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15830, i16 13, i16 304, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15831, i16 28, i16 304, i16 658 }, %"struct.llvm::IntrinsicData" { i16 15832, i16 13, i16 303, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15833, i16 13, i16 303, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15834, i16 28, i16 303, i16 662 }, %"struct.llvm::IntrinsicData" { i16 15835, i16 13, i16 101, i16 669 }, %"struct.llvm::IntrinsicData" { i16 15836, i16 12, i16 262, i16 690 }, %"struct.llvm::IntrinsicData" { i16 15837, i16 13, i16 100, i16 694 }, %"struct.llvm::IntrinsicData" { i16 15838, i16 23, i16 575, i16 834 }, %"struct.llvm::IntrinsicData" { i16 15839, i16 12, i16 594, i16 595 }, %"struct.llvm::IntrinsicData" { i16 15840, i16 12, i16 594, i16 595 }, %"struct.llvm::IntrinsicData" { i16 15841, i16 12, i16 596, i16 597 }, %"struct.llvm::IntrinsicData" { i16 15842, i16 12, i16 596, i16 597 }, %"struct.llvm::IntrinsicData" { i16 15843, i16 13, i16 790, i16 791 }, %"struct.llvm::IntrinsicData" { i16 15844, i16 13, i16 790, i16 791 }, %"struct.llvm::IntrinsicData" { i16 15845, i16 27, i16 611, i16 614 }, %"struct.llvm::IntrinsicData" { i16 15846, i16 27, i16 611, i16 614 }, %"struct.llvm::IntrinsicData" { i16 15847, i16 27, i16 615, i16 618 }, %"struct.llvm::IntrinsicData" { i16 15848, i16 27, i16 615, i16 618 }, %"struct.llvm::IntrinsicData" { i16 15849, i16 13, i16 792, i16 793 }, %"struct.llvm::IntrinsicData" { i16 15850, i16 13, i16 792, i16 793 }, %"struct.llvm::IntrinsicData" { i16 15851, i16 14, i16 155, i16 654 }, %"struct.llvm::IntrinsicData" { i16 15852, i16 14, i16 155, i16 654 }, %"struct.llvm::IntrinsicData" { i16 15853, i16 14, i16 652, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15854, i16 14, i16 652, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15855, i16 14, i16 652, i16 653 }, %"struct.llvm::IntrinsicData" { i16 15858, i16 13, i16 550, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15859, i16 13, i16 550, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15860, i16 13, i16 562, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15861, i16 13, i16 562, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15882, i16 14, i16 652, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15883, i16 14, i16 652, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15884, i16 14, i16 652, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15885, i16 14, i16 652, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15905, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15906, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15907, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15908, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15909, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15910, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15911, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15912, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15913, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15914, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15915, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15916, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15917, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15918, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15919, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15920, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15921, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15922, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15923, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15924, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15925, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15926, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15927, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15928, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15929, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15930, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15931, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15932, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15933, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15934, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15935, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15936, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15937, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15938, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15939, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15940, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15941, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15942, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15943, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15944, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15945, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15946, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15947, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15948, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15949, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15950, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15951, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15952, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15953, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15954, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15955, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15956, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15957, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15958, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15959, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15960, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15961, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15962, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15963, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15964, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15965, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15966, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15967, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15968, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15969, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15970, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15971, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15979, i16 14, i16 762, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15980, i16 14, i16 762, i16 0 }, %"struct.llvm::IntrinsicData" { i16 15981, i16 14, i16 762, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16019, i16 14, i16 574, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16020, i16 14, i16 683, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16021, i16 22, i16 575, i16 17 }, %"struct.llvm::IntrinsicData" { i16 16022, i16 22, i16 575, i16 19 }, %"struct.llvm::IntrinsicData" { i16 16023, i16 22, i16 575, i16 18 }, %"struct.llvm::IntrinsicData" { i16 16024, i16 22, i16 575, i16 21 }, %"struct.llvm::IntrinsicData" { i16 16025, i16 22, i16 575, i16 20 }, %"struct.llvm::IntrinsicData" { i16 16026, i16 22, i16 575, i16 22 }, %"struct.llvm::IntrinsicData" { i16 16027, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16028, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16029, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16030, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16031, i16 12, i16 594, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16032, i16 12, i16 594, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16033, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16034, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16035, i16 12, i16 611, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16036, i16 12, i16 611, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16038, i16 13, i16 304, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16039, i16 13, i16 656, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16040, i16 13, i16 303, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16041, i16 13, i16 660, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16042, i16 12, i16 745, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16043, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16044, i16 12, i16 681, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16046, i16 12, i16 682, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16050, i16 22, i16 834, i16 17 }, %"struct.llvm::IntrinsicData" { i16 16051, i16 22, i16 834, i16 19 }, %"struct.llvm::IntrinsicData" { i16 16052, i16 22, i16 834, i16 18 }, %"struct.llvm::IntrinsicData" { i16 16053, i16 22, i16 834, i16 21 }, %"struct.llvm::IntrinsicData" { i16 16054, i16 22, i16 834, i16 20 }, %"struct.llvm::IntrinsicData" { i16 16055, i16 22, i16 834, i16 22 }, %"struct.llvm::IntrinsicData" { i16 16057, i16 14, i16 574, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16058, i16 14, i16 683, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16059, i16 22, i16 575, i16 17 }, %"struct.llvm::IntrinsicData" { i16 16060, i16 22, i16 575, i16 19 }, %"struct.llvm::IntrinsicData" { i16 16061, i16 22, i16 575, i16 18 }, %"struct.llvm::IntrinsicData" { i16 16062, i16 22, i16 575, i16 21 }, %"struct.llvm::IntrinsicData" { i16 16063, i16 22, i16 575, i16 20 }, %"struct.llvm::IntrinsicData" { i16 16064, i16 22, i16 575, i16 22 }, %"struct.llvm::IntrinsicData" { i16 16065, i16 12, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16066, i16 12, i16 890, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16067, i16 12, i16 586, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16068, i16 12, i16 594, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16069, i16 12, i16 594, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16070, i16 13, i16 893, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16071, i16 12, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16072, i16 12, i16 603, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16073, i16 12, i16 611, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16074, i16 12, i16 611, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16077, i16 13, i16 304, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16078, i16 13, i16 656, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16080, i16 13, i16 303, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16081, i16 13, i16 660, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16082, i16 12, i16 745, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16083, i16 13, i16 759, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16084, i16 13, i16 759, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16085, i16 13, i16 760, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16087, i16 13, i16 184, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16088, i16 13, i16 184, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16089, i16 13, i16 947, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16090, i16 12, i16 745, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16091, i16 13, i16 180, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16092, i16 13, i16 179, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16093, i16 13, i16 773, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16094, i16 13, i16 967, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16095, i16 13, i16 967, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16096, i16 13, i16 967, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16097, i16 21, i16 970, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16098, i16 21, i16 970, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16099, i16 21, i16 970, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16100, i16 13, i16 973, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16101, i16 13, i16 973, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16102, i16 21, i16 974, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16103, i16 21, i16 974, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16104, i16 13, i16 976, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16105, i16 13, i16 976, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16106, i16 13, i16 976, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16107, i16 21, i16 978, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16108, i16 21, i16 978, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16109, i16 21, i16 978, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16110, i16 22, i16 834, i16 17 }, %"struct.llvm::IntrinsicData" { i16 16111, i16 22, i16 834, i16 19 }, %"struct.llvm::IntrinsicData" { i16 16112, i16 22, i16 834, i16 18 }, %"struct.llvm::IntrinsicData" { i16 16113, i16 22, i16 834, i16 21 }, %"struct.llvm::IntrinsicData" { i16 16114, i16 22, i16 834, i16 20 }, %"struct.llvm::IntrinsicData" { i16 16115, i16 22, i16 834, i16 22 }, %"struct.llvm::IntrinsicData" { i16 16116, i16 13, i16 541, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16117, i16 13, i16 541, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16118, i16 13, i16 645, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16119, i16 13, i16 645, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16120, i16 13, i16 646, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16121, i16 13, i16 646, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16125, i16 24, i16 553, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16126, i16 24, i16 553, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16129, i16 14, i16 704, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16130, i16 16, i16 752, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16131, i16 13, i16 760, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16132, i16 24, i16 553, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16133, i16 12, i16 767, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16137, i16 52, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16138, i16 52, i16 961, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16139, i16 53, i16 962, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16140, i16 53, i16 962, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16160, i16 14, i16 631, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16162, i16 15, i16 705, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16163, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16164, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16165, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16166, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16167, i16 13, i16 699, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16168, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16169, i16 13, i16 700, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16170, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16171, i16 13, i16 699, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16172, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16173, i16 13, i16 701, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16174, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16175, i16 13, i16 702, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16176, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16177, i16 13, i16 701, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16178, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16179, i16 13, i16 946, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16180, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16181, i16 13, i16 753, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16182, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16183, i16 13, i16 774, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16184, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16186, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16188, i16 55, i16 0, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16192, i16 10, i16 789, i16 823 }, %"struct.llvm::IntrinsicData" { i16 16193, i16 10, i16 789, i16 823 }, %"struct.llvm::IntrinsicData" { i16 16194, i16 25, i16 551, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16195, i16 25, i16 551, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16271, i16 13, i16 592, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16272, i16 13, i16 592, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16273, i16 14, i16 696, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16274, i16 14, i16 696, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16275, i16 14, i16 696, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16276, i16 14, i16 697, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16277, i16 14, i16 697, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16278, i16 14, i16 697, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16279, i16 13, i16 698, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16280, i16 13, i16 698, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16281, i16 13, i16 698, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16315, i16 15, i16 939, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16316, i16 15, i16 939, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16317, i16 15, i16 939, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16318, i16 15, i16 939, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16346, i16 14, i16 948, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16347, i16 13, i16 949, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16348, i16 13, i16 949, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16349, i16 13, i16 949, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16350, i16 13, i16 949, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16351, i16 13, i16 950, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16352, i16 13, i16 950, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16353, i16 13, i16 950, i16 0 }, %"struct.llvm::IntrinsicData" { i16 16354, i16 13, i16 950, i16 0 }], align 16
@.str.100 = private unnamed_addr constant [65 x i8] c"querying registration node size for function without personality\00", align 1
@.str.101 = private unnamed_addr constant [61 x i8] c"can only recover FP for 32-bit MSVC EH personality functions\00", align 1
@_ZTVN4llvm25DiagnosticInfoUnsupportedE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm14ConstantFolderE = external unnamed_addr constant { [22 x ptr] }, align 8
@_ZTVN4llvm25IRBuilderCallbackInserterE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.113 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.116 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@__const._ZL24LowerVectorCTPOPInRegLUTN4llvm7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGE.LUT = private unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 2, i32 3, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4], align 16
@__const._ZL15LowerBITREVERSEN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.LoLUT = private unnamed_addr constant [16 x i32] [i32 0, i32 128, i32 64, i32 192, i32 32, i32 160, i32 96, i32 224, i32 16, i32 144, i32 80, i32 208, i32 48, i32 176, i32 112, i32 240], align 16
@__const._ZL15LowerBITREVERSEN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.HiLUT = private unnamed_addr constant [16 x i32] [i32 0, i32 8, i32 4, i32 12, i32 2, i32 10, i32 6, i32 14, i32 1, i32 9, i32 5, i32 13, i32 3, i32 11, i32 7, i32 15], align 16
@constinit.118 = private unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 4
@__const._ZL17lowerV4I32ShuffleRKN4llvm5SDLocENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES8_RKNS_12X86SubtargetERNS_12SelectionDAGE.UnpackLoMask = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 1, i32 1], align 16
@__const._ZL17lowerV4I32ShuffleRKN4llvm5SDLocENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES8_RKNS_12X86SubtargetERNS_12SelectionDAGE.UnpackHiMask = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 3, i32 3], align 16
@__const._ZL31lowerShuffleAsSpecificExtensionRKN4llvm5SDLocENS_3MVTEiijNS_7SDValueENS_8ArrayRefIiEERKNS_12X86SubtargetERNS_12SelectionDAGE.PSHUFWMask = private unnamed_addr constant [4 x i32] [i32 1, i32 -1, i32 -1, i32 -1], align 16
@constinit.120 = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13], align 4
@constinit.121 = private unnamed_addr constant [8 x i32] [i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15], align 4
@constinit.122 = private unnamed_addr constant [8 x i32] [i32 8, i32 0, i32 8, i32 2, i32 8, i32 4, i32 8, i32 6], align 4
@constinit.123 = private unnamed_addr constant [8 x i32] [i32 1, i32 8, i32 3, i32 8, i32 5, i32 8, i32 7, i32 8], align 4
@constinit.124 = private unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23], align 4
@constinit.129 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 62 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@constinit.130 = private unnamed_addr constant [10 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 7 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 94 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 94 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 94 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 94 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 94 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 94 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 94 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 94 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@.str.131 = private unnamed_addr constant [52 x i8] c"EH registrations only live in functions using WinEH\00", align 1
@.str.132 = private unnamed_addr constant [47 x i8] c"llvm.x86.seh.ehregnode expects a static alloca\00", align 1
@.str.133 = private unnamed_addr constant [43 x i8] c"EHGuard only live in functions using WinEH\00", align 1
@.str.134 = private unnamed_addr constant [45 x i8] c"llvm.x86.seh.ehguard expects a static alloca\00", align 1
@__const._ZL23LowerVectorCTLZInRegLUTN4llvm7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGE.LUT = private unnamed_addr constant <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 4, i32 3, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1], [8 x i32] zeroinitializer }>, align 16
@_ZZL8LowerMULN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE10UnpackMask = internal constant [4 x i32] [i32 1, i32 1, i32 3, i32 3], align 16
@_ZZL8LowerMULN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE8ShufMask = internal constant [4 x i32] [i32 0, i32 4, i32 2, i32 6], align 16
@__const._ZL9LowerMULHN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.Mask = private unnamed_addr constant [16 x i32] [i32 1, i32 -1, i32 3, i32 -1, i32 5, i32 -1, i32 7, i32 -1, i32 9, i32 -1, i32 11, i32 -1, i32 13, i32 -1, i32 15, i32 -1], align 16
@_ZZL11LowerRotateN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGEE7OddMask = internal constant [4 x i32] [i32 1, i32 1, i32 3, i32 3], align 16
@constinit.135 = private unnamed_addr constant [8 x i32] [i32 4, i32 5, i32 6, i32 7, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@constinit.136 = private unnamed_addr constant [8 x i32] [i32 9, i32 1, i32 11, i32 3, i32 13, i32 5, i32 15, i32 7], align 4
@constinit.137 = private unnamed_addr constant [8 x i32] [i32 8, i32 1, i32 10, i32 3, i32 12, i32 5, i32 14, i32 7], align 4
@constinit.138 = private unnamed_addr constant [16 x i32] [i32 1, i32 16, i32 3, i32 16, i32 5, i32 16, i32 7, i32 16, i32 9, i32 16, i32 11, i32 16, i32 13, i32 16, i32 15, i32 16], align 4
@.str.139 = private unnamed_addr constant [35 x i8] c"Bad address space in addrspacecast\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"no-jump-tables\00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c"__x86_indirect_thunk_eax\00", align 1
@.str.142 = private unnamed_addr constant [25 x i8] c"__x86_indirect_thunk_ecx\00", align 1
@.str.143 = private unnamed_addr constant [25 x i8] c"__x86_indirect_thunk_edx\00", align 1
@.str.144 = private unnamed_addr constant [25 x i8] c"__x86_indirect_thunk_edi\00", align 1
@.str.145 = private unnamed_addr constant [25 x i8] c"__x86_indirect_thunk_r11\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"__llvm_retpoline_eax\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"__llvm_retpoline_ecx\00", align 1
@.str.148 = private unnamed_addr constant [21 x i8] c"__llvm_retpoline_edx\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"__llvm_retpoline_edi\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"__llvm_retpoline_r11\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"__llvm_lvi_thunk_r11\00", align 1
@constinit.153 = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7], align 4
@constinit.154 = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6], align 4
@constinit.155 = private unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14], align 4
@constinit.156 = private unnamed_addr constant [16 x i32] [i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15], align 4
@constinit.157 = private unnamed_addr constant [8 x i32] [i32 8, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@constinit.158 = private unnamed_addr constant [16 x i32] [i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@__const._ZL27combineXorWithGF2P8AFFINEQBPN4llvm6SDNodeERKNS_5SDLocERNS_12SelectionDAGENS_3EVTE.IdentityMatrix = private unnamed_addr constant [8 x i8] c"\80@ \10\08\04\02\01", align 1
@constinit.159 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 136 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@__const._ZL25combineHorizOpWithShufflePN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.Map = private unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 1, i32 3], align 16
@__const._ZL20combineTargetShuffleN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.DMask = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@__const._ZL15combineFP_ROUNDPN4llvm6SDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.Mask = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11], align 16
@constinit.163 = private unnamed_addr constant [2 x %"struct.llvm::EVT"] [%"struct.llvm::EVT" { %"class.llvm::MVT" { i16 112 }, ptr null }, %"struct.llvm::EVT" { %"class.llvm::MVT" { i16 1 }, ptr null }], align 8
@_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallImplNameTableE = external local_unnamed_addr global %"class.llvm::StringTable", align 8
@_ZN4llvm5RTLIB19RuntimeLibcallsInfo29RuntimeLibcallNameOffsetTableE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN4llvm5RTLIB19RuntimeLibcallsInfo27RuntimeLibcallNameSizeTableE = external local_unnamed_addr constant [0 x i8], align 1
@_ZTVN4llvm2cl11OptionValueIiEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIiE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIiEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_X86ISelLowering.cpp, ptr null }]
@switch.table._ZL14TranslateX86CCN4llvm3ISD8CondCodeERKNS_5SDLocEbRNS_7SDValueES6_RNS_12SelectionDAGE.922 = private unnamed_addr constant [8 x i8] c"\07\03\05\0B\0A\04\02\06", align 4
@switch.table._ZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE = private unnamed_addr constant [22 x i8] c"\00\01\01\01\01\00\00\00\00\01\01\01\01\00\01\01\00\01\01\01\01\00", align 1
@switch.table._ZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.923 = private unnamed_addr constant [13 x i8] [i8 2, i8 3, i8 0, i8 1, i8 poison, i8 poison, i8 poison, i8 4, i8 2, i8 3, i8 0, i8 1, i8 5], align 8
@switch.table._ZNK4llvm17X86TargetLowering15LowerSETCCCARRYENS_7SDValueERNS_12SelectionDAGE = private unnamed_addr constant [13 x i8] [i8 7, i8 3, i8 2, i8 6, i8 poison, i8 poison, i8 poison, i8 4, i8 15, i8 13, i8 12, i8 14, i8 5], align 8
@switch.table._ZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGE = private unnamed_addr constant [12 x i16] [i16 995, i16 995, i16 995, i16 995, i16 995, i16 poison, i16 poison, i16 994, i16 994, i16 994, i16 994, i16 994], align 4
@switch.table._ZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGE.924 = private unnamed_addr constant [12 x i8] [i8 7, i8 2, i8 0, i8 8, i8 4, i8 poison, i8 poison, i8 7, i8 2, i8 0, i8 8, i8 4], align 8
@switch.table._ZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGE.925 = private unnamed_addr constant [13 x i16] [i16 15941, i16 15942, i16 15943, i16 poison, i16 poison, i16 15947, i16 15948, i16 poison, i16 poison, i16 poison, i16 15951, i16 15952, i16 15953], align 8
@switch.table._ZL26getTargetVShiftByConstNodejRKN4llvm5SDLocENS_3MVTENS_7SDValueEmRNS_12SelectionDAGE = private unnamed_addr constant [9 x i8] [i8 -58, i8 poison, i8 poison, i8 poison, i8 -57, i8 poison, i8 poison, i8 poison, i8 -56], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE = private unnamed_addr constant [17 x i8] c"\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\03", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.926 = private unnamed_addr constant [17 x i8] c"\04\00\00\00\05\00\00\00\06\00\00\00\00\00\00\00\09", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.927 = private unnamed_addr constant [17 x i8] c"\0A\00\00\00\0B\00\00\00\00\00\00\0C\00\00\00\00\0D", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.928 = private unnamed_addr constant [17 x i8] c"\0F\10\00\00\13\00\00\00\00\00\00\14\00\00\00\00\15", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.929 = private unnamed_addr constant [12 x i8] c">\00\00\00\00\00\00A\00\00D\7F", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.930 = private unnamed_addr constant [10 x i16] [i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 292, i16 293, i16 294, i16 295], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.931 = private unnamed_addr constant [22 x i8] c"\97\00\A7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\AF", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.932 = private unnamed_addr constant [22 x i8] c"\98\00\A8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B0", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.933 = private unnamed_addr constant [22 x i8] c"\99\00\A9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B1", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.934 = private unnamed_addr constant [22 x i8] c"\9A\00\AA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B2", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.935 = private unnamed_addr constant [22 x i8] c"\9B\00\AB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B3", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.936 = private unnamed_addr constant [22 x i8] c"\9C\00\AC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B4", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.937 = private unnamed_addr constant [22 x i8] c"\9D\00\AD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B5", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.938 = private unnamed_addr constant [22 x i8] c"\9E\00\AE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B6", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.939 = private unnamed_addr constant [22 x i16] [i16 308, i16 0, i16 340, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 356], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.940 = private unnamed_addr constant [22 x i16] [i16 309, i16 0, i16 341, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 357], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.941 = private unnamed_addr constant [22 x i16] [i16 310, i16 0, i16 342, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 358], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.942 = private unnamed_addr constant [22 x i16] [i16 311, i16 0, i16 343, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 359], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.943 = private unnamed_addr constant [22 x i16] [i16 312, i16 0, i16 344, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 360], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.944 = private unnamed_addr constant [22 x i16] [i16 313, i16 0, i16 345, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 361], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.945 = private unnamed_addr constant [22 x i16] [i16 314, i16 0, i16 346, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 362], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.946 = private unnamed_addr constant [22 x i16] [i16 315, i16 0, i16 347, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 363], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.947 = private unnamed_addr constant [22 x i16] [i16 316, i16 0, i16 348, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 364], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.948 = private unnamed_addr constant [22 x i16] [i16 317, i16 0, i16 349, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 365], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.949 = private unnamed_addr constant [22 x i16] [i16 318, i16 0, i16 350, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 366], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.950 = private unnamed_addr constant [22 x i16] [i16 319, i16 0, i16 351, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 367], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.951 = private unnamed_addr constant [22 x i16] [i16 320, i16 0, i16 352, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 368], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.952 = private unnamed_addr constant [22 x i16] [i16 321, i16 0, i16 353, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 369], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.953 = private unnamed_addr constant [22 x i16] [i16 322, i16 0, i16 354, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 370], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.954 = private unnamed_addr constant [22 x i16] [i16 323, i16 0, i16 355, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 371], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.955 = private unnamed_addr constant [10 x i8] c"\91\92\93\94\95\96\D7\D8\D9\DA", align 4
@switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.956 = private unnamed_addr constant [10 x i8] c"\C9\CA\CB\CC\CD\CE\E7\E8\E9\EA", align 4
@switch.table._ZNK4llvm17X86TargetLowering17LowerSET_ROUNDINGENS_7SDValueERNS_12SelectionDAGE = private unnamed_addr constant [4 x i16] [i16 3072, i16 0, i16 2048, i16 1024], align 8
@switch.table._ZNK4llvm17X86TargetLowering17LowerWin64_i128OPENS_7SDValueERNS_12SelectionDAGE = private unnamed_addr constant [4 x i16] [i16 1242, i16 1562, i16 1379, i16 1604], align 8
@switch.table._ZNK4llvm17X86TargetLowering29emitBitTestAtomicRMWIntrinsicEPNS_13AtomicRMWInstE = private unnamed_addr constant [4 x i16] [i16 14721, i16 poison, i16 14723, i16 14719], align 4
@switch.table._ZNK4llvm17X86TargetLowering29emitBitTestAtomicRMWIntrinsicEPNS_13AtomicRMWInstE.957 = private unnamed_addr constant [4 x i16] [i16 14720, i16 poison, i16 14722, i16 14718], align 4
@switch.table._ZNK4llvm17X86TargetLowering30emitCmpArithAtomicRMWIntrinsicEPNS_13AtomicRMWInstE = private unnamed_addr constant [6 x i16] [i16 14716, i16 14725, i16 14717, i16 poison, i16 14724, i16 14726], align 4
@switch.table._ZNK4llvm17X86TargetLowering32lowerIdempotentRMWIntoFencedLoadEPNS_13AtomicRMWInstE = private unnamed_addr constant [6 x i16] [i16 256, i16 poison, i16 512, i16 256, i16 512, i16 896], align 2
@switch.table._ZL13LowerCMP_SWAPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE = private unnamed_addr constant [4 x i8] c"\01\02\04\08", align 8
@switch.table._ZL13LowerCMP_SWAPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.958 = private unnamed_addr constant [4 x i8] c"\02\03\163", align 4
@switch.table._ZL10LowerCTPOPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE = private unnamed_addr constant [32 x i8] [i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 63, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 64], align 2
@switch.table._ZL10LowerCTPOPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.959 = private unnamed_addr constant [7 x i8] c"ABCD\00\00E", align 2
@switch.table._ZL19lowerVECTOR_SHUFFLEN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE = private unnamed_addr constant [5 x i8] [i8 13, i8 14, i8 poison, i8 15, i8 16], align 2
@switch.table._ZL22LowerINTRINSIC_W_CHAINN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE = private unnamed_addr constant [6 x i16] [i16 542, i16 543, i16 poison, i16 poison, i16 544, i16 545], align 4
@switch.table._ZL22LowerINTRINSIC_W_CHAINN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.960 = private unnamed_addr constant [6 x i16] [i16 1000, i16 1002, i16 poison, i16 poison, i16 999, i16 1001], align 4
@switch.table._ZL22LowerINTRINSIC_W_CHAINN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.961 = private unnamed_addr constant [11 x i16] [i16 712, i16 713, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 723, i16 724, i16 726], align 4
@switch.table._ZNK4llvm17X86TargetLowering24EmitLoweredIndirectThunkERNS_12MachineInstrEPNS_17MachineBasicBlockE = private unnamed_addr constant [4 x i64] [i64 -1168, i64 -1164, i64 -4972, i64 -4973], align 8
@switch.table._ZNK4llvm17X86TargetLowering27EmitInstrWithCustomInserterERNS_12MachineInstrEPNS_17MachineBasicBlockE = private unnamed_addr constant [11 x i64] [i64 -1990, i64 -1993, i64 -1996, i64 -1991, i64 -1994, i64 -1997, i64 poison, i64 poison, i64 -1992, i64 -1995, i64 -1998], align 8
@switch.table._ZNK4llvm17X86TargetLowering27EmitInstrWithCustomInserterERNS_12MachineInstrEPNS_17MachineBasicBlockE.963 = private unnamed_addr constant [37 x i64] [i64 -4967, i64 poison, i64 -4968, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -4992, i64 -4993, i64 poison, i64 -4994, i64 poison, i64 -4995, i64 -4996, i64 -4997, i64 -4998, i64 -4999, i64 -5000, i64 poison, i64 -5001], align 8
@switch.table._ZNK4llvm17X86TargetLowering27EmitInstrWithCustomInserterERNS_12MachineInstrEPNS_17MachineBasicBlockE.964 = private unnamed_addr constant [41 x i64] [i64 -4982, i64 poison, i64 poison, i64 poison, i64 -4984, i64 poison, i64 poison, i64 poison, i64 -4986, i64 poison, i64 poison, i64 poison, i64 -4988, i64 poison, i64 poison, i64 poison, i64 -4990, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -5032], align 8
@switch.table._ZNK4llvm17X86TargetLowering27EmitInstrWithCustomInserterERNS_12MachineInstrEPNS_17MachineBasicBlockE.965 = private unnamed_addr constant [41 x i64] [i64 -4981, i64 poison, i64 poison, i64 poison, i64 -4983, i64 poison, i64 poison, i64 poison, i64 -4985, i64 poison, i64 poison, i64 poison, i64 -4987, i64 poison, i64 poison, i64 poison, i64 -4989, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -5031], align 8
@switch.table._ZL13combineSelectPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE = private unnamed_addr constant [11 x i8] [i8 11, i8 poison, i8 13, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 19, i8 poison, i8 21], align 4
@switch.table._ZL26combineEXTEND_VECTOR_INREGPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE = private unnamed_addr constant [13 x i8] [i8 -29, i8 -28, i8 -27, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 -27, i8 -29, i8 -28], align 4
@switch.table._ZNK4llvm17X86TargetLowering17getConstraintTypeENS_9StringRefE = private unnamed_addr constant [57 x i8] [i8 0, i8 poison, i8 5, i8 0, i8 poison, i8 poison, i8 4, i8 poison, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 poison, i8 poison, i8 1, i8 1, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 5, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 5, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 1, i8 1, i8 1, i8 poison, i8 1, i8 1], align 4
@switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE = private unnamed_addr constant [26 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 640), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 896), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 704), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 640), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 896), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 704)], align 8
@switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.966 = private unnamed_addr constant [23 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2816), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 5760), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2816), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 5760)], align 8
@switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.967 = private unnamed_addr constant [13 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 320), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 320), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1344), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3072), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3072)], align 8
@switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.968 = private unnamed_addr constant [13 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 192), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 192), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 576), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2752), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2752)], align 8
@switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.969 = private unnamed_addr constant [26 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1024), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1216), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 960), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1024), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1216), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 960)], align 8
@switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.970 = private unnamed_addr constant [23 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3008), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 6208), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3008), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 6208)], align 8
@switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.971 = private unnamed_addr constant [10 x i8] c"\16\17\18\19\1A\1B\00\00\00 ", align 4
@switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.972 = private unnamed_addr constant [10 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3264), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3392), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3456), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3520), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3648), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3584), ptr null, ptr null, ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3712)], align 8
@switch.table._ZL24lowerAtomicArithWithLOCKN4llvm7SDValueERNS_12SelectionDAGERKNS_12X86SubtargetE = private unnamed_addr constant [6 x i16] [i16 712, i16 724, i16 713, i16 poison, i16 723, i16 726], align 4
@switch.table._ZL30lowerShuffleAsElementInsertionRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE = private unnamed_addr constant [3 x i16] [i16 748, i16 751, i16 747], align 4
@switch.table._ZL18lowerV4X128ShuffleRKN4llvm5SDLocENS_3MVTENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES9_RKNS_12X86SubtargetERNS_12SelectionDAGE = private unnamed_addr constant [14 x i8] c"\16\00\00+:I`\00\00\00{l\88\9C", align 2
@switch.table._ZL18lowerV4X128ShuffleRKN4llvm5SDLocENS_3MVTENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES9_RKNS_12X86SubtargetERNS_12SelectionDAGE.973 = private unnamed_addr constant [14 x i8] c"\14\00\00)8G^h\00\00yj\86\9A", align 2
@switch.table._ZL14LowerAVXExtendN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE = private unnamed_addr constant [13 x i8] [i8 -18, i8 -17, i8 -19, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 -19, i8 -18, i8 -17], align 4
@switch.table._ZL22combineX86ShuffleChainN4llvm8ArrayRefINS_7SDValueEEEjNS_3MVTENS0_IiEEiNS0_IPKNS_6SDNodeEEEbbbRNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetE = private unnamed_addr constant [3 x i8] c"\EE\EF\ED", align 4
@switch.table._ZL18combineSetCCEFLAGSN4llvm7SDValueERNS_3X868CondCodeERNS_12SelectionDAGERKNS_12X86SubtargetE = private unnamed_addr constant [6 x i8] c"\04\05\02\03\06\07", align 4
@switch.table._ZL24convertIntLogicToFPLogicjRKN4llvm5SDLocENS_3EVTENS_7SDValueES4_RNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE = private unnamed_addr constant [3 x i16] [i16 635, i16 676, i16 695], align 4

@_ZN4llvm17X86TargetLoweringC1ERKNS_16X86TargetMachineERKNS_12X86SubtargetE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4llvm17X86TargetLoweringC2ERKNS_16X86TargetMachineERKNS_12X86SubtargetE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9StringRefC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store ptr %1, ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.b, align 8, !tbaa !70
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIiLb0ENS0_6parserIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIiLb0ENS0_6parserIiEEEE, i64 16), ptr %0, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #39, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !78, !range !79, !noundef !80
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  tail call void @free(ptr noundef %i.i) #39
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #39
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #39, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !78, !range !79, !noundef !80
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  tail call void @free(ptr noundef %i.i) #39
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #39
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17X86TargetLoweringC2ERKNS_16X86TargetMachineERKNS_12X86SubtargetE(ptr noundef nonnull align 8 dereferenceable(518472) %0, ptr noundef nonnull align 8 dereferenceable(1768) %1, ptr noundef nonnull align 8 dereferenceable(519752) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.1023", align 8   ; 4 uses
  %4 = alloca %"struct.std::pair.1023", align 8   ; 4 uses
  %5 = alloca %"struct.std::pair.1023", align 8   ; 4 uses
  %6 = alloca %"struct.std::pair.1023", align 8   ; 4 uses
  %7 = alloca %"struct.std::pair.1023", align 8   ; 4 uses
  %8 = alloca %"struct.std::pair.1023", align 8   ; 4 uses
  %9 = alloca %"struct.std::pair.1023", align 8   ; 16 uses
  %10 = alloca %"struct.std::pair.1023", align 8  ; 16 uses
  %11 = alloca %"struct.std::pair.1023", align 8  ; 16 uses
  %12 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %13 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %14 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %15 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %16 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %17 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %18 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %19 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %20 = alloca %"struct.std::pair.1023", align 8  ; 16 uses
  %21 = alloca %"struct.std::pair.1023", align 8  ; 8 uses
  %22 = alloca %"struct.std::pair.1023", align 8  ; 8 uses
  %23 = alloca %"struct.std::pair.1023", align 8  ; 8 uses
  %24 = alloca %"struct.std::pair.1023", align 8  ; 8 uses
  %25 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %26 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %27 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %28 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %29 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %30 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %31 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %32 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %33 = alloca %"struct.std::pair.1023", align 8  ; 16 uses
  %34 = alloca %"struct.std::pair.1023", align 8  ; 16 uses
  %35 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %36 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %37 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %38 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %39 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %40 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %41 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %42 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %43 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %44 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %45 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %46 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %47 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %48 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %49 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %50 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %51 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %52 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %53 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %54 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %55 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %56 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %57 = alloca %"struct.std::pair.1023", align 8  ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %58 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %59 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %60 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %61 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %62 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %63 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %64 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %65 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %66 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %67 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %68 = alloca %"class.llvm::APFloat", align 8    ; 9 uses
  %69 = alloca %"class.llvm::APFloat", align 8    ; 14 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %70 = alloca %"class.llvm::APFloat", align 8    ; 12 uses
  %71 = alloca %"class.llvm::APFloat", align 8    ; 9 uses
  %72 = alloca %"class.llvm::APFloat", align 8    ; 9 uses
  tail call void @_ZN4llvm14TargetLoweringC2ERKNS_13TargetMachineERKNS_19TargetSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(1728) %1, ptr noundef nonnull align 8 dereferenceable(344) %2) #39
  store ptr getelementptr inbounds nuw inrange(-16, 2688) (i8, ptr @_ZTVN4llvm17X86TargetLoweringE, i64 16), ptr %0, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 30 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 518448 ; 18 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_ZL14TranslateX86CCN4llvm3ISD8CondCodeERKNS_5SDLocEbRNS_7SDValueES6_RNS_12SelectionDAGE:bb.a
    i32 11, label %bb.o
  ]

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !654  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !643  ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %i.h, 65
  br i1 %i.j, label %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit, label %.split

.split:                                           ; preds = %bb.d
  %i.k = tail call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #40
  %i.l = icmp eq i32 %i.k, %i.h
  br i1 %i.l, label %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread, label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit:       ; preds = %bb.d
  %i.m = load i64, ptr %i.f, align 8, !tbaa !357
  %i.n = sub nuw nsw i32 64, %i.h
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 -1, %i.o
  %i.q = icmp eq i64 %i.m, %i.p
  br i1 %i.q, label %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread, label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread: ; preds = %bb.c, %.split, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !467
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !469
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.w, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !471
  %i.x = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.x, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.x, 1
  store ptr %.fca.0.extract4, ptr %4, align 8, !tbaa !465
  store i32 %.fca.1.extract5, ptr %i.r, align 8, !tbaa !240
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !654  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp slt i8 %i.ab, 0
  br i1 %i.ac, label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !643 ; 2 uses
  %i.ag = icmp ult i32 %i.af, 65
  br i1 %i.ag, label %.split65, label %_ZNK4llvm14ConstantSDNode5isOneEv.exit

.split65:                                         ; preds = %bb.f
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !357
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.g, label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

_ZNK4llvm14ConstantSDNode5isOneEv.exit:           ; preds = %bb.f
  %i.aj = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #40
  %i.ak = add i32 %i.af, -1
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.g:                                             ; preds = %.split65, %_ZNK4llvm14ConstantSDNode5isOneEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !467
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !469
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %.sroa.0.0.copyload.i.i49 = load i16, ptr %i.ar, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.21.0.copyload.i.i51 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i50, align 8, !tbaa !471
  %i.as = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0.0.copyload.i.i49, ptr %.sroa.21.0.copyload.i.i51, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !465
  store i32 %.fca.1.extract, ptr %i.am, align 8, !tbaa !240
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !654
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  %spec.select = select i1 %i.ax, i32 13, i32 9
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %bb.b
  %i.ay = sext i32 %0 to i64
  %i.az = getelementptr i8, ptr @switch.table._ZNK4llvm17X86TargetLowering15LowerSETCCCARRYENS_7SDValueERNS_12SelectionDAGE, i64 %i.ay
  %switch.gep = getelementptr i8, ptr %i.az, i64 -10
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  unreachable

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.k:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.l:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.m:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.n:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.o:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.p:                                             ; preds = %bb.a
  %i.ba = load ptr, ptr %3, align 8, !tbaa !472   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !468
  %i.bd = icmp ne i32 %i.bc, 316
  %.not3.i = icmp eq ptr %i.ba, null
  %.not.i = or i1 %.not3.i, %i.bd
  br i1 %.not.i, label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit

_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit:   ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 3072
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread

bb.q:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit
  %i.bi = load ptr, ptr %4, align 8, !tbaa !472   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !468
  %i.bl = icmp ne i32 %i.bk, 316
  %.not3.i54 = icmp eq ptr %i.bi, null
  %.not.i55 = or i1 %.not3.i54, %i.bl
  br i1 %.not.i55, label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56.thread, label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56

_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56: ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = and i16 %i.bn, 3072
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56.thread

_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56.thread: ; preds = %bb.q, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56
  %i.bq = tail call noundef i32 @_ZN4llvm3ISD23getSetCCSwappedOperandsENS0_8CondCodeE(i32 noundef %0) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !683
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread

_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread: ; preds = %bb.p, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit
  %.042 = phi i32 [ %0, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56 ], [ %i.bq, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit56.thread ], [ %0, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit ], [ %0, %bb.p ] ; 2 uses
  switch i32 %.042, label %bb.r [
    i32 4, label %switch.lookup83
    i32 5, label %switch.lookup83
    i32 10, label %switch.lookup83
    i32 11, label %switch.lookup83
    i32 9, label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit
    i32 17, label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit
    i32 2, label %bb.m
    i32 18, label %bb.m
    i32 3, label %bb.o
    i32 19, label %bb.o
    i32 12, label %bb.l
    i32 20, label %bb.l
    i32 13, label %bb.n
    i32 21, label %bb.n
    i32 6, label %bb.k
    i32 22, label %bb.k
    i32 8, label %bb.s
    i32 7, label %bb.t
    i32 1, label %bb.u
    i32 14, label %bb.u
  ]

switch.lookup83:                                  ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !683
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.br = sext i32 %.042 to i64
  %i.bs = getelementptr i8, ptr @switch.table._ZL14TranslateX86CCN4llvm3ISD8CondCodeERKNS_5SDLocEbRNS_7SDValueES6_RNS_12SelectionDAGE.922, i64 %i.br
  %switch.gep84 = getelementptr i8, ptr %i.bs, i64 -4
  %switch.load85 = load i8, ptr %switch.gep84, align 1
  %switch.ext86 = zext i8 %switch.load85 to i32
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.r:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread
  unreachable

bb.s:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.t:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

bb.u:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread
  br label %_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit

_ZL21TranslateIntegerX86CCN4llvm3ISD8CondCodeE.exit: ; preds = %bb.h, %switch.lookup83, %_ZNK4llvm14ConstantSDNode5isOneEv.exit, %.split65, %.split, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.g, %bb.e, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread, %bb.u, %bb.t, %bb.s
  %.1 = phi i32 [ %spec.select, %bb.h ], [ 4, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ 8, %bb.e ], [ 14, %bb.g ], [ 6, %bb.n ], [ 7, %bb.m ], [ 10, %bb.s ], [ 11, %bb.t ], [ 18, %bb.u ], [ %switch.ext, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread ], [ 4, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread ], [ 4, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit.thread ], [ 9, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit.thread ], [ %switch.ext86, %switch.lookup83 ], [ 3, %bb.o ], [ 2, %bb.l ], [ 12, %_ZNK4llvm14ConstantSDNode5isOneEv.exit ], [ 15, %.split ], [ 14, %bb.j ], [ 5, %bb.k ], [ 15, %_ZNK4llvm14ConstantSDNode9isAllOnesEv.exit ], [ 12, %.split65 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL7EmitCmpN4llvm7SDValueES0_NS_3X868CondCodeERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE(ptr %0, i32 %1, ptr %2, i32 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(920) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %7) unnamed_addr #1 {
bb.a:
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %19 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %2, i32 %3) #39
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc { ptr, i32 } @_ZL8EmitTestN4llvm7SDValueENS_3X868CondCodeERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE(ptr %0, i32 %1, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(920) %6)
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !469
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.f, align 8, !tbaa !345 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !471 ; 2 uses
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 6
  %i.g = icmp eq ptr %.sroa.21.0.copyload.i.i, null ; 2 uses
  %.not4.i = select i1 %.not.i.i, i1 %i.g, i1 false
  br i1 %.not4.i, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 431
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1725, !range !79, !noundef !80
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNK4llvm7SDValue9hasOneUseEv.exit265.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN4llvm3X8611mayFoldLoadENS_7SDValueERKNS_12X86SubtargetEbb(ptr nonnull %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(519752) %7, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.k, label %_ZNK4llvm7SDValue9hasOneUseEv.exit265.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef zeroext i1 @_ZN4llvm3X8611mayFoldLoadENS_7SDValueERKNS_12X86SubtargetEbb(ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(519752) %7, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.l, label %_ZNK4llvm7SDValue9hasOneUseEv.exit265.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !464
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !649, !nonnull !80, !align !237
  %i.p = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.o, i32 noundef 19) #39
  br i1 %i.p, label %_ZNK4llvm7SDValue9hasOneUseEv.exit265.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !468
  switch i32 %i.r, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit [
    i32 37, label %bb.i
    i32 12, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %0, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !468
  switch i32 %i.t, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit246 [
    i32 37, label %bb.j
    i32 12, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit246

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit246: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.j
  %.0.i.i.i245 = phi ptr [ %2, %bb.j ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ] ; 2 uses
  %.not = icmp eq ptr %.0.i.i.i, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit246
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !654
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm5APInt12isSignedIntNEj(ptr noundef nonnull align 8 dereferenceable(12) %i.w, i32 noundef 8)
  br i1 %i.x, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit246
  %.not234 = icmp eq ptr %.0.i.i.i245, null
  br i1 %.not234, label %_ZNK4llvm7SDValue9hasOneUseEv.exit265.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i245, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !654
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = tail call noundef zeroext i1 @_ZNK4llvm5APInt12isSignedIntNEj(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, i32 noundef 8)
  br i1 %i.ab, label %_ZNK4llvm7SDValue9hasOneUseEv.exit265.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.ac = add i32 %4, -8
  %switch.i = icmp ult i32 %i.ac, -6
  %i.ad = select i1 %switch.i, i32 227, i32 228   ; 3 uses
  %i.ae = and i32 %4, -2
  %or.cond = icmp eq i32 %i.ae, 4
  br i1 %or.cond, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.af = load i32, ptr %i.q, align 8, !tbaa !468
  %i.ag = icmp eq i32 %i.af, 230
  br i1 %i.ag, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !468
  %i.ai = icmp eq i32 %i.ah, 230
  br i1 %i.ai, label %.sink.split, label %bb.q

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink = phi ptr [ %0, %bb.o ], [ %2, %bb.p ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !638 ; 2 uses
  %.sroa.0148.0.copyload = load ptr, ptr %i.ak, align 8, !tbaa !465
  %.sroa.2149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.2149.0.copyload = load i32, ptr %.sroa.2149.0..sroa_idx, align 8, !tbaa !240
  %i.al = tail call noundef i32 @_ZNK4llvm12SelectionDAG25ComputeMaxSignificantBitsENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %6, ptr %.sroa.0148.0.copyload, i32 %.sroa.2149.0.copyload, i32 noundef 0) #39
  %i.am = icmp ult i32 %i.al, 17
  %spec.select238 = select i1 %i.am, i32 227, i32 %i.ad
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p, %bb.n
  %.0 = phi i32 [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %spec.select238, %.sink.split ] ; 2 uses
  store ptr %0, ptr %8, align 8, !tbaa !465
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %1, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !240
  %i.an = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #39 ; 2 uses
  %.fca.0.extract138 = extractvalue { ptr, i32 } %i.an, 0
  %.fca.1.extract139 = extractvalue { ptr, i32 } %i.an, 1
  store ptr %2, ptr %9, align 8, !tbaa !465
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %3, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !240
  %i.ao = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #39 ; 2 uses
  %.fca.0.extract128 = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract129 = extractvalue { ptr, i32 } %i.ao, 1
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit265.thread

bb.r:                                             ; preds = %bb.c
  %.not.i.i247 = icmp eq i16 %.sroa.0.0.copyload.i.i, 8
  %.not4.i248 = select i1 %.not.i.i247, i1 %i.g, i1 false
  br i1 %.not4.i248, label %bb.s, label %.critedge242.thread

bb.s:                                             ; preds = %bb.r
  %i.ap = add i32 %4, -8
  %switch.i249 = icmp ult i32 %i.ap, -6
  br i1 %switch.i249, label %.critedge242.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.aq, align 8, !tbaa !466 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %.critedge242.thread, label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.au, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.ar, align 8, !tbaa !466 ; 2 uses
  %.not.i.i250 = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i250, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t, %bb.u
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.u ], [ %.sroa.018.022.i.i, %bb.t ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.u ], [ 1, %bb.t ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !467
end_hunk_1
begin_hunk_2_@_ZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #39
  store i16 %i.eb, ptr %62, align 8, !tbaa !345
  %i.hm = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr null, ptr %i.hm, align 8, !tbaa !705
  %.not.i = icmp eq i16 %i.eb, 0
  br i1 %.not.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hn = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.hc
  %i.ho = getelementptr i8, ptr %i.hn, i64 -2
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !345
  %i.hq = zext i16 %i.hp to i64
  %i.hr = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.hs, align 16
  %i.ht = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.hu = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ht)
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %.split.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

.split.i.i.i:                                     ; preds = %bb.bb
  %i.hw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ht, i1 true) ; 2 uses
  %i.hx = icmp samesign ult i32 %i.hw, 10
  br i1 %i.hx, label %switch.lookup.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

switch.lookup.i.i.i:                              ; preds = %.split.i.i.i
  %switch.idx.cast.i.i.i = trunc nuw nsw i32 %i.hw to i16
  %switch.offset.i.i.i = add nuw nsw i16 %switch.idx.cast.i.i.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i.i:            ; preds = %switch.lookup.i.i.i, %.split.i.i.i, %bb.bb
  %.sroa.0.0.i.i.i = phi i16 [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 0, %.split.i.i.i ], [ 0, %bb.bb ] ; 2 uses
  %i.hy = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.hc
  %i.hz = getelementptr i8, ptr %i.hy, i64 -2
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !339
  %i.ib = add i16 %i.eb, -216
  %spec.select.i.i.i.i = icmp ult i16 %i.ib, -53
  %.sroa.0.0.extract.trunc.i.i.i = zext i16 %i.ia to i32 ; 2 uses
  br i1 %spec.select.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.ic = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.id = insertvalue { i16, ptr } poison, i16 %i.ic, 0
  %i.ie = insertvalue { i16, ptr } %i.id, ptr null, 1
  br label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit

bb.bd:                                            ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.if = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.ig = insertvalue { i16, ptr } poison, i16 %i.if, 0
  %i.ih = insertvalue { i16, ptr } %i.ig, ptr null, 1
  br label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit

bb.be:                                            ; preds = %bb.ba
  %i.ii = call { i16, ptr } @_ZNK4llvm3EVT40changeExtendedVectorElementTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %62) #39
  br label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit

_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit: ; preds = %bb.bc, %bb.bd, %bb.be
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.ii, %bb.be ], [ %i.ie, %bb.bc ], [ %i.ih, %bb.bd ] ; 2 uses
  %i.ij = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.ik = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #39
  %i.il = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %i.ij, ptr %i.ik, ptr %.sroa.01365.0, i32 %.sroa.18.0) #39 ; 2 uses
  %.fca.0.extract600 = extractvalue { ptr, i32 } %i.il, 0
  %.fca.1.extract601 = extractvalue { ptr, i32 } %i.il, 1
  %i.im = load ptr, ptr %i.t, align 8, !tbaa !469
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.im, i64 %i.hg
  %.sroa.0.0.copyload.i.i.i1129 = load i16, ptr %i.in, align 8, !tbaa !345
  %i.io = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %i.ij, ptr %i.ik, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract586 = extractvalue { ptr, i32 } %i.io, 0
  %.fca.1.extract587 = extractvalue { ptr, i32 } %i.io, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %.fca.0.extract586, ptr %13, align 8
  %.sroa.21309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract587, ptr %.sroa.21309.0..sroa_idx, align 8
  store ptr %.fca.0.extract600, ptr %11, align 8, !tbaa !465
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract601, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !240
  %i.ip = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 22) #39 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.ip, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.ip, 1
  store ptr %.fca.0.extract2.i, ptr %12, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract3.i, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.iq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 222, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i1129, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, i32 0) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.bg

bb.bf:                                            ; preds = %bb.az
  %i.ir = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i1127, ptr null, ptr %.sroa.01365.0, i32 %.sroa.18.0) #39
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit
  %.pn1935 = phi { ptr, i32 } [ %i.iq, %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit ], [ %i.ir, %bb.bf ] ; 2 uses
  %.sroa.18.1 = extractvalue { ptr, i32 } %.pn1935, 1 ; 2 uses
  %.sroa.01365.1 = extractvalue { ptr, i32 } %.pn1935, 0 ; 2 uses
  br i1 %i.ec, label %bb.bh, label %bb.ea

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #39
  store ptr %.sroa.01365.1, ptr %63, align 8, !tbaa !465
  %.sroa.18.0..sroa_idx1368 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 %.sroa.18.1, ptr %.sroa.18.0..sroa_idx1368, align 8, !tbaa !240
  %i.is = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %.sroa.01397.3, ptr %i.is, align 8, !tbaa !465
  %.sroa.181407.0..sroa_idx1424 = getelementptr inbounds nuw i8, ptr %63, i64 24
  store i32 %.sroa.181407.3, ptr %.sroa.181407.0..sroa_idx1424, align 8, !tbaa !240
  %i.it = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %63, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %15) #39 ; 2 uses
  %.fca.0.extract565 = extractvalue { ptr, i32 } %i.it, 0
  %.fca.1.extract566 = extractvalue { ptr, i32 } %i.it, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #39
  br label %bb.ea

bb.bi:                                            ; preds = %bb.d
  %i.iu = zext i16 %.sroa.0.0.copyload.i.i to i64 ; 5 uses
  %i.iv = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.iv, i64 -2
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !345 ; 3 uses
  %i.iy = icmp eq i16 %i.ix, 2
  br i1 %i.iy, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %.sroa.015.0.copyload.i = load ptr, ptr %i.p, align 8, !tbaa !465 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !240 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.024.0.copyload.i = load ptr, ptr %i.iz, align 8, !tbaa !465 ; 2 uses
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.627.0.copyload.i = load i32, ptr %.sroa.627.0..sroa_idx.i, align 8, !tbaa !240 ; 2 uses
  %.sroa.732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %.sroa.732.0.copyload.i = load i32, ptr %.sroa.732.0..sroa_idx.i, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.013.0.copyload.i = load ptr, ptr %i.ja, align 8, !tbaa !465
  %i.jb = zext i32 %1 to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.jb
  %.sroa.0.0.copyload.i.i.i.i1134 = load i16, ptr %i.jc, align 8, !tbaa !345
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i, i64 88
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !861 ; 2 uses
  %i.jf = icmp eq i32 %i.je, 20
  br i1 %i.jf, label %bb.bk, label %_ZL21LowerIntVSETCC_AVX512N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit

bb.bk:                                            ; preds = %bb.bj
  %i.jg = tail call noundef i32 @_ZN4llvm3ISD23getSetCCSwappedOperandsENS0_8CondCodeE(i32 noundef 20) #39
  br label %_ZL21LowerIntVSETCC_AVX512N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit

_ZL21LowerIntVSETCC_AVX512N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit: ; preds = %bb.bj, %bb.bk
  %.sroa.6.0.i = phi i32 [ %.sroa.627.0.copyload.i, %bb.bk ], [ %.sroa.6.0.copyload.i, %bb.bj ]
  %.sroa.015.0.i = phi ptr [ %.sroa.024.0.copyload.i, %bb.bk ], [ %.sroa.015.0.copyload.i, %bb.bj ]
  %.sroa.024.0.i = phi ptr [ %.sroa.015.0.copyload.i, %bb.bk ], [ %.sroa.024.0.copyload.i, %bb.bj ]
  %.sroa.627.0.i = phi i32 [ %.sroa.6.0.copyload.i, %bb.bk ], [ %.sroa.627.0.copyload.i, %bb.bj ]
  %.0.i = phi i32 [ %i.jg, %bb.bk ], [ %i.je, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.024.0.i, ptr %10, align 8
  %.sroa.236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.627.0.i, ptr %.sroa.236.0..sroa_idx.i, align 8
  %.sroa.337.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %.sroa.732.0.copyload.i, ptr %.sroa.337.0..sroa_idx.i, align 4
  store ptr %.sroa.015.0.i, ptr %8, align 8, !tbaa !465
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.6.0.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.jh = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %.0.i) #39 ; 2 uses
  %.fca.0.extract2.i.i = extractvalue { ptr, i32 } %i.jh, 0
  %.fca.1.extract3.i.i = extractvalue { ptr, i32 } %i.jh, 1
  store ptr %.fca.0.extract2.i.i, ptr %9, align 8
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract3.i.i, ptr %.sroa.25.0..sroa_idx.i.i, align 8
  %i.ji = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 222, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i.i1134, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, i32 0) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.fca.0.extract557 = extractvalue { ptr, i32 } %i.ji, 0
  %.fca.1.extract558 = extractvalue { ptr, i32 } %i.ji, 1
  br label %bb.ea

bb.bl:                                            ; preds = %bb.bi
  %i.jj = add i16 %.sroa.0.0.copyload.i.i, -19    ; 3 uses
  %spec.select.i.i1135 = icmp ult i16 %i.jj, 144  ; 2 uses
  br i1 %spec.select.i.i1135, label %_ZNK4llvm3MVT14is128BitVectorEv.exit, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit:             ; preds = %bb.bl
  %i.jk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.iu
  %i.jl = getelementptr i8, ptr %i.jk, i64 -16
  %.sroa.0.0.copyload.i.i.i1136 = load i64, ptr %i.jl, align 16
  %i.jm = icmp eq i64 %.sroa.0.0.copyload.i.i.i1136, 128
  br i1 %i.jm, label %bb.bm, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.bm:                                            ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 513
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !361, !range !79, !noundef !80
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %switch.lookup1960, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

switch.lookup1960:                                ; preds = %bb.bm
  %i.jq = sext i32 %i.w to i64
  %i.jr = getelementptr i8, ptr @switch.table._ZL11LowerVSETCCN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.923, i64 %i.jq
  %switch.gep1961 = getelementptr i8, ptr %i.jr, i64 -10
  %switch.load1962 = load i8, ptr %switch.gep1961, align 1
  %switch.ext = zext i8 %switch.load1962 to i64
  %spec.select.i1137 = icmp samesign ult i32 %i.w, 14
  %i.js = select i1 %spec.select.i1137, i32 920, i32 919
  store ptr %.sroa.01570.0.copyload17551781, ptr %64, align 8, !tbaa !465
  %.sroa.65.0..sroa_idx1616 = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i32 %.sroa.65.0.copyload17591779, ptr %.sroa.65.0..sroa_idx1616, align 8, !tbaa !240
  %.sroa.97.0..sroa_idx1673 = getelementptr inbounds nuw i8, ptr %64, i64 12
  store i32 %.sroa.97.0.copyload17651777, ptr %.sroa.97.0..sroa_idx1673, align 4
  store ptr %.sroa.01445.0.copyload1783, ptr %65, align 8, !tbaa !465
  %.sroa.63.0..sroa_idx1489 = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i32 %.sroa.63.0.copyload1785, ptr %.sroa.63.0..sroa_idx1489, align 8, !tbaa !240
  %.sroa.91.0..sroa_idx1548 = getelementptr inbounds nuw i8, ptr %65, i64 12
  store i32 %.sroa.91.0.copyload1787, ptr %.sroa.91.0..sroa_idx1548, align 4
  %i.jt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %switch.ext, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract550 = extractvalue { ptr, i32 } %i.jt, 0
  %.fca.1.extract551 = extractvalue { ptr, i32 } %i.jt, 1
  store ptr %.fca.0.extract550, ptr %66, align 8
  %.sroa.2553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i32 %.fca.1.extract551, ptr %.sroa.2553.0..sroa_idx, align 8
  %i.ju = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.js, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %64, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %65, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %66) #39 ; 2 uses
  %.fca.0.extract546 = extractvalue { ptr, i32 } %i.ju, 0
  %.fca.1.extract547 = extractvalue { ptr, i32 } %i.ju, 1
  br label %bb.ea

_ZNK4llvm3MVT14is128BitVectorEv.exit.thread:      ; preds = %bb.bl, %bb.bm, %_ZNK4llvm3MVT14is128BitVectorEv.exit
  switch i32 %i.w, label %.thread1814 [
    i32 22, label %bb.bn
    i32 17, label %bb.bp
  ]

bb.bn:                                            ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread
  %i.jv = tail call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.01445.0.copyload1783) #39
  br i1 %i.jv, label %bb.bo, label %.thread1814

bb.bo:                                            ; preds = %bb.bn
  %i.jw = tail call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr nonnull %.sroa.01570.0.copyload17551781, i32 %.sroa.65.0.copyload17591779) #39
  %.fca.0.extract539 = extractvalue { ptr, i32 } %i.jw, 0 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.fca.0.extract539, i64 24
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !468
  %i.jz = icmp eq i32 %i.jy, 193
  br i1 %i.jz, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, label %.thread1814

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.bo
  %i.ka = getelementptr inbounds nuw i8, ptr %.fca.0.extract539, i64 40 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !638 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %.sroa.0536.0.copyload = load ptr, ptr %i.kc, align 8, !tbaa !465
  %.sroa.2537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  %.sroa.2537.0.copyload = load i32, ptr %.sroa.2537.0..sroa_idx, align 8, !tbaa !240
  %spec.select.i.i.i1138 = icmp ult i16 %i.jj, 197
  %.pre1943 = zext i16 %i.ix to i64
  %spec.select1956 = select i1 %spec.select.i.i.i1138, i64 %.pre1943, i64 %i.iu
  %i.kd = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %spec.select1956
  %i.ke = getelementptr i8, ptr %i.kd, i64 -16
  %.sroa.0.0.copyload.i.i1141 = load i64, ptr %i.ke, align 16
  %i.kf = trunc i64 %.sroa.0.0.copyload.i.i1141 to i32
  %i.kg = tail call fastcc noundef zeroext i1 @_ZL18isConstantPowerOf2N4llvm7SDValueEjb(ptr %.sroa.0536.0.copyload, i32 %.sroa.2537.0.copyload, i32 noundef %i.kf, i1 noundef zeroext false)
  br i1 %i.kg, label %.thread1825, label %.thread1814

.thread1825:                                      ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.kh = load ptr, ptr %i.ka, align 8, !tbaa !638 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  %.sroa.0529.0.copyload = load ptr, ptr %i.ki, align 8, !tbaa !465
  %.sroa.2530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  %.sroa.2530.0.copyload = load i32, ptr %.sroa.2530.0..sroa_idx, align 8, !tbaa !240
  %i.kj = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr %.sroa.0529.0.copyload, i32 %.sroa.2530.0.copyload) #39 ; 2 uses
  %.fca.0.extract525 = extractvalue { ptr, i32 } %i.kj, 0
  %.fca.1.extract526 = extractvalue { ptr, i32 } %i.kj, 1
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread, %.thread1825
  %.sroa.63.21830 = phi i32 [ %.fca.1.extract526, %.thread1825 ], [ %.sroa.63.0.copyload1785, %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread ] ; 10 uses
  %.sroa.01445.21829 = phi ptr [ %.fca.0.extract525, %.thread1825 ], [ %.sroa.01445.0.copyload1783, %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread ] ; 10 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.01570.0.copyload17551781, i64 24
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !468
  %i.km = icmp eq i32 %i.kl, 193
  br i1 %i.km, label %bb.bq, label %.thread1814

bb.bq:                                            ; preds = %bb.bp
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.01570.0.copyload17551781, i64 40 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !638 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !472
  %i.kr = icmp eq ptr %i.kq, %.sroa.01445.21829
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  %i.kt = load i32, ptr %i.ks, align 8
  %i.ku = icmp eq i32 %i.kt, %.sroa.63.21830
  %i.kv = select i1 %i.kr, i1 %i.ku, i1 false
  br i1 %i.kv, label %bb.br, label %.thread1814

bb.br:                                            ; preds = %bb.bq
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.01570.0.copyload17551781, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.kw, align 8, !tbaa !466 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %.thread1814, label %.lr.ph.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.la, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.kx, align 8, !tbaa !466 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.br, %bb.bs
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.bs ], [ %.sroa.018.022.i.i, %bb.br ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.bs ], [ 1, %bb.br ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !467
  %i.la = icmp ne i32 %i.kz, %.sroa.65.0.copyload17591779 ; 2 uses
  %i.lb = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.la, i1 true, i1 %i.lb
  br i1 %cond.i.i, label %bb.bs, label %.thread1814

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.bs
  %i.lc = icmp eq i32 %.214.i.i, 0
  br i1 %i.lc, label %bb.bt, label %.thread1814

bb.bt:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.ld = tail call noundef ptr @_ZN4llvm19isConstOrConstSplatENS_7SDValueEbb(ptr %.sroa.01445.21829, i32 %.sroa.63.21830, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.not1078 = icmp eq ptr %i.ld, null
  br i1 %.not1078, label %.thread1814, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 88
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !654 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !643 ; 2 uses
  %i.lj = icmp ult i32 %i.li, 65                  ; 2 uses
  br i1 %i.lj, label %bb.bv, label %.split1836

bb.bv:                                            ; preds = %bb.bu
  %i.lk = load i64, ptr %i.lg, align 8, !tbaa !357
  %i.ll = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.lk)
  %or.cond1925 = icmp eq i64 %i.ll, 1
  br i1 %or.cond1925, label %.critedge1087, label %.thread1814

.split1836:                                       ; preds = %bb.bu
  %i.lm = tail call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.lg) #40
  br i1 %i.lm, label %.critedge1087, label %.thread1814

.critedge1087:                                    ; preds = %bb.bv, %.split1836
  %spec.select.i.i.i1143 = icmp ult i16 %i.jj, 197
  %.pre1944 = zext i16 %i.ix to i64
  %spec.select1957 = select i1 %spec.select.i.i.i1143, i64 %.pre1944, i64 %i.iu
  %i.ln = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %spec.select1957
  %i.lo = getelementptr i8, ptr %i.ln, i64 -16
  %.sroa.0.0.copyload.i.i1146 = load i64, ptr %i.lo, align 16
  br i1 %i.lj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.critedge1087
  %.neg.i = add nsw i32 %i.li, -64
  %i.lp = load i64, ptr %i.lg, align 8, !tbaa !357
  %i.lq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lp, i1 false)
  %i.lr = trunc nuw nsw i64 %i.lq to i32
  %i.ls = add nsw i32 %.neg.i, %i.lr
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit

bb.bx:                                            ; preds = %.critedge1087
  %i.lt = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.lg) #40
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit

_ZNK4llvm5APInt11countl_zeroEv.exit:              ; preds = %bb.bw, %bb.bx
  %.0.i1148 = phi i32 [ %i.ls, %bb.bw ], [ %i.lt, %bb.bx ]
  %i.lu = load ptr, ptr %i.kn, align 8, !tbaa !638 ; 3 uses
  %.sroa.01719.0.copyload = load ptr, ptr %i.lu, align 8, !tbaa !465
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %.sroa.631729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  store ptr %.sroa.01719.0.copyload, ptr %67, align 8, !tbaa !465
  %.sroa.36.0..sroa_idx1723 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %.sroa.631729.0.copyload = load i32, ptr %.sroa.631729.0..sroa_idx, align 4
  %i.lv = load <2 x i32>, ptr %.sroa.36.0..sroa_idx, align 8
  store <2 x i32> %i.lv, ptr %.sroa.36.0..sroa_idx1723, align 8
  %i.lw = zext i32 %.0.i1148 to i64
  %i.lx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.lw, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract508 = extractvalue { ptr, i32 } %i.lx, 0
  %.fca.1.extract509 = extractvalue { ptr, i32 } %i.lx, 1
  store ptr %.fca.0.extract508, ptr %68, align 8
  %.sroa.2511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i32 %.fca.1.extract509, ptr %.sroa.2511.0..sroa_idx, align 8
  %i.ly = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %67, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %68) #39 ; 2 uses
  %.fca.0.extract504 = extractvalue { ptr, i32 } %i.ly, 0
  %.fca.1.extract505 = extractvalue { ptr, i32 } %i.ly, 1
  store ptr %.fca.0.extract504, ptr %69, align 8, !tbaa !465
  %.sroa.36.0..sroa_idx1725 = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i32 %.fca.1.extract505, ptr %.sroa.36.0..sroa_idx1725, align 8, !tbaa !240
  %.sroa.631729.0..sroa_idx1732 = getelementptr inbounds nuw i8, ptr %69, i64 12
  store i32 %.sroa.631729.0.copyload, ptr %.sroa.631729.0..sroa_idx1732, align 4
  %i.lz = add i64 %.sroa.0.0.copyload.i.i1146, 4294967295
  %i.ma = and i64 %i.lz, 4294967295
  %i.mb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.ma, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract495 = extractvalue { ptr, i32 } %i.mb, 0
  %.fca.1.extract496 = extractvalue { ptr, i32 } %i.mb, 1
  store ptr %.fca.0.extract495, ptr %70, align 8
  %.sroa.2498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i32 %.fca.1.extract496, ptr %.sroa.2498.0..sroa_idx, align 8
  %i.mc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 199, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %69, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %70) #39 ; 2 uses
  %.fca.0.extract491 = extractvalue { ptr, i32 } %i.mc, 0
end_hunk_2
begin_hunk_3_@_ZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGE:bb.a
bb.el:                                            ; preds = %bb.ek
  %i.akv = getelementptr inbounds nuw i8, ptr %.sroa.02485.0.copyload, i64 48
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !469
  %i.akx = zext i32 %.sroa.72488.0.copyload to i64
  %i.aky = getelementptr inbounds nuw [16 x i8], ptr %i.akw, i64 %i.akx ; 2 uses
  %.sroa.0.0.copyload.i.i2341 = load i16, ptr %i.aky, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i2342 = getelementptr inbounds nuw i8, ptr %i.aky, i64 8
  %.sroa.21.0.copyload.i.i2343 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2342, align 8, !tbaa !471
  %i.akz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i.i2341, ptr %.sroa.21.0.copyload.i.i2343, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract282 = extractvalue { ptr, i32 } %i.akz, 0
  %.fca.1.extract283 = extractvalue { ptr, i32 } %i.akz, 1
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.sroa.72488.0 = phi i32 [ %.fca.1.extract283, %bb.el ], [ %.sroa.72488.0.copyload, %bb.ek ]
  %.sroa.02485.0 = phi ptr [ %.fca.0.extract282, %bb.el ], [ %.sroa.02485.0.copyload, %bb.ek ]
  %i.ala = getelementptr inbounds nuw i8, ptr %.0.i, i64 6
  %i.alb = load i16, ptr %i.ala, align 2, !tbaa !1768
  %i.alc = zext i16 %i.alb to i32
  %i.ald = load ptr, ptr %i.q, align 8, !tbaa !469
  %i.ale = getelementptr inbounds nuw [16 x i8], ptr %i.ald, i64 %i.s ; 2 uses
  %.sroa.0.0.copyload.i.i2346 = load i16, ptr %i.ale, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i2347 = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %.sroa.21.0.copyload.i.i2348 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2347, align 8, !tbaa !471
  store ptr %.sroa.02485.0, ptr %113, align 8, !tbaa !465
  %.sroa.72488.0..sroa_idx2489 = getelementptr inbounds nuw i8, ptr %113, i64 8
  store i32 %.sroa.72488.0, ptr %.sroa.72488.0..sroa_idx2489, align 8, !tbaa !240
  %.sroa.9.0..sroa_idx2491 = getelementptr inbounds nuw i8, ptr %113, i64 12
  store i32 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx2491, align 4
  store ptr %.sroa.02481.0.copyload, ptr %114, align 8, !tbaa !465
  %.sroa.52483.0..sroa_idx2484 = getelementptr inbounds nuw i8, ptr %114, i64 8
  store i64 %i.akk, ptr %.sroa.52483.0..sroa_idx2484, align 8
  %i.alf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.alc, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i.i2346, ptr %.sroa.21.0.copyload.i.i2348, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %112, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %113, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %114) #39
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ej
  %.pn = phi { ptr, i32 } [ %i.akr, %bb.ej ], [ %i.alf, %bb.em ] ; 2 uses
  %.sroa.03020.27 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.106.27 = extractvalue { ptr, i32 } %.pn, 1
  br label %.critedge2022

bb.eo:                                            ; preds = %bb.d, %_ZN4llvmL24getIntrinsicWithoutChainEj.exit
  switch i32 %i.p, label %.critedge2022 [
    i32 15196, label %bb.ep
    i32 15199, label %bb.ep
    i32 15197, label %bb.ep
    i32 15198, label %bb.ep
    i32 15200, label %bb.ep
    i32 15203, label %bb.ep
    i32 15201, label %bb.ep
    i32 15202, label %bb.ep
    i32 16136, label %bb.ep
    i32 16134, label %bb.ep
    i32 16135, label %bb.ep
    i32 14760, label %bb.ep
    i32 14758, label %bb.ep
    i32 14759, label %bb.ep
    i32 14779, label %bb.ep
    i32 14771, label %bb.ep
    i32 14775, label %bb.ep
    i32 14777, label %bb.ep
    i32 14769, label %bb.ep
    i32 14773, label %bb.ep
    i32 14780, label %bb.ep
    i32 14772, label %bb.ep
    i32 14776, label %bb.ep
    i32 14778, label %bb.ep
    i32 14770, label %bb.ep
    i32 14774, label %bb.ep
    i32 16153, label %switch.lookup3162
    i32 16146, label %switch.lookup3162
    i32 16154, label %switch.lookup3162
    i32 16147, label %switch.lookup3162
    i32 16155, label %switch.lookup3162
    i32 16148, label %switch.lookup3162
    i32 16156, label %switch.lookup3162
    i32 16149, label %switch.lookup3162
    i32 16157, label %switch.lookup3162
    i32 16150, label %switch.lookup3162
    i32 16152, label %bb.fb
    i32 16145, label %bb.fb
    i32 16158, label %bb.fd
    i32 16151, label %bb.fd
    i32 92, label %_ZNK4llvm17X86TargetLowering20getGlobalWrapperKindEPKNS_11GlobalValueEh.exit
    i32 16007, label %bb.ff
    i32 86, label %bb.fg
    i32 225, label %bb.fj
    i32 15651, label %bb.fo
    i32 15650, label %bb.fo
    i32 15649, label %bb.fo
    i32 15648, label %bb.fo
    i32 15647, label %bb.fo
    i32 15646, label %bb.fo
    i32 15946, label %bb.fp
    i32 15944, label %bb.fp
    i32 15945, label %bb.fp
    i32 15956, label %bb.fp
    i32 15954, label %bb.fp
    i32 15955, label %bb.fp
    i32 15950, label %bb.fp
    i32 15949, label %bb.fp
    i32 379, label %bb.fs
  ]

bb.ep:                                            ; preds = %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo
  switch i32 %i.p, label %bb.eq [
    i32 15196, label %bb.ey
    i32 15199, label %bb.ey
    i32 15197, label %bb.ey
    i32 15198, label %bb.ey
    i32 15200, label %bb.er
    i32 15203, label %bb.er
    i32 15201, label %bb.er
    i32 15202, label %bb.er
    i32 14779, label %bb.es
    i32 14777, label %bb.es
    i32 14780, label %bb.es
    i32 14778, label %bb.es
    i32 16136, label %bb.et
    i32 14760, label %bb.et
    i32 14771, label %bb.eu
    i32 14769, label %bb.eu
    i32 14772, label %bb.eu
    i32 14770, label %bb.eu
    i32 16134, label %bb.ev
    i32 14758, label %bb.ev
    i32 14775, label %bb.ew
    i32 14773, label %bb.ew
    i32 14776, label %bb.ew
    i32 14774, label %bb.ew
    i32 16135, label %bb.ex
    i32 14759, label %bb.ex
  ]

bb.eq:                                            ; preds = %bb.ep
  unreachable

bb.er:                                            ; preds = %bb.ep, %bb.ep, %bb.ep, %bb.ep
  br label %bb.ey

bb.es:                                            ; preds = %bb.ep, %bb.ep, %bb.ep, %bb.ep
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ep, %bb.ep
  %.01981 = phi i32 [ 827, %bb.es ], [ 778, %bb.ep ], [ 778, %bb.ep ]
  br label %bb.ey

bb.eu:                                            ; preds = %bb.ep, %bb.ep, %bb.ep, %bb.ep
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.ep, %bb.ep
  %.11982 = phi i32 [ 827, %bb.eu ], [ 778, %bb.ep ], [ 778, %bb.ep ]
  br label %bb.ey

bb.ew:                                            ; preds = %bb.ep, %bb.ep, %bb.ep, %bb.ep
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ep, %bb.ep
  %.21983 = phi i32 [ 827, %bb.ew ], [ 778, %bb.ep ], [ 778, %bb.ep ]
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ep, %bb.ep, %bb.ep, %bb.ep, %bb.ex, %bb.ev, %bb.et, %bb.er
  %.31984 = phi i32 [ %.21983, %bb.ex ], [ 711, %bb.er ], [ %.01981, %bb.et ], [ %.11982, %bb.ev ], [ 711, %bb.ep ], [ 711, %bb.ep ], [ 711, %bb.ep ], [ 711, %bb.ep ]
  %.01980 = phi i64 [ 7, %bb.ex ], [ 4, %bb.er ], [ 4, %bb.et ], [ 2, %bb.ev ], [ 2, %bb.ep ], [ 2, %bb.ep ], [ 2, %bb.ep ], [ 2, %bb.ep ]
  %i.alg = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.alh = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.ali = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %.31984, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.alg, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.alh) #39 ; 2 uses
  %.fca.0.extract267 = extractvalue { ptr, i32 } %i.ali, 0
  %.fca.1.extract268 = extractvalue { ptr, i32 } %i.ali, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.alj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %.01980, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.alj, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.alj, 1
  store ptr %.fca.0.extract1.i, ptr %6, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract267, ptr %7, align 8, !tbaa !465
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract268, ptr %.sroa.29.0..sroa_idx.i, align 8, !tbaa !240
  %i.alk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 800, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract257 = extractvalue { ptr, i32 } %i.alk, 0
  %.fca.1.extract258 = extractvalue { ptr, i32 } %i.alk, 1
  store ptr %.fca.0.extract257, ptr %115, align 8, !tbaa !465
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i32 %.fca.1.extract258, ptr %.sroa.4265.0..sroa_idx, align 8, !tbaa !240
  %i.all = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %115) #39 ; 2 uses
  %.fca.0.extract253 = extractvalue { ptr, i32 } %i.all, 0
  %.fca.1.extract254 = extractvalue { ptr, i32 } %i.all, 1
  br label %.critedge2022

switch.lookup3162:                                ; preds = %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo
  %switch.tableidx = add nsw i32 %i.p, -16146     ; 2 uses
  %i.alm = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGE, i64 %i.alm
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.aln = zext nneg i32 %switch.tableidx to i64
  %switch.gep3163 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGE.924, i64 %i.aln
  %switch.load3164 = load i8, ptr %switch.gep3163, align 1
  %switch.ext3165 = zext i8 %switch.load3164 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #39
  %i.alo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.alp = load i16, ptr %i.alo, align 8, !tbaa !677 ; 2 uses
  %i.alq = zext i16 %i.alp to i64                 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.idx = mul nuw nsw i64 %i.alq, 40
  %i.als = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.alt = getelementptr inbounds nuw i8, ptr %116, i64 16 ; 3 uses
  store ptr %i.alt, ptr %116, align 8, !tbaa !83
  %i.alu = getelementptr inbounds nuw i8, ptr %116, i64 8 ; 5 uses
  store i32 0, ptr %i.alu, align 8, !tbaa !633
  %i.alv = getelementptr inbounds nuw i8, ptr %116, i64 12
  store i32 5, ptr %i.alv, align 4, !tbaa !634
  %i.alw = add nsw i64 %i.alq, -1                 ; 3 uses
  %i.alx = icmp ugt i64 %i.alw, 5
  br i1 %i.alx, label %bb.ez, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i

bb.ez:                                            ; preds = %switch.lookup3162
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(96) %116, ptr noundef nonnull %i.alt, i64 noundef %i.alw, i64 noundef 16) #39
  %.pre.i.i = load i32, ptr %i.alu, align 8, !tbaa !633 ; 2 uses
  %.pre9.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i: ; preds = %bb.ez, %switch.lookup3162
  %.pre-phi.i.i = phi i64 [ 0, %switch.lookup3162 ], [ %.pre9.i.i, %bb.ez ]
  %i.aly = phi i32 [ 0, %switch.lookup3162 ], [ %.pre.i.i, %bb.ez ]
  %.not9.i.i.i.i.i.i = icmp eq i16 %i.alp, 1
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2IPKNS_5SDUseEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i
  %i.alz = load ptr, ptr %116, align 8, !tbaa !83
  %i.ama = getelementptr inbounds nuw [16 x i8], ptr %i.alz, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.amc, %.lr.ph.i.i.i.i.i.i ], [ %i.ama, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.amb, %.lr.ph.i.i.i.i.i.i ], [ %i.alr, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !683
  %i.amb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.amb, %i.als
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre8.i.i = load i32, ptr %i.alu, align 8, !tbaa !633
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2IPKNS_5SDUseEEERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2IPKNS_5SDUseEEERKNS_14iterator_rangeIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i
  %i.amd = phi i32 [ %.pre8.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i.i ], [ %i.aly, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %i.ame = trunc nsw i64 %i.alw to i32
  %i.amf = add i32 %i.amd, %i.ame
  store i32 %i.amf, ptr %i.alu, align 8, !tbaa !633
  store i16 7, ptr %117, align 8, !tbaa !637
  %i.amg = getelementptr inbounds nuw i8, ptr %117, i64 8
  store ptr null, ptr %i.amg, align 8, !tbaa !705
  %i.amh = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 7, ptr null, i16 48, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %117) #39 ; 2 uses
  %i.ami = extractvalue { ptr, i32 } %i.amh, 0
  %i.amj = extractvalue { ptr, i32 } %i.amh, 1
  %i.amk = load ptr, ptr %116, align 8, !tbaa !83
  store ptr %i.amk, ptr %118, align 8, !tbaa !688
  %i.aml = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.amm = load i32, ptr %i.alu, align 8, !tbaa !633
  %i.amn = zext i32 %i.amm to i64
  store i64 %i.amn, ptr %i.aml, align 8, !tbaa !689
  %i.amo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %switch.ext, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.ami, i32 %i.amj, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %118) #39
  %.fca.0.extract234 = extractvalue { ptr, i32 } %i.amo, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.amp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %switch.ext3165, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract1.i2357 = extractvalue { ptr, i32 } %i.amp, 0
  %.fca.1.extract2.i2358 = extractvalue { ptr, i32 } %i.amp, 1
  store ptr %.fca.0.extract1.i2357, ptr %4, align 8
  %.sroa.24.0..sroa_idx.i2359 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract2.i2358, ptr %.sroa.24.0..sroa_idx.i2359, align 8
  store ptr %.fca.0.extract234, ptr %5, align 8, !tbaa !465
  %.sroa.29.0..sroa_idx.i2360 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 2, ptr %.sroa.29.0..sroa_idx.i2360, align 8, !tbaa !240
  %i.amq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 800, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract224 = extractvalue { ptr, i32 } %i.amq, 0
  %.fca.1.extract225 = extractvalue { ptr, i32 } %i.amq, 1
  store ptr %.fca.0.extract224, ptr %119, align 8, !tbaa !465
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i32 %.fca.1.extract225, ptr %.sroa.4232.0..sroa_idx, align 8, !tbaa !240
  %i.amr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %119) #39 ; 2 uses
  %.fca.0.extract220 = extractvalue { ptr, i32 } %i.amr, 0
  %.fca.1.extract221 = extractvalue { ptr, i32 } %i.amr, 1
  %i.ams = load ptr, ptr %116, align 8, !tbaa !83 ; 2 uses
  %i.amt = icmp eq ptr %i.ams, %i.alt
  br i1 %i.amt, label %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2IPKNS_5SDUseEEERKNS_14iterator_rangeIT_EE.exit
  call void @free(ptr noundef %i.ams) #39
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2IPKNS_5SDUseEEERKNS_14iterator_rangeIT_EE.exit, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #39
  br label %.critedge2022

bb.fb:                                            ; preds = %bb.eo, %bb.eo
  %i.amu = icmp eq i32 %i.p, 16152
  %. = select i1 %i.amu, i32 994, i32 995
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #39
  %i.amv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.amw = load i16, ptr %i.amv, align 8, !tbaa !677
  %i.amx = zext i16 %i.amw to i64
  %i.amy = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.amz = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.amx
  store ptr %i.amy, ptr %121, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %121, i64 8
  store ptr %i.amz, ptr %i.ana, align 8
  call void @_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2IPKNS_5SDUseEEERKNS_14iterator_rangeIT_EE(ptr noundef nonnull align 8 dereferenceable(96) %120, ptr noundef nonnull align 8 dereferenceable(16) %121)
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #39
  store i16 7, ptr %122, align 8, !tbaa !637
  %i.anb = getelementptr inbounds nuw i8, ptr %122, i64 8
  store ptr null, ptr %i.anb, align 8, !tbaa !705
  %i.anc = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 7, ptr null, i16 48, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %122) #39 ; 2 uses
  %i.and = extractvalue { ptr, i32 } %i.anc, 0
  %i.ane = extractvalue { ptr, i32 } %i.anc, 1
  %i.anf = load ptr, ptr %120, align 8, !tbaa !83
  store ptr %i.anf, ptr %123, align 8, !tbaa !688
  %i.ang = getelementptr inbounds nuw i8, ptr %123, i64 8
  %i.anh = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.ani = load i32, ptr %i.anh, align 8, !tbaa !633
  %i.anj = zext i32 %i.ani to i64
  store i64 %i.anj, ptr %i.ang, align 8, !tbaa !689
  %i.ank = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %., ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.and, i32 %i.ane, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %123) #39 ; 2 uses
  %.fca.0.extract209 = extractvalue { ptr, i32 } %i.ank, 0
  %.fca.1.extract210 = extractvalue { ptr, i32 } %i.ank, 1
  %i.anl = load ptr, ptr %120, align 8, !tbaa !83 ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %120, i64 16
  %i.ann = icmp eq ptr %i.anl, %i.anm
  br i1 %i.ann, label %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2365, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @free(ptr noundef %i.anl) #39
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2365

_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2365: ; preds = %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #39
  br label %.critedge2022

bb.fd:                                            ; preds = %bb.eo, %bb.eo
  %i.ano = icmp eq i32 %i.p, 16158
  %.2049 = select i1 %i.ano, i32 994, i32 995
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #39
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.anq = load i16, ptr %i.anp, align 8, !tbaa !677
  %i.anr = zext i16 %i.anq to i64
  %i.ans = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ant = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.anr
  store ptr %i.ans, ptr %125, align 8
  %i.anu = getelementptr inbounds nuw i8, ptr %125, i64 8
  store ptr %i.ant, ptr %i.anu, align 8
  call void @_ZN4llvm11SmallVectorINS_7SDValueELj5EEC2IPKNS_5SDUseEEERKNS_14iterator_rangeIT_EE(ptr noundef nonnull align 8 dereferenceable(96) %124, ptr noundef nonnull align 8 dereferenceable(16) %125)
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #39
  store i16 7, ptr %126, align 8, !tbaa !637
  %i.anv = getelementptr inbounds nuw i8, ptr %126, i64 8
  store ptr null, ptr %i.anv, align 8, !tbaa !705
  %i.anw = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 7, ptr null, i16 48, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %126) #39 ; 2 uses
  %i.anx = extractvalue { ptr, i32 } %i.anw, 0
  %i.any = extractvalue { ptr, i32 } %i.anw, 1
  %i.anz = load ptr, ptr %124, align 8, !tbaa !83
  store ptr %i.anz, ptr %127, align 8, !tbaa !688
  %i.aoa = getelementptr inbounds nuw i8, ptr %127, i64 8
  %i.aob = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.aoc = load i32, ptr %i.aob, align 8, !tbaa !633
  %i.aod = zext i32 %i.aoc to i64
  store i64 %i.aod, ptr %i.aoa, align 8, !tbaa !689
  %i.aoe = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %.2049, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %i.anx, i32 %i.any, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %127) #39
  %.fca.0.extract194 = extractvalue { ptr, i32 } %i.aoe, 0
  %i.aof = load ptr, ptr %124, align 8, !tbaa !83 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %124, i64 16
  %i.aoh = icmp eq ptr %i.aof, %i.aog
  br i1 %i.aoh, label %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2372, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @free(ptr noundef %i.aof) #39
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2372

_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2372: ; preds = %bb.fd, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #39
  br label %.critedge2022

_ZNK4llvm17X86TargetLowering20getGlobalWrapperKindEPKNS_11GlobalValueEh.exit: ; preds = %bb.eo
  %i.aoi = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !464 ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !684 ; 2 uses
  %i.aom = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.aoj) #39
  %i.aon = load ptr, ptr %i.aol, align 8, !tbaa !72
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 24
  %i.aop = load ptr, ptr %i.aoo, align 8
  %i.aoq = call i16 %i.aop(ptr noundef nonnull align 8 dereferenceable(518435) %i.aol, ptr noundef nonnull align 8 dereferenceable(912) %i.aom, i32 noundef 0) #39
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoj, i64 24
end_hunk_3
begin_hunk_4_@_ZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGE:bb.a
  store i32 %.fca.1.extract164, ptr %.sroa.4169.0..sroa_idx, align 8, !tbaa !240
  %i.apz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 988, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %133) #39 ; 2 uses
  %.fca.0.extract158 = extractvalue { ptr, i32 } %i.apz, 0
  %.fca.1.extract159 = extractvalue { ptr, i32 } %i.apz, 1
  br label %.critedge2022

bb.fg:                                            ; preds = %bb.eo
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.02439.0.copyload = load ptr, ptr %i.aqa, align 8, !tbaa !465 ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.0155.0.copyload = load ptr, ptr %i.aqb, align 8, !tbaa !465
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %.sroa.4156.0.copyload = load i32, ptr %.sroa.4156.0..sroa_idx, align 8, !tbaa !240
  %i.aqc = getelementptr inbounds nuw i8, ptr %.sroa.02439.0.copyload, i64 24
  %i.aqd = load i32, ptr %i.aqc, align 8, !tbaa !468
  switch i32 %i.aqd, label %.thread3082 [
    i32 14, label %bb.fh
    i32 39, label %bb.fh
    i32 15, label %bb.fh
    i32 40, label %bb.fh
  ]

bb.fh:                                            ; preds = %bb.fg, %bb.fg, %bb.fg, %bb.fg
  %i.aqe = getelementptr inbounds nuw i8, ptr %.sroa.02439.0.copyload, i64 88
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !757 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aqf, null
  br i1 %.not.i.i, label %.thread3082, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aqg = load i8, ptr %i.aqf, align 8, !tbaa !655
  %i.aqh = icmp eq i8 %i.aqg, 14
  br i1 %i.aqh, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionEKNS_11GlobalValueEEEDaPT0_.exit, label %.thread3082

.thread3082:                                      ; preds = %bb.fg, %bb.fi, %bb.fh
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.40, i1 noundef zeroext true) #41
  unreachable

_ZN4llvm16dyn_cast_or_nullINS_8FunctionEKNS_11GlobalValueEEEDaPT0_.exit: ; preds = %bb.fi
  %i.aqi = call fastcc { ptr, i32 } @_ZL19recoverFramePointerRN4llvm12SelectionDAGEPKNS_8FunctionENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef %i.aqf, ptr %.sroa.0155.0.copyload, i32 %.sroa.4156.0.copyload) ; 2 uses
  %.fca.0.extract144 = extractvalue { ptr, i32 } %i.aqi, 0
  %.fca.1.extract145 = extractvalue { ptr, i32 } %i.aqi, 1
  br label %.critedge2022

bb.fj:                                            ; preds = %bb.eo
  %i.aqj = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !464 ; 5 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !236, !nonnull !80, !align !237 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 880 ; 7 uses
  %i.aqo = call noundef zeroext i1 @_ZNK4llvm15X86RegisterInfo14hasBasePointerERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(336) %i.aqn, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqk) #39
  br i1 %i.aqo, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqm, i64 1212
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !876
  br label %bb.fn

bb.fl:                                            ; preds = %bb.fj
  %i.aqr = load ptr, ptr %i.aqn, align 8, !tbaa !72
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 536
  %i.aqt = load ptr, ptr %i.aqs, align 8
  %i.aqu = call noundef zeroext i1 %i.aqt(ptr noundef nonnull align 8 dereferenceable(316) %i.aqn, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqk) #39, !inline_history !1767
  br i1 %i.aqu, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit: ; preds = %bb.fl
  %i.aqv = load ptr, ptr %i.aqn, align 8, !tbaa !72
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 528
  %i.aqx = load ptr, ptr %i.aqw, align 8
  %i.aqy = call noundef zeroext i1 %i.aqx(ptr noundef nonnull align 8 dereferenceable(316) %i.aqn, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqk) #39, !inline_history !1767
  br i1 %i.aqy, label %bb.fm, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

bb.fm:                                            ; preds = %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %i.aqz = call i32 @_ZNK4llvm15X86RegisterInfo24getPtrSizedStackRegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(336) %i.aqn, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqk) #39
  br label %bb.fn

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.fl, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %i.ara = call i32 @_ZNK4llvm15X86RegisterInfo24getPtrSizedFrameRegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(336) %i.aqn, ptr noundef nonnull align 8 dereferenceable(1065) %i.aqk) #39
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread, %bb.fk
  %storemerge2018 = phi i32 [ %i.aqq, %bb.fk ], [ %i.ara, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread ], [ %i.aqz, %bb.fm ]
  %i.arb = getelementptr inbounds nuw i8, ptr %3, i64 288
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %134, align 8, !tbaa !345
  %i.arc = getelementptr inbounds nuw i8, ptr %134, i64 8
  store ptr null, ptr %i.arc, align 8, !tbaa !705
  %i.ard = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getCopyFromRegENS_7SDValueERKNS_5SDLocENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %i.arb, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 %storemerge2018, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %134) ; 2 uses
  %.fca.0.extract119 = extractvalue { ptr, i32 } %i.ard, 0
  %.fca.1.extract120 = extractvalue { ptr, i32 } %i.ard, 1
  br label %.critedge2022

bb.fo:                                            ; preds = %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #39
  store i64 %i.b, ptr %135, align 8, !tbaa !673
  %i.are = getelementptr inbounds nuw i8, ptr %135, i64 8
  store i32 %i.e, ptr %i.are, align 8, !tbaa !676
  %i.arf = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 251, ptr null, i16 1, ptr null) #39 ; 2 uses
  %i.arg = extractvalue { ptr, i32 } %i.arf, 0
  %i.arh = extractvalue { ptr, i32 } %i.arf, 1
  %i.ari = load ptr, ptr %i.f, align 8, !tbaa !638 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 40
  %i.ark = getelementptr inbounds nuw i8, ptr %i.ari, i64 80
  %i.arl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 918, ptr noundef nonnull align 8 dereferenceable(12) %135, ptr %i.arg, i32 %i.arh, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.arj, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ark) #39 ; 2 uses
  %.fca.0.extract97 = extractvalue { ptr, i32 } %i.arl, 0 ; 2 uses
  %.fca.1.extract98 = extractvalue { ptr, i32 } %i.arl, 1 ; 2 uses
  store ptr %.fca.0.extract97, ptr %136, align 8, !tbaa !465
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %136, i64 8
  store i32 %.fca.1.extract98, ptr %.sroa.5106.0..sroa_idx, align 8, !tbaa !240
  %i.arm = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(12) %135, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %136) #39 ; 2 uses
  %.fca.0.extract89 = extractvalue { ptr, i32 } %i.arm, 0
  %.fca.1.extract90 = extractvalue { ptr, i32 } %i.arm, 1
  store ptr %.fca.0.extract97, ptr %137, align 8, !tbaa !465
  %.sroa.5106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %137, i64 8
  store i32 %.fca.1.extract98, ptr %.sroa.5106.0..sroa_idx107, align 8, !tbaa !240
  %i.arn = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %135, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %137) #39 ; 2 uses
  %.fca.0.extract81 = extractvalue { ptr, i32 } %i.arn, 0
  %.fca.1.extract82 = extractvalue { ptr, i32 } %i.arn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #39
  store ptr %.fca.0.extract89, ptr %138, align 8, !tbaa !465
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %138, i64 8
  store i32 %.fca.1.extract90, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !240
  %i.aro = getelementptr inbounds nuw i8, ptr %138, i64 16
  store ptr %.fca.0.extract81, ptr %i.aro, align 8, !tbaa !465
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %138, i64 24
  store i32 %.fca.1.extract82, ptr %.sroa.487.0..sroa_idx, align 8, !tbaa !240
  %i.arp = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %138, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %135) #39 ; 2 uses
  %.fca.0.extract75 = extractvalue { ptr, i32 } %i.arp, 0
  %.fca.1.extract76 = extractvalue { ptr, i32 } %i.arp, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #39
  br label %.critedge2022

bb.fp:                                            ; preds = %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo, %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #39
  store i64 %i.b, ptr %139, align 8, !tbaa !673
  %i.arq = getelementptr inbounds nuw i8, ptr %139, i64 8
  store i32 %i.e, ptr %i.arq, align 8, !tbaa !676
  %i.arr = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.02413.0.copyload = load ptr, ptr %i.arr, align 8, !tbaa !465 ; 3 uses
  %.sroa.8.0..sroa_idx2422 = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  %.sroa.8.0.copyload2423 = load i32, ptr %.sroa.8.0..sroa_idx2422, align 4
  %i.ars = getelementptr inbounds nuw i8, ptr %.sroa.02413.0.copyload, i64 24
  %i.art = load i32, ptr %i.ars, align 8, !tbaa !468
  switch i32 %i.art, label %.critedge2051 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit2383
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit2383
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit2383: ; preds = %bb.fp, %bb.fp
  %i.aru = getelementptr inbounds nuw i8, ptr %.sroa.02413.0.copyload, i64 88
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !654 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 24 ; 3 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arv, i64 32
  %i.ary = load i32, ptr %i.arx, align 8, !tbaa !643 ; 2 uses
  %i.arz = icmp ult i32 %i.ary, 65                ; 2 uses
  br i1 %i.arz, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit2383
  %i.asa = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.arw) #40
  %i.asb = sub i32 %i.ary, %i.asa
  %i.asc = icmp ugt i32 %i.asb, 64
  br i1 %i.asc, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, label %_ZNK4llvm5APInt15getLimitedValueEm.exit

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit2383, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.asd = load ptr, ptr %i.arw, align 8
  %spec.select.i.i.i2384 = select i1 %i.arz, ptr %i.arw, ptr %i.asd
  %.0.i.i.i2385 = load i64, ptr %spec.select.i.i.i2384, align 8, !tbaa !357 ; 2 uses
  %spec.select.i2386 = call i64 @llvm.umin.i64(i64 %.0.i.i.i2385, i64 255)
  %i.ase = icmp eq i64 %.0.i.i.i2385, 0
  br i1 %i.ase, label %bb.fq, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread

bb.fq:                                            ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit
  %i.asf = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.03020.0.copyload3021 = load ptr, ptr %i.asf, align 8, !tbaa !465
  %.sroa.106.0..sroa_idx3022 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.106.0.copyload3023 = load i32, ptr %.sroa.106.0..sroa_idx3022, align 8, !tbaa !240
  br label %bb.fr

_ZNK4llvm5APInt15getLimitedValueEm.exit.thread:   ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm5APInt15getLimitedValueEm.exit
  %i.asg = phi i64 [ %spec.select.i2386, %_ZNK4llvm5APInt15getLimitedValueEm.exit ], [ 255, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  %.sroa.21.0..sroa_idx.i.i2388 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.21.0.copyload.i.i2389 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2388, align 8, !tbaa !471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %140, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !683
  %i.ash = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %141, ptr noundef nonnull align 8 dereferenceable(16) %i.ash, i64 16, i1 false), !tbaa.struct !683
  %i.asi = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.asg, ptr noundef nonnull align 8 dereferenceable(12) %139, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract62 = extractvalue { ptr, i32 } %i.asi, 0
  %.fca.1.extract63 = extractvalue { ptr, i32 } %i.asi, 1
  store ptr %.fca.0.extract62, ptr %142, align 8
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %142, i64 8
  store i32 %.fca.1.extract63, ptr %.sroa.265.0..sroa_idx, align 8
  %i.asj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(12) %139, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i2389, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %140, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %141, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %142) #39 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.asj, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.asj, 1
  br label %bb.fr

.critedge2051:                                    ; preds = %bb.fp
  %.sroa.7.0..sroa_idx2416 = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.ask = load <2 x i32>, ptr %.sroa.7.0..sroa_idx2416, align 8
  %switch.tableidx3166 = add i64 %.0.i.i.i.i.i, 4294951352
  %i.asl = and i64 %switch.tableidx3166, 4294967295
  %switch.gep3168 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGE.925, i64 %i.asl
  %switch.load3169 = load i16, ptr %switch.gep3168, align 2
  %switch.ext3170 = zext i16 %switch.load3169 to i64
  store ptr %.sroa.02413.0.copyload, ptr %143, align 8, !tbaa !465
  %.sroa.7.0..sroa_idx2418 = getelementptr inbounds nuw i8, ptr %143, i64 8
  store <2 x i32> %i.ask, ptr %.sroa.7.0..sroa_idx2418, align 8
  %i.asm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 740, ptr noundef nonnull align 8 dereferenceable(12) %139, i16 248, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %143) #39 ; 2 uses
  %.fca.0.extract51 = extractvalue { ptr, i32 } %i.asm, 0
  %.fca.1.extract52 = extractvalue { ptr, i32 } %i.asm, 1
  %i.asn = load ptr, ptr %i.q, align 8, !tbaa !469
  %i.aso = getelementptr inbounds nuw [16 x i8], ptr %i.asn, i64 %i.s ; 2 uses
  %.sroa.0.0.copyload.i.i2392 = load i16, ptr %i.aso, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i2393 = getelementptr inbounds nuw i8, ptr %i.aso, i64 8
  %.sroa.21.0.copyload.i.i2394 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2393, align 8, !tbaa !471
  %i.asp = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !464
  %i.asr = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.asq) #39
  %i.ass = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.asr, i32 noundef 0) #39
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 4
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !233 ; 2 uses
  %i.asv = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.asu)
  %i.asw = icmp eq i32 %i.asv, 1
  br i1 %i.asw, label %.split.i.i, label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

.split.i.i:                                       ; preds = %.critedge2051
  %i.asx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.asu, i1 true) ; 2 uses
  %i.asy = icmp samesign ult i32 %i.asx, 10
  br i1 %i.asy, label %switch.lookup.i.i, label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

switch.lookup.i.i:                                ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.asx to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  br label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit: ; preds = %.critedge2051, %.split.i.i, %switch.lookup.i.i
  %.sroa.0.0.i.i = phi i16 [ %switch.offset.i.i, %switch.lookup.i.i ], [ 0, %.split.i.i ], [ 0, %.critedge2051 ]
  %i.asz = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %switch.ext3170, ptr noundef nonnull align 8 dereferenceable(12) %139, i16 %.sroa.0.0.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.asz, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.asz, 1
  store ptr %.fca.0.extract44, ptr %144, align 8
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %144, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.247.0..sroa_idx, align 8
  %i.ata = load ptr, ptr %i.f, align 8, !tbaa !638
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 40
  store ptr %.fca.0.extract51, ptr %145, align 8, !tbaa !465
  %.sroa.7.0..sroa_idx2420 = getelementptr inbounds nuw i8, ptr %145, i64 8
  store i32 %.fca.1.extract52, ptr %.sroa.7.0..sroa_idx2420, align 8, !tbaa !240
  %.sroa.8.0..sroa_idx2426 = getelementptr inbounds nuw i8, ptr %145, i64 12
  store i32 %.sroa.8.0.copyload2423, ptr %.sroa.8.0..sroa_idx2426, align 4
  %i.atc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(12) %139, i16 %.sroa.0.0.copyload.i.i2392, ptr %.sroa.21.0.copyload.i.i2394, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %144, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.atb, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %145) #39 ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.atc, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.atc, 1
  br label %bb.fr

bb.fr:                                            ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, %bb.fq, %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit
  %.sroa.106.29 = phi i32 [ %.fca.1.extract41, %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit ], [ %.sroa.106.0.copyload3023, %bb.fq ], [ %.fca.1.extract59, %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread ]
  %.sroa.03020.29 = phi ptr [ %.fca.0.extract40, %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit ], [ %.sroa.03020.0.copyload3021, %bb.fq ], [ %.fca.0.extract58, %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #39
  br label %.critedge2022

bb.fs:                                            ; preds = %bb.eo
  %i.atd = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !236, !nonnull !80, !align !237 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 684
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !353
  %i.ath = icmp eq i32 %i.atg, 3
  br i1 %i.ath, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #39
  store i64 %i.b, ptr %146, align 8, !tbaa !673
  %i.ati = getelementptr inbounds nuw i8, ptr %146, i64 8
  store i32 %i.e, ptr %i.ati, align 8, !tbaa !676
  %.sroa.21.0..sroa_idx.i.i2398 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.21.0.copyload.i.i2399 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i2398, align 8, !tbaa !471
  %i.atj = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !693
  %i.atl = getelementptr inbounds nuw i8, ptr %i.ate, i64 522
  %i.atm = load i8, ptr %i.atl, align 2, !tbaa !238, !range !79, !noundef !80
  %i.atn = trunc nuw i8 %i.atm to i1
  %i.ato = select i1 %i.atn, i32 257, i32 256
  %i.atp = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.atk, i32 noundef %i.ato) #39
  %i.atq = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.atp) #39 ; 3 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.ats = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %146, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.ats, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.ats, 1
  store ptr %.fca.0.extract24, ptr %147, align 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %147, i64 8
  store i32 %.fca.1.extract25, ptr %.sroa.227.0..sroa_idx, align 8
  %i.att = ptrtoint ptr %i.atq to i64
  store i64 %i.att, ptr %148, align 8
  %i.atu = getelementptr inbounds nuw i8, ptr %148, i64 8
  store i64 0, ptr %i.atu, align 8, !tbaa !759
  %i.atv = getelementptr inbounds nuw i8, ptr %148, i64 16
  %i.atw = getelementptr inbounds nuw i8, ptr %148, i64 20
  store i8 0, ptr %i.atw, align 4, !tbaa !760
  %.not.i2404 = icmp eq ptr %i.atq, null
  br i1 %.not.i2404, label %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !628 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 8
  %i.aua = load i32, ptr %i.atz, align 8          ; 2 uses
  %i.aub = and i32 %i.aua, 254
  %spec.select.i.i.i.i2405 = icmp eq i32 %i.aub, 18
  br i1 %spec.select.i.i.i.i2405, label %bb.fv, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i

bb.fv:                                            ; preds = %bb.fu
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aty, i64 16
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !761
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !471
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aue, i64 8
  %.pre.i.i2406 = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i:  ; preds = %bb.fv, %bb.fu
  %i.auf = phi i32 [ %.pre.i.i2406, %bb.fv ], [ %i.aua, %bb.fu ]
  %i.aug = lshr i32 %i.auf, 8
  br label %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit

_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit: ; preds = %bb.ft, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i
  %i.auh = phi i32 [ %i.aug, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit.i ], [ 0, %bb.ft ]
  store i32 %i.auh, ptr %i.atv, align 8, !tbaa !762
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %149, i8 0, i64 40, i1 false)
  %i.aui = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i2399, ptr noundef nonnull align 8 dereferenceable(12) %146, ptr nonnull %i.atr, i32 0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %147, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %148, i16 0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %149, ptr noundef null) #39 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aui, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aui, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #39
  br label %.critedge2022

bb.fw:                                            ; preds = %bb.fs
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.41, i1 noundef zeroext true) #41
  unreachable

.critedge2022:                                    ; preds = %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2154.thread", %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2159.thread", %.critedge2030.sink.split, %bb.cw, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2235", %bb.cu, %bb.ca, %bb.bz, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2219.thread", %bb.bk, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2193.thread", %bb.bh, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2188", %bb.bg, %bb.be, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2183.thread", %bb.ax, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2171", %bb.aw, %bb.au, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i2160, %bb.as, %bb.ah, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2147", %bb.ag, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2137.thread", %.critedge2028.sink.split, %bb.o, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2072.thread", %bb.n, %bb.dj, %bb.di, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2243.thread", %bb.cz, %bb.dc, %bb.ce, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2227.thread", %bb.bt, %bb.bu, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2206.thread", %bb.bb, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2178.thread", %bb.x, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2106.thread", %bb.w, %bb.q, %bb.j, %bb.eo, %.critedge2046, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2087", %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit", %bb.g, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit.thread", %bb.r, %bb.k, %bb.h, %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit, %bb.fr, %bb.fo, %bb.fn, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionEKNS_11GlobalValueEEEDaPT0_.exit, %_ZN4llvm11GlobalValue22dropLLVMManglingEscapeENS_9StringRefE.exit, %_ZNK4llvm17X86TargetLowering20getGlobalWrapperKindEPKNS_11GlobalValueEh.exit, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2372, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2365, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit, %bb.ey, %bb.en, %bb.eh, %bb.eb, %bb.dx, %bb.dq, %bb.dm, %bb.dl, %bb.dk, %bb.cr, %bb.bw, %bb.bv, %bb.bm, %bb.bl, %bb.aa
  %.sroa.106.30 = phi i32 [ %.fca.1.extract643, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %.fca.1.extract254, %bb.ey ], [ %.fca.1.extract221, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit ], [ %.fca.1.extract210, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2365 ], [ 1, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2372 ], [ %.fca.1.extract179, %_ZNK4llvm17X86TargetLowering20getGlobalWrapperKindEPKNS_11GlobalValueEh.exit ], [ %.fca.1.extract159, %_ZN4llvm11GlobalValue22dropLLVMManglingEscapeENS_9StringRefE.exit ], [ %.fca.1.extract145, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionEKNS_11GlobalValueEEEDaPT0_.exit ], [ %.fca.1.extract120, %bb.fn ], [ %.fca.1.extract76, %bb.fo ], [ %.sroa.106.29, %bb.fr ], [ %.fca.1.extract, %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit ], [ %.fca.1.extract1644, %bb.h ], [ %.sroa.106.27, %bb.en ], [ %.fca.1.extract1627, %bb.k ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit.thread" ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2243.thread" ], [ %.fca.1.extract1582, %bb.r ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit" ], [ 0, %bb.q ], [ %.fca.1.extract1532, %bb.aa ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2072.thread" ], [ %.fca.1.extract1493, %.critedge2028.sink.split ], [ 0, %bb.cu ], [ 0, %bb.ag ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i2160 ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2106.thread" ], [ 0, %bb.aw ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2183.thread" ], [ 0, %bb.bg ], [ %.fca.1.extract1092, %bb.bl ], [ %.fca.1.extract1087, %bb.bm ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2178.thread" ], [ %.fca.1.extract993, %bb.bv ], [ %.fca.1.extract948, %bb.bw ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2193.thread" ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2206.thread" ], [ %.fca.1.extract722, %bb.cr ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2219.thread" ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2087" ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2227.thread" ], [ %.fca.1.extract615, %bb.dc ], [ %.fca.1.extract532, %bb.dk ], [ %.fca.1.extract518, %bb.dl ], [ %.fca.1.extract502, %bb.dm ], [ %.fca.1.extract435, %bb.dq ], [ %.sroa.106.24, %bb.dx ], [ %.sroa.106.25, %bb.eb ], [ %.sroa.106.26, %bb.eh ], [ %.fca.1.extract1668, %bb.g ], [ 0, %bb.eo ], [ 0, %bb.j ], [ %.fca.1.extract628, %.critedge2046 ], [ %.fca.1.extract1545, %bb.x ], [ %.fca.1.extract1556, %bb.w ], [ %.fca.1.extract1215, %bb.bb ], [ %.fca.1.extract999, %bb.bu ], [ %.fca.1.extract1012, %bb.bt ], [ %.fca.1.extract830, %bb.ce ], [ %.sroa.106.0.copyload, %bb.cz ], [ %.fca.1.extract546, %bb.dj ], [ %.fca.1.extract559, %bb.di ], [ %.fca.1.extract1599, %bb.o ], [ %.fca.1.extract1608, %bb.n ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2137.thread" ], [ %.fca.1.extract1439, %bb.ah ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2147" ], [ %.fca.1.extract1298, %bb.au ], [ 0, %bb.as ], [ %.fca.1.extract1264, %bb.ax ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2171" ], [ %.fca.1.extract1181, %bb.be ], [ %.fca.1.extract1147, %bb.bh ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2188" ], [ %.fca.1.extract1113, %bb.bk ], [ %.fca.1.extract909, %bb.ca ], [ %.fca.1.extract919, %bb.bz ], [ %.fca.1.extract657, %bb.cw ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2235" ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2159.thread" ], [ 0, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2154.thread" ], [ %.fca.1.extract1347, %.critedge2030.sink.split ]
  %.sroa.03020.30 = phi ptr [ %.fca.0.extract642, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ %.fca.0.extract253, %bb.ey ], [ %.fca.0.extract220, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit ], [ %.fca.0.extract209, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2365 ], [ %.fca.0.extract194, %_ZN4llvm11SmallVectorINS_7SDValueELj5EED2Ev.exit2372 ], [ %.fca.0.extract178, %_ZNK4llvm17X86TargetLowering20getGlobalWrapperKindEPKNS_11GlobalValueEh.exit ], [ %.fca.0.extract158, %_ZN4llvm11GlobalValue22dropLLVMManglingEscapeENS_9StringRefE.exit ], [ %.fca.0.extract144, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionEKNS_11GlobalValueEEEDaPT0_.exit ], [ %.fca.0.extract119, %bb.fn ], [ %.fca.0.extract75, %bb.fo ], [ %.sroa.03020.29, %bb.fr ], [ %.fca.0.extract, %_ZN4llvm18MachinePointerInfoC2EPKNS_5ValueElh.exit ], [ %.fca.0.extract1643, %bb.h ], [ %.sroa.03020.27, %bb.en ], [ %.fca.0.extract1626, %bb.k ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit.thread" ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2243.thread" ], [ %.fca.0.extract1581, %bb.r ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit" ], [ null, %bb.q ], [ %.fca.0.extract1531, %bb.aa ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2072.thread" ], [ %.fca.0.extract1492, %.critedge2028.sink.split ], [ null, %bb.cu ], [ null, %bb.ag ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i2160 ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2106.thread" ], [ null, %bb.aw ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2183.thread" ], [ null, %bb.bg ], [ %.fca.0.extract1091, %bb.bl ], [ %.fca.0.extract1086, %bb.bm ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2178.thread" ], [ %.fca.0.extract992, %bb.bv ], [ %.fca.0.extract947, %bb.bw ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2193.thread" ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2206.thread" ], [ %.fca.0.extract721, %bb.cr ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2219.thread" ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2087" ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2227.thread" ], [ %.fca.0.extract614, %bb.dc ], [ %.fca.0.extract531, %bb.dk ], [ %.fca.0.extract517, %bb.dl ], [ %.fca.0.extract501, %bb.dm ], [ %.fca.0.extract434, %bb.dq ], [ %.sroa.03020.24, %bb.dx ], [ %.sroa.03020.25, %bb.eb ], [ %.sroa.03020.26, %bb.eh ], [ %.fca.0.extract1667, %bb.g ], [ null, %bb.eo ], [ null, %bb.j ], [ %.fca.0.extract627, %.critedge2046 ], [ %.fca.0.extract1544, %bb.x ], [ %.fca.0.extract1555, %bb.w ], [ %.fca.0.extract1214, %bb.bb ], [ %.fca.0.extract998, %bb.bu ], [ %.fca.0.extract1011, %bb.bt ], [ %.fca.0.extract829, %bb.ce ], [ %.sroa.03020.0.copyload, %bb.cz ], [ %.fca.0.extract545, %bb.dj ], [ %.fca.0.extract558, %bb.di ], [ %.fca.0.extract1598, %bb.o ], [ %.fca.0.extract1607, %bb.n ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2137.thread" ], [ %.fca.0.extract1438, %bb.ah ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2147" ], [ %.fca.0.extract1297, %bb.au ], [ null, %bb.as ], [ %.fca.0.extract1263, %bb.ax ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2171" ], [ %.fca.0.extract1180, %bb.be ], [ %.fca.0.extract1146, %bb.bh ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2188" ], [ %.fca.0.extract1112, %bb.bk ], [ %.fca.0.extract908, %bb.ca ], [ %.fca.0.extract918, %bb.bz ], [ %.fca.0.extract656, %bb.cw ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2235" ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_1clES1_.exit2159.thread" ], [ null, %"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_2clES1_Rj.exit2154.thread" ], [ %.fca.0.extract1346, %.critedge2030.sink.split ]
  %i.auj = load ptr, ptr %9, align 8, !tbaa !877, !nonnull !80, !align !237
  %i.auk = load ptr, ptr %i.ai, align 8, !tbaa !869
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auj, i64 912
  store ptr %i.auk, ptr %i.aul, align 8, !tbaa !867
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.03020.30, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.106.30, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @"_ZZNK4llvm17X86TargetLowering23LowerINTRINSIC_WO_CHAINENS_7SDValueERNS_12SelectionDAGEENK3$_0clES1_"(ptr nofree readonly captures(none) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !468
  switch i32 %i.b, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit [
    i32 37, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !654  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !643  ; 2 uses
  %i.h = icmp ult i32 %i.g, 65                    ; 2 uses
  br i1 %i.h, label %bb.c, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.b
  %i.i = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.e) #40
  %i.j = sub i32 %i.g, %i.i
  %i.k = icmp ult i32 %i.j, 65
  br i1 %i.k, label %bb.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

bb.c:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %bb.b
  %i.l = load ptr, ptr %i.e, align 8
  %spec.select.i.i = select i1 %i.h, ptr %i.e, ptr %i.l
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !357
  %i.m = icmp eq i64 %.0.i.i, 4
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %bb.c
  %i.n = phi i1 [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ], [ %i.m, %bb.c ], [ false, %bb.a ]
  ret i1 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL20getVectorMaskingNodeN4llvm7SDValueES0_S0_RKNS_12X86SubtargetERNS_12SelectionDAGE(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %6, ptr noundef nonnull align 8 dereferenceable(920) %7) unnamed_addr #1 {
bb.a:
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !345 ; 5 uses
end_hunk_4
begin_hunk_5_@_ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE:bb.a
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !357 ; 2 uses
  %switch.selectcmp232.i = icmp eq i8 %i.nn, 49
  %switch.select233.i = select i1 %switch.selectcmp232.i, i32 278, i32 0
  %switch.selectcmp234.i = icmp eq i8 %i.nn, 48
  %switch.select235.i = select i1 %switch.selectcmp234.i, i32 277, i32 %switch.select233.i
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

bb.dr:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.no = load i8, ptr %1, align 1, !tbaa !357
  switch i8 %i.no, label %_ZN4llvm9StringRefC2EPKc.exit50.thread [
    i8 101, label %bb.ds
    i8 114, label %bb.dt
    i8 116, label %bb.du
  ]

bb.ds:                                            ; preds = %bb.dr
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 1
  %i.nr = xor i32 %i.nq, 1734437990
  %i.ns = getelementptr i8, ptr %i.np, i64 4
  %i.nt = load i8, ptr %i.ns, align 1
  %i.nu = zext i8 %i.nt to i32
  %i.nv = xor i32 %i.nu, 115
  %i.nw = or i32 %i.nr, %i.nv
  %i.nx = icmp ne i32 %i.nw, 0
  %i.ny = zext i1 %i.nx to i32
  %.not10.i = icmp eq i32 %i.ny, 0
  br i1 %.not10.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit50.thread

bb.dt:                                            ; preds = %bb.dr
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 1
  %i.ob = xor i32 %i.oa, 1734437990
  %i.oc = getelementptr i8, ptr %i.nz, i64 4
  %i.od = load i8, ptr %i.oc, align 1
  %i.oe = zext i8 %i.od to i32
  %i.of = xor i32 %i.oe, 115
  %i.og = or i32 %i.ob, %i.of
  %i.oh = icmp ne i32 %i.og, 0
  %i.oi = zext i1 %i.oh to i32
  %.not8.i = icmp eq i32 %i.oi, 0
  br i1 %.not8.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit50.thread

bb.du:                                            ; preds = %bb.dr
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 1
  %i.ol = xor i32 %i.ok, 1717792109
  %i.om = getelementptr i8, ptr %i.oj, i64 4
  %i.on = load i8, ptr %i.om, align 1
  %i.oo = zext i8 %i.on to i32
  %i.op = xor i32 %i.oo, 103
  %i.oq = or i32 %i.ol, %i.op
  %i.or = icmp ne i32 %i.oq, 0
  %i.os = zext i1 %i.or to i32
  %.not6.i = icmp eq i32 %i.os, 0
  br i1 %.not6.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit50.thread

bb.dv:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.ot = load i8, ptr %1, align 1, !tbaa !357
  switch i8 %i.ot, label %_ZN4llvm9StringRefC2EPKc.exit50.thread [
    i8 100, label %bb.dw
    i8 102, label %bb.dx
    i8 103, label %bb.dy
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 1
  %i.ow = xor i32 %i.ov, 1818653289
  %i.ox = getelementptr i8, ptr %i.ou, i64 4
  %i.oy = load i16, ptr %i.ox, align 1
  %i.oz = zext i16 %i.oy to i32
  %i.pa = xor i32 %i.oz, 26465
  %i.pb = or i32 %i.ow, %i.pa
  %i.pc = icmp ne i32 %i.pb, 0
  %i.pd = zext i1 %i.pc to i32
  %.not4.i = icmp eq i32 %i.pd, 0
  br i1 %.not4.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit50.thread

bb.dx:                                            ; preds = %bb.dv
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 1
  %i.pg = xor i32 %i.pf, 1633824371
  %i.ph = getelementptr i8, ptr %i.pe, i64 4
  %i.pi = load i16, ptr %i.ph, align 1
  %i.pj = zext i16 %i.pi to i32
  %i.pk = xor i32 %i.pj, 25971
  %i.pl = or i32 %i.pg, %i.pk
  %i.pm = icmp ne i32 %i.pl, 0
  %i.pn = zext i1 %i.pm to i32
  %.not2.i = icmp eq i32 %i.pn, 0
  br i1 %.not2.i, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit50.thread

bb.dy:                                            ; preds = %bb.dv
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.pp = load i32, ptr %i.po, align 1
  %i.pq = xor i32 %i.pp, 1633824371
  %i.pr = getelementptr i8, ptr %i.po, i64 4
  %i.ps = load i16, ptr %i.pr, align 1
  %i.pt = zext i16 %i.ps to i32
  %i.pu = xor i32 %i.pt, 25971
  %i.pv = or i32 %i.pq, %i.pu
  %i.pw = icmp ne i32 %i.pv, 0
  %i.px = zext i1 %i.pw to i32
  %.not.i51 = icmp eq i32 %i.px, 0
  br i1 %.not.i51, label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit, label %_ZN4llvm9StringRefC2EPKc.exit50.thread

_ZN4llvm9StringRefC2EPKc.exit50.thread:           ; preds = %bb.dj, %bb.de, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.ao, %bb.an, %bb.ak, %bb.r, %bb.k, %bb.j, %bb.i, %bb.h, %_ZN4llvm9StringRefC2EPKc.exit, %bb.a, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dk, %bb.di, %bb.dh, %bb.df, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.cf, %bb.bu, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.ar, %bb.ap, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %_ZN4llvm9StringRefC2EPKc.exit50.thread211, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.g
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup.i:                                  ; preds = %bb.p
  %narrow305.i = add nuw nsw i8 %i.cr, -97
  %switch.offset.i = zext i8 %narrow305.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup237.i:                               ; preds = %bb.u
  %narrow304.i = add nuw nsw i8 %i.dh, 23
  %switch.offset239.i = zext nneg i8 %narrow304.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup241.i:                               ; preds = %bb.x
  %narrow303.i = add nuw nsw i8 %i.do, 39
  %switch.offset243.i = zext nneg i8 %narrow303.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup245.i:                               ; preds = %bb.ag
  %narrow302.i = add nuw nsw i8 %i.eh, 55
  %switch.offset247.i = zext nneg i8 %narrow302.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup249.i:                               ; preds = %bb.ai
  %narrow301.i = add nuw nsw i8 %i.en, 63
  %switch.offset251.i = zext nneg i8 %narrow301.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup253.i:                               ; preds = %bb.al
  %switch.idx.cast254.i = zext nneg i8 %switch.tableidx252.i to i32
  %switch.offset255.i = add nuw nsw i32 %switch.idx.cast254.i, 296
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup257.i:                               ; preds = %bb.bb
  %narrow300.i = add nuw nsw i8 %i.gg, 33
  %switch.offset259.i = zext nneg i8 %narrow300.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup261.i:                               ; preds = %bb.bd
  %narrow299.i = add nuw nsw i8 %i.gn, 49
  %switch.offset263.i = zext nneg i8 %narrow299.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup265.i:                               ; preds = %bb.cj
  %switch.idx.cast266.i = zext nneg i8 %switch.tableidx264.i to i32
  %switch.offset267.i = add nuw nsw i32 %switch.idx.cast266.i, 284
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup269.i:                               ; preds = %bb.cl
  %narrow298.i = add nuw i8 %i.kf, 87
  %switch.offset271.i = zext i8 %narrow298.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup273.i:                               ; preds = %bb.cn
  %narrow297.i = add nuw nsw i8 %i.km, -113
  %switch.offset275.i = zext i8 %narrow297.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup277.i:                               ; preds = %bb.cp
  %switch.idx.cast278.i = zext nneg i8 %switch.tableidx276.i to i32
  %switch.offset279.i = add nuw nsw i32 %switch.idx.cast278.i, 247
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup281.i:                               ; preds = %bb.df
  %narrow296.i = add nuw nsw i8 %i.mi, -85
  %switch.offset283.i = zext i8 %narrow296.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup285.i:                               ; preds = %bb.dk
  %narrow.i = add nuw nsw i8 %i.mw, -69
  %switch.offset287.i = zext i8 %narrow.i to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup289.i:                               ; preds = %bb.do
  %switch.idx.cast290.i = zext nneg i8 %switch.tableidx288.i to i32
  %switch.offset291.i = add nuw nsw i32 %switch.idx.cast290.i, 257
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup293.i:                               ; preds = %bb.dp
  %switch.idx.cast294.i = zext nneg i8 %switch.tableidx292.i to i32
  %switch.offset295.i = add nuw nsw i32 %switch.idx.cast294.i, 267
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup:                                    ; preds = %bb.h
  %i.py = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE, i64 %i.py
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup213:                                 ; preds = %bb.i
  %i.pz = zext nneg i8 %switch.tableidx212 to i64
  %switch.gep214 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.926, i64 %i.pz
  %switch.load215 = load i8, ptr %switch.gep214, align 1
  %switch.ext216 = zext i8 %switch.load215 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup218:                                 ; preds = %bb.j
  %i.qa = zext nneg i8 %switch.tableidx217 to i64
  %switch.gep219 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.927, i64 %i.qa
  %switch.load220 = load i8, ptr %switch.gep219, align 1
  %switch.ext221 = zext i8 %switch.load220 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup223:                                 ; preds = %bb.k
  %i.qb = zext nneg i8 %switch.tableidx222 to i64
  %switch.gep224 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.928, i64 %i.qb
  %switch.load225 = load i8, ptr %switch.gep224, align 1
  %switch.ext226 = zext i8 %switch.load225 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup228:                                 ; preds = %bb.r
  %i.qc = zext nneg i8 %switch.tableidx227 to i64
  %switch.gep229 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.929, i64 %i.qc
  %switch.load230 = load i8, ptr %switch.gep229, align 1
  %switch.ext231 = zext i8 %switch.load230 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup233:                                 ; preds = %bb.ak
  %i.qd = zext nneg i8 %switch.tableidx232 to i64
  %switch.gep234 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.930, i64 %i.qd
  %switch.load235 = load i16, ptr %switch.gep234, align 2
  %switch.ext236 = zext i16 %switch.load235 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup238:                                 ; preds = %bb.an
  %i.qe = zext nneg i8 %switch.tableidx237 to i64
  %switch.gep239 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.931, i64 %i.qe
  %switch.load240 = load i8, ptr %switch.gep239, align 1
  %switch.ext241 = zext i8 %switch.load240 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup243:                                 ; preds = %bb.ao
  %i.qf = zext nneg i8 %switch.tableidx242 to i64
  %switch.gep244 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.932, i64 %i.qf
  %switch.load245 = load i8, ptr %switch.gep244, align 1
  %switch.ext246 = zext i8 %switch.load245 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup248:                                 ; preds = %bb.bk
  %i.qg = zext nneg i8 %switch.tableidx247 to i64
  %switch.gep249 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.933, i64 %i.qg
  %switch.load250 = load i8, ptr %switch.gep249, align 1
  %switch.ext251 = zext i8 %switch.load250 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup253:                                 ; preds = %bb.bl
  %i.qh = zext nneg i8 %switch.tableidx252 to i64
  %switch.gep254 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.934, i64 %i.qh
  %switch.load255 = load i8, ptr %switch.gep254, align 1
  %switch.ext256 = zext i8 %switch.load255 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup258:                                 ; preds = %bb.bm
  %i.qi = zext nneg i8 %switch.tableidx257 to i64
  %switch.gep259 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.935, i64 %i.qi
  %switch.load260 = load i8, ptr %switch.gep259, align 1
  %switch.ext261 = zext i8 %switch.load260 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup263:                                 ; preds = %bb.bn
  %i.qj = zext nneg i8 %switch.tableidx262 to i64
  %switch.gep264 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.936, i64 %i.qj
  %switch.load265 = load i8, ptr %switch.gep264, align 1
  %switch.ext266 = zext i8 %switch.load265 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup268:                                 ; preds = %bb.bo
  %i.qk = zext nneg i8 %switch.tableidx267 to i64
  %switch.gep269 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.937, i64 %i.qk
  %switch.load270 = load i8, ptr %switch.gep269, align 1
  %switch.ext271 = zext i8 %switch.load270 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup273:                                 ; preds = %bb.bp
  %i.ql = zext nneg i8 %switch.tableidx272 to i64
  %switch.gep274 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.938, i64 %i.ql
  %switch.load275 = load i8, ptr %switch.gep274, align 1
  %switch.ext276 = zext i8 %switch.load275 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup278:                                 ; preds = %bb.bq
  %i.qm = zext nneg i8 %switch.tableidx277 to i64
  %switch.gep279 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.939, i64 %i.qm
  %switch.load280 = load i16, ptr %switch.gep279, align 2
  %switch.ext281 = zext i16 %switch.load280 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup283:                                 ; preds = %bb.br
  %i.qn = zext nneg i8 %switch.tableidx282 to i64
  %switch.gep284 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.940, i64 %i.qn
  %switch.load285 = load i16, ptr %switch.gep284, align 2
  %switch.ext286 = zext i16 %switch.load285 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup288:                                 ; preds = %bb.bs
  %i.qo = zext nneg i8 %switch.tableidx287 to i64
  %switch.gep289 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.941, i64 %i.qo
  %switch.load290 = load i16, ptr %switch.gep289, align 2
  %switch.ext291 = zext i16 %switch.load290 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup293:                                 ; preds = %bb.bt
  %i.qp = zext nneg i8 %switch.tableidx292 to i64
  %switch.gep294 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.942, i64 %i.qp
  %switch.load295 = load i16, ptr %switch.gep294, align 2
  %switch.ext296 = zext i16 %switch.load295 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup298:                                 ; preds = %bb.bv
  %i.qq = zext nneg i8 %switch.tableidx297 to i64
  %switch.gep299 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.943, i64 %i.qq
  %switch.load300 = load i16, ptr %switch.gep299, align 2
  %switch.ext301 = zext i16 %switch.load300 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup303:                                 ; preds = %bb.bw
  %i.qr = zext nneg i8 %switch.tableidx302 to i64
  %switch.gep304 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.944, i64 %i.qr
  %switch.load305 = load i16, ptr %switch.gep304, align 2
  %switch.ext306 = zext i16 %switch.load305 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup308:                                 ; preds = %bb.bx
  %i.qs = zext nneg i8 %switch.tableidx307 to i64
  %switch.gep309 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.945, i64 %i.qs
  %switch.load310 = load i16, ptr %switch.gep309, align 2
  %switch.ext311 = zext i16 %switch.load310 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup313:                                 ; preds = %bb.by
  %i.qt = zext nneg i8 %switch.tableidx312 to i64
  %switch.gep314 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.946, i64 %i.qt
  %switch.load315 = load i16, ptr %switch.gep314, align 2
  %switch.ext316 = zext i16 %switch.load315 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup318:                                 ; preds = %bb.bz
  %i.qu = zext nneg i8 %switch.tableidx317 to i64
  %switch.gep319 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.947, i64 %i.qu
  %switch.load320 = load i16, ptr %switch.gep319, align 2
  %switch.ext321 = zext i16 %switch.load320 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup323:                                 ; preds = %bb.ca
  %i.qv = zext nneg i8 %switch.tableidx322 to i64
  %switch.gep324 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.948, i64 %i.qv
  %switch.load325 = load i16, ptr %switch.gep324, align 2
  %switch.ext326 = zext i16 %switch.load325 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup328:                                 ; preds = %bb.cb
  %i.qw = zext nneg i8 %switch.tableidx327 to i64
  %switch.gep329 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.949, i64 %i.qw
  %switch.load330 = load i16, ptr %switch.gep329, align 2
  %switch.ext331 = zext i16 %switch.load330 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup333:                                 ; preds = %bb.cc
  %i.qx = zext nneg i8 %switch.tableidx332 to i64
  %switch.gep334 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.950, i64 %i.qx
  %switch.load335 = load i16, ptr %switch.gep334, align 2
  %switch.ext336 = zext i16 %switch.load335 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup338:                                 ; preds = %bb.cd
  %i.qy = zext nneg i8 %switch.tableidx337 to i64
  %switch.gep339 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.951, i64 %i.qy
  %switch.load340 = load i16, ptr %switch.gep339, align 2
  %switch.ext341 = zext i16 %switch.load340 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup343:                                 ; preds = %bb.ce
  %i.qz = zext nneg i8 %switch.tableidx342 to i64
  %switch.gep344 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.952, i64 %i.qz
  %switch.load345 = load i16, ptr %switch.gep344, align 2
  %switch.ext346 = zext i16 %switch.load345 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup348:                                 ; preds = %bb.cg
  %i.ra = zext nneg i8 %switch.tableidx347 to i64
  %switch.gep349 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.953, i64 %i.ra
  %switch.load350 = load i16, ptr %switch.gep349, align 2
  %switch.ext351 = zext i16 %switch.load350 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup353:                                 ; preds = %bb.ch
  %i.rb = zext nneg i8 %switch.tableidx352 to i64
  %switch.gep354 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.954, i64 %i.rb
  %switch.load355 = load i16, ptr %switch.gep354, align 2
  %switch.ext356 = zext i16 %switch.load355 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup358:                                 ; preds = %bb.de
  %i.rc = zext nneg i8 %switch.tableidx357 to i64
  %switch.gep359 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.955, i64 %i.rc
  %switch.load360 = load i8, ptr %switch.gep359, align 1
  %switch.ext361 = zext i8 %switch.load360 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

switch.lookup363:                                 ; preds = %bb.dj
  %i.rd = zext nneg i8 %switch.tableidx362 to i64
  %switch.gep364 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE.956, i64 %i.rd
  %switch.load365 = load i8, ptr %switch.gep364, align 1
  %switch.ext366 = zext i8 %switch.load365 to i32
  br label %_ZL17MatchRegisterNameN4llvm9StringRefE.exit

_ZL17MatchRegisterNameN4llvm9StringRefE.exit:     ; preds = %switch.lookup363, %switch.lookup358, %switch.lookup353, %switch.lookup348, %switch.lookup343, %switch.lookup338, %switch.lookup333, %switch.lookup328, %switch.lookup323, %switch.lookup318, %switch.lookup313, %switch.lookup308, %switch.lookup303, %switch.lookup298, %switch.lookup293, %switch.lookup288, %switch.lookup283, %switch.lookup278, %switch.lookup273, %switch.lookup268, %switch.lookup263, %switch.lookup258, %switch.lookup253, %switch.lookup248, %switch.lookup243, %switch.lookup238, %switch.lookup233, %switch.lookup228, %switch.lookup223, %switch.lookup218, %switch.lookup213, %switch.lookup, %bb.l, %bb.m, %bb.n, %bb.o, %bb.q, %bb.s, %bb.w, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.am, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.bg, %bb.bh, %bb.cr, %bb.cs, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dg, %bb.dl, %bb.dq, %bb.ds, %bb.dt, %bb.du, %bb.dw, %bb.dx, %bb.dy, %_ZN4llvm9StringRefC2EPKc.exit50.thread, %switch.lookup.i, %switch.lookup237.i, %switch.lookup241.i, %switch.lookup245.i, %switch.lookup249.i, %switch.lookup253.i, %switch.lookup257.i, %switch.lookup261.i, %switch.lookup265.i, %switch.lookup269.i, %switch.lookup273.i, %switch.lookup277.i, %switch.lookup281.i, %switch.lookup285.i, %switch.lookup289.i, %switch.lookup293.i
  %.sroa.0185.0.i = phi i32 [ 0, %_ZN4llvm9StringRefC2EPKc.exit50.thread ], [ 37, %bb.dx ], [ %switch.ext361, %switch.lookup358 ], [ %switch.ext316, %switch.lookup313 ], [ %switch.ext, %switch.lookup ], [ %switch.offset271.i, %switch.lookup269.i ], [ %switch.offset275.i, %switch.lookup273.i ], [ %switch.ext311, %switch.lookup308 ], [ %switch.ext216, %switch.lookup213 ], [ %switch.offset255.i, %switch.lookup253.i ], [ %switch.select207.i, %bb.am ], [ %switch.ext306, %switch.lookup303 ], [ %switch.ext221, %switch.lookup218 ], [ %switch.offset259.i, %switch.lookup257.i ], [ %switch.ext326, %switch.lookup323 ], [ %switch.ext301, %switch.lookup298 ], [ %switch.ext251, %switch.lookup248 ], [ %switch.ext226, %switch.lookup223 ], [ 31, %bb.l ], [ 36, %bb.m ], [ 38, %bb.n ], [ 49, %bb.o ], [ %switch.ext321, %switch.lookup318 ], [ %switch.select223.i, %bb.au ], [ %switch.ext331, %switch.lookup328 ], [ 69, %bb.ay ], [ %switch.offset291.i, %switch.lookup289.i ], [ %switch.select219.i, %bb.at ], [ %switch.ext336, %switch.lookup333 ], [ %switch.offset.i, %switch.lookup.i ], [ %switch.select187.i, %bb.q ], [ 39, %bb.dy ], [ %switch.ext276, %switch.lookup273 ], [ %switch.ext296, %switch.lookup293 ], [ %switch.ext241, %switch.lookup238 ], [ %switch.ext231, %switch.lookup228 ], [ 8, %bb.s ], [ %switch.offset295.i, %switch.lookup293.i ], [ %switch.select215.i, %bb.as ], [ %switch.ext341, %switch.lookup338 ], [ 54, %bb.ar ], [ %switch.select235.i, %bb.dq ], [ %switch.ext346, %switch.lookup343 ], [ %switch.select211.i, %bb.aq ], [ 64, %bb.aw ], [ %switch.select231.i, %bb.dl ], [ %switch.offset239.i, %switch.lookup237.i ], [ 18, %bb.w ], [ %switch.offset287.i, %switch.lookup285.i ], [ 51, %bb.ap ], [ %switch.ext351, %switch.lookup348 ], [ %switch.ext246, %switch.lookup243 ], [ %switch.ext266, %switch.lookup263 ], [ %switch.ext356, %switch.lookup353 ], [ 134, %bb.db ], [ 133, %bb.da ], [ 132, %bb.cz ], [ %switch.offset243.i, %switch.lookup241.i ], [ 22, %bb.z ], [ %switch.select191.i, %bb.aa ], [ 14, %bb.dw ], [ 25, %bb.ab ], [ %switch.select195.i, %bb.ac ], [ 283, %bb.du ], [ %switch.select199.i, %bb.ad ], [ 57, %bb.dt ], [ %switch.select203.i, %bb.ae ], [ 70, %bb.ds ], [ 131, %bb.cy ], [ %switch.ext366, %switch.lookup363 ], [ %switch.ext256, %switch.lookup253 ], [ %switch.ext236, %switch.lookup233 ], [ 130, %bb.cx ], [ 129, %bb.cw ], [ 128, %bb.cv ], [ %switch.offset247.i, %switch.lookup245.i ], [ %switch.offset267.i, %switch.lookup265.i ], [ 50, %bb.cs ], [ 28, %bb.cr ], [ %switch.offset279.i, %switch.lookup277.i ], [ 67, %bb.ax ], [ %switch.select227.i, %bb.dg ], [ %switch.offset283.i, %switch.lookup281.i ], [ %switch.offset251.i, %switch.lookup249.i ], [ %switch.ext261, %switch.lookup258 ], [ %switch.ext291, %switch.lookup288 ], [ %switch.offset263.i, %switch.lookup261.i ], [ 34, %bb.bg ], [ %switch.ext286, %switch.lookup283 ], [ 35, %bb.bh ], [ %switch.ext271, %switch.lookup268 ], [ %switch.ext281, %switch.lookup278 ] ; 2 uses
  %i.re = load ptr, ptr %i.a, align 8, !tbaa !236, !nonnull !80, !align !237
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 568
  %i.rg = zext nneg i32 %.sroa.0185.0.i to i64    ; 2 uses
  %i.rh = lshr i64 %i.rg, 6
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %i.rh
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !672
  %i.rk = and i64 %i.rg, 63
  %i.rl = shl nuw i64 1, %i.rk
  %i.rm = and i64 %i.rl, %i.rj
  %.not = icmp eq i64 %i.rm, 0
  %spec.select = select i1 %.not, i32 0, i32 %.sroa.0185.0.i
  br label %.thread185

.thread185:                                       ; preds = %bb.b, %bb.c, %bb.f, %.thread169, %_ZL17MatchRegisterNameN4llvm9StringRefE.exit, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit
  %.sroa.091.0 = phi i32 [ %spec.select, %_ZL17MatchRegisterNameN4llvm9StringRefE.exit ], [ %.sroa.16.5, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit ], [ 33, %bb.b ], [ 61, %bb.c ], [ 125, %bb.f ], [ 126, %.thread169 ]
  ret i32 %.sroa.091.0
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17X86TargetLowering25LowerFRAME_TO_ARGS_OFFSETENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518472) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236, !nonnull !80, !align !237
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  %i.d = load i32, ptr %i.c, align 8, !tbaa !608
  %i.e = shl i32 %i.d, 1
  %i.f = zext i32 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !673
  store i64 %i.h, ptr %4, align 8, !tbaa !673
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !674
  store i32 %i.k, ptr %i.i, align 8, !tbaa !676
  %i.l = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getIntPtrConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(12) %4, i1 noundef zeroext false) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 22, 57) i32 @_ZNK4llvm17X86TargetLowering27getExceptionPointerRegisterEPKNS_8ConstantE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518472) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef %1) #39
  %i.b = icmp eq i32 %i.a, 10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236, !nonnull !80, !align !237 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 522
  %i.f = load i8, ptr %i.e, align 2, !tbaa !238, !range !79, !noundef !80
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 530
  %i.i = load i8, ptr %i.h, align 2, !range !79
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = xor i1 %i.j, true
  %i.l = select i1 %i.g, i1 %i.k, i1 false        ; 2 uses
  %i.m = select i1 %i.l, i32 56, i32 27
  %i.n = select i1 %i.l, i32 51, i32 22
  %.sroa.0.0 = select i1 %i.b, i32 %i.m, i32 %i.n
  ret i32 %.sroa.0.0
}

declare noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 57) i32 @_ZNK4llvm17X86TargetLowering28getExceptionSelectorRegisterEPKNS_8ConstantE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518472) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvm21classifyEHPersonalityEPKNS_5ValueE(ptr noundef %1) #39
  %.off.i = add i32 %i.a, -7
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !236, !nonnull !80, !align !237 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 522
  %i.e = load i8, ptr %i.d, align 2, !tbaa !238, !range !79, !noundef !80
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 530
  %i.h = load i8, ptr %i.g, align 2, !range !79
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.i, true
  %i.k = select i1 %i.f, i1 %i.j, i1 false
  %i.l = select i1 %i.k, i32 56, i32 27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17X86TargetLowering22needsFixedCatchObjectsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518472) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236, !nonnull !80, !align !237 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 522
  %i.d = load i8, ptr %i.c, align 2, !tbaa !238, !range !79, !noundef !80
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 676
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 15
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17X86TargetLowering14LowerEH_RETURNENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518472) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 4 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %10 = alloca %"class.llvm::ArrayRef.420", align 8 ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 11 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 6 uses
  %.sroa.085.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !465
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !240
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.082.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !465 ; 2 uses
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.483.0.copyload = load i32, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !673
  store i64 %i.f, ptr %12, align 8, !tbaa !673
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !674
  store i32 %i.i, ptr %i.g, align 8, !tbaa !676
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !464
  %i.l = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.k) #39
  %i.m = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !233
  %.fr136 = freeze i32 %i.o                       ; 2 uses
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr136)
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %.split.i.i, label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

.split.i.i:                                       ; preds = %bb.a
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr136, i1 false) ; 2 uses
  %i.s = icmp samesign ult i32 %i.r, 10
  br i1 %i.s, label %switch.lookup.i.i, label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

switch.lookup.i.i:                                ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.r to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  br label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit: ; preds = %bb.a, %.split.i.i, %switch.lookup.i.i
  %.sroa.0.0.i.i = phi i16 [ %switch.offset.i.i, %switch.lookup.i.i ], [ 0, %.split.i.i ], [ 0, %bb.a ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !236, !nonnull !80, !align !237 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 880
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !464
  %i.x = tail call i32 @_ZNK4llvm15X86RegisterInfo16getFrameRegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(336) %i.v, ptr noundef nonnull align 8 dereferenceable(1065) %i.w) #39
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.z = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.i.i, ptr null, i16 1, ptr null) #39 ; 2 uses
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = extractvalue { ptr, i32 } %i.z, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  store ptr %i.y, ptr %9, align 16, !tbaa !465
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !240
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 %i.x, i16 %.sroa.0.0.i.i, ptr null) #39 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.ad, 1
  store ptr %.fca.0.extract3.i, ptr %i.ac, align 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %9, ptr %10, align 8, !tbaa !688
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
end_hunk_5
begin_hunk_6_@_ZL19FindSingleBitChangePKN4llvm5ValueE:bb.a

bb.q:                                             ; preds = %_ZNK4llvm11ConstantInt9equalsIntEm.exit
  br i1 %.not.i.i40, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds i8, ptr %.020, i64 -8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !917
  br label %_ZNK4llvm4User10getOperandEj.exit44

bb.s:                                             ; preds = %bb.q
  %i.co = and i32 %i.bs, 268435455
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [32 x i8], ptr %.020, i64 %i.cq
  br label %_ZNK4llvm4User10getOperandEj.exit44

_ZNK4llvm4User10getOperandEj.exit44:              ; preds = %bb.r, %bb.s
  %i.cs = phi ptr [ %i.cn, %bb.r ], [ %i.cr, %bb.s ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !626 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.cv = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !628
  %i.cx = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cw) #40 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.cx, 1
  %i.cy = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.cy, label %bb.t, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.t:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit44
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm4User10getOperandEj.exit44
  %.fca.0.extract = extractvalue { i64, i8 } %i.cx, 0
  %i.cz = add i64 %.fca.0.extract, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store ptr %i.b, ptr %4, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cz, ptr %i.da, align 8
  %i.db = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_17specific_intval64ILb0EEELj29ELb1EE5matchIS4_EEbjPT_(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 29, ptr noundef %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.dc = load ptr, ptr %i.b, align 8
  %spec.select73 = select i1 %i.db, ptr %i.dc, ptr %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %.critedge30

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %_ZN4llvm5APIntD2Ev.exit37

.critedge30:                                      ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm11ConstantInt9equalsIntEm.exit, %_ZNK4llvm4User10getOperandEj.exit, %.critedge, %_ZNK4llvm8TypeSizecvmEv.exit
  %.sroa.067.0 = phi ptr [ %spec.select73, %_ZNK4llvm8TypeSizecvmEv.exit ], [ null, %.critedge ], [ null, %_ZNK4llvm4User10getOperandEj.exit ], [ null, %_ZNK4llvm11ConstantInt9equalsIntEm.exit ], [ null, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  %.sroa.7.0 = phi i32 [ %.019, %_ZNK4llvm8TypeSizecvmEv.exit ], [ 0, %.critedge ], [ 0, %_ZNK4llvm4User10getOperandEj.exit ], [ 0, %_ZNK4llvm11ConstantInt9equalsIntEm.exit ], [ 0, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %_ZN4llvm5APIntD2Ev.exit37

_ZN4llvm5APIntD2Ev.exit37:                        ; preds = %_ZN4llvm13isPowerOf2_64Em.exit36, %bb.e, %bb.d, %_ZN4llvm5APIntD2Ev.exit, %bb.b, %.critedge28, %bb.u, %.critedge30
  %.sroa.067.1 = phi ptr [ null, %.critedge28 ], [ %.sroa.067.0, %.critedge30 ], [ %0, %bb.b ], [ null, %bb.u ], [ %0, %_ZN4llvm5APIntD2Ev.exit ], [ %0, %bb.d ], [ %0, %bb.e ], [ %0, %_ZN4llvm13isPowerOf2_64Em.exit36 ]
  %.sroa.7.1 = phi i32 [ 0, %.critedge28 ], [ %.sroa.7.0, %.critedge30 ], [ 1, %bb.b ], [ 0, %bb.u ], [ %spec.select, %_ZN4llvm5APIntD2Ev.exit ], [ %spec.select, %bb.d ], [ %spec.select, %bb.e ], [ %spec.select, %_ZN4llvm13isPowerOf2_64Em.exit36 ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.067.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmcoENS_5APIntE(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr nofree noundef align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !643  ; 4 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %bb.b

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !357
  %i.e = xor i64 %i.d, -1
  %i.f = sub nsw i32 0, %i.b
  %i.g = and i32 %i.f, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 -1, %i.h
  %i.j = icmp eq i32 %i.b, 0
  %spec.select.i = select i1 %i.j, i64 0, i64 %i.i, !prof !648
  %i.k = and i64 %spec.select.i, %i.e             ; 2 uses
  store i64 %i.k, ptr %1, align 8, !tbaa !357
  br label %_ZN4llvm5APInt11flipAllBitsEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %1) #39
  %.pre = load i32, ptr %i.a, align 8, !tbaa !643
  %.pre1 = load i64, ptr %1, align 8
  br label %_ZN4llvm5APInt11flipAllBitsEv.exit

_ZN4llvm5APInt11flipAllBitsEv.exit:               ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.b
  %i.l = phi i64 [ %i.k, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i ], [ %.pre1, %bb.b ]
  %i.m = phi i32 [ %i.b, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i ], [ %.pre, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !643
  store i64 %i.l, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !643
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm17X86TargetLowering29emitBitTestAtomicRMWIntrinsicEPNS_13AtomicRMWInstE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518472) %0, ptr noundef %1) unnamed_addr #1 align 2 {
_ZNSt14_Function_baseD2Ev.exit:
  %2 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"class.llvm::IRBuilder", align 8   ; 28 uses
  %5 = alloca %"class.llvm::ConstantFolder", align 8 ; 2 uses
  %6 = alloca %"class.llvm::IRBuilderCallbackInserter", align 8 ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [2 x ptr], align 8                ; 5 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::ArrayRef.707", align 8 ; 2 uses
  %10 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %11 = alloca %class.anon.722, align 1           ; 3 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca [2 x ptr], align 8                ; 5 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::ArrayRef.707", align 8 ; 2 uses
  %15 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %16 = alloca %class.anon.722, align 1           ; 3 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !925
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !628
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !632, !nonnull !80, !align !237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %5, align 8, !tbaa !72
  %i.i = ptrtoint ptr %i.a to i64                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25IRBuilderCallbackInserterE, i64 16), ptr %6, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr @"_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNKS0_17X86TargetLowering29emitBitTestAtomicRMWIntrinsicEPNS0_13AtomicRMWInstEE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.k, align 8, !tbaa !927
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.i, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !357
  store ptr @"_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNKS0_17X86TargetLowering29emitBitTestAtomicRMWIntrinsicEPNS0_13AtomicRMWInstEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.l, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  store ptr null, ptr %4, align 8, !tbaa !805
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.h, ptr %i.p, align 8, !tbaa !928
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !930
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.r, align 8, !tbaa !932
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.s, align 8, !tbaa !941
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.t, align 8, !tbaa !942
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i8 0, ptr %i.u, align 4, !tbaa !943
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 69
  store i8 2, ptr %i.v, align 1, !tbaa !944
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 70
  store i8 7, ptr %i.w, align 2, !tbaa !945
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.x, i8 0, i64 18, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.n, align 8, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25IRBuilderCallbackInserterE, i64 16), ptr %i.o, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %i.i, ptr %i.y, align 8, !tbaa !947
  store ptr @"_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNKS0_17X86TargetLowering29emitBitTestAtomicRMWIntrinsicEPNS0_13AtomicRMWInstEE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.aa, align 8, !tbaa !927
  store ptr @"_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZNKS0_17X86TargetLowering29emitBitTestAtomicRMWIntrinsicEPNS0_13AtomicRMWInstEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.ab, align 8, !tbaa !74
  call void @_ZN4llvm25IRBuilderCallbackInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #39
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #39
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !925 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !916
  store ptr %i.af, ptr %i.x, align 8, !tbaa !948
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ac) #39
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !673
  store i64 %i.ai, ptr %4, align 8, !tbaa !673
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !925 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !864
  %i.am = lshr i16 %i.al, 4
  %i.an = and i16 %i.am, 31
  %switch.tableidx = add nsw i16 %i.an, -3        ; 2 uses
  %i.ao = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering29emitBitTestAtomicRMWIntrinsicEPNS_13AtomicRMWInstE, i64 %i.ao
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.ap = zext nneg i16 %switch.tableidx to i64
  %switch.gep97 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering29emitBitTestAtomicRMWIntrinsicEPNS_13AtomicRMWInstE.957, i64 %i.ap
  %switch.load98 = load i16, ptr %switch.gep97, align 2
  %switch.ext99 = zext i16 %switch.load98 to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !910
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !912 ; 6 uses
  %i.au = getelementptr inbounds i8, ptr %i.aj, i64 -64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !626
  %i.aw = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef 0) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.ax, align 8
  %i.ay = call noundef ptr @_ZN4llvm13IRBuilderBase17CreatePointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %i.av, ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(34) %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !925
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !626
  %i.bc = call fastcc { ptr, i32 } @_ZL19FindSingleBitChangePKN4llvm5ValueE(ptr noundef %i.bb) ; 2 uses
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.bc, 1
  %i.bd = add i32 %.fca.1.extract30, -1
  %or.cond = icmp ult i32 %i.bd, 2
  br i1 %or.cond, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = and i32 %i.bf, 1073741824
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !917
  br label %_ZNK4llvm4User10getOperandEj.exit56

bb.c:                                             ; preds = %bb.a
  %i.bj = and i32 %i.bf, 268435455
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [32 x i8], ptr %i.at, i64 %i.bl
  br label %_ZNK4llvm4User10getOperandEj.exit56

_ZNK4llvm4User10getOperandEj.exit56:              ; preds = %bb.b, %bb.c
  %i.bn = phi ptr [ %i.bi, %bb.b ], [ %i.bm, %bb.c ] ; 2 uses
  %.sink = load ptr, ptr %i.bn, align 8, !tbaa !626
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !925 ; 2 uses
  %i.bp = icmp eq ptr %.sink, %i.bo
  %i.bq = zext i1 %i.bp to i64
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !626 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !643
  %i.bw = icmp ult i32 %i.bv, 65
  %i.bx = load ptr, ptr %i.bt, align 8
  %spec.select.i.i = select i1 %i.bw, ptr %i.bt, ptr %i.bx
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !357
  %i.by = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !628
  store ptr %i.ca, ptr %i.b, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !923
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !949, !nonnull !80, !align !237
  %i.cd = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) #39
  %i.ce = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cd, i64 noundef %i.by, i1 noundef zeroext false, i1 noundef zeroext false) #39
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !923
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.cf, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %10, align 8, !tbaa !951
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ch = ptrtoint ptr %11 to i64
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !952
  %i.ci = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef %switch.ext99, ptr nonnull %i.b, i64 1, ptr nonnull %i.c, i64 2, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef.707") align 8 %9, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %.loopexit

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.bc, 0 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.fca.0.extract29, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !628
  %i.cl = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ck) #40 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.cl, 1
  %i.cm = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.cm, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.d
  %.fca.0.extract = extractvalue { i64, i8 } %i.cl, 0 ; 2 uses
  %i.cn = trunc i64 %.fca.0.extract to i32
  %i.co = add i64 %.fca.0.extract, 4294967295
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = load ptr, ptr %i.p, align 8, !tbaa !949, !nonnull !80, !align !237
  %i.cr = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i32 noundef %i.cn) #39
  %i.cs = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.cr, i64 noundef %i.cp, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i16 257, ptr %i.ct, align 8
  %i.cu = load ptr, ptr %i.q, align 8, !tbaa !953, !nonnull !80, !align !237 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i32 noundef 29, ptr noundef nonnull %.fca.0.extract29, ptr noundef %i.cs) #39, !inline_history !1817 ; 2 uses
  %.not.not.i = icmp eq ptr %i.cy, null
  br i1 %.not.not.i, label %bb.f, label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.cz, align 8
  %i.da = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 29, ptr noundef nonnull %.fca.0.extract29, ptr noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, i64 0) #39 ; 3 uses
  %i.db = load ptr, ptr %i.r, align 8, !tbaa !954, !nonnull !80, !align !237 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ag, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !72
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.da, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #39, !inline_history !1818
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %i.da) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.f
  %.1.i = phi ptr [ %i.da, %bb.f ], [ %i.cy, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !925
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !628
  store ptr %i.dh, ptr %i.d, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !923
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.1.i, ptr %i.di, align 8, !tbaa !923
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i16 257, ptr %i.dj, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %15, align 8, !tbaa !951
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dl = ptrtoint ptr %16 to i64
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !952
  %i.dm = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef %switch.ext, ptr nonnull %i.d, i64 1, ptr nonnull %i.e, i64 2, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull byval(%"class.llvm::ArrayRef.707") align 8 %14, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !925
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !628
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i16 257, ptr %i.dq, align 8
  %i.dr = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateZExtOrTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %i.dm, ptr noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(34) %17) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  %i.ds = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.062.089 = load ptr, ptr %i.ds, align 8, !tbaa !917 ; 2 uses
  %.not8790 = icmp eq ptr %.sroa.062.089, null
  br i1 %.not8790, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.062.091, i64 8
  %.sroa.062.0 = load ptr, ptr %i.dt, align 8, !tbaa !917 ; 2 uses
  %.not87 = icmp eq ptr %.sroa.062.0, null
  br i1 %.not87, label %.loopexit, label %.lr.ph, !llvm.loop !1819

.lr.ph:                                           ; preds = %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit, %bb.g
  %.sroa.062.091 = phi ptr [ %.sroa.062.0, %bb.g ], [ %.sroa.062.089, %_ZN4llvm13IRBuilderBase9CreateAndEPNS_5ValueES2_RKNS_5TwineE.exit ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.062.091, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !912 ; 4 uses
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !655
  %.not = icmp eq i8 %i.dw, 85
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %.lr.ph
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !864
  %i.dz = and i16 %i.dy, 62
  %i.ea = icmp eq i16 %i.dz, 32
  br i1 %i.ea, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.eb = getelementptr inbounds i8, ptr %i.dv, i64 -64
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !626 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !655
  %i.ee = icmp eq i8 %i.ed, 5                     ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.dv, i64 -32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !626 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNK4llvm17X86TargetLowering14LowerOperationENS_7SDValueERNS_12SelectionDAGE:bb.a

bb.ip:                                            ; preds = %bb.a
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !236, !nonnull !80, !align !237
  %i.ajj = tail call fastcc { ptr, i32 } @_ZL10LowerMLOADN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(519752) %i.aji, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %bb.iz

bb.iq:                                            ; preds = %bb.a
  %i.ajk = tail call fastcc { ptr, i32 } @_ZL11LowerMSTOREN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %bb.iz

bb.ir:                                            ; preds = %bb.a
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !236, !nonnull !80, !align !237
  %i.ajn = tail call fastcc { ptr, i32 } @_ZL12LowerMGATHERN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(519752) %i.ajm, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %bb.iz

bb.is:                                            ; preds = %bb.a
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !236, !nonnull !80, !align !237
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 503
  %.val823 = load i8, ptr %i.ajq, align 1
  %i.ajr = tail call fastcc { ptr, i32 } @_ZL13LowerMSCATTERN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr nonnull %1, i8 %.val823, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %bb.iz

bb.it:                                            ; preds = %bb.a, %bb.a
  %i.ajs = tail call { ptr, i32 } @_ZNK4llvm17X86TargetLowering18LowerGC_TRANSITIONENS_7SDValueERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr nonnull %1, i32 poison, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %bb.iz

bb.iu:                                            ; preds = %bb.a
  %i.ajt = tail call fastcc { ptr, i32 } @_ZL18LowerADDRSPACECASTN4llvm7SDValueERNS_12SelectionDAGE(ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %bb.iz

bb.iv:                                            ; preds = %bb.a
  %i.aju = tail call fastcc { ptr, i32 } @_ZL13LowerCVTPS2PHN4llvm7SDValueERNS_12SelectionDAGE(ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %bb.iz

bb.iw:                                            ; preds = %bb.a
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !236, !nonnull !80, !align !237
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 472
  %.val824 = load i8, ptr %i.ajx, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !638 ; 3 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 160
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !472
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 88
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !654 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 24 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 32
  %i.akg = load i32, ptr %i.akf, align 8, !tbaa !643
  %i.akh = icmp ult i32 %i.akg, 65
  %i.aki = load ptr, ptr %i.ake, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.akh, ptr %i.ake, ptr %i.aki
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !357
  %i.akj = and i64 %.0.i.i.i.i.i.i, 4294967295
  %.not.i907 = icmp ne i64 %i.akj, 0
  %i.akk = trunc nuw i8 %.val824 to i1
  %or.cond.i908 = select i1 %.not.i907, i1 true, i1 %i.akk
  br i1 %or.cond.i908, label %_ZL13LowerPREFETCHN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.exit, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !240
  %.sroa.0.0.in.sroa.speculate.load.2.i = load ptr, ptr %i.ajz, align 8, !tbaa !465
  br label %_ZL13LowerPREFETCHN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.exit

_ZL13LowerPREFETCHN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.exit: ; preds = %bb.iw, %bb.ix
  %.sroa.0.0.in.sroa.speculated.i = phi ptr [ %.sroa.0.0.in.sroa.speculate.load.2.i, %bb.ix ], [ %1, %bb.iw ]
  %.sroa.3.0.i = phi i32 [ %.sroa.3.0.copyload.i, %bb.ix ], [ %2, %bb.iw ]
  %.fca.0.insert.i909 = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.in.sroa.speculated.i, 0
  %.fca.1.insert.i910 = insertvalue { ptr, i32 } %.fca.0.insert.i909, i32 %.sroa.3.0.i, 1
  br label %bb.iz

bb.iy:                                            ; preds = %bb.a
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !236, !nonnull !80, !align !237
  %i.akn = tail call fastcc { ptr, i32 } @_ZL11LowerFLDEXPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(519752) %i.akm, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %_ZL13LowerPREFETCHN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.exit, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %_ZL22LowerFMINIMUM_FMAXIMUMN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.exit, %bb.fa, %bb.ez, %_ZL11LowerMINMAXN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.exit, %_ZL18LowerADDSAT_SUBSATN4llvm7SDValueERNS_12SelectionDAGERKNS_12X86SubtargetE.exit, %bb.cw, %_ZL18LowerADDSUBO_CARRYN4llvm7SDValueERNS_12SelectionDAGE.exit, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_ZL16lowerAtomicArithN4llvm7SDValueERNS_12SelectionDAGERKNS_12X86SubtargetE.exit, %bb.e, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %.fca.1.insert.merged.i, %_ZL16lowerAtomicArithN4llvm7SDValueERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %i.ci, %bb.q ], [ %i.cl, %bb.r ], [ %i.co, %bb.s ], [ %i.cr, %bb.t ], [ %i.cs, %bb.u ], [ %i.cv, %bb.v ], [ %i.cy, %bb.w ], [ %i.db, %bb.x ], [ %i.dc, %bb.y ], [ %i.dd, %bb.z ], [ %i.de, %bb.aa ], [ %i.dh, %bb.ab ], [ %i.dk, %bb.ac ], [ %i.dn, %bb.ad ], [ %i.do, %bb.ae ], [ %i.dp, %bb.af ], [ %i.dq, %bb.ag ], [ %i.dr, %bb.ah ], [ %i.ds, %bb.ai ], [ %i.dt, %bb.aj ], [ %i.dw, %bb.ak ], [ %i.dx, %bb.al ], [ %i.dy, %bb.am ], [ %i.dz, %bb.an ], [ %i.ec, %bb.ao ], [ %i.ef, %bb.ap ], [ %i.ei, %bb.aq ], [ %i.el, %bb.ar ], [ %i.em, %bb.as ], [ %i.en, %bb.at ], [ %i.eo, %bb.au ], [ %i.ep, %bb.av ], [ %i.eq, %bb.aw ], [ %i.er, %bb.ax ], [ %i.es, %bb.ay ], [ %i.et, %bb.az ], [ %i.ew, %bb.ba ], [ %i.fe, %bb.bb ], [ %i.ff, %bb.bc ], [ %i.fg, %bb.bd ], [ %i.fh, %bb.be ], [ %i.fi, %bb.bf ], [ %i.fj, %bb.bg ], [ %i.fk, %bb.bh ], [ %i.fl, %bb.bi ], [ %i.fm, %bb.bj ], [ %i.fn, %bb.bk ], [ %i.fo, %bb.bl ], [ %i.fp, %bb.bm ], [ %i.fq, %bb.bn ], [ %i.ft, %bb.bo ], [ %i.fu, %bb.bp ], [ %i.fx, %bb.bq ], [ %i.fy, %bb.br ], [ %i.fz, %bb.bs ], [ %i.ga, %bb.bt ], [ %i.gm, %bb.bu ], [ %i.gn, %bb.bv ], [ %i.go, %bb.bw ], [ %i.gp, %bb.bx ], [ %i.gq, %bb.by ], [ %i.gy, %bb.bz ], [ %i.gz, %bb.ca ], [ %.fca.1.insert.i, %bb.cb ], [ %i.hc, %bb.cc ], [ %i.hd, %bb.cd ], [ %i.he, %bb.ce ], [ %i.hf, %bb.cf ], [ %i.hg, %bb.cg ], [ %i.hj, %bb.ch ], [ %i.hm, %bb.ci ], [ %i.hp, %bb.cj ], [ %i.hs, %bb.ck ], [ %i.ht, %bb.cl ], [ %i.hw, %bb.cm ], [ %i.hz, %bb.cn ], [ %i.ip, %bb.co ], [ %i.is, %bb.cp ], [ %i.iv, %bb.cq ], [ %i.iy, %bb.cr ], [ %.fca.1.insert.i837, %_ZL18LowerADDSUBO_CARRYN4llvm7SDValueERNS_12SelectionDAGE.exit ], [ %i.kz, %bb.cw ], [ %.fca.1.insert.i843, %_ZL18LowerADDSAT_SUBSATN4llvm7SDValueERNS_12SelectionDAGERKNS_12X86SubtargetE.exit ], [ %.fca.1.insert.i859, %_ZL11LowerMINMAXN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.exit ], [ %i.wm, %bb.ez ], [ %i.wn, %bb.fa ], [ %.fca.1.insert.merged.i886, %_ZL22LowerFMINIMUM_FMAXIMUMN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.exit ], [ %i.aiz, %bb.im ], [ %i.ajc, %bb.in ], [ %i.ajg, %bb.io ], [ %i.ajj, %bb.ip ], [ %i.ajk, %bb.iq ], [ %i.ajn, %bb.ir ], [ %i.ajr, %bb.is ], [ %i.ajs, %bb.it ], [ %i.ajt, %bb.iu ], [ %i.aju, %bb.iv ], [ %.fca.1.insert.i910, %_ZL13LowerPREFETCHN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.exit ], [ %i.akn, %bb.iy ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL17LowerATOMIC_FENCEN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(519752) %1, ptr noundef nonnull align 8 dereferenceable(920) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !673
  store i64 %i.b, ptr %3, align 8, !tbaa !673
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !674
  store i32 %i.e, ptr %i.c, align 8, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !638  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !472
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !654  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !643
  %i.o = icmp ult i32 %i.n, 65
  %i.p = load ptr, ptr %i.l, align 8
  %spec.select.i.i.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.p
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !357
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !472
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !654  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !643
  %i.x = icmp ult i32 %i.w, 65
  %i.y = load ptr, ptr %i.u, align 8
  %spec.select.i.i.i.i.i26 = select i1 %i.x, ptr %i.u, ptr %i.y
  %.0.i.i.i.i.i27 = load i64, ptr %spec.select.i.i.i.i.i26, align 8, !tbaa !357
  %i.z = and i64 %.0.i.i.i.i.i, 4294967295
  %i.aa = icmp eq i64 %i.z, 7
  %i.ab = and i64 %.0.i.i.i.i.i27, 255
  %i.ac = icmp eq i64 %i.ab, 1
  %or.cond = and i1 %i.aa, %i.ac
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 522
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !238, !range !79, !noundef !80
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !342
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 738, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.g) #39
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.09.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %i.ak = call fastcc { ptr, i32 } @_ZL17emitLockedStackOpRN4llvm12SelectionDAGERKNS_12X86SubtargetENS_7SDValueERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %2, ptr noundef nonnull align 8 dereferenceable(519752) %1, ptr %.sroa.09.0.copyload, i32 %.sroa.4.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 354, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.g) #39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.aj, %bb.d ], [ %i.al, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL13LowerCMP_SWAPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr nofree readonly captures(none) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(920) %2) unnamed_addr #1 {
switch.lookup:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %7 = alloca %"class.llvm::ArrayRef.420", align 8 ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %9 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %10 = alloca %"class.llvm::ArrayRef.420", align 8 ; 5 uses
  %11 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %12 = alloca %"class.llvm::ArrayRef.420", align 8 ; 5 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 12 uses
  %14 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %15 = alloca %"class.llvm::ArrayRef.420", align 8 ; 3 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !345 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !673
  store i64 %i.f, ptr %13, align 8, !tbaa !673
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !674
  store i32 %i.i, ptr %i.g, align 8, !tbaa !676
  %switch.tableidx = add nsw i16 %.sroa.0.0.copyload.i.i.i, -5 ; 2 uses
  %i.j = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL13LowerCMP_SWAPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE, i64 %i.j
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.k = zext nneg i16 %switch.tableidx to i64
  %switch.gep64 = getelementptr inbounds nuw i8, ptr @switch.table._ZL13LowerCMP_SWAPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.958, i64 %i.k
  %switch.load65 = load i8, ptr %switch.gep64, align 1
  %switch.ext66 = zext i8 %switch.load65 to i32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !638  ; 4 uses
  %.sroa.069.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !465
  %.sroa.270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.270.0.copyload = load i32, ptr %.sroa.270.0..sroa_idx, align 8, !tbaa !240
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %.sroa.046.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !465 ; 2 uses
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %.sroa.247.0.copyload = load i32, ptr %.sroa.247.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.o = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 1, ptr null, i16 249, ptr null) #39 ; 2 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = extractvalue { ptr, i32 } %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  store ptr %.sroa.069.0.copyload, ptr %11, align 16, !tbaa !465
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.270.0.copyload, ptr %.sroa.214.0..sroa_idx.i, align 8, !tbaa !240
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !469
  %i.u = zext i32 %.sroa.247.0.copyload to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.sroa.0.0.copyload.i.i.i91 = load i16, ptr %i.v, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !471
  %i.w = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 %switch.ext66, i16 %.sroa.0.0.copyload.i.i.i91, ptr %.sroa.21.0.copyload.i.i.i) #39 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.w, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.w, 1
  store ptr %.fca.0.extract3.i, ptr %i.r, align 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %.sroa.046.0.copyload, ptr %i.x, align 16, !tbaa !465
  %.sroa.542.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %.sroa.247.0.copyload, ptr %.sroa.542.0..sroa_idx43, align 8, !tbaa !240
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr null, ptr %i.y, align 16, !tbaa !465
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i32 0, ptr %.sroa.550.0..sroa_idx, align 8, !tbaa !240
  store ptr %11, ptr %12, align 8, !tbaa !688
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 3, ptr %i.z, align 8, !tbaa !689
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.p, i32 %i.q, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %.fca.0.extract61 = extractvalue { ptr, i32 } %i.aa, 0 ; 2 uses
  store ptr %.fca.0.extract61, ptr %14, align 16
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %.sroa.264.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !638 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.ad, i64 12, i1 false), !tbaa.struct !683
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ae, ptr noundef nonnull align 8 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !683
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef %switch.ext, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.ah, 0
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.ah, 1
  store ptr %.fca.0.extract57, ptr %i.ag, align 16
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i32 %.fca.1.extract58, ptr %.sroa.260.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr %.fca.0.extract61, ptr %i.ai, align 16
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i32 1, ptr %.sroa.256.0..sroa_idx, align 8
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 1, ptr null, i16 249, ptr null) #39 ; 2 uses
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = extractvalue { ptr, i32 } %i.aj, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.am, align 8
  %i.an = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %14, ptr %15, align 8, !tbaa !688
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 5, ptr %i.ap, align 8, !tbaa !689
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %16, align 8, !tbaa !345
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !705
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 722, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.ak, i32 %i.al, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %15, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %16, ptr noundef %i.ao) #39
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.ar, 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i16 249, ptr %8, align 8, !tbaa !637
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !705
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %8) #39 ; 2 uses
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  %i.av = extractvalue { ptr, i32 } %i.at, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  store ptr %.fca.0.extract37, ptr %9, align 16, !tbaa !465
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !240
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 %switch.ext66, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #39 ; 2 uses
  %.fca.0.extract3.i98 = extractvalue { ptr, i32 } %i.ax, 0
  %.fca.1.extract4.i99 = extractvalue { ptr, i32 } %i.ax, 1
  store ptr %.fca.0.extract3.i98, ptr %i.aw, align 16
  %.sroa.26.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.fca.1.extract4.i99, ptr %.sroa.26.0..sroa_idx.i100, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %.fca.0.extract37, ptr %i.ay, align 16, !tbaa !465
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 1, ptr %.sroa.556.0..sroa_idx, align 8, !tbaa !240
  %.not.i101 = icmp eq ptr %.fca.0.extract37, null
  %i.az = select i1 %.not.i101, i64 2, i64 3
  store ptr %9, ptr %10, align 8, !tbaa !688
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !689
  %i.bb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.au, i32 %i.av, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %10) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.bb, 0 ; 4 uses
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.bb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i16 249, ptr %5, align 8, !tbaa !637
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !705
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 7, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %5) #39 ; 2 uses
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = extractvalue { ptr, i32 } %i.bd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store ptr %.fca.0.extract28, ptr %6, align 16, !tbaa !465
  %.sroa.218.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 1, ptr %.sroa.218.0..sroa_idx.i109, align 8, !tbaa !240
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 28, i16 7, ptr null) #39 ; 2 uses
  %.fca.0.extract3.i110 = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract4.i111 = extractvalue { ptr, i32 } %i.bh, 1
  store ptr %.fca.0.extract3.i110, ptr %i.bg, align 16
  %.sroa.26.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.fca.1.extract4.i111, ptr %.sroa.26.0..sroa_idx.i112, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract28, ptr %i.bi, align 16, !tbaa !465
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 2, ptr %.sroa.562.0..sroa_idx, align 8, !tbaa !240
  %.not.i113 = icmp eq ptr %.fca.0.extract28, null
  %i.bj = select i1 %.not.i113, i64 2, i64 3
  store ptr %6, ptr %7, align 8, !tbaa !688
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !689
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.be, i32 %i.bf, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %7) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.bl, 0 ; 2 uses
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.bl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.bm, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.bm, 1
  store ptr %.fca.0.extract1.i, ptr %3, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract14, ptr %4, align 8, !tbaa !465
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract15, ptr %.sroa.29.0..sroa_idx.i, align 8, !tbaa !240
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 800, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.bn, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.bn, 1
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !969
  %i.br = zext i16 %i.bq to i32
  store ptr %.fca.0.extract28, ptr %17, align 8, !tbaa !465
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract29, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  store ptr %.fca.0.extract7, ptr %18, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  store ptr %.fca.0.extract14, ptr %19, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 1, ptr %.sroa.24.0..sroa_idx, align 8
  %i.bs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.bo, i32 %i.br, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  ret { ptr, i32 } %i.bs
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL10LowerCTPOPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %2, ptr noundef nonnull align 8 dereferenceable(920) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.420", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.431", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
end_hunk_7
begin_hunk_8_@_ZL10LowerCTPOPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split80.i.i: ; preds = %bb.ar
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split81.i.i: ; preds = %bb.ar
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split82.i.i: ; preds = %bb.ar
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i:          ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split82.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split81.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split80.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split79.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split78.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split77.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split76.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split75.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split.i.i, %bb.as, %bb.ar
  %.sroa.0.0.i.i.i = phi i16 [ 0, %bb.as ], [ 100, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split80.i.i ], [ 99, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split79.i.i ], [ 98, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split78.i.i ], [ 97, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split77.i.i ], [ 96, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split76.i.i ], [ 95, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split75.i.i ], [ 94, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split.i.i ], [ 101, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split81.i.i ], [ 93, %bb.ar ], [ 102, %_ZN4llvm3MVT11getVectorVTES0_j.exit.fold.split82.i.i ]
  store ptr %.fca.0.extract11.i, ptr %23, align 8, !tbaa !465
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract12.i, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !tbaa !240
  store ptr %.fca.0.extract212.i.i, ptr %24, align 8, !tbaa !465
  %.sroa.4218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract213.i.i, ptr %.sroa.4218.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.fq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 773, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24) #39 ; 2 uses
  %.fca.0.extract203.i.i = extractvalue { ptr, i32 } %i.fq, 0
  %.fca.1.extract204.i.i = extractvalue { ptr, i32 } %i.fq, 1
  %i.fr = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr %.fca.0.extract203.i.i, i32 %.fca.1.extract204.i.i) #39
  br label %_ZL22LowerHorizontalByteSumN4llvm7SDValueENS_3MVTERKNS_12X86SubtargetERNS_12SelectionDAGE.exit.i

bb.at:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit
  %i.fs = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract172.i.i = extractvalue { ptr, i32 } %i.fs, 0 ; 2 uses
  %.fca.1.extract173.i.i = extractvalue { ptr, i32 } %i.fs, 1 ; 2 uses
  %i.ft = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr nonnull %.fca.0.extract11.i, i32 %.fca.1.extract12.i) #39 ; 2 uses
  %.fca.0.extract160.i.i = extractvalue { ptr, i32 } %i.ft, 0 ; 2 uses
  %.fca.1.extract161.i.i = extractvalue { ptr, i32 } %i.ft, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr %.fca.0.extract172.i.i, ptr %21, align 8
  %.sroa.241.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract173.i.i, ptr %.sroa.241.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  %i.fu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.fu, ptr %19, align 8, !tbaa !83
  %i.fv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i32 0, ptr %i.fv, align 8, !tbaa !633
  %i.fw = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 8, ptr %i.fw, align 4, !tbaa !634
  call void @_ZN4llvm23createUnpackShuffleMaskENS_3EVTERNS_15SmallVectorImplIiEEbb(i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(16) %19, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.fx = load ptr, ptr %19, align 8, !tbaa !83
  store ptr %i.fx, ptr %20, align 8, !tbaa !691
  %i.fy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fz = load i32, ptr %i.fv, align 8, !tbaa !633
  %i.ga = zext i32 %i.fz to i64
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !692
  %i.gb = call fastcc { ptr, i32 } @_ZL16getVectorShuffleRN4llvm12SelectionDAGENS_3EVTERKNS_5SDLocENS_7SDValueES6_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %22, ptr %.fca.0.extract160.i.i, i32 %.fca.1.extract161.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %20) ; 2 uses
  %i.gc = load ptr, ptr %19, align 8, !tbaa !83   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.fu
  br i1 %i.gd, label %_ZL10getUnpacklRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef %i.gc) #39
  br label %_ZL10getUnpacklRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i

_ZL10getUnpacklRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %.fca.0.extract147.i.i = extractvalue { ptr, i32 } %i.gb, 0
  %.fca.1.extract148.i.i = extractvalue { ptr, i32 } %i.gb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store ptr %.fca.0.extract172.i.i, ptr %18, align 8
  %.sroa.236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract173.i.i, ptr %.sroa.236.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.ge = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.ge, ptr %16, align 8, !tbaa !83
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 0, ptr %i.gf, align 8, !tbaa !633
  %i.gg = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 8, ptr %i.gg, align 4, !tbaa !634
  call void @_ZN4llvm23createUnpackShuffleMaskENS_3EVTERNS_15SmallVectorImplIiEEbb(i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(16) %16, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.gh = load ptr, ptr %16, align 8, !tbaa !83
  store ptr %i.gh, ptr %17, align 8, !tbaa !691
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gj = load i32, ptr %i.gf, align 8, !tbaa !633
  %i.gk = zext i32 %i.gj to i64
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !692
  %i.gl = call fastcc { ptr, i32 } @_ZL16getVectorShuffleRN4llvm12SelectionDAGENS_3EVTERKNS_5SDLocENS_7SDValueES6_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %22, ptr %.fca.0.extract160.i.i, i32 %.fca.1.extract161.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %17) ; 2 uses
  %i.gm = load ptr, ptr %16, align 8, !tbaa !83   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.ge
  br i1 %i.gn, label %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZL10getUnpacklRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  call void @free(ptr noundef %i.gm) #39
  br label %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i

_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i: ; preds = %bb.av, %_ZL10getUnpacklRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %.fca.0.extract135.i.i = extractvalue { ptr, i32 } %i.gl, 0
  %.fca.1.extract136.i.i = extractvalue { ptr, i32 } %i.gl, 1
  %i.go = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.copyload.i.i.i.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract127.i.i = extractvalue { ptr, i32 } %i.go, 0 ; 2 uses
  %.fca.1.extract128.i.i = extractvalue { ptr, i32 } %i.go, 1 ; 2 uses
  %i.gp = lshr i32 %i.fn, 6
  switch i32 %i.gp, label %bb.aw [
    i32 1, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i
    i32 2, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split.i.i
    i32 3, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split83.i.i
    i32 4, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split84.i.i
    i32 8, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split85.i.i
    i32 16, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split86.i.i
    i32 32, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split87.i.i
    i32 64, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split88.i.i
    i32 128, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split89.i.i
    i32 256, label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split90.i.i
  ]

bb.aw:                                            ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split.i.i: ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split83.i.i: ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split84.i.i: ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split85.i.i: ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split86.i.i: ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split87.i.i: ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split88.i.i: ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split89.i.i: ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split90.i.i: ; preds = %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i:       ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split90.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split89.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split88.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split87.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split86.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split85.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split84.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split83.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split.i.i, %bb.aw, %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i
  %.sroa.0.0.i263.i.i = phi i16 [ 0, %bb.aw ], [ 100, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split88.i.i ], [ 99, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split87.i.i ], [ 98, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split86.i.i ], [ 97, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split85.i.i ], [ 96, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split84.i.i ], [ 95, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split83.i.i ], [ 94, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split.i.i ], [ 101, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split89.i.i ], [ 93, %_ZL10getUnpackhRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_.exit.i.i ], [ 102, %_ZN4llvm3MVT11getVectorVTES0_j.exit264.fold.split90.i.i ] ; 2 uses
  %i.gq = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i.i.i, ptr null, ptr %.fca.0.extract147.i.i, i32 %.fca.1.extract148.i.i) #39 ; 2 uses
  %.fca.0.extract113.i.i = extractvalue { ptr, i32 } %i.gq, 0
  %.fca.1.extract114.i.i = extractvalue { ptr, i32 } %i.gq, 1
  store ptr %.fca.0.extract113.i.i, ptr %25, align 8
  %.sroa.2116.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract114.i.i, ptr %.sroa.2116.0..sroa_idx.i.i, align 8
  store ptr %.fca.0.extract127.i.i, ptr %26, align 8, !tbaa !465
  %.sroa.8181.0..sroa_idx184.i.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %.fca.1.extract128.i.i, ptr %.sroa.8181.0..sroa_idx184.i.i, align 8, !tbaa !240
  %i.gr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 773, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.i263.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26) #39 ; 2 uses
  %.fca.0.extract109.i.i = extractvalue { ptr, i32 } %i.gr, 0
  %.fca.1.extract110.i.i = extractvalue { ptr, i32 } %i.gr, 1
  %i.gs = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i.i.i, ptr null, ptr %.fca.0.extract135.i.i, i32 %.fca.1.extract136.i.i) #39 ; 2 uses
  %.fca.0.extract97.i.i = extractvalue { ptr, i32 } %i.gs, 0
  %.fca.1.extract98.i.i = extractvalue { ptr, i32 } %i.gs, 1
  store ptr %.fca.0.extract97.i.i, ptr %27, align 8
  %.sroa.2100.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 %.fca.1.extract98.i.i, ptr %.sroa.2100.0..sroa_idx.i.i, align 8
  store ptr %.fca.0.extract127.i.i, ptr %28, align 8, !tbaa !465
  %.sroa.8181.0..sroa_idx186.i.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.fca.1.extract128.i.i, ptr %.sroa.8181.0..sroa_idx186.i.i, align 8, !tbaa !240
  %i.gt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 773, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.i263.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %27, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28) #39 ; 2 uses
  %.fca.0.extract93.i.i = extractvalue { ptr, i32 } %i.gt, 0
  %.fca.1.extract94.i.i = extractvalue { ptr, i32 } %i.gt, 1
  %i.gu = lshr i32 %i.fn, 4                       ; 3 uses
  %switch.tableidx = add nsw i32 %i.gu, -1        ; 3 uses
  %i.gv = icmp ult i32 %switch.tableidx, 32
  %switch.shifted = lshr i32 -2147450625, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.gv, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i
  %i.gw = call range(i32 0, 29) i32 @llvm.ctpop.i32(i32 %i.gu)
  %i.gx = icmp eq i32 %i.gw, 1
  br i1 %i.gx, label %.split.i.i, label %_ZN4llvm3MVT11getVectorVTES0_j.exit266.i.i

.split.i.i:                                       ; preds = %bb.ax
  %i.gy = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gu, i1 true)
  %switch.tableidx571 = add nsw i32 %i.gy, -6     ; 2 uses
  %i.gz = icmp ult i32 %switch.tableidx571, 7
  br i1 %i.gz, label %switch.lookup572, label %_ZN4llvm3MVT11getVectorVTES0_j.exit266.i.i

switch.lookup:                                    ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit264.i.i
  %i.ha = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL10LowerCTPOPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE, i64 %i.ha
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit266.i.i

switch.lookup572:                                 ; preds = %.split.i.i
  %i.hb = zext nneg i32 %switch.tableidx571 to i64
  %switch.gep573 = getelementptr inbounds nuw i8, ptr @switch.table._ZL10LowerCTPOPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.959, i64 %i.hb
  %switch.load574 = load i8, ptr %switch.gep573, align 1
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit266.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit266.i.i:       ; preds = %bb.ax, %.split.i.i, %switch.lookup572, %switch.lookup
  %.sroa.0.0.i265.i.i.shrunk = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.ax ], [ %switch.load574, %switch.lookup572 ], [ 0, %.split.i.i ]
  %.sroa.0.0.i265.i.i = zext i8 %.sroa.0.0.i265.i.i.shrunk to i16 ; 2 uses
  %i.hc = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.i265.i.i, ptr null, ptr %.fca.0.extract109.i.i, i32 %.fca.1.extract110.i.i) #39 ; 2 uses
  %.fca.0.extract79.i.i = extractvalue { ptr, i32 } %i.hc, 0
  %.fca.1.extract80.i.i = extractvalue { ptr, i32 } %i.hc, 1
  store ptr %.fca.0.extract79.i.i, ptr %29, align 8
  %.sroa.282.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.fca.1.extract80.i.i, ptr %.sroa.282.0..sroa_idx.i.i, align 8
  %i.hd = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.i265.i.i, ptr null, ptr %.fca.0.extract93.i.i, i32 %.fca.1.extract94.i.i) #39 ; 2 uses
  %.fca.0.extract71.i.i = extractvalue { ptr, i32 } %i.hd, 0
  %.fca.1.extract72.i.i = extractvalue { ptr, i32 } %i.hd, 1
  store ptr %.fca.0.extract71.i.i, ptr %30, align 8
  %.sroa.274.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.fca.1.extract72.i.i, ptr %.sroa.274.0..sroa_idx.i.i, align 8
  %i.he = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 760, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.copyload.i.i.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30) #39 ; 2 uses
  %.fca.0.extract67.i.i = extractvalue { ptr, i32 } %i.he, 0
  %.fca.1.extract68.i.i = extractvalue { ptr, i32 } %i.he, 1
  %i.hf = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr %.fca.0.extract67.i.i, i32 %.fca.1.extract68.i.i) #39
  br label %_ZL22LowerHorizontalByteSumN4llvm7SDValueENS_3MVTERKNS_12X86SubtargetERNS_12SelectionDAGE.exit.i

bb.ay:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit
  %i.hg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract46.i.i = extractvalue { ptr, i32 } %i.hg, 0 ; 2 uses
  %.fca.1.extract47.i.i = extractvalue { ptr, i32 } %i.hg, 1 ; 2 uses
  %i.hh = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr nonnull %.fca.0.extract11.i, i32 %.fca.1.extract12.i) #39 ; 2 uses
  %.fca.0.extract35.i.i = extractvalue { ptr, i32 } %i.hh, 0
  %.fca.1.extract36.i.i = extractvalue { ptr, i32 } %i.hh, 1
  store ptr %.fca.0.extract35.i.i, ptr %31, align 8
  %.sroa.238.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract36.i.i, ptr %.sroa.238.0..sroa_idx.i.i, align 8
  store ptr %.fca.0.extract46.i.i, ptr %32, align 8, !tbaa !465
  %.sroa.553.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.553.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.hi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32) #39 ; 2 uses
  %.fca.0.extract31.i.i = extractvalue { ptr, i32 } %i.hi, 0
  %.fca.1.extract32.i.i = extractvalue { ptr, i32 } %i.hi, 1
  %i.hj = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i.i.i, ptr null, ptr %.fca.0.extract31.i.i, i32 %.fca.1.extract32.i.i) #39 ; 2 uses
  %.fca.0.extract21.i.i = extractvalue { ptr, i32 } %i.hj, 0
  %.fca.1.extract22.i.i = extractvalue { ptr, i32 } %i.hj, 1
  store ptr %.fca.0.extract21.i.i, ptr %33, align 8
  %.sroa.224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract22.i.i, ptr %.sroa.224.0..sroa_idx.i.i, align 8
  %i.hk = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i.i.i, ptr null, ptr nonnull %.fca.0.extract11.i, i32 %.fca.1.extract12.i) #39 ; 2 uses
  %.fca.0.extract13.i.i = extractvalue { ptr, i32 } %i.hk, 0
  %.fca.1.extract14.i.i = extractvalue { ptr, i32 } %i.hk, 1
  store ptr %.fca.0.extract13.i.i, ptr %34, align 8
  %.sroa.216.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %.fca.1.extract14.i.i, ptr %.sroa.216.0..sroa_idx.i.i, align 8
  %i.hl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.copyload.i.i.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34) #39 ; 2 uses
  %.fca.0.extract9.i.i = extractvalue { ptr, i32 } %i.hl, 0
  %.fca.1.extract10.i.i = extractvalue { ptr, i32 } %i.hl, 1
  %i.hm = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr %.fca.0.extract9.i.i, i32 %.fca.1.extract10.i.i) #39 ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { ptr, i32 } %i.hm, 0
  %.fca.1.extract2.i.i = extractvalue { ptr, i32 } %i.hm, 1
  store ptr %.fca.0.extract1.i.i, ptr %35, align 8
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %.fca.1.extract2.i.i, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  store ptr %.fca.0.extract46.i.i, ptr %36, align 8, !tbaa !465
  %.sroa.553.0..sroa_idx54.i.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %.fca.1.extract47.i.i, ptr %.sroa.553.0..sroa_idx54.i.i, align 8, !tbaa !240
  %i.hn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %22, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36) #39
  br label %_ZL22LowerHorizontalByteSumN4llvm7SDValueENS_3MVTERKNS_12X86SubtargetERNS_12SelectionDAGE.exit.i

_ZL22LowerHorizontalByteSumN4llvm7SDValueENS_3MVTERKNS_12X86SubtargetERNS_12SelectionDAGE.exit.i: ; preds = %bb.ay, %_ZN4llvm3MVT11getVectorVTES0_j.exit266.i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.fr, %_ZN4llvm3MVT11getVectorVTES0_j.exit.i.i ], [ %i.hf, %_ZN4llvm3MVT11getVectorVTES0_j.exit266.i.i ], [ %i.hn, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %.pn.i.i, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %.pn.i.i, 1
  br label %_ZL16LowerVectorCTPOPN4llvm7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGE.exit

bb.az:                                            ; preds = %_ZNK4llvm3MVT13getScalarTypeEv.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !342
  %i.hq = icmp sgt i32 %i.hp, 3
  br i1 %i.hq, label %bb.ba, label %_ZL16LowerVectorCTPOPN4llvm7SDValueERKNS_5SDLocERKNS_12X86SubtargetERNS_12SelectionDAGE.exit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0301.0.copyload, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !469
  %i.ht = zext i32 %.sroa.49.0.copyload to i64
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %i.ht
  %.sroa.0.0.copyload.i.i.i.i112.i = load i16, ptr %i.hu, align 8, !tbaa !345 ; 10 uses
  %i.hv = add i16 %.sroa.0.0.copyload.i.i.i.i112.i, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.hv, 53
  br i1 %spec.select.i.i.i.i, label %bb.bb, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %bb.ba
  %i.hw = zext i16 %.sroa.0.0.copyload.i.i.i.i112.i to i64
  %i.hx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !339 ; 2 uses
  %i.ia = zext i16 %i.hz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ib, ptr %5, align 8, !tbaa !83
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.ic, align 8, !tbaa !633
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 64, ptr %i.id, align 4, !tbaa !634
  %.not.i.i = icmp eq i16 %i.hz, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !83
  %.pre37.i.i = load i32, ptr %i.ic, align 8, !tbaa !633
  %i.ie = zext i32 %.pre37.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i
  %i.if = phi i64 [ %i.ie, %._crit_edge.loopexit.i.i ], [ 0, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ]
  %i.ig = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.ib, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ig, ptr %4, align 8, !tbaa !686
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.if, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8, !tbaa !672
  %i.ih = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i.i112.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %4) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract48.i.i = extractvalue { ptr, i32 } %i.ih, 0 ; 2 uses
  %.fca.1.extract49.i.i = extractvalue { ptr, i32 } %i.ih, 1 ; 2 uses
  %i.ii = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 15, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i.i112.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract40.i.i = extractvalue { ptr, i32 } %i.ii, 0
  %.fca.1.extract41.i.i = extractvalue { ptr, i32 } %i.ii, 1
  %i.ij = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i.i112.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract32.i.i = extractvalue { ptr, i32 } %i.ij, 0
  %.fca.1.extract33.i.i = extractvalue { ptr, i32 } %i.ij, 1
  store ptr %.sroa.0301.0.copyload, ptr %6, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.49.0.copyload, ptr %.sroa.4.0..sroa_idx31.i.i, align 8, !tbaa !240
  store ptr %.fca.0.extract32.i.i, ptr %7, align 8, !tbaa !465
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract33.i.i, ptr %.sroa.438.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.ik = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i.i112.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #39 ; 2 uses
  %.fca.0.extract24.i.i = extractvalue { ptr, i32 } %i.ik, 0
  %.fca.1.extract25.i.i = extractvalue { ptr, i32 } %i.ik, 1
  store ptr %.sroa.0301.0.copyload, ptr %8, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.49.0.copyload, ptr %.sroa.4.0..sroa_idx32.i.i, align 8, !tbaa !240
  store ptr %.fca.0.extract40.i.i, ptr %9, align 8, !tbaa !465
  %.sroa.446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract41.i.i, ptr %.sroa.446.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.il = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i.i112.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #39 ; 2 uses
  %.fca.0.extract16.i.i = extractvalue { ptr, i32 } %i.il, 0
  %.fca.1.extract17.i.i = extractvalue { ptr, i32 } %i.il, 1
  store ptr %.fca.0.extract48.i.i, ptr %10, align 8, !tbaa !465
  %.sroa.555.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract49.i.i, ptr %.sroa.555.0..sroa_idx.i.i, align 8, !tbaa !240
  store ptr %.fca.0.extract24.i.i, ptr %11, align 8, !tbaa !465
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract25.i.i, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.im = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 774, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i.i112.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #39 ; 2 uses
  %.fca.0.extract8.i.i = extractvalue { ptr, i32 } %i.im, 0
  %.fca.1.extract9.i.i = extractvalue { ptr, i32 } %i.im, 1
  store ptr %.fca.0.extract48.i.i, ptr %12, align 8, !tbaa !465
  %.sroa.555.0..sroa_idx56.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract49.i.i, ptr %.sroa.555.0..sroa_idx56.i.i, align 8, !tbaa !240
  store ptr %.fca.0.extract16.i.i, ptr %13, align 8, !tbaa !465
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract17.i.i, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.in = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 774, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i.i112.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #39 ; 2 uses
  %.fca.0.extract2.i.i = extractvalue { ptr, i32 } %i.in, 0
  %.fca.1.extract3.i.i = extractvalue { ptr, i32 } %i.in, 1
  store ptr %.fca.0.extract8.i.i, ptr %14, align 8, !tbaa !465
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract9.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !tbaa !240
  store ptr %.fca.0.extract2.i.i, ptr %15, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract3.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !240
  %i.io = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i.i112.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #39 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZL22LowerINTRINSIC_W_CHAINN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
    i32 15899, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.n
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.p
  %.0 = phi i32 [ 725, %bb.q ], [ 833, %bb.p ], [ 838, %bb.n ]
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !638 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 120
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 160
  %i.ds = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(12) %67, ptr %i.dm, i32 %i.dn, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %68, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dq, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dr) #39
  %.fca.0.extract674 = extractvalue { ptr, i32 } %i.ds, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  %i.dt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %67, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.dt, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.dt, 1
  store ptr %.fca.0.extract1.i, ptr %50, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract674, ptr %51, align 8, !tbaa !465
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 0, ptr %.sroa.29.0..sroa_idx.i, align 8, !tbaa !240
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 800, ptr noundef nonnull align 8 dereferenceable(12) %67, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %51) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  %.fca.0.extract670 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract671 = extractvalue { ptr, i32 } %i.du, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !469
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !969
  %i.dz = zext i16 %i.dy to i32
  store ptr %.fca.0.extract670, ptr %69, align 8, !tbaa !465
  %.sroa.4681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i32 %.fca.1.extract671, ptr %.sroa.4681.0..sroa_idx, align 8, !tbaa !240
  store ptr %.fca.0.extract674, ptr %70, align 8
  %.sroa.2667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i32 1, ptr %.sroa.2667.0..sroa_idx, align 8
  %i.ea = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %67, ptr %i.dw, i32 %i.dz, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %69, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %70) #39 ; 2 uses
  %.fca.0.extract660 = extractvalue { ptr, i32 } %i.ea, 0
  %.fca.1.extract661 = extractvalue { ptr, i32 } %i.ea, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #39
  br label %bb.cb

bb.s:                                             ; preds = %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #39
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !673
  store i64 %i.ec, ptr %71, align 8, !tbaa !673
  %i.ed = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !674
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.eg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 7, ptr null, i16 1, ptr null) #39 ; 2 uses
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  %i.ei = extractvalue { ptr, i32 } %i.eg, 1
  %i.ej = icmp eq i32 %i.l, 15876
  %. = select i1 %i.ej, i32 628, i32 629
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !638 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 120
  %i.en = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %., ptr noundef nonnull align 8 dereferenceable(12) %71, ptr %i.eh, i32 %i.ei, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %72, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.el, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.em) #39
  %.fca.0.extract637 = extractvalue { ptr, i32 } %i.en, 0 ; 2 uses
  %i.eo = call fastcc { ptr, i32 } @_ZL8getSETCCN4llvm3X868CondCodeENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE(i32 noundef 4, ptr %.fca.0.extract637, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %71, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract633 = extractvalue { ptr, i32 } %i.eo, 0
  %.fca.1.extract634 = extractvalue { ptr, i32 } %i.eo, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !469
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.es = load i16, ptr %i.er, align 2, !tbaa !969
  %i.et = zext i16 %i.es to i32
  store ptr %.fca.0.extract633, ptr %73, align 8, !tbaa !465
  %.sroa.4644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i32 %.fca.1.extract634, ptr %.sroa.4644.0..sroa_idx, align 8, !tbaa !240
  store ptr %.fca.0.extract637, ptr %74, align 8
  %.sroa.2630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i32 1, ptr %.sroa.2630.0..sroa_idx, align 8
  %i.eu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %71, ptr %i.eq, i32 %i.et, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %73, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %74) #39 ; 2 uses
  %.fca.0.extract623 = extractvalue { ptr, i32 } %i.eu, 0
  %.fca.1.extract624 = extractvalue { ptr, i32 } %i.eu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #39
  br label %bb.cb

switch.lookup:                                    ; preds = %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #39
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !673
  store i64 %i.ew, ptr %75, align 8, !tbaa !673
  %i.ex = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !674
  store i32 %i.ez, ptr %i.ex, align 8, !tbaa !676
  store i16 1, ptr %76, align 8, !tbaa !637
  %i.fa = getelementptr inbounds nuw i8, ptr %76, i64 8
  store ptr null, ptr %i.fa, align 8, !tbaa !705
  %i.fb = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 94, ptr null, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %76) #39 ; 2 uses
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  %i.fd = extractvalue { ptr, i32 } %i.fb, 1
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !638 ; 3 uses
  %switch.tableidx = add i64 %.0.i.i.i.i.i, 4294952604
  %i.ff = and i64 %switch.tableidx, 4294967295
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZL22LowerINTRINSIC_W_CHAINN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE, i64 %i.ff
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fg, align 8
  %i.fh = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i946 = load i16, ptr %i.fj, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %78, ptr noundef nonnull align 8 dereferenceable(12) %i.fe, i64 12, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %78, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fk, ptr noundef nonnull align 8 dereferenceable(12) %i.fl, i64 12, i1 false), !tbaa.struct !683
  %i.fm = getelementptr inbounds nuw i8, ptr %78, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fm, ptr noundef nonnull align 8 dereferenceable(12) %i.fn, i64 12, i1 false), !tbaa.struct !683
  store ptr %78, ptr %77, align 8, !tbaa !688
  %i.fo = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 3, ptr %i.fo, align 8, !tbaa !689
  store i16 %.sroa.0.0.copyload.i946, ptr %79, align 8, !tbaa !345
  %.sroa.4612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %79, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %.sroa.4612.0..sroa_idx, align 8, !tbaa !471
  %i.fp = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %switch.ext, ptr noundef nonnull align 8 dereferenceable(12) %75, ptr %i.fc, i32 %i.fd, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %77, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %79, ptr noundef %i.fi) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #39
  %.fca.0.extract592 = extractvalue { ptr, i32 } %i.fp, 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  %i.fq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %75, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract1.i951 = extractvalue { ptr, i32 } %i.fq, 0
  %.fca.1.extract2.i952 = extractvalue { ptr, i32 } %i.fq, 1
  store ptr %.fca.0.extract1.i951, ptr %48, align 8
  %.sroa.24.0..sroa_idx.i953 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 %.fca.1.extract2.i952, ptr %.sroa.24.0..sroa_idx.i953, align 8
  store ptr %.fca.0.extract592, ptr %49, align 8, !tbaa !465
  %.sroa.29.0..sroa_idx.i954 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 1, ptr %.sroa.29.0..sroa_idx.i954, align 8, !tbaa !240
  %i.fr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 800, ptr noundef nonnull align 8 dereferenceable(12) %75, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %49) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  %.fca.0.extract588 = extractvalue { ptr, i32 } %i.fr, 0
  %.fca.1.extract589 = extractvalue { ptr, i32 } %i.fr, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !469
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !969
  %i.fw = zext i16 %i.fv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #39
  store ptr %.fca.0.extract588, ptr %81, align 8, !tbaa !465
  %.sroa.4599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i32 %.fca.1.extract589, ptr %.sroa.4599.0..sroa_idx, align 8, !tbaa !240
  %i.fx = getelementptr inbounds nuw i8, ptr %81, i64 16
  store ptr %.fca.0.extract592, ptr %i.fx, align 8
  %.sroa.2583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 24
  store i32 0, ptr %.sroa.2583.0..sroa_idx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %81, i64 32
  store ptr %.fca.0.extract592, ptr %i.fy, align 8
  %.sroa.2579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %81, i64 40
  store i32 2, ptr %.sroa.2579.0..sroa_idx, align 8
  store ptr %81, ptr %80, align 8, !tbaa !688
  %i.fz = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 3, ptr %i.fz, align 8, !tbaa !689
  %i.ga = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %75, ptr %i.ft, i32 %i.fw, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %80) #39 ; 2 uses
  %.fca.0.extract572 = extractvalue { ptr, i32 } %i.ga, 0
  %.fca.1.extract573 = extractvalue { ptr, i32 } %i.ga, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #39
  br label %bb.cb

switch.lookup1562:                                ; preds = %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #39
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !673
  store i64 %i.gc, ptr %82, align 8, !tbaa !673
  %i.gd = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !674
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %83, ptr noundef nonnull align 8 dereferenceable(160) @constinit.130, i64 160, i1 false), !tbaa.struct !2032
  %i.gg = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_8ArrayRefINS_3EVTEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %83, i64 10) #39 ; 2 uses
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = extractvalue { ptr, i32 } %i.gg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #39
  %i.gj = load ptr, ptr %i.a, align 8, !tbaa !638 ; 10 uses
  %switch.tableidx1561 = add i64 %.0.i.i.i.i.i, 4294952602
  %i.gk = and i64 %switch.tableidx1561, 4294967295
  %switch.gep1563 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZL22LowerINTRINSIC_W_CHAINN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.960, i64 %i.gk
  %switch.load1564 = load i16, ptr %switch.gep1563, align 2
  %switch.ext1565 = zext i16 %switch.load1564 to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.0.copyload.i.i.i.i.i.i961 = load i64, ptr %i.gl, align 8
  %i.gm = and i64 %.0.copyload.i.i.i.i.i.i961, -5
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i962 = load i16, ptr %i.go, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i963 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.21.0.copyload.i964 = load ptr, ptr %.sroa.21.0..sroa_idx.i963, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %85, ptr noundef nonnull align 8 dereferenceable(12) %i.gj, i64 12, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %85, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gp, ptr noundef nonnull align 8 dereferenceable(12) %i.gq, i64 12, i1 false), !tbaa.struct !683
  %i.gr = getelementptr inbounds nuw i8, ptr %85, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gr, ptr noundef nonnull align 8 dereferenceable(12) %i.gs, i64 12, i1 false), !tbaa.struct !683
  %i.gt = getelementptr inbounds nuw i8, ptr %85, i64 48
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gt, ptr noundef nonnull align 8 dereferenceable(12) %i.gu, i64 12, i1 false), !tbaa.struct !683
  %i.gv = getelementptr inbounds nuw i8, ptr %85, i64 64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gj, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gv, ptr noundef nonnull align 8 dereferenceable(12) %i.gw, i64 12, i1 false), !tbaa.struct !683
  %i.gx = getelementptr inbounds nuw i8, ptr %85, i64 80
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gx, ptr noundef nonnull align 8 dereferenceable(12) %i.gy, i64 12, i1 false), !tbaa.struct !683
  %i.gz = getelementptr inbounds nuw i8, ptr %85, i64 96
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gj, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gz, ptr noundef nonnull align 8 dereferenceable(12) %i.ha, i64 12, i1 false), !tbaa.struct !683
  %i.hb = getelementptr inbounds nuw i8, ptr %85, i64 112
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gj, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hb, ptr noundef nonnull align 8 dereferenceable(12) %i.hc, i64 12, i1 false), !tbaa.struct !683
  %i.hd = getelementptr inbounds nuw i8, ptr %85, i64 128
  %i.he = getelementptr inbounds nuw i8, ptr %i.gj, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hd, ptr noundef nonnull align 8 dereferenceable(12) %i.he, i64 12, i1 false), !tbaa.struct !683
  %i.hf = getelementptr inbounds nuw i8, ptr %85, i64 144
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gj, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hf, ptr noundef nonnull align 8 dereferenceable(12) %i.hg, i64 12, i1 false), !tbaa.struct !683
  store ptr %85, ptr %84, align 8, !tbaa !688
  %i.hh = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 10, ptr %i.hh, align 8, !tbaa !689
  store i16 %.sroa.0.0.copyload.i962, ptr %86, align 8, !tbaa !345
  %.sroa.4559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %86, i64 8
  store ptr %.sroa.21.0.copyload.i964, ptr %.sroa.4559.0..sroa_idx, align 8, !tbaa !471
  %i.hi = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %switch.ext1565, ptr noundef nonnull align 8 dereferenceable(12) %82, ptr %i.gh, i32 %i.gi, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %84, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %86, ptr noundef %i.gn) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #39
  %.fca.0.extract539 = extractvalue { ptr, i32 } %i.hi, 0 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  %i.hj = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %82, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract1.i969 = extractvalue { ptr, i32 } %i.hj, 0
  %.fca.1.extract2.i970 = extractvalue { ptr, i32 } %i.hj, 1
  store ptr %.fca.0.extract1.i969, ptr %46, align 8
  %.sroa.24.0..sroa_idx.i971 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 %.fca.1.extract2.i970, ptr %.sroa.24.0..sroa_idx.i971, align 8
  store ptr %.fca.0.extract539, ptr %47, align 8, !tbaa !465
  %.sroa.29.0..sroa_idx.i972 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 0, ptr %.sroa.29.0..sroa_idx.i972, align 8, !tbaa !240
  %i.hk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 800, ptr noundef nonnull align 8 dereferenceable(12) %82, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  %.fca.0.extract535 = extractvalue { ptr, i32 } %i.hk, 0
  %.fca.1.extract536 = extractvalue { ptr, i32 } %i.hk, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !469
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !969
  %i.hp = zext i16 %i.ho to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #39
  store ptr %.fca.0.extract535, ptr %88, align 8, !tbaa !465
  %.sroa.4546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 8
  store i32 %.fca.1.extract536, ptr %.sroa.4546.0..sroa_idx, align 8, !tbaa !240
  %i.hq = getelementptr inbounds nuw i8, ptr %88, i64 16
  store ptr %.fca.0.extract539, ptr %i.hq, align 8
  %.sroa.2530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 24
  store i32 1, ptr %.sroa.2530.0..sroa_idx, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %88, i64 32
  store ptr %.fca.0.extract539, ptr %i.hr, align 8
  %.sroa.2526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 40
  store i32 2, ptr %.sroa.2526.0..sroa_idx, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %88, i64 48
  store ptr %.fca.0.extract539, ptr %i.hs, align 8
  %.sroa.2522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 56
  store i32 3, ptr %.sroa.2522.0..sroa_idx, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %88, i64 64
  store ptr %.fca.0.extract539, ptr %i.ht, align 8
  %.sroa.2518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 72
  store i32 4, ptr %.sroa.2518.0..sroa_idx, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %88, i64 80
  store ptr %.fca.0.extract539, ptr %i.hu, align 8
  %.sroa.2514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 88
  store i32 5, ptr %.sroa.2514.0..sroa_idx, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %88, i64 96
  store ptr %.fca.0.extract539, ptr %i.hv, align 8
  %.sroa.2510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 104
  store i32 6, ptr %.sroa.2510.0..sroa_idx, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %88, i64 112
  store ptr %.fca.0.extract539, ptr %i.hw, align 8
  %.sroa.2506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 120
  store i32 7, ptr %.sroa.2506.0..sroa_idx, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %88, i64 128
  store ptr %.fca.0.extract539, ptr %i.hx, align 8
  %.sroa.2502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 136
  store i32 8, ptr %.sroa.2502.0..sroa_idx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %88, i64 144
  store ptr %.fca.0.extract539, ptr %i.hy, align 8
  %.sroa.2498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 152
  store i32 9, ptr %.sroa.2498.0..sroa_idx, align 8
  store ptr %88, ptr %87, align 8, !tbaa !688
  %i.hz = getelementptr inbounds nuw i8, ptr %87, i64 8
  store i64 10, ptr %i.hz, align 8, !tbaa !689
  %i.ia = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %82, ptr %i.hm, i32 %i.hp, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %87) #39 ; 2 uses
  %.fca.0.extract491 = extractvalue { ptr, i32 } %i.ia, 0
  %.fca.1.extract492 = extractvalue { ptr, i32 } %i.ia, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #39
  br label %bb.cb

bb.t:                                             ; preds = %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #39
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !673
  store i64 %i.ic, ptr %89, align 8, !tbaa !673
  %i.id = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !674
  store i32 %i.if, ptr %i.id, align 8, !tbaa !676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %90, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.ig = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 7, ptr null, i16 1, ptr null) #39 ; 2 uses
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  %i.ii = extractvalue { ptr, i32 } %i.ig, 1
  %i.ij = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 828, ptr noundef nonnull align 8 dereferenceable(12) %89, ptr %i.ih, i32 %i.ii, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %90) #39
  %.fca.0.extract469 = extractvalue { ptr, i32 } %i.ij, 0 ; 2 uses
  %i.ik = call fastcc { ptr, i32 } @_ZL8getSETCCN4llvm3X868CondCodeENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE(i32 noundef 2, ptr %.fca.0.extract469, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %89, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract465 = extractvalue { ptr, i32 } %i.ik, 0
  %.fca.1.extract466 = extractvalue { ptr, i32 } %i.ik, 1
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !469
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.io = load i16, ptr %i.in, align 2, !tbaa !969
  %i.ip = zext i16 %i.io to i32
  store ptr %.fca.0.extract465, ptr %91, align 8, !tbaa !465
  %.sroa.4476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %91, i64 8
  store i32 %.fca.1.extract466, ptr %.sroa.4476.0..sroa_idx, align 8, !tbaa !240
  store ptr %.fca.0.extract469, ptr %92, align 8
  %.sroa.2462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %92, i64 8
  store i32 1, ptr %.sroa.2462.0..sroa_idx, align 8
  %i.iq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %89, ptr %i.im, i32 %i.ip, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %91, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %92) #39 ; 2 uses
  %.fca.0.extract455 = extractvalue { ptr, i32 } %i.iq, 0
  %.fca.1.extract456 = extractvalue { ptr, i32 } %i.iq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #39
  br label %bb.cb

bb.u:                                             ; preds = %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #39
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !673
  store i64 %i.is, ptr %93, align 8, !tbaa !673
  %i.it = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !674
  store i32 %i.iv, ptr %i.it, align 8, !tbaa !676
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !469
  %i.iy = zext i32 %1 to i64
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %i.iy
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.iz, align 8, !tbaa !345 ; 2 uses
  %.sroa.0439.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !465
  %.sroa.6442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6442.0.copyload = load i32, ptr %.sroa.6442.0..sroa_idx, align 8, !tbaa !240
  %.sroa.7447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.7447.0.copyload = load i32, ptr %.sroa.7447.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %94)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i64 16, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.start.p0(ptr nonnull %95)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false), !tbaa.struct !683
  %i.jc = icmp eq i32 %i.l, 14723
  %i.jd = icmp eq i32 %i.l, 14719
  %i.je = select i1 %i.jd, i32 715, i32 717
  %i.jf = select i1 %i.jc, i32 719, i32 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.0.copyload.i.i.i.i.i.i999 = load i64, ptr %i.jg, align 8
  %i.jh = and i64 %.0.copyload.i.i.i.i.i.i999, -5
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 7, ptr null, i16 1, ptr null) #39 ; 2 uses
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  %i.jl = extractvalue { ptr, i32 } %i.jj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #39
  store ptr %.sroa.0439.0.copyload, ptr %97, align 8, !tbaa !465
  %.sroa.6442.0..sroa_idx445 = getelementptr inbounds nuw i8, ptr %97, i64 8
  store i32 %.sroa.6442.0.copyload, ptr %.sroa.6442.0..sroa_idx445, align 8, !tbaa !240
  %i.jm = getelementptr inbounds nuw i8, ptr %97, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jm, ptr noundef nonnull align 8 dereferenceable(12) %94, i64 12, i1 false), !tbaa.struct !683
  %i.jn = getelementptr inbounds nuw i8, ptr %97, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jn, ptr noundef nonnull align 8 dereferenceable(12) %95, i64 12, i1 false), !tbaa.struct !683
  store ptr %97, ptr %96, align 8, !tbaa !688
  %i.jo = getelementptr inbounds nuw i8, ptr %96, i64 8
end_hunk_9
begin_hunk_10_@_ZL22LowerINTRINSIC_W_CHAINN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %i.ma = zext i16 %i.lz to i32
  store ptr %.sroa.01240.0, ptr %108, align 8, !tbaa !465
  %.sroa.9.0..sroa_idx1242 = getelementptr inbounds nuw i8, ptr %108, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx1242, align 8, !tbaa !240
  store ptr %.fca.0.extract366, ptr %109, align 8, !tbaa !465
  %.sroa.6387.0..sroa_idx388 = getelementptr inbounds nuw i8, ptr %109, i64 8
  store i32 1, ptr %.sroa.6387.0..sroa_idx388, align 8, !tbaa !240
  %.sroa.7392.0..sroa_idx393 = getelementptr inbounds nuw i8, ptr %109, i64 12
  store i32 %.sroa.7392.0.copyload, ptr %.sroa.7392.0..sroa_idx393, align 4
  %i.mb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %101, ptr %i.lx, i32 %i.ma, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %108, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %109) #39 ; 2 uses
  %.fca.0.extract321 = extractvalue { ptr, i32 } %i.mb, 0
  %.fca.1.extract322 = extractvalue { ptr, i32 } %i.mb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %102)
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #39
  br label %bb.cb

bb.z:                                             ; preds = %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #39
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !673
  store i64 %i.md, ptr %110, align 8, !tbaa !673
  %i.me = getelementptr inbounds nuw i8, ptr %110, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !674
  store i32 %i.mg, ptr %i.me, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %111)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %111, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.start.p0(ptr nonnull %112)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, ptr noundef nonnull align 8 dereferenceable(16) %i.mh, i64 16, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.start.p0(ptr nonnull %113)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %113, ptr noundef nonnull align 8 dereferenceable(16) %i.mi, i64 16, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.start.p0(ptr nonnull %114)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %114, ptr noundef nonnull align 8 dereferenceable(16) %i.mj, i64 16, i1 false), !tbaa.struct !683
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !472
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 88
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !654 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !643
  %i.mr = icmp ult i32 %i.mq, 65
  %i.ms = load ptr, ptr %i.mo, align 8
  %spec.select.i.i.i.i.i1018 = select i1 %i.mr, ptr %i.mo, ptr %i.ms
  %.0.i.i.i.i.i1019 = load i64, ptr %spec.select.i.i.i.i.i1018, align 8, !tbaa !357
  %i.mt = and i64 %.0.i.i.i.i.i1019, 4294967295
  %i.mu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.mt, ptr noundef nonnull align 8 dereferenceable(12) %110, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract310 = extractvalue { ptr, i32 } %i.mu, 0
  %.fca.1.extract311 = extractvalue { ptr, i32 } %i.mu, 1
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.0.copyload.i.i.i.i.i.i1020 = load i64, ptr %i.mv, align 8
  %i.mw = and i64 %.0.copyload.i.i.i.i.i.i1020, -5
  %i.mx = inttoptr i64 %i.mw to ptr
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !469
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !969
  %i.nc = zext i16 %i.nb to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %116, ptr noundef nonnull align 8 dereferenceable(12) %111, i64 12, i1 false), !tbaa.struct !683
  %i.nd = getelementptr inbounds nuw i8, ptr %116, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.nd, ptr noundef nonnull align 8 dereferenceable(12) %112, i64 12, i1 false), !tbaa.struct !683
  %i.ne = getelementptr inbounds nuw i8, ptr %116, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ne, ptr noundef nonnull align 8 dereferenceable(12) %113, i64 12, i1 false), !tbaa.struct !683
  %i.nf = getelementptr inbounds nuw i8, ptr %116, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.nf, ptr noundef nonnull align 8 dereferenceable(12) %114, i64 12, i1 false), !tbaa.struct !683
  %i.ng = getelementptr inbounds nuw i8, ptr %116, i64 64
  store ptr %.fca.0.extract310, ptr %i.ng, align 8, !tbaa !465
  %.sroa.4315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %116, i64 72
  store i32 %.fca.1.extract311, ptr %.sroa.4315.0..sroa_idx, align 8, !tbaa !240
  store ptr %116, ptr %115, align 8, !tbaa !688
  %i.nh = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i64 5, ptr %i.nh, align 8, !tbaa !689
  store i16 7, ptr %117, align 8, !tbaa !637
  %i.ni = getelementptr inbounds nuw i8, ptr %117, i64 8
  store ptr null, ptr %i.ni, align 8, !tbaa !705
  %i.nj = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 570, ptr noundef nonnull align 8 dereferenceable(12) %110, ptr %i.mz, i32 %i.nc, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %115, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %117, ptr noundef %i.mx) #39 ; 2 uses
  %.fca.0.extract301 = extractvalue { ptr, i32 } %i.nj, 0
  %.fca.1.extract302 = extractvalue { ptr, i32 } %i.nj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %114)
  call void @llvm.lifetime.end.p0(ptr nonnull %113)
  call void @llvm.lifetime.end.p0(ptr nonnull %112)
  call void @llvm.lifetime.end.p0(ptr nonnull %111)
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #39
  br label %bb.cb

bb.aa:                                            ; preds = %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #39
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !673
  store i64 %i.nl, ptr %118, align 8, !tbaa !673
  %i.nm = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !674
  store i32 %i.no, ptr %i.nm, align 8, !tbaa !676
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.01222.0.copyload = load ptr, ptr %i.nq, align 8, !tbaa !465 ; 2 uses
  %.sroa.51224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.51224.0.copyload = load i32, ptr %.sroa.51224.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.01222.0.copyload, i64 48
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !469
  %i.nt = zext i32 %.sroa.51224.0.copyload to i64
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %i.nt
  %.sroa.0.0.copyload.i.i.i1023 = load i16, ptr %i.nu, align 8, !tbaa !345
  switch i32 %i.l, label %bb.ab [
    i32 14686, label %bb.af
    i32 14687, label %bb.af
    i32 14688, label %bb.ac
    i32 14689, label %bb.ac
    i32 14714, label %bb.ad
    i32 14715, label %bb.ad
    i32 15856, label %bb.ae
    i32 15857, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa, %bb.aa
  br label %bb.af

bb.ad:                                            ; preds = %bb.aa, %bb.aa
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa, %bb.aa
  br label %bb.af

bb.af:                                            ; preds = %bb.aa, %bb.aa, %bb.ae, %bb.ad, %bb.ac
  %.0915 = phi i32 [ 549, %bb.ae ], [ 538, %bb.ac ], [ 548, %bb.ad ], [ 537, %bb.aa ], [ 537, %bb.aa ]
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.0.copyload.i.i.i.i.i.i1024 = load i64, ptr %i.nv, align 8
  %i.nw = and i64 %.0.copyload.i.i.i.i.i.i1024, -5
  %i.nx = inttoptr i64 %i.nw to ptr
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !469
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !969
  %i.oc = zext i16 %i.ob to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %120, ptr noundef nonnull align 8 dereferenceable(12) %i.b, i64 12, i1 false)
  %i.od = getelementptr inbounds nuw i8, ptr %120, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.od, ptr noundef nonnull align 8 dereferenceable(12) %i.np, i64 12, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %120, i64 32
  store ptr %.sroa.01222.0.copyload, ptr %i.oe, align 8, !tbaa !465
  %.sroa.51224.0..sroa_idx1225 = getelementptr inbounds nuw i8, ptr %120, i64 40
  store i32 %.sroa.51224.0.copyload, ptr %.sroa.51224.0..sroa_idx1225, align 8, !tbaa !240
  store ptr %120, ptr %119, align 8, !tbaa !688
  %i.of = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i64 3, ptr %i.of, align 8, !tbaa !689
  store i16 %.sroa.0.0.copyload.i.i.i1023, ptr %121, align 8, !tbaa !345
  %i.og = getelementptr inbounds nuw i8, ptr %121, i64 8
  store ptr null, ptr %i.og, align 8, !tbaa !705
  %i.oh = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %.0915, ptr noundef nonnull align 8 dereferenceable(12) %118, ptr %i.nz, i32 %i.oc, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %119, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %121, ptr noundef %i.nx) #39 ; 2 uses
  %.fca.0.extract286 = extractvalue { ptr, i32 } %i.oh, 0
  %.fca.1.extract287 = extractvalue { ptr, i32 } %i.oh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #39
  br label %bb.cb

switch.lookup1567:                                ; preds = %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread, %_ZN4llvmL21getIntrinsicWithChainEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #39
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !673
  store i64 %i.oj, ptr %122, align 8, !tbaa !673
  %i.ok = getelementptr inbounds nuw i8, ptr %122, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !674
  store i32 %i.om, ptr %i.ok, align 8, !tbaa !676
  %.sroa.0274.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !465
  %.sroa.6277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6277.0.copyload = load i32, ptr %.sroa.6277.0..sroa_idx, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %123)
  %i.on = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, ptr noundef nonnull align 8 dereferenceable(16) %i.on, i64 16, i1 false), !tbaa.struct !683
  %i.oo = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.01216.0.copyload = load ptr, ptr %i.oo, align 8, !tbaa !465 ; 2 uses
  %.sroa.51218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.51218.0.copyload = load i32, ptr %.sroa.51218.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !472
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 88
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !654 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 24 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !643
  %i.ow = icmp ult i32 %i.ov, 65
  %i.ox = load ptr, ptr %i.ot, align 8
  %spec.select.i.i.i.i.i1027 = select i1 %i.ow, ptr %i.ot, ptr %i.ox
  %.0.i.i.i.i.i1028 = load i64, ptr %spec.select.i.i.i.i.i1027, align 8, !tbaa !357
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.01216.0.copyload, i64 48
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !469
  %i.pa = zext i32 %.sroa.51218.0.copyload to i64
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %i.oz, i64 %i.pa
  %.sroa.0.0.copyload.i.i.i1029 = load i16, ptr %i.pb, align 8, !tbaa !345
  %switch.tableidx1566 = add i64 %.0.i.i.i.i.i, 4294952580
  %i.pc = and i64 %switch.tableidx1566, 4294967295
  %switch.gep1568 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZL22LowerINTRINSIC_W_CHAINN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE.961, i64 %i.pc
  %switch.load1569 = load i16, ptr %switch.gep1568, align 2
  %switch.ext1570 = zext i16 %switch.load1569 to i32
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.0.copyload.i.i.i.i.i.i1030 = load i64, ptr %i.pd, align 8
  %i.pe = and i64 %.0.copyload.i.i.i.i.i.i1030, -5
  %i.pf = inttoptr i64 %i.pe to ptr
  %i.pg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 7, ptr null, i16 1, ptr null) #39 ; 2 uses
  %i.ph = extractvalue { ptr, i32 } %i.pg, 0
  %i.pi = extractvalue { ptr, i32 } %i.pg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #39
  store ptr %.sroa.0274.0.copyload, ptr %125, align 8, !tbaa !465
  %.sroa.6277.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %125, i64 8
  store i32 %.sroa.6277.0.copyload, ptr %.sroa.6277.0..sroa_idx278, align 8, !tbaa !240
  %i.pj = getelementptr inbounds nuw i8, ptr %125, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pj, ptr noundef nonnull align 8 dereferenceable(12) %123, i64 12, i1 false), !tbaa.struct !683
  %i.pk = getelementptr inbounds nuw i8, ptr %125, i64 32
  store ptr %.sroa.01216.0.copyload, ptr %i.pk, align 8, !tbaa !465
  %.sroa.51218.0..sroa_idx1219 = getelementptr inbounds nuw i8, ptr %125, i64 40
  store i32 %.sroa.51218.0.copyload, ptr %.sroa.51218.0..sroa_idx1219, align 8, !tbaa !240
  store ptr %125, ptr %124, align 8, !tbaa !688
  %i.pl = getelementptr inbounds nuw i8, ptr %124, i64 8
  store i64 3, ptr %i.pl, align 8, !tbaa !689
  store i16 %.sroa.0.0.copyload.i.i.i1029, ptr %126, align 8, !tbaa !345
  %i.pm = getelementptr inbounds nuw i8, ptr %126, i64 8
  store ptr null, ptr %i.pm, align 8, !tbaa !705
  %i.pn = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %switch.ext1570, ptr noundef nonnull align 8 dereferenceable(12) %122, ptr %i.ph, i32 %i.pi, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %124, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %126, ptr noundef %i.pf) #39 ; 2 uses
  %.fca.0.extract261 = extractvalue { ptr, i32 } %i.pn, 0 ; 2 uses
  %.fca.1.extract262 = extractvalue { ptr, i32 } %i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  %i.po = and i64 %.0.i.i.i.i.i1028, 4294967295
  %i.pp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.po, ptr noundef nonnull align 8 dereferenceable(12) %122, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract1.i1033 = extractvalue { ptr, i32 } %i.pp, 0
  %.fca.1.extract2.i1034 = extractvalue { ptr, i32 } %i.pp, 1
  store ptr %.fca.0.extract1.i1033, ptr %40, align 8
  %.sroa.24.0..sroa_idx.i1035 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 %.fca.1.extract2.i1034, ptr %.sroa.24.0..sroa_idx.i1035, align 8
  store ptr %.fca.0.extract261, ptr %41, align 8, !tbaa !465
  %.sroa.29.0..sroa_idx.i1036 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.fca.1.extract262, ptr %.sroa.29.0..sroa_idx.i1036, align 8, !tbaa !240
  %i.pq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 800, ptr noundef nonnull align 8 dereferenceable(12) %122, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  %.fca.0.extract245 = extractvalue { ptr, i32 } %i.pq, 0
  %.fca.1.extract246 = extractvalue { ptr, i32 } %i.pq, 1
  store ptr %.fca.0.extract245, ptr %127, align 8
  %.sroa.2248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %127, i64 8
  store i32 %.fca.1.extract246, ptr %.sroa.2248.0..sroa_idx, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %127, i64 16
  store ptr %.fca.0.extract261, ptr %i.pr, align 8, !tbaa !465
  %.sroa.6277.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %127, i64 24
  store i32 1, ptr %.sroa.6277.0..sroa_idx280, align 8, !tbaa !240
  %i.ps = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nonnull %127, i64 2, ptr noundef nonnull align 8 dereferenceable(12) %122) #39 ; 2 uses
  %.fca.0.extract241 = extractvalue { ptr, i32 } %i.ps, 0
  %.fca.1.extract242 = extractvalue { ptr, i32 } %i.ps, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %123)
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #39
  br label %bb.cb

bb.ag:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #39
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !673 ; 5 uses
  store i64 %i.pu, ptr %128, align 8, !tbaa !673
  %i.pv = getelementptr inbounds nuw i8, ptr %128, i64 8
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !674 ; 5 uses
  store i32 %i.px, ptr %i.pv, align 8, !tbaa !676
  %i.py = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 2
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !636
  switch i16 %i.pz, label %bb.ah [
    i16 4, label %bb.ai
    i16 5, label %bb.ai
    i16 51, label %bb.aj
    i16 1, label %bb.ar
    i16 2, label %bb.ba
    i16 3, label %bb.bg
    i16 7, label %bb.bj
    i16 6, label %bb.bl
    i16 54, label %bb.bl
    i16 9, label %bb.bl
    i16 8, label %bb.bn
    i16 46, label %bb.bo
    i16 47, label %bb.bo
    i16 48, label %bb.bo
    i16 55, label %bb.ca
  ]

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.ag
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !469 ; 2 uses
  %.sroa.0.0.copyload.i1037 = load i16, ptr %i.qb, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i1038 = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %.sroa.21.0.copyload.i1039 = load ptr, ptr %.sroa.21.0..sroa_idx.i1038, align 8, !tbaa !471
  store i16 1, ptr %129, align 8, !tbaa !637
  %i.qc = getelementptr inbounds nuw i8, ptr %129, i64 8
  store ptr null, ptr %i.qc, align 8, !tbaa !705
  %i.qd = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i1037, ptr %.sroa.21.0.copyload.i1039, i16 7, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %129) #39 ; 2 uses
  %i.qe = extractvalue { ptr, i32 } %i.qd, 0
  %i.qf = extractvalue { ptr, i32 } %i.qd, 1
  %i.qg = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 4
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !870
  %i.qi = zext i16 %i.qh to i32
  %i.qj = load ptr, ptr %i.a, align 8, !tbaa !638
  %i.qk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.qi, ptr noundef nonnull align 8 dereferenceable(12) %128, ptr %i.qe, i32 %i.qf, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.qj) #39 ; 2 uses
  %.fca.0.extract226 = extractvalue { ptr, i32 } %i.qk, 0 ; 4 uses
  %.fca.1.extract227 = extractvalue { ptr, i32 } %i.qk, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #39
  %i.ql = load ptr, ptr %i.qa, align 8, !tbaa !469 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %.sroa.0.0.copyload.i1042 = load i16, ptr %i.qm, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i1043 = getelementptr inbounds nuw i8, ptr %i.ql, i64 24
  %.sroa.21.0.copyload.i1044 = load ptr, ptr %.sroa.21.0..sroa_idx.i1043, align 8, !tbaa !471
  %i.qn = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.fca.0.extract226, i32 %.fca.1.extract227, ptr noundef nonnull align 8 dereferenceable(12) %128, i16 %.sroa.0.0.copyload.i1042, ptr %.sroa.21.0.copyload.i1044) #39 ; 2 uses
  %.fca.0.extract217 = extractvalue { ptr, i32 } %i.qn, 0
  %.fca.1.extract218 = extractvalue { ptr, i32 } %i.qn, 1
  store ptr %.fca.0.extract217, ptr %130, align 16
  %.sroa.2220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %130, i64 8
  store i32 %.fca.1.extract218, ptr %.sroa.2220.0..sroa_idx, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %130, i64 16
  %i.qp = load ptr, ptr %i.qa, align 8, !tbaa !469 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %.sroa.0.0.copyload.i1047 = load i16, ptr %i.qq, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i1048 = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %.sroa.21.0.copyload.i1049 = load ptr, ptr %.sroa.21.0..sroa_idx.i1048, align 8, !tbaa !471
  %i.qr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %128, i16 %.sroa.0.0.copyload.i1047, ptr %.sroa.21.0.copyload.i1049, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract211 = extractvalue { ptr, i32 } %i.qr, 0
  %.fca.1.extract212 = extractvalue { ptr, i32 } %i.qr, 1
  store ptr %.fca.0.extract211, ptr %i.qo, align 16
  %.sroa.2214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %130, i64 24
  store i32 %.fca.1.extract212, ptr %.sroa.2214.0..sroa_idx, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %130, i64 32
  %i.qt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %128, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract207 = extractvalue { ptr, i32 } %i.qt, 0
  %.fca.1.extract208 = extractvalue { ptr, i32 } %i.qt, 1
  store ptr %.fca.0.extract207, ptr %i.qs, align 16
  %.sroa.2210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %130, i64 40
  store i32 %.fca.1.extract208, ptr %.sroa.2210.0..sroa_idx, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %130, i64 48
  store ptr %.fca.0.extract226, ptr %i.qu, align 16, !tbaa !472
  %i.qv = getelementptr inbounds nuw i8, ptr %130, i64 56
  store i32 1, ptr %i.qv, align 8, !tbaa !467
  %i.qw = load ptr, ptr %i.qa, align 8, !tbaa !469 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %.sroa.0.0.copyload.i1052 = load i16, ptr %i.qx, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i1053 = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %.sroa.21.0.copyload.i1054 = load ptr, ptr %.sroa.21.0..sroa_idx.i1053, align 8, !tbaa !471
  store ptr %130, ptr %131, align 8, !tbaa !688
  %i.qy = getelementptr inbounds nuw i8, ptr %131, i64 8
  store i64 4, ptr %i.qy, align 8, !tbaa !689
  %i.qz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 568, ptr noundef nonnull align 8 dereferenceable(12) %128, i16 %.sroa.0.0.copyload.i1052, ptr %.sroa.21.0.copyload.i1054, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %131) #39 ; 2 uses
  %.fca.0.extract198 = extractvalue { ptr, i32 } %i.qz, 0
  %.fca.1.extract199 = extractvalue { ptr, i32 } %i.qz, 1
  %i.ra = load ptr, ptr %i.qa, align 8, !tbaa !469
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !969
  %i.rd = zext i16 %i.rc to i32
  store ptr %.fca.0.extract226, ptr %132, align 8, !tbaa !465
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %132, i64 8
  store i32 %.fca.1.extract227, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  store ptr %.fca.0.extract198, ptr %133, align 8, !tbaa !465
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %133, i64 8
  store i32 %.fca.1.extract199, ptr %.sroa.4205.0..sroa_idx, align 8, !tbaa !240
  store ptr %.fca.0.extract226, ptr %134, align 8, !tbaa !472
  %i.re = getelementptr inbounds nuw i8, ptr %134, i64 8
  store i32 2, ptr %i.re, align 8, !tbaa !467
  %i.rf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %128, ptr %i.ra, i32 %i.rd, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %132, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %133, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %134) #39 ; 2 uses
  %.fca.0.extract192 = extractvalue { ptr, i32 } %i.rf, 0
  %.fca.1.extract193 = extractvalue { ptr, i32 } %i.rf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #39
  br label %bb.ca

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.rg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.0189.0.copyload = load ptr, ptr %i.rg, align 8, !tbaa !465 ; 2 uses
  %.sroa.4190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.4190.0.copyload = load i32, ptr %.sroa.4190.0..sroa_idx, align 8, !tbaa !240
  %i.rh = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %i.rh, i64 16, i1 false)
  %i.ri = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %i.ri, i64 16, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %.sroa.01463.0.copyload = load ptr, ptr %i.rj, align 8, !tbaa !465 ; 3 uses
  %.sroa.41464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %.sroa.41464.0.copyload = load i32, ptr %.sroa.41464.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %.sroa.01199.0.copyload = load ptr, ptr %i.rk, align 8, !tbaa !465 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #39
end_hunk_10
begin_hunk_11_@_ZNK4llvm17X86TargetLowering27EmitInstrWithCustomInserterERNS_12MachineInstrEPNS_17MachineBasicBlockE:bb.a
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  %i.rb = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr null, ptr %i.rb, align 8, !tbaa !1064, !alias.scope !3046
  %i.rc = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 %i.ra, ptr %i.rc, align 4, !tbaa !357, !alias.scope !3046
  %i.rd = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false), !alias.scope !3046
  store i32 0, ptr %20, align 8, !alias.scope !3046
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qx, ptr noundef nonnull align 8 dereferenceable(1065) %i.qw, ptr noundef nonnull align 8 dereferenceable(32) %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  %i.re = load ptr, ptr %i.pv, align 8, !tbaa !1059
  %i.rf = getelementptr inbounds i8, ptr %i.re, i64 -91072
  %i.rg = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.rf) ; 0 uses
  %i.rh = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #39 ; 0 uses
  br label %bb.bl

bb.as:                                            ; preds = %.critedge394
  %i.ri = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %2, i32 %i.ps, i64 -1) #39
  br i1 %i.ri, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %2, i32 %i.ps, i64 -1)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.rj = getelementptr inbounds nuw i8, ptr %i.d, i64 768 ; 4 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !1059
  %i.rl = getelementptr inbounds i8, ptr %i.rk, i64 -640
  %i.rm = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.rl, i32 25) ; 2 uses
  %i.rn = extractvalue { ptr, ptr } %i.rm, 0
  %i.ro = extractvalue { ptr, ptr } %i.rm, 1
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !997
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  %i.rt = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.rt, align 8, !tbaa !1064, !alias.scope !3047
  %i.ru = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 %i.rs, ptr %i.ru, align 4, !tbaa !357, !alias.scope !3047
  %i.rv = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rv, i8 0, i64 16, i1 false), !alias.scope !3047
  store i32 0, ptr %19, align 8, !alias.scope !3047
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ro, ptr noundef nonnull align 8 dereferenceable(1065) %i.rn, ptr noundef nonnull align 8 dereferenceable(32) %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  %i.rw = load ptr, ptr %i.rj, align 8, !tbaa !1059
  %i.rx = getelementptr inbounds i8, ptr %i.rw, i64 -640
  %i.ry = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.rx, i32 22) ; 2 uses
  %i.rz = extractvalue { ptr, ptr } %i.ry, 0
  %i.sa = extractvalue { ptr, ptr } %i.ry, 1
  %i.sb = load ptr, ptr %i.rp, align 8, !tbaa !997
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 36
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  %i.se = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.se, align 8, !tbaa !1064, !alias.scope !3048
  %i.sf = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %i.sd, ptr %i.sf, align 4, !tbaa !357, !alias.scope !3048
  %i.sg = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sg, i8 0, i64 16, i1 false), !alias.scope !3048
  store i32 0, ptr %18, align 8, !alias.scope !3048
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.sa, ptr noundef nonnull align 8 dereferenceable(1065) %i.rz, ptr noundef nonnull align 8 dereferenceable(32) %18) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  %i.sh = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !1040
  %i.sj = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.si, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4608), ptr nonnull @.str.52, i64 0) #39 ; 2 uses
  %i.sk = load ptr, ptr %i.rj, align 8, !tbaa !1059
  %i.sl = getelementptr inbounds i8, ptr %i.sk, i64 -640
  %i.sm = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.sl, i32 %i.sj) ; 2 uses
  %i.sn = extractvalue { ptr, ptr } %i.sm, 0
  %i.so = extractvalue { ptr, ptr } %i.sm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.sp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.sp, align 8, !tbaa !1064, !alias.scope !3049
  %i.sq = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 53, ptr %i.sq, align 4, !tbaa !357, !alias.scope !3049
  %i.sr = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sr, i8 0, i64 16, i1 false), !alias.scope !3049
  store i32 0, ptr %17, align 8, !alias.scope !3049
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.so, ptr noundef nonnull align 8 dereferenceable(1065) %i.sn, ptr noundef nonnull align 8 dereferenceable(32) %17) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  %i.ss = load ptr, ptr %i.sh, align 8, !tbaa !1040
  %i.st = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ss, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4608), ptr nonnull @.str.52, i64 0) #39
  %i.su = load ptr, ptr %i.rj, align 8, !tbaa !1059
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 -12576
  %i.sw = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.sv) ; 2 uses
  %i.sx = extractvalue { ptr, ptr } %i.sw, 0      ; 3 uses
  %i.sy = extractvalue { ptr, ptr } %i.sw, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.sz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.sz, align 8, !tbaa !1064, !alias.scope !3050
  %i.ta = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %i.st, ptr %i.ta, align 4, !tbaa !357, !alias.scope !3050
  %i.tb = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tb, i8 0, i64 16, i1 false), !alias.scope !3050
  store i32 16777216, ptr %16, align 8, !alias.scope !3050
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.sy, ptr noundef nonnull align 8 dereferenceable(1065) %i.sx, ptr noundef nonnull align 8 dereferenceable(32) %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %i.tc = load ptr, ptr %i.rp, align 8, !tbaa !997
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 68
  %i.te = load i32, ptr %i.td, align 4, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.tf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.tf, align 8, !tbaa !1064, !alias.scope !3051
  %i.tg = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.te, ptr %i.tg, align 4, !tbaa !357, !alias.scope !3051
  %i.th = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.th, i8 0, i64 16, i1 false), !alias.scope !3051
  store i32 0, ptr %15, align 8, !alias.scope !3051
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.sy, ptr noundef nonnull align 8 dereferenceable(1065) %i.sx, ptr noundef nonnull align 8 dereferenceable(32) %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.ti = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.ti, align 8, !tbaa !1064, !alias.scope !3052
  %i.tj = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.sj, ptr %i.tj, align 4, !tbaa !357, !alias.scope !3052
  %i.tk = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tk, i8 0, i64 16, i1 false), !alias.scope !3052
  store i32 0, ptr %14, align 8, !alias.scope !3052
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.sy, ptr noundef nonnull align 8 dereferenceable(1065) %i.sx, ptr noundef nonnull align 8 dereferenceable(32) %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  %i.tl = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #39 ; 0 uses
  br label %bb.bl

bb.av:                                            ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit
  %i.tm = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !576 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 107
  store i8 1, ptr %i.to, align 1, !tbaa !3053
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !997
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !357
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tn, i64 208
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !83
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.ts
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !672
  %i.tx = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !1059
  %i.tz = getelementptr inbounds i8, ptr %i.ty, i64 -153472
  %i.ua = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.tz, i32 33) ; 2 uses
  %i.ub = extractvalue { ptr, ptr } %i.ua, 0      ; 2 uses
  %i.uc = extractvalue { ptr, ptr } %i.ua, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  %i.ud = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.ud, align 8, !tbaa !1064, !alias.scope !3054
  %i.ue = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 33, ptr %i.ue, align 4, !tbaa !357, !alias.scope !3054
  %i.uf = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uf, i8 0, i64 16, i1 false), !alias.scope !3054
  store i32 0, ptr %13, align 8, !alias.scope !3054
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.uc, ptr noundef nonnull align 8 dereferenceable(1065) %i.ub, ptr noundef nonnull align 8 dereferenceable(32) %13) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  store i32 1, ptr %12, align 8, !alias.scope !3055
  %i.ug = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.ug, align 8, !tbaa !1064, !alias.scope !3055
  %i.uh = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.tw, ptr %i.uh, align 8, !tbaa !357, !alias.scope !3055
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.uc, ptr noundef nonnull align 8 dereferenceable(1065) %i.ub, ptr noundef nonnull align 8 dereferenceable(32) %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  %i.ui = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #39 ; 0 uses
  br label %bb.bl

bb.aw:                                            ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !997 ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 48
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !357
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 80
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !357
  %i.up = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !576
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 224
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !83
  %i.ut = getelementptr inbounds nuw [48 x i8], ptr %i.us, i64 %i.um
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !83
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %i.uo
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !672
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #39
  %i.ux = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !1059
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -68832
  %i.va = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !357
  %i.vc = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.uz, i32 %i.vb) ; 2 uses
  %i.vd = extractvalue { ptr, ptr } %i.vc, 0
  store ptr %i.vd, ptr %49, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.vf = extractvalue { ptr, ptr } %i.vc, 1
  store ptr %i.vf, ptr %i.ve, align 8
  %i.vg = trunc i64 %i.uw to i32
  %i.vh = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvmL12addRegOffsetERKNS_19MachineInstrBuilderENS_8RegisterEbi(ptr noundef nonnull align 8 dereferenceable(16) %49, i32 33, i1 noundef zeroext false, i32 noundef %i.vg) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #39
  %i.vi = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #39 ; 0 uses
  br label %bb.bl

switch.lookup589:                                 ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit
  %i.vj = sext i32 %i.bm to i64
  %i.vk = getelementptr [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering27EmitInstrWithCustomInserterERNS_12MachineInstrEPNS_17MachineBasicBlockE.963, i64 %i.vj
  %switch.gep590 = getelementptr i8, ptr %i.vk, i64 -27584
  %switch.load591 = load i64, ptr %switch.gep590, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !1059
  %i.vn = getelementptr inbounds [32 x i8], ptr %i.vm, i64 %switch.load591
  %i.vo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.vn) ; 2 uses
  %i.vp = extractvalue { ptr, ptr } %i.vo, 0      ; 4 uses
  %i.vq = extractvalue { ptr, ptr } %i.vo, 1      ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !997
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !357
  %i.vv = trunc i64 %i.vu to i32
  %i.vw = add i32 %i.vv, 284
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.vx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.vx, align 8, !tbaa !1064, !alias.scope !3056
  %i.vy = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %i.vw, ptr %i.vy, align 4, !tbaa !357, !alias.scope !3056
  %i.vz = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vz, i8 0, i64 16, i1 false), !alias.scope !3056
  store i32 16777216, ptr %11, align 8, !alias.scope !3056
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.vq, ptr noundef nonnull align 8 dereferenceable(1065) %i.vp, ptr noundef nonnull align 8 dereferenceable(32) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %i.wa = load ptr, ptr %i.vr, align 8, !tbaa !997
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !357
  %i.wd = trunc i64 %i.wc to i32
  %i.we = add i32 %i.wd, 284
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.wf = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.wf, align 8, !tbaa !1064, !alias.scope !3057
  %i.wg = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.we, ptr %i.wg, align 4, !tbaa !357, !alias.scope !3057
  %i.wh = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wh, i8 0, i64 16, i1 false), !alias.scope !3057
  store i32 268435456, ptr %10, align 8, !alias.scope !3057
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.vq, ptr noundef nonnull align 8 dereferenceable(1065) %i.vp, ptr noundef nonnull align 8 dereferenceable(32) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.wi = load ptr, ptr %i.vr, align 8, !tbaa !997
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 48
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !357
  %i.wl = trunc i64 %i.wk to i32
  %i.wm = add i32 %i.wl, 284
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.wn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.wn, align 8, !tbaa !1064, !alias.scope !3058
  %i.wo = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.wm, ptr %i.wo, align 4, !tbaa !357, !alias.scope !3058
  %i.wp = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wp, i8 0, i64 16, i1 false), !alias.scope !3058
  store i32 268435456, ptr %9, align 8, !alias.scope !3058
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.vq, ptr noundef nonnull align 8 dereferenceable(1065) %i.vp, ptr noundef nonnull align 8 dereferenceable(32) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.wq = load ptr, ptr %i.vr, align 8, !tbaa !997
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 80
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !357
  %i.wt = trunc i64 %i.ws to i32
  %i.wu = add i32 %i.wt, 284
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.wv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.wv, align 8, !tbaa !1064, !alias.scope !3059
  %i.ww = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.wu, ptr %i.ww, align 4, !tbaa !357, !alias.scope !3059
  %i.wx = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, i8 0, i64 16, i1 false), !alias.scope !3059
  store i32 268435456, ptr %8, align 8, !alias.scope !3059
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.vq, ptr noundef nonnull align 8 dereferenceable(1065) %i.vp, ptr noundef nonnull align 8 dereferenceable(32) %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %i.wy = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #39 ; 0 uses
  br label %bb.bl

bb.ax:                                            ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !997
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !357
  %i.xd = trunc i64 %i.xc to i32
  %i.xe = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !1059
  %i.xg = getelementptr inbounds i8, ptr %i.xf, i64 -161152
  %i.xh = add i32 %i.xd, 284
  %i.xi = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.xg, i32 %i.xh) ; 0 uses
  %i.xj = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #39 ; 0 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !576
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 100
  store i32 1, ptr %i.xm, align 4, !tbaa !3060
  br label %bb.bl

bb.ay:                                            ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit
  %i.xn = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !576
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 100
  store i32 2, ptr %i.xp, align 4, !tbaa !3060
  br label %bb.bl

bb.az:                                            ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit
  %i.xq = getelementptr inbounds nuw i8, ptr %i.d, i64 412
  %i.xr = load i8, ptr %i.xq, align 4, !tbaa !1106, !range !79, !noundef !80
  %i.xs = trunc nuw i8 %i.xr to i1                ; 5 uses
  switch i32 %i.bm, label %bb.ba [
    i32 3488, label %bb.bb
    i32 3491, label %bb.bc
    i32 3496, label %bb.bd
    i32 3489, label %bb.be
    i32 3490, label %bb.bf
  ]

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.xt = select i1 %i.xs, i32 5030, i32 5023
  br label %bb.bg

bb.bc:                                            ; preds = %bb.az
  %i.xu = select i1 %i.xs, i32 5029, i32 5028
  br label %bb.bg

bb.bd:                                            ; preds = %bb.az
  %i.xv = select i1 %i.xs, i32 5035, i32 5034
  br label %bb.bg

bb.be:                                            ; preds = %bb.az
  %i.xw = select i1 %i.xs, i32 5027, i32 5024
  br label %bb.bg

bb.bf:                                            ; preds = %bb.az
  %i.xx = select i1 %i.xs, i32 5026, i32 5025
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %.0388 = phi i32 [ %i.xt, %bb.bb ], [ %i.xu, %bb.bc ], [ %i.xv, %bb.bd ], [ %i.xw, %bb.be ], [ %i.xx, %bb.bf ] ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !1059
  %i.ya = zext nneg i32 %.0388 to i64
  %i.yb = sub nsw i64 0, %i.ya
  %i.yc = getelementptr inbounds [32 x i8], ptr %i.xz, i64 %i.yb
  %i.yd = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.yc) ; 2 uses
  %i.ye = extractvalue { ptr, ptr } %i.yd, 0      ; 7 uses
  %i.yf = extractvalue { ptr, ptr } %i.yd, 1      ; 7 uses
  %or.cond = icmp samesign ult i32 %.0388, 5034
  br i1 %or.cond, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !997
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !357
  %i.yk = trunc i64 %i.yj to i32
  %i.yl = add i32 %i.yk, 284
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.ym = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ym, align 8, !tbaa !1064, !alias.scope !3061
  %i.yn = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.yl, ptr %i.yn, align 4, !tbaa !357, !alias.scope !3061
  %i.yo = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yo, i8 0, i64 16, i1 false), !alias.scope !3061
  store i32 16777216, ptr %7, align 8, !alias.scope !3061
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ye, ptr noundef nonnull align 8 dereferenceable(32) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0387 = phi i64 [ 1, %bb.bh ], [ 0, %bb.bg ]   ; 6 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !997
  %i.yr = getelementptr inbounds nuw [32 x i8], ptr %i.yq, i64 %.0387
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ye, ptr noundef nonnull align 8 dereferenceable(32) %i.yr) #39
  %i.ys = load ptr, ptr %i.yp, align 8, !tbaa !997
  %i.yt = getelementptr inbounds nuw [32 x i8], ptr %i.ys, i64 %.0387
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ye, ptr noundef nonnull align 8 dereferenceable(32) %i.yu) #39
  %i.yv = load ptr, ptr %i.yp, align 8, !tbaa !997
  %i.yw = getelementptr inbounds nuw [32 x i8], ptr %i.yv, i64 %.0387
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ye, ptr noundef nonnull align 8 dereferenceable(32) %i.yx) #39
  %i.yy = load ptr, ptr %i.yp, align 8, !tbaa !997
  %i.yz = getelementptr inbounds nuw [32 x i8], ptr %i.yy, i64 %.0387
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ye, ptr noundef nonnull align 8 dereferenceable(32) %i.za) #39
  %i.zb = load ptr, ptr %i.yp, align 8, !tbaa !997
  %i.zc = getelementptr inbounds nuw [32 x i8], ptr %i.zb, i64 %.0387
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ye, ptr noundef nonnull align 8 dereferenceable(32) %i.zd) #39
  %i.ze = and i32 %.0388, 5054
  %or.cond5 = icmp eq i32 %i.ze, 5034
  br i1 %or.cond5, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.zf = load ptr, ptr %i.yp, align 8, !tbaa !997
  %i.zg = getelementptr inbounds nuw [32 x i8], ptr %i.zf, i64 %.0387
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 176
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !357
  %i.zj = trunc i64 %i.zi to i32
  %i.zk = add i32 %i.zj, 284
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.zl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.zl, align 8, !tbaa !1064, !alias.scope !3062
  %i.zm = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.zk, ptr %i.zm, align 4, !tbaa !357, !alias.scope !3062
  %i.zn = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zn, i8 0, i64 16, i1 false), !alias.scope !3062
  store i32 268435456, ptr %6, align 8, !alias.scope !3062
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.yf, ptr noundef nonnull align 8 dereferenceable(1065) %i.ye, ptr noundef nonnull align 8 dereferenceable(32) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.zo = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #39 ; 0 uses
  br label %bb.bl

switch.lookup593:                                 ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit
  %i.zp = sext i32 %i.bm to i64
  %i.zq = getelementptr [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering27EmitInstrWithCustomInserterERNS_12MachineInstrEPNS_17MachineBasicBlockE.964, i64 %i.zp
  %switch.gep594 = getelementptr i8, ptr %i.zq, i64 -27632
  %switch.load595 = load i64, ptr %switch.gep594, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #39
  store ptr %i.l, ptr %50, align 8, !tbaa !673
  %i.zr = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.zs = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zr, i8 0, i64 24, i1 false)
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !1059
  %i.zu = getelementptr inbounds [32 x i8], ptr %i.zt, i64 %switch.load595
  %i.zv = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(32) %i.zu) ; 2 uses
  %i.zw = extractvalue { ptr, ptr } %i.zv, 0      ; 3 uses
  %i.zx = extractvalue { ptr, ptr } %i.zv, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #39
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !997
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.zx, ptr noundef nonnull align 8 dereferenceable(1065) %i.zw, ptr noundef nonnull align 8 dereferenceable(32) %i.zz) #39
  %i.aaa = load ptr, ptr %i.zy, align 8, !tbaa !997
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 48
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !357
  %i.aad = trunc i64 %i.aac to i32
  %i.aae = add i32 %i.aad, 284
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.aaf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.aaf, align 8, !tbaa !1064, !alias.scope !3063
  %i.aag = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.aae, ptr %i.aag, align 4, !tbaa !357, !alias.scope !3063
  %i.aah = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aah, i8 0, i64 16, i1 false), !alias.scope !3063
  store i32 268435456, ptr %5, align 8, !alias.scope !3063
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.zx, ptr noundef nonnull align 8 dereferenceable(1065) %i.zw, ptr noundef nonnull align 8 dereferenceable(32) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.aai = load ptr, ptr %i.zy, align 8, !tbaa !997
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 80
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store i32 1, ptr %4, align 8, !alias.scope !3064
  %i.aal = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.aal, align 8, !tbaa !1064, !alias.scope !3064
  %i.aam = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.aak, ptr %i.aam, align 8, !tbaa !357, !alias.scope !3064
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.zx, ptr noundef nonnull align 8 dereferenceable(1065) %i.zw, ptr noundef nonnull align 8 dereferenceable(32) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.aan = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #39 ; 0 uses
  br label %bb.bl

switch.lookup597:                                 ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit
  %i.aao = sext i32 %i.bm to i64
  %i.aap = getelementptr [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering27EmitInstrWithCustomInserterERNS_12MachineInstrEPNS_17MachineBasicBlockE.965, i64 %i.aao
  %switch.gep598 = getelementptr i8, ptr %i.aap, i64 -27616
  %switch.load599 = load i64, ptr %switch.gep598, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #39
  store ptr %i.l, ptr %51, align 8, !tbaa !673
  %i.aaq = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aaq, i8 0, i64 24, i1 false)
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !1059
  %i.aat = getelementptr inbounds [32 x i8], ptr %i.aas, i64 %switch.load599
  %i.aau = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %i.aat) ; 2 uses
  %i.aav = extractvalue { ptr, ptr } %i.aau, 0    ; 3 uses
  %i.aaw = extractvalue { ptr, ptr } %i.aau, 1    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #39
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !997
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aaw, ptr noundef nonnull align 8 dereferenceable(1065) %i.aav, ptr noundef nonnull align 8 dereferenceable(32) %i.aay) #39
  %i.aaz = load ptr, ptr %i.aax, align 8, !tbaa !997
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 48
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !357
  %i.abc = trunc i64 %i.abb to i32
  %i.abd = add i32 %i.abc, 284
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.abe = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.abe, align 8, !tbaa !1064, !alias.scope !3065
  %i.abf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.abd, ptr %i.abf, align 4, !tbaa !357, !alias.scope !3065
  %i.abg = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abg, i8 0, i64 16, i1 false), !alias.scope !3065
  store i32 268435456, ptr %3, align 8, !alias.scope !3065
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aaw, ptr noundef nonnull align 8 dereferenceable(1065) %i.aav, ptr noundef nonnull align 8 dereferenceable(32) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.abh = load ptr, ptr %i.aax, align 8, !tbaa !997
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aaw, ptr noundef nonnull align 8 dereferenceable(1065) %i.aav, ptr noundef nonnull align 8 dereferenceable(32) %i.abi) #39
  %i.abj = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #39 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.ar, %bb.au, %bb.ak, %bb.ad, %bb.ac, %switch.lookup597, %switch.lookup593, %bb.bk, %bb.ay, %bb.ax, %switch.lookup589, %bb.aw, %bb.av, %.loopexit, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %_ZN4llvmL19getAddressFromInstrEPKNS_12MachineInstrEj.exit, %bb.r, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.2 = phi ptr [ %2, %bb.i ], [ %2, %bb.j ], [ %i.bp, %bb.k ], [ %i.bq, %bb.l ], [ %2, %bb.m ], [ %i.bs, %bb.n ], [ %2, %bb.r ], [ %2, %_ZN4llvmL19getAddressFromInstrEPKNS_12MachineInstrEj.exit ], [ %i.jw, %bb.u ], [ %i.jx, %bb.v ], [ %i.jy, %bb.w ], [ %i.jz, %bb.x ], [ %2, %bb.y ], [ %i.kb, %bb.z ], [ %i.kc, %bb.aa ], [ %2, %bb.ab ], [ %2, %switch.lookup597 ], [ %2, %.loopexit ], [ %2, %bb.ak ], [ %2, %bb.av ], [ %2, %bb.aw ], [ %2, %switch.lookup589 ], [ %2, %bb.ax ], [ %2, %bb.ay ], [ %2, %bb.bk ], [ %2, %switch.lookup593 ], [ %2, %bb.ac ], [ %2, %bb.ad ], [ %2, %bb.au ], [ %2, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #39
  ret ptr %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvmL14addFullAddressERKNS_19MachineInstrBuilderERKNS_14X86AddressModeE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(37) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 4 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !1104
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.c, align 4, !tbaa !357 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1061 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1062   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !1064, !alias.scope !3078
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.sroa.01.0.copyload, ptr %i.h, align 4, !tbaa !357, !alias.scope !3078
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !3078
  store i32 0, ptr %8, align 8, !alias.scope !3078
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(1065) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  store i32 5, ptr %7, align 8, !alias.scope !3079
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !1064, !alias.scope !3079
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.01.0.copyload, ptr %i.k, align 8, !tbaa !357, !alias.scope !3079
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(1065) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1105
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1061
  %i.q = load ptr, ptr %0, align 8, !tbaa !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store i32 1, ptr %6, align 8, !alias.scope !3080
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !1064, !alias.scope !3080
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.n, ptr %i.s, align 8, !tbaa !357, !alias.scope !3080
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(1065) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload = load i32, ptr %i.t, align 4, !tbaa !240
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !1061
  %i.v = load ptr, ptr %0, align 8, !tbaa !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !1064, !alias.scope !3081
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.0.0.copyload, ptr %i.x, align 4, !tbaa !357, !alias.scope !3081
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !3081
  store i32 0, ptr %5, align 8, !alias.scope !3081
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(1065) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1102 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1101 ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1103
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !1061
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ah, align 8, !tbaa !1064, !alias.scope !3082
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.aa, ptr %i.ai, align 8, !tbaa !357, !alias.scope !3082
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.ac, ptr %i.aj, align 4, !tbaa !357, !alias.scope !3082
  %i.ak = ashr i32 %i.ac, 31
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !357, !alias.scope !3082
  %i.am = shl i32 %i.ae, 8
  %i.an = and i32 %i.am, 1048320
  %i.ao = or disjoint i32 %i.an, 10
  store i32 %i.ao, ptr %4, align 8, !alias.scope !3082
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(1065) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = sext i32 %i.ac to i64
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !1061
  %i.ar = load ptr, ptr %0, align 8, !tbaa !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  store i32 1, ptr %3, align 8, !alias.scope !3083
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !1064, !alias.scope !3083
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !357, !alias.scope !3083
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !1061
  %i.av = load ptr, ptr %0, align 8, !tbaa !1062
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(1065) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL10emitXBeginRN4llvm12MachineInstrEPNS_17MachineBasicBlockEPKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !673  ; 2 uses
  store i64 %i.b, ptr %11, align 8, !tbaa !673
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !357  ; 3 uses
  %i.f = icmp ugt i64 %i.e, 7
  %i.g = inttoptr i64 %i.b to ptr
  br i1 %i.f, label %bb.b, label %_ZNK4llvm12MachineInstr13getPCSectionsEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.e, 7
  %.not.i.i = icmp eq i64 %i.h, 3
  %i.i = and i64 %i.e, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 14 uses
  br i1 %.not.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
end_hunk_11
begin_hunk_12_@_ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE:bb.a
  %or.cond81 = or i1 %i.rm, %i.ru
  br i1 %or.cond81, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %switch.tableidx1156 = add i32 %i.rq, -51       ; 3 uses
  %i.rx = icmp ult i32 %switch.tableidx1156, 10
  br i1 %i.rx, label %switch.lookup1157, label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.es
  br label %.critedge

bb.ei:                                            ; preds = %bb.ef
  %i.ry = icmp eq i32 %spec.store.select, 32
  %i.rz = select i1 %i.ru, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2240), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2752)
  %i.sa = select i1 %i.ru, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4608), ptr null
  %i.sb = select i1 %i.ry, ptr %i.rz, ptr %i.sa   ; 2 uses
  %.not163 = icmp eq ptr %i.sb, null
  br i1 %.not163, label %.critedge, label %.thread1037

.thread1037:                                      ; preds = %bb.ee, %bb.ed, %bb.ei
  %i.sc = phi ptr [ %i.sb, %bb.ei ], [ %i.rw, %bb.ee ], [ %i.rv, %bb.ed ] ; 4 uses
  %i.sd = lshr i32 %i.rq, 3                       ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 18
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !4016
  %i.sg = zext i16 %i.sf to i32
  %.not.i499 = icmp samesign ult i32 %i.sd, %i.sg
  br i1 %.not.i499, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, label %.critedge

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit: ; preds = %.thread1037
  %i.sh = and i32 %i.rq, 7
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !4017
  %i.sk = zext i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.sk
  %i.sm = zext nneg i32 %i.sd to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !357
  %i.sp = zext i8 %i.so to i32
  %i.sq = shl nuw nsw i32 1, %i.sh
  %i.sr = and i32 %i.sq, %i.sp
  %.not1097 = icmp eq i32 %i.sr, 0                ; 2 uses
  %spec.select1080 = select i1 %.not1097, i32 %i.hp, i32 %i.rq
  %spec.select1081 = select i1 %.not1097, ptr %i.hq, ptr %i.sc
  br label %.critedge

bb.ej:                                            ; preds = %_ZL9isGRClassRKN4llvm15MCRegisterClassE.exit482
  %i.ss = tail call fastcc noundef zeroext i1 @_ZL9isFRClassRKN4llvm15MCRegisterClassE(i16 %.pre)
  br i1 %i.ss, label %bb.ek, label %bb.er

bb.ek:                                            ; preds = %bb.ej
  switch i16 %4, label %bb.el [
    i16 13, label %.critedge
    i16 14, label %.critedge.fold.split1082
    i16 7, label %.critedge.fold.split1082
    i16 15, label %.critedge.fold.split1084
    i16 8, label %.critedge.fold.split1084
  ]

bb.el:                                            ; preds = %bb.ek
  %i.st = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8212), align 4, !tbaa !4009
  %i.su = zext i16 %i.st to i32
  %i.sv = add i32 %i.pi, %i.su
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 12
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !4015
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %i.ta
  br label %bb.em

bb.em:                                            ; preds = %bb.em, %bb.el
  %.06.i502 = phi ptr [ %i.tb, %bb.el ], [ %i.te, %bb.em ] ; 2 uses
  %i.tc = load i16, ptr %.06.i502, align 2, !tbaa !345 ; 2 uses
  %.not.i503 = icmp ne i16 %i.tc, 1               ; 2 uses
  %i.td = icmp ne i16 %i.tc, %4
  %or.cond.not.i504 = select i1 %.not.i503, i1 %i.td, i1 false
  %i.te = getelementptr inbounds nuw i8, ptr %.06.i502, i64 2
  br i1 %or.cond.not.i504, label %bb.em, label %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit505, !llvm.loop !4008

_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit505: ; preds = %bb.em
  br i1 %.not.i503, label %.critedge, label %bb.en

bb.en:                                            ; preds = %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit505
  %i.tf = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8340), align 4, !tbaa !4009
  %i.tg = zext i16 %i.tf to i32
  %i.th = add i32 %i.pi, %i.tg
  %i.ti = zext i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 12
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !4015
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %i.tm
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %bb.en
  %.06.i506 = phi ptr [ %i.tn, %bb.en ], [ %i.tq, %bb.eo ] ; 2 uses
  %i.to = load i16, ptr %.06.i506, align 2, !tbaa !345 ; 2 uses
  %.not.i507 = icmp ne i16 %i.to, 1               ; 2 uses
  %i.tp = icmp ne i16 %i.to, %4
  %or.cond.not.i508 = select i1 %.not.i507, i1 %i.tp, i1 false
  %i.tq = getelementptr inbounds nuw i8, ptr %.06.i506, i64 2
  br i1 %or.cond.not.i508, label %bb.eo, label %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit509, !llvm.loop !4008

_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit509: ; preds = %bb.eo
  br i1 %.not.i507, label %.critedge, label %bb.ep

bb.ep:                                            ; preds = %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit509
  %i.tr = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8468), align 4, !tbaa !4009
  %i.ts = zext i16 %i.tr to i32
  %i.tt = add i32 %i.pi, %i.ts
  %i.tu = zext i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %i.tu
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 12
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !4015
  %i.ty = zext i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %i.ty
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.06.i510 = phi ptr [ %i.tz, %bb.ep ], [ %i.uc, %bb.eq ] ; 2 uses
  %i.ua = load i16, ptr %.06.i510, align 2, !tbaa !345 ; 2 uses
  %.not.i511 = icmp ne i16 %i.ua, 1               ; 3 uses
  %i.ub = icmp ne i16 %i.ua, %4
  %or.cond.not.i512 = select i1 %.not.i511, i1 %i.ub, i1 false
  %i.uc = getelementptr inbounds nuw i8, ptr %.06.i510, i64 2
  br i1 %or.cond.not.i512, label %bb.eq, label %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit513, !llvm.loop !4008

_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit513: ; preds = %bb.eq
  %spec.select1086 = select i1 %.not.i511, i32 %i.hp, i32 0
  %spec.select1087 = select i1 %.not.i511, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8448), ptr null
  br label %.critedge

bb.er:                                            ; preds = %bb.ej
  %i.ud = tail call fastcc noundef zeroext i1 @_ZL9isVKClassRKN4llvm15MCRegisterClassE(i16 %.pre)
  br i1 %i.ud, label %bb.es, label %.critedge

bb.es:                                            ; preds = %bb.er
  switch i16 %4, label %bb.eh [
    i16 19, label %.critedge
    i16 2, label %.critedge
    i16 26, label %.critedge.fold.split1088
    i16 5, label %.critedge.fold.split1088
    i16 27, label %.critedge.fold.split1090
    i16 6, label %.critedge.fold.split1090
    i16 28, label %.critedge.fold.split1092
    i16 7, label %.critedge.fold.split1092
    i16 29, label %.critedge.fold.split1094
    i16 8, label %.critedge.fold.split1094
  ]

.critedge.fold.split1067:                         ; preds = %bb.cj
  br label %.critedge

.critedge.fold.split1068:                         ; preds = %bb.cj, %bb.cj
  br label %.critedge

.critedge.fold.split1071:                         ; preds = %bb.cl
  br label %.critedge

.critedge.fold.split1072:                         ; preds = %bb.cl, %bb.cl
  br label %.critedge

.critedge.fold.split1082:                         ; preds = %bb.ek, %bb.ek
  br label %.critedge

.critedge.fold.split1084:                         ; preds = %bb.ek, %bb.ek
  br label %.critedge

.critedge.fold.split1088:                         ; preds = %bb.es, %bb.es
  br label %.critedge

.critedge.fold.split1090:                         ; preds = %bb.es, %bb.es
  br label %.critedge

.critedge.fold.split1092:                         ; preds = %bb.es, %bb.es
  br label %.critedge

.critedge.fold.split1094:                         ; preds = %bb.es, %bb.es
  br label %.critedge

switch.hole_check:                                ; preds = %bb.e
  %switch.maskindex = zext nneg i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 50462745, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ue = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE, i64 %i.ue
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.critedge

switch.hole_check1115:                            ; preds = %bb.g
  %switch.maskindex1117 = zext nneg i16 %switch.tableidx1113 to i32
  %switch.shifted1118 = lshr i32 6291459, %switch.maskindex1117
  %switch.lobit1119 = trunc i32 %switch.shifted1118 to i1
  br i1 %switch.lobit1119, label %switch.lookup1116, label %.critedge14

switch.lookup1116:                                ; preds = %switch.hole_check1115
  %i.uf = zext nneg i16 %switch.tableidx1113 to i64
  %switch.gep1120 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.966, i64 %i.uf
  %switch.load1121 = load ptr, ptr %switch.gep1120, align 8
  br label %.critedge

switch.lookup1125:                                ; preds = %bb.m
  %i.ug = zext nneg i16 %switch.tableidx1122 to i64
  %switch.gep1128 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.967, i64 %i.ug
  %switch.load1129 = load ptr, ptr %switch.gep1128, align 8
  br label %.critedge

switch.lookup1133:                                ; preds = %bb.u
  %i.uh = zext nneg i16 %switch.tableidx1130 to i64
  %switch.gep1136 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.968, i64 %i.uh
  %switch.load1137 = load ptr, ptr %switch.gep1136, align 8
  br label %.critedge

switch.hole_check1140:                            ; preds = %bb.cf
  %switch.maskindex1142 = zext nneg i16 %switch.tableidx1138 to i32
  %switch.shifted1143 = lshr i32 50462745, %switch.maskindex1142
  %switch.lobit1144 = trunc i32 %switch.shifted1143 to i1
  br i1 %switch.lobit1144, label %switch.lookup1141, label %bb.cg

switch.lookup1141:                                ; preds = %switch.hole_check1140
  %i.ui = zext nneg i16 %switch.tableidx1138 to i64
  %switch.gep1145 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.969, i64 %i.ui
  %switch.load1146 = load ptr, ptr %switch.gep1145, align 8
  br label %.critedge

switch.hole_check1149:                            ; preds = %bb.ch
  %switch.maskindex1151 = zext nneg i16 %switch.tableidx1147 to i32
  %switch.shifted1152 = lshr i32 6291459, %switch.maskindex1151
  %switch.lobit1153 = trunc i32 %switch.shifted1152 to i1
  br i1 %switch.lobit1153, label %switch.lookup1150, label %.critedge14

switch.lookup1150:                                ; preds = %switch.hole_check1149
  %i.uj = zext nneg i16 %switch.tableidx1147 to i64
  %switch.gep1154 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.970, i64 %i.uj
  %switch.load1155 = load ptr, ptr %switch.gep1154, align 8
  br label %.critedge

switch.lookup1157:                                ; preds = %bb.eg
  %i.uk = zext nneg i32 %switch.tableidx1156 to i64
  %switch.gep1158 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.971, i64 %i.uk
  %switch.load1159 = load i8, ptr %switch.gep1158, align 1
  %switch.ext = zext i8 %switch.load1159 to i32
  %i.ul = zext nneg i32 %switch.tableidx1156 to i64
  %switch.gep1160 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm17X86TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE.972, i64 %i.ul
  %switch.load1161 = load ptr, ptr %switch.gep1160, align 8
  br label %.critedge

.critedge:                                        ; preds = %switch.lookup1157, %switch.lookup1150, %switch.lookup1141, %switch.lookup1133, %switch.lookup1125, %switch.lookup1116, %switch.lookup, %bb.eb, %_ZNK4llvm8TypeSizecvmEv.exit, %.split, %_ZL9isFRClassRKN4llvm15MCRegisterClassE.exit481.thread, %_ZL9isFRClassRKN4llvm15MCRegisterClassE.exit.thread, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit513, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, %bb.bk, %bb.bi, %bb.bg, %bb.bb, %bb.ay, %bb.as, %bb.ap, %bb.z, %bb.y, %bb.c, %bb.es, %bb.es, %.critedge.fold.split1094, %.critedge.fold.split1092, %.critedge.fold.split1090, %.critedge.fold.split1088, %bb.ek, %.critedge.fold.split1084, %.critedge.fold.split1082, %bb.cm, %bb.cl, %bb.cl, %.critedge.fold.split1072, %.critedge.fold.split1071, %bb.ck, %bb.cj, %bb.cj, %.critedge.fold.split1068, %.critedge.fold.split1067, %bb.x, %.critedge36, %.critedge20, %.thread1037, %bb.be, %bb.ae, %bb.bd, %bb.av, %bb.aw, %bb.an, %bb.aj, %bb.ak, %bb.ag, %bb.ah, %bb.cx, %bb.de, %bb.cw, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit472, %bb.db, %bb.dd, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit, %bb.eh, %bb.ei, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit509, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit505, %bb.er, %.critedge14, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.bq, %bb.bq, %bb.br, %bb.bo, %bb.aa, %bb.w, %bb.o, %bb.bw, %bb.bs, %bb.bn, %bb.t, %.critedge26, %bb.q, %.critedge24, %bb.l, %.critedge12, %bb.j, %.critedge10
  %.sroa.01025.4 = phi i32 [ 0, %.critedge14 ], [ 0, %bb.cm ], [ 0, %.critedge.fold.split1072 ], [ %i.hp, %.thread1037 ], [ %spec.select1086, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit513 ], [ 0, %switch.lookup ], [ %i.hp, %.critedge.fold.split1082 ], [ %i.hp, %bb.ek ], [ 0, %switch.lookup1116 ], [ 0, %.critedge10 ], [ 0, %bb.j ], [ 0, %.critedge12 ], [ 0, %bb.l ], [ %i.hp, %bb.er ], [ 0, %switch.lookup1125 ], [ 0, %bb.ap ], [ 0, %bb.o ], [ 0, %.critedge24 ], [ 0, %bb.q ], [ 0, %.critedge26 ], [ 0, %bb.t ], [ 0, %.critedge20 ], [ 0, %switch.lookup1133 ], [ 0, %bb.bb ], [ 0, %bb.w ], [ 0, %bb.ay ], [ 0, %bb.bd ], [ 0, %.critedge36 ], [ 0, %bb.x ], [ %i.hp, %.critedge.fold.split1094 ], [ %i.fi, %bb.bn ], [ 0, %bb.aa ], [ 0, %bb.bo ], [ 135, %bb.br ], [ 135, %bb.bs ], [ 135, %bb.bq ], [ 135, %bb.bt ], [ 135, %bb.bw ], [ 135, %bb.bv ], [ 191, %bb.bx ], [ 191, %bb.bz ], [ 191, %bb.ca ], [ 247, %bb.cb ], [ 247, %bb.cc ], [ 247, %bb.cd ], [ 0, %switch.lookup1141 ], [ 0, %bb.bi ], [ 0, %bb.av ], [ 0, %switch.lookup1150 ], [ %i.hp, %bb.es ], [ 0, %bb.cj ], [ 0, %bb.aj ], [ 0, %.critedge.fold.split1068 ], [ 0, %bb.ck ], [ 0, %bb.cl ], [ 0, %bb.ak ], [ 0, %bb.ah ], [ %spec.select, %bb.c ], [ 0, %bb.aw ], [ %spec.select1080, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit ], [ 0, %bb.bg ], [ 0, %.split ], [ 0, %bb.be ], [ 0, %bb.as ], [ %i.hp, %.critedge.fold.split1092 ], [ %i.hp, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit509 ], [ %i.hp, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit505 ], [ 0, %bb.z ], [ 0, %bb.y ], [ 135, %bb.bq ], [ %i.hp, %.critedge.fold.split1090 ], [ 0, %bb.bk ], [ 0, %bb.an ], [ %i.hp, %.critedge.fold.split1088 ], [ 0, %bb.eb ], [ 0, %bb.cj ], [ 0, %.critedge.fold.split1067 ], [ 0, %bb.cl ], [ 0, %.critedge.fold.split1071 ], [ %i.hp, %bb.es ], [ %i.is, %bb.cx ], [ 110, %bb.cw ], [ 103, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit ], [ 28, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit472 ], [ 14, %bb.db ], [ %i.hp, %bb.de ], [ 35, %bb.dd ], [ 0, %bb.ag ], [ 0, %_ZL9isFRClassRKN4llvm15MCRegisterClassE.exit481.thread ], [ %i.hp, %bb.ei ], [ 0, %_ZL9isFRClassRKN4llvm15MCRegisterClassE.exit.thread ], [ %i.hp, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %switch.ext, %switch.lookup1157 ], [ 0, %bb.ae ], [ 0, %bb.eh ], [ %i.hp, %.critedge.fold.split1084 ]
  %.sroa.104.4 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2240), %.critedge14 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4608), %bb.cm ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2240), %.critedge.fold.split1072 ], [ %i.hq, %.thread1037 ], [ %spec.select1087, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit513 ], [ %switch.load, %switch.lookup ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2176), %.critedge.fold.split1082 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1472), %bb.ek ], [ %switch.load1121, %switch.lookup1116 ], [ %i.z, %.critedge10 ], [ %i.ae, %bb.j ], [ %i.aj, %.critedge12 ], [ %i.aq, %bb.l ], [ %i.hq, %bb.er ], [ %switch.load1129, %switch.lookup1125 ], [ %spec.select1054, %bb.ap ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3072), %bb.o ], [ %i.be, %.critedge24 ], [ %i.bl, %bb.q ], [ %i.by, %.critedge26 ], [ %i.cd, %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 6592), %.critedge20 ], [ %switch.load1137, %switch.lookup1133 ], [ %spec.select1057, %bb.bb ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2752), %bb.w ], [ %spec.select1056, %bb.ay ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8320), %bb.bd ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 5312), %.critedge36 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8064), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 5760), %.critedge.fold.split1094 ], [ %i.fj, %bb.bn ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 5824), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 5824), %bb.bo ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1472), %bb.br ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4992), %bb.bs ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2496), %bb.bq ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), %bb.bt ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), %bb.bw ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), %bb.bv ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8384), %bb.bx ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8384), %bb.bz ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8384), %bb.ca ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8512), %bb.cb ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8512), %bb.cc ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8512), %bb.cd ], [ %switch.load1146, %switch.lookup1141 ], [ %spec.select1059, %bb.bi ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8192), %bb.av ], [ %switch.load1155, %switch.lookup1150 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 640), %bb.es ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 128), %bb.cj ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4672), %bb.aj ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2560), %.critedge.fold.split1068 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4864), %bb.ck ], [ @_ZN4llvm25X86MCRegisterClassStorageE, %bb.cl ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4992), %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2496), %bb.ah ], [ %spec.select1040, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), %bb.aw ], [ %spec.select1081, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit ], [ %spec.select1058, %bb.bg ], [ null, %.split ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8384), %bb.be ], [ %spec.select1055, %bb.as ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2816), %.critedge.fold.split1092 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8320), %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit509 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8192), %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit505 ], [ %spec.select1053, %bb.z ], [ %spec.select1052, %bb.y ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2496), %bb.bq ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 704), %.critedge.fold.split1090 ], [ %spec.select1060, %bb.bk ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8192), %bb.an ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 896), %.critedge.fold.split1088 ], [ null, %bb.eb ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 128), %bb.cj ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 512), %.critedge.fold.split1067 ], [ @_ZN4llvm25X86MCRegisterClassStorageE, %bb.cl ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 448), %.critedge.fold.split1071 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 640), %bb.es ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8064), %bb.cx ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8128), %bb.cw ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8064), %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3840), %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit472 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 3904), %bb.db ], [ null, %bb.de ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1408), %bb.dd ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2176), %bb.ag ], [ null, %_ZL9isFRClassRKN4llvm15MCRegisterClassE.exit481.thread ], [ %i.hq, %bb.ei ], [ null, %_ZL9isFRClassRKN4llvm15MCRegisterClassE.exit.thread ], [ %i.hq, %_ZNK4llvm18TargetRegisterInfo19isTypeLegalForClassERKNS_15MCRegisterClassENS_3MVTE.exit ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %switch.load1161, %switch.lookup1157 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1472), %bb.ae ], [ null, %bb.eh ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4672), %.critedge.fold.split1084 ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.01025.4, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.104.4, 1
  ret { i32, ptr } %.fca.1.insert
}

declare { i32, ptr } @_ZNK4llvm14TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr, i64, i16) unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL9isFRClassRKN4llvm15MCRegisterClassE(i16 %.20.val) unnamed_addr #17 {
bb.a:
  %i.a = zext i16 %.20.val to i32                 ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1500), align 4, !tbaa !1246
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 1472), i64 %i.c
  %i.e = lshr i32 %i.a, 5
  %i.f = zext nneg i32 %i.e to i64                ; 6 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !240
  %i.i = and i32 %i.a, 31                         ; 6 uses
  %i.j = lshr i32 %i.h, %i.i
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2204), align 4, !tbaa !1246
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2176), i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.f
  %i.p = load i32, ptr %i.o, align 4, !tbaa !240
  %i.q = lshr i32 %i.p, %i.i
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4700), align 4, !tbaa !1246
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4672), i64 %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.f
  %i.w = load i32, ptr %i.v, align 4, !tbaa !240
  %i.x = lshr i32 %i.w, %i.i
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8220), align 4, !tbaa !1246
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8192), i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.f
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !240
  %i.ae = lshr i32 %i.ad, %i.i
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8348), align 4, !tbaa !1246
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8320), i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.f
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !240
  %i.al = lshr i32 %i.ak, %i.i
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8476), align 4, !tbaa !1246
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8448), i64 %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.f
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !240
  %i.as = lshr i32 %i.ar, %i.i
  %i.at = trunc i32 %i.as to i1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.au = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.at, %bb.f ]
  ret i1 %i.au
}

declare i32 @_ZN4llvm22getX86SubSuperRegisterENS_10MCRegisterEjb(i32, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL9isVKClassRKN4llvm15MCRegisterClassE(i16 %.20.val) unnamed_addr #17 {
bb.a:
  %i.a = zext i16 %.20.val to i32                 ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 668), align 4, !tbaa !1246
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 640), i64 %i.c
  %i.e = lshr i32 %i.a, 5
  %i.f = zext nneg i32 %i.e to i64                ; 7 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !240
  %i.i = and i32 %i.a, 31                         ; 7 uses
  %i.j = lshr i32 %i.h, %i.i
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 796), align 4, !tbaa !1246
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 768), i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.f
  %i.p = load i32, ptr %i.o, align 4, !tbaa !240
  %i.q = lshr i32 %i.p, %i.i
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 860), align 4, !tbaa !1246
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 832), i64 %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.f
  %i.w = load i32, ptr %i.v, align 4, !tbaa !240
  %i.x = lshr i32 %i.w, %i.i
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 924), align 4, !tbaa !1246
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 896), i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.f
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !240
  %i.ae = lshr i32 %i.ad, %i.i
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 732), align 4, !tbaa !1246
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 704), i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.f
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !240
  %i.al = lshr i32 %i.ak, %i.i
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2844), align 4, !tbaa !1246
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2816), i64 %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.f
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !240
  %i.as = lshr i32 %i.ar, %i.i
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 5788), align 4, !tbaa !1246
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 5760), i64 %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.f
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !240
  %i.az = lshr i32 %i.ay, %i.i
  %i.ba = trunc i32 %i.az to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bb = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.ba, %bb.g ]
  ret i1 %i.bb
}

declare noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4llvm17X86TargetLowering18initializeSplitCSREPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518472) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236, !nonnull !80, !align !237
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 522
  %i.d = load i8, ptr %i.c, align 2, !tbaa !238, !range !79, !noundef !80
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1039
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !576
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 1, ptr %i.j, align 8, !tbaa !4018
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm17X86TargetLowering20insertCopiesSplitCSREPNS_17MachineBasicBlockERKNS_15SmallVectorImplIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518472) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
end_hunk_12
begin_hunk_13_@_ZL18lowerV2X128ShuffleRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  store ptr %i.cl, ptr %14, align 8, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.cm, align 8, !tbaa !633
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 4, ptr %i.cn, align 4, !tbaa !634
  %.sroa.0131.0.copyload = load ptr, ptr %6, align 8, !tbaa !661 ; 10 uses
  %.sroa.2132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2132.0.copyload = load i64, ptr %.sroa.2132.0..sroa_idx, align 8, !tbaa !672 ; 3 uses
  %i.co = call fastcc noundef zeroext i1 @_ZL23canWidenShuffleElementsN4llvm8ArrayRefIiEERKNS_5APIntEbRNS_15SmallVectorImplIiEE(ptr %.sroa.0131.0.copyload, i64 %.sroa.2132.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %7, i1 noundef zeroext %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %14)
  br i1 %i.co, label %bb.v, label %.critedge227

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !643 ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !643
  %i.cs = icmp ult i32 %i.cr, 65
  br i1 %i.cs, label %_ZN4llvmanENS_5APIntEm.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.v
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(12) %7) #39
  %.pr = load i32, ptr %i.cp, align 8, !tbaa !643, !noalias !4689 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4689)
  %i.ct = icmp ult i32 %.pr, 65
  br i1 %i.ct, label %_ZN4llvmanENS_5APIntEm.exit.thread, label %_ZN4llvmanENS_5APIntEm.exit

_ZN4llvmanENS_5APIntEm.exit.thread:               ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %bb.v
  %.sink = phi ptr [ %7, %bb.v ], [ %16, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %.pre418 = load i64, ptr %.sink, align 8, !tbaa !357
  %i.cu = and i64 %.pre418, 3                     ; 2 uses
  store i64 %i.cu, ptr %16, align 8, !tbaa !357, !noalias !4689
  store i32 0, ptr %i.cp, align 8, !tbaa !643, !noalias !4689
  br label %_ZNK4llvm5APInteqEm.exit.thread385

_ZN4llvmanENS_5APIntEm.exit:                      ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.cv = load ptr, ptr %16, align 8, !tbaa !357, !noalias !4689 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !672, !noalias !4689
  %i.cx = and i64 %i.cw, 3
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !672, !noalias !4689
  %i.cy = load ptr, ptr %16, align 8, !noalias !4689 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = zext i32 %.pr to i64
  %i.db = add nuw nsw i64 %i.da, 63
  %sh.diff.i.i = lshr i64 %i.db, 3
  %i.dc = and i64 %sh.diff.i.i, 1073741816
  %i.dd = add nsw i64 %i.dc, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cz, i8 0, i64 %i.dd, i1 false), !noalias !4689
  %.pre.i = load i32, ptr %i.cp, align 8, !tbaa !643, !noalias !4689 ; 3 uses
  %i.de = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.pre.i, ptr %i.df, align 8, !tbaa !643, !alias.scope !4689
  store i64 %i.de, ptr %15, align 8, !alias.scope !4689
  store i32 0, ptr %i.cp, align 8, !tbaa !643, !noalias !4689
  %i.dg = icmp ult i32 %.pre.i, 65
  br i1 %i.dg, label %_ZNK4llvm5APInteqEm.exit.thread385, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %_ZN4llvmanENS_5APIntEm.exit
  %i.dh = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %15) #40
  %i.di = sub i32 %.pre.i, %i.dh
  %i.dj = icmp ult i32 %i.di, 65
  br i1 %i.dj, label %_ZNK4llvm5APInteqEm.exit.thread.thread, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit.thread385:               ; preds = %_ZN4llvmanENS_5APIntEm.exit.thread, %_ZN4llvmanENS_5APIntEm.exit
  %.0.i.i387 = phi i64 [ %i.cu, %_ZN4llvmanENS_5APIntEm.exit.thread ], [ %i.de, %_ZN4llvmanENS_5APIntEm.exit ]
  %i.dk = icmp eq i64 %.0.i.i387, 3
  br label %_ZN4llvm5APIntD2Ev.exit260

_ZNK4llvm5APInteqEm.exit.thread.thread:           ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %.0.i.i = load i64, ptr %i.cy, align 8, !tbaa !357
  %i.dl = icmp eq i64 %.0.i.i, 3
  br label %_ZN4llvm5APIntD2Ev.exit

_ZNK4llvm5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %i.dm = icmp eq ptr %i.cy, null
  br i1 %i.dm, label %_ZN4llvm5APIntD2Ev.exit260, label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APInteqEm.exit.thread, %_ZNK4llvm5APInteqEm.exit.thread.thread
  %i.dn = phi i1 [ %i.dl, %_ZNK4llvm5APInteqEm.exit.thread.thread ], [ false, %_ZNK4llvm5APInteqEm.exit.thread ] ; 3 uses
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #42
  %.pre420 = load i32, ptr %i.cp, align 8, !tbaa !643
  %i.do = icmp ugt i32 %.pre420, 64
  br i1 %i.do, label %bb.w, label %_ZN4llvm5APIntD2Ev.exit260

bb.w:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.dp = load ptr, ptr %16, align 8, !tbaa !357  ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN4llvm5APIntD2Ev.exit260, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.dp) #42
  br label %_ZN4llvm5APIntD2Ev.exit260

_ZN4llvm5APIntD2Ev.exit260:                       ; preds = %_ZNK4llvm5APInteqEm.exit.thread, %_ZNK4llvm5APInteqEm.exit.thread385, %_ZN4llvm5APIntD2Ev.exit, %bb.w, %bb.x
  %i.dr = phi i1 [ %i.dn, %bb.x ], [ %i.dn, %_ZN4llvm5APIntD2Ev.exit ], [ %i.dn, %bb.w ], [ false, %_ZNK4llvm5APInteqEm.exit.thread ], [ %i.dk, %_ZNK4llvm5APInteqEm.exit.thread385 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  %i.dt = load i32, ptr %i.cq, align 8, !tbaa !643 ; 2 uses
  store i32 %i.dt, ptr %i.ds, align 8, !tbaa !643
  %i.du = icmp ult i32 %i.dt, 65
  br i1 %i.du, label %_ZN4llvmanENS_5APIntEm.exit265.thread, label %_ZN4llvm5APIntC2ERKS0_.exit261

_ZN4llvm5APIntC2ERKS0_.exit261:                   ; preds = %_ZN4llvm5APIntD2Ev.exit260
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(12) %7) #39
  %.pr389 = load i32, ptr %i.ds, align 8, !tbaa !643, !noalias !4690 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4690)
  %i.dv = icmp ult i32 %.pr389, 65
  br i1 %i.dv, label %_ZN4llvmanENS_5APIntEm.exit265.thread, label %_ZN4llvmanENS_5APIntEm.exit265

_ZN4llvmanENS_5APIntEm.exit265.thread:            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit261, %_ZN4llvm5APIntD2Ev.exit260
  %.sink469 = phi ptr [ %7, %_ZN4llvm5APIntD2Ev.exit260 ], [ %18, %_ZN4llvm5APIntC2ERKS0_.exit261 ]
  %.pre421 = load i64, ptr %.sink469, align 8, !tbaa !357
  %i.dw = and i64 %.pre421, 12                    ; 2 uses
  store i64 %i.dw, ptr %18, align 8, !tbaa !357, !noalias !4690
  store i32 0, ptr %i.ds, align 8, !tbaa !643, !noalias !4690
  br label %_ZNK4llvm5APInteqEm.exit269.thread392

_ZN4llvmanENS_5APIntEm.exit265:                   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit261
  %i.dx = load ptr, ptr %18, align 8, !tbaa !357, !noalias !4690 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !672, !noalias !4690
  %i.dz = and i64 %i.dy, 12
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !672, !noalias !4690
  %i.ea = load ptr, ptr %18, align 8, !noalias !4690 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = zext i32 %.pr389 to i64
  %i.ed = add nuw nsw i64 %i.ec, 63
  %sh.diff.i.i262 = lshr i64 %i.ed, 3
  %i.ee = and i64 %sh.diff.i.i262, 1073741816
  %i.ef = add nsw i64 %i.ee, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eb, i8 0, i64 %i.ef, i1 false), !noalias !4690
  %.pre.i263 = load i32, ptr %i.ds, align 8, !tbaa !643, !noalias !4690 ; 3 uses
  %i.eg = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.pre.i263, ptr %i.eh, align 8, !tbaa !643, !alias.scope !4690
  store i64 %i.eg, ptr %17, align 8, !alias.scope !4690
  store i32 0, ptr %i.ds, align 8, !tbaa !643, !noalias !4690
  %i.ei = icmp ult i32 %.pre.i263, 65
  br i1 %i.ei, label %_ZNK4llvm5APInteqEm.exit269.thread392, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i266

_ZNK4llvm5APInt13getActiveBitsEv.exit.i266:       ; preds = %_ZN4llvmanENS_5APIntEm.exit265
  %i.ej = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %17) #40
  %i.ek = sub i32 %.pre.i263, %i.ej
  %i.el = icmp ult i32 %i.ek, 65
  br i1 %i.el, label %_ZNK4llvm5APInteqEm.exit269.thread.thread, label %_ZNK4llvm5APInteqEm.exit269.thread

_ZNK4llvm5APInteqEm.exit269.thread392:            ; preds = %_ZN4llvmanENS_5APIntEm.exit265.thread, %_ZN4llvmanENS_5APIntEm.exit265
  %.0.i.i268394 = phi i64 [ %i.dw, %_ZN4llvmanENS_5APIntEm.exit265.thread ], [ %i.eg, %_ZN4llvmanENS_5APIntEm.exit265 ]
  %i.em = icmp eq i64 %.0.i.i268394, 12
  br label %_ZN4llvm5APIntD2Ev.exit271

_ZNK4llvm5APInteqEm.exit269.thread.thread:        ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i266
  %.0.i.i268 = load i64, ptr %i.ea, align 8, !tbaa !357
  %i.en = icmp eq i64 %.0.i.i268, 12
  br label %_ZN4llvm5APIntD2Ev.exit270

_ZNK4llvm5APInteqEm.exit269.thread:               ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i266
  %i.eo = icmp eq ptr %i.ea, null
  br i1 %i.eo, label %_ZN4llvm5APIntD2Ev.exit271.thread, label %_ZN4llvm5APIntD2Ev.exit270

_ZN4llvm5APIntD2Ev.exit271.thread:                ; preds = %_ZNK4llvm5APInteqEm.exit269.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  br label %bb.ab

_ZN4llvm5APIntD2Ev.exit270:                       ; preds = %_ZNK4llvm5APInteqEm.exit269.thread, %_ZNK4llvm5APInteqEm.exit269.thread.thread
  %i.ep = phi i1 [ %i.en, %_ZNK4llvm5APInteqEm.exit269.thread.thread ], [ false, %_ZNK4llvm5APInteqEm.exit269.thread ] ; 3 uses
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #42
  %.pre423 = load i32, ptr %i.ds, align 8, !tbaa !643
  %i.eq = icmp ugt i32 %.pre423, 64
  br i1 %i.eq, label %bb.y, label %_ZN4llvm5APIntD2Ev.exit271

bb.y:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit270
  %i.er = load ptr, ptr %18, align 8, !tbaa !357  ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN4llvm5APIntD2Ev.exit271, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.er) #42
  br label %_ZN4llvm5APIntD2Ev.exit271

_ZN4llvm5APIntD2Ev.exit271:                       ; preds = %_ZNK4llvm5APInteqEm.exit269.thread392, %_ZN4llvm5APIntD2Ev.exit270, %bb.y, %bb.z
  %i.et = phi i1 [ %i.ep, %bb.z ], [ %i.ep, %_ZN4llvm5APIntD2Ev.exit270 ], [ %i.ep, %bb.y ], [ %i.em, %_ZNK4llvm5APInteqEm.exit269.thread392 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  %i.eu = load ptr, ptr %14, align 8, !tbaa !83
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !240
  %i.ew = icmp eq i32 %i.ev, 0
  %or.cond4 = and i1 %i.et, %i.ew
  br i1 %or.cond4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit271
  %i.ex = zext i16 %1 to i64
  %i.ey = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -2
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !345
  %switch.tableidx = add i16 %i.fa, -2            ; 2 uses
  %i.fb = icmp ult i16 %switch.tableidx, 14
  br i1 %i.fb, label %switch.lookup, label %_ZN4llvm3MVT11getVectorVTES0_j.exit

switch.lookup:                                    ; preds = %bb.aa
  %i.fc = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL18lowerV4X128ShuffleRKN4llvm5SDLocENS_3MVTENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES9_RKNS_12X86SubtargetERNS_12SelectionDAGE.973, i64 %i.fc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %bb.aa, %switch.lookup
  %.sroa.0.0.i = phi i16 [ %switch.ext, %switch.lookup ], [ 0, %bb.aa ]
  %i.fd = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract116 = extractvalue { ptr, i32 } %i.fd, 0
  %.fca.1.extract117 = extractvalue { ptr, i32 } %i.fd, 1
  store ptr %.fca.0.extract116, ptr %19, align 8
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract117, ptr %.sroa.2119.0..sroa_idx, align 8
  %i.fe = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #39 ; 2 uses
  %.fca.0.extract112 = extractvalue { ptr, i32 } %i.fe, 0
  %.fca.1.extract113 = extractvalue { ptr, i32 } %i.fe, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 360
  %.val = load i32, ptr %i.ff, align 8, !tbaa !342
  %i.fg = call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %1, i32 %.val, ptr noundef nonnull align 8 dereferenceable(920) %9, ptr noundef nonnull align 8 dereferenceable(12) %0) ; 2 uses
  %.fca.0.extract106 = extractvalue { ptr, i32 } %i.fg, 0
  %.fca.1.extract107 = extractvalue { ptr, i32 } %i.fg, 1
  store ptr %.fca.0.extract106, ptr %20, align 8
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract107, ptr %.sroa.2109.0..sroa_idx, align 8
  store ptr %.fca.0.extract112, ptr %21, align 8, !tbaa !465
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract113, ptr %.sroa.4122.0..sroa_idx, align 8, !tbaa !240
  %i.fh = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract102 = extractvalue { ptr, i32 } %i.fh, 0
  %.fca.1.extract103 = extractvalue { ptr, i32 } %i.fh, 1
  store ptr %.fca.0.extract102, ptr %22, align 8
  %.sroa.2105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract103, ptr %.sroa.2105.0..sroa_idx, align 8
  %i.fi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #39 ; 2 uses
  %.fca.0.extract98 = extractvalue { ptr, i32 } %i.fi, 0
  %.fca.1.extract99 = extractvalue { ptr, i32 } %i.fi, 1
  br label %.critedge227

bb.ab:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit271.thread, %_ZN4llvm5APIntD2Ev.exit271
  %i.fj = phi i1 [ false, %_ZN4llvm5APIntD2Ev.exit271.thread ], [ %i.et, %_ZN4llvm5APIntD2Ev.exit271 ] ; 2 uses
  %i.fk = call fastcc { ptr, i32 } @_ZL19lowerShuffleAsBlendRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr %2, i32 %3, ptr nonnull %4, i32 %5, ptr %.sroa.0131.0.copyload, i64 %.sroa.2132.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(519752) %8, ptr noundef nonnull align 8 dereferenceable(920) %9) ; 2 uses
  %.fca.0.extract87 = extractvalue { ptr, i32 } %i.fk, 0 ; 2 uses
  %.fca.1.extract88 = extractvalue { ptr, i32 } %i.fk, 1
  %.not410 = icmp eq ptr %.fca.0.extract87, null
  br i1 %.not410, label %bb.ac, label %.critedge227

bb.ac:                                            ; preds = %bb.ab
  %or.cond6 = or i1 %i.dr, %i.fj
  br i1 %or.cond6, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fl = and i64 %.sroa.2132.0.copyload, 4294967295
  %.not.i273 = icmp eq i64 %i.fl, 4
  br i1 %.not.i273, label %.lr.ph.i279.preheader, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit308.thread

.lr.ph.i279.preheader:                            ; preds = %bb.ad
  %i.fm = load i32, ptr %.sroa.0131.0.copyload, align 4, !tbaa !240 ; 3 uses
  %or.cond.i282 = icmp slt i32 %i.fm, 1
  br i1 %or.cond.i282, label %.critedge.i287, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i279.preheader
  %i.fn = icmp samesign ult i32 %i.fm, 4          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i283 = select i1 %i.fn, ptr %2, ptr %4
  %.sroa.48.0.copyload.sroa.speculated.i284 = select i1 %i.fn, i32 %3, i32 %5
  %.neg457 = select i1 %i.fn, i32 0, i32 -4
  %i.fo = add nsw i32 %.neg457, %i.fm
  %i.fp = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 4, ptr %.sroa.07.0.copyload.sroa.speculated.i283, i32 %.sroa.48.0.copyload.sroa.speculated.i284, ptr %2, i32 %3, i32 noundef %i.fo, i32 noundef 0)
  br i1 %i.fp, label %.critedge.i287, label %.lr.ph.preheader.i295

.critedge.i287:                                   ; preds = %bb.ae, %.lr.ph.i279.preheader
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0131.0.copyload, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !240 ; 4 uses
  %i.fs = icmp slt i32 %i.fr, 0
  %.not58.i281.1 = icmp eq i32 %i.fr, 1
  %or.cond.i282.1 = or i1 %i.fs, %.not58.i281.1
  br i1 %or.cond.i282.1, label %.critedge.i287.1, label %bb.af

bb.af:                                            ; preds = %.critedge.i287
  %i.ft = icmp samesign ult i32 %i.fr, 4          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i283.1 = select i1 %i.ft, ptr %2, ptr %4
  %.sroa.48.0.copyload.sroa.speculated.i284.1 = select i1 %i.ft, i32 %3, i32 %5
  %.neg458 = select i1 %i.ft, i32 0, i32 -4
  %i.fu = add nsw i32 %.neg458, %i.fr
  %i.fv = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 4, ptr %.sroa.07.0.copyload.sroa.speculated.i283.1, i32 %.sroa.48.0.copyload.sroa.speculated.i284.1, ptr %2, i32 %3, i32 noundef %i.fu, i32 noundef 1)
  br i1 %i.fv, label %.critedge.i287.1, label %.lr.ph.preheader.i295

.critedge.i287.1:                                 ; preds = %bb.af, %.critedge.i287
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0131.0.copyload, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !240 ; 3 uses
  %or.cond.i282.2 = icmp slt i32 %i.fx, 1
  br i1 %or.cond.i282.2, label %.critedge.i287.2, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i287.1
  %i.fy = icmp samesign ult i32 %i.fx, 4          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i283.2 = select i1 %i.fy, ptr %2, ptr %4
  %.sroa.48.0.copyload.sroa.speculated.i284.2 = select i1 %i.fy, i32 %3, i32 %5
  %.neg459 = select i1 %i.fy, i32 0, i32 -4
  %i.fz = add nsw i32 %.neg459, %i.fx
  %i.ga = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 4, ptr %.sroa.07.0.copyload.sroa.speculated.i283.2, i32 %.sroa.48.0.copyload.sroa.speculated.i284.2, ptr %2, i32 %3, i32 noundef %i.fz, i32 noundef 0)
  br i1 %i.ga, label %.critedge.i287.2, label %.lr.ph.preheader.i295

.critedge.i287.2:                                 ; preds = %bb.ag, %.critedge.i287.1
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0131.0.copyload, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !240 ; 4 uses
  %i.gd = icmp slt i32 %i.gc, 0
  %.not58.i281.3 = icmp eq i32 %i.gc, 1
  %or.cond.i282.3 = or i1 %i.gd, %.not58.i281.3
  br i1 %or.cond.i282.3, label %.critedge.i287.3, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i287.2
  %i.ge = icmp samesign ult i32 %i.gc, 4          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i283.3 = select i1 %i.ge, ptr %2, ptr %4
  %.sroa.48.0.copyload.sroa.speculated.i284.3 = select i1 %i.ge, i32 %3, i32 %5
  %.neg460 = select i1 %i.ge, i32 0, i32 -4
  %i.gf = add nsw i32 %.neg460, %i.gc
  %i.gg = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 4, ptr %.sroa.07.0.copyload.sroa.speculated.i283.3, i32 %.sroa.48.0.copyload.sroa.speculated.i284.3, ptr %2, i32 %3, i32 noundef %i.gf, i32 noundef 1)
  br i1 %i.gg, label %.critedge.i287.3, label %.lr.ph.preheader.i295

.lr.ph.preheader.i295:                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.gh = load i32, ptr %.sroa.0131.0.copyload, align 4, !tbaa !240 ; 3 uses
  %or.cond.i300 = icmp slt i32 %i.gh, 1
  br i1 %or.cond.i300, label %.critedge.i305, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.preheader.i295
  %i.gi = icmp samesign ult i32 %i.gh, 4          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i301 = select i1 %i.gi, ptr %2, ptr %4
  %.sroa.48.0.copyload.sroa.speculated.i302 = select i1 %i.gi, i32 %3, i32 %5
  %.neg461 = select i1 %i.gi, i32 0, i32 -4
  %i.gj = add nsw i32 %.neg461, %i.gh
  %i.gk = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 4, ptr %.sroa.07.0.copyload.sroa.speculated.i301, i32 %.sroa.48.0.copyload.sroa.speculated.i302, ptr %2, i32 %3, i32 noundef %i.gj, i32 noundef 0)
  br i1 %i.gk, label %.critedge.i305, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit308.thread

.critedge.i305:                                   ; preds = %bb.ai, %.lr.ph.preheader.i295
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0131.0.copyload, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !240 ; 4 uses
  %i.gn = icmp slt i32 %i.gm, 0
  %.not58.i299.1 = icmp eq i32 %i.gm, 1
  %or.cond.i300.1 = or i1 %i.gn, %.not58.i299.1
  br i1 %or.cond.i300.1, label %.critedge.i305.1, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i305
  %i.go = icmp samesign ult i32 %i.gm, 4          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i301.1 = select i1 %i.go, ptr %2, ptr %4
  %.sroa.48.0.copyload.sroa.speculated.i302.1 = select i1 %i.go, i32 %3, i32 %5
  %.neg462 = select i1 %i.go, i32 0, i32 -4
  %i.gp = add nsw i32 %.neg462, %i.gm
  %i.gq = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 4, ptr %.sroa.07.0.copyload.sroa.speculated.i301.1, i32 %.sroa.48.0.copyload.sroa.speculated.i302.1, ptr %2, i32 %3, i32 noundef %i.gp, i32 noundef 1)
  br i1 %i.gq, label %.critedge.i305.1, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit308.thread

.critedge.i305.1:                                 ; preds = %bb.aj, %.critedge.i305
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0131.0.copyload, i64 8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !240 ; 4 uses
  %i.gt = icmp slt i32 %i.gs, 0
  %.not58.i299.2 = icmp eq i32 %i.gs, 4
  %or.cond.i300.2 = or i1 %i.gt, %.not58.i299.2
  br i1 %or.cond.i300.2, label %.critedge.i305.2, label %bb.ak

bb.ak:                                            ; preds = %.critedge.i305.1
  %i.gu = icmp samesign ult i32 %i.gs, 4          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i301.2 = select i1 %i.gu, ptr %2, ptr %4
  %.sroa.48.0.copyload.sroa.speculated.i302.2 = select i1 %i.gu, i32 %3, i32 %5
  %.neg463 = select i1 %i.gu, i32 0, i32 -4
  %i.gv = add nsw i32 %.neg463, %i.gs
  %i.gw = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 4, ptr %.sroa.07.0.copyload.sroa.speculated.i301.2, i32 %.sroa.48.0.copyload.sroa.speculated.i302.2, ptr nonnull %4, i32 %5, i32 noundef %i.gv, i32 noundef 0)
  br i1 %i.gw, label %.critedge.i305.2, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit308.thread

.critedge.i305.2:                                 ; preds = %bb.ak, %.critedge.i305.1
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0131.0.copyload, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !240 ; 4 uses
  %i.gz = icmp slt i32 %i.gy, 0
  %.not58.i299.3 = icmp eq i32 %i.gy, 5
  %or.cond.i300.3 = or i1 %i.gz, %.not58.i299.3
  br i1 %or.cond.i300.3, label %.critedge.i287.3, label %bb.al

bb.al:                                            ; preds = %.critedge.i305.2
  %i.ha = icmp samesign ult i32 %i.gy, 4          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i301.3 = select i1 %i.ha, ptr %2, ptr %4
  %.sroa.48.0.copyload.sroa.speculated.i302.3 = select i1 %i.ha, i32 %3, i32 %5
  %.neg464 = select i1 %i.ha, i32 0, i32 -4
  %i.hb = add nsw i32 %.neg464, %i.gy
  %i.hc = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 4, ptr %.sroa.07.0.copyload.sroa.speculated.i301.3, i32 %.sroa.48.0.copyload.sroa.speculated.i302.3, ptr nonnull %4, i32 %5, i32 noundef %i.hb, i32 noundef 1)
  br i1 %i.hc, label %.critedge.i287.3, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit308.thread

.critedge.i287.3:                                 ; preds = %.critedge.i305.2, %bb.al, %.critedge.i287.2, %bb.ah
  %.5.i274397 = phi ptr [ %12, %.critedge.i287.2 ], [ %12, %bb.ah ], [ %13, %bb.al ], [ %13, %.critedge.i305.2 ]
  %i.hd = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %2, i32 %3) #39
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.hd, 0
  %i.he = getelementptr inbounds nuw i8, ptr %.fca.0.extract65, i64 24
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !468
  %i.hg = icmp eq i32 %i.hf, 316
  br i1 %i.hg, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit308.thread, label %bb.am

bb.am:                                            ; preds = %.critedge.i287.3
  %i.hh = zext i16 %1 to i64
  %i.hi = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 -2
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !345
  %i.hl = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.hk, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %.5.i274397, i64 16, i1 false)
  %i.hm = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %9, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract55 = extractvalue { ptr, i32 } %i.hm, 0
end_hunk_13
begin_hunk_14_@_ZL18lowerV4X128ShuffleRKN4llvm5SDLocENS_3MVTENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES9_RKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %.sroa.07.0.copyload.sroa.speculated.i234.4 = select i1 %i.gi, ptr %.sroa.090.0.copyload, ptr %.sroa.0270.0.copyload
  %.sroa.48.0.copyload.sroa.speculated.i235.4 = select i1 %i.gi, i32 %.sroa.291.0.copyload, i32 %.sroa.2271.0.copyload
  %.neg387 = select i1 %i.gi, i32 0, i32 -8
  %i.gj = add nsw i32 %.neg387, %i.gg
  %i.gk = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 8, ptr %.sroa.07.0.copyload.sroa.speculated.i234.4, i32 %.sroa.48.0.copyload.sroa.speculated.i235.4, ptr %.sroa.0270.0.copyload, i32 %.sroa.2271.0.copyload, i32 noundef %i.gj, i32 noundef 0)
  br i1 %i.gk, label %.critedge.i238.4, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit241

.critedge.i238.4:                                 ; preds = %bb.z, %.critedge.i238.3
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !240 ; 4 uses
  %i.gn = icmp slt i32 %i.gm, 0
  %.not58.i232.5 = icmp eq i32 %i.gm, 9
  %or.cond.i233.5 = or i1 %i.gn, %.not58.i232.5
  br i1 %or.cond.i233.5, label %.critedge.i238.5, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i238.4
  %i.go = icmp samesign ult i32 %i.gm, 8          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i234.5 = select i1 %i.go, ptr %.sroa.090.0.copyload, ptr %.sroa.0270.0.copyload
  %.sroa.48.0.copyload.sroa.speculated.i235.5 = select i1 %i.go, i32 %.sroa.291.0.copyload, i32 %.sroa.2271.0.copyload
  %.neg388 = select i1 %i.go, i32 0, i32 -8
  %i.gp = add nsw i32 %.neg388, %i.gm
  %i.gq = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 8, ptr %.sroa.07.0.copyload.sroa.speculated.i234.5, i32 %.sroa.48.0.copyload.sroa.speculated.i235.5, ptr %.sroa.0270.0.copyload, i32 %.sroa.2271.0.copyload, i32 noundef %i.gp, i32 noundef 1)
  br i1 %i.gq, label %.critedge.i238.5, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit241

.critedge.i238.5:                                 ; preds = %bb.aa, %.critedge.i238.4
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !240 ; 4 uses
  %i.gt = icmp slt i32 %i.gs, 0
  %.not58.i232.6 = icmp eq i32 %i.gs, 10
  %or.cond.i233.6 = or i1 %i.gt, %.not58.i232.6
  br i1 %or.cond.i233.6, label %.critedge.i238.6, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i238.5
  %i.gu = icmp samesign ult i32 %i.gs, 8          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i234.6 = select i1 %i.gu, ptr %.sroa.090.0.copyload, ptr %.sroa.0270.0.copyload
  %.sroa.48.0.copyload.sroa.speculated.i235.6 = select i1 %i.gu, i32 %.sroa.291.0.copyload, i32 %.sroa.2271.0.copyload
  %.neg389 = select i1 %i.gu, i32 0, i32 -8
  %i.gv = add nsw i32 %.neg389, %i.gs
  %i.gw = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 8, ptr %.sroa.07.0.copyload.sroa.speculated.i234.6, i32 %.sroa.48.0.copyload.sroa.speculated.i235.6, ptr %.sroa.0270.0.copyload, i32 %.sroa.2271.0.copyload, i32 noundef %i.gv, i32 noundef 2)
  br i1 %i.gw, label %.critedge.i238.6, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit241

.critedge.i238.6:                                 ; preds = %bb.ab, %.critedge.i238.5
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !240 ; 4 uses
  %i.gz = icmp slt i32 %i.gy, 0
  %.not58.i232.7 = icmp eq i32 %i.gy, 11
  %or.cond.i233.7 = or i1 %i.gz, %.not58.i232.7
  br i1 %or.cond.i233.7, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i238.6
  %i.ha = icmp samesign ult i32 %i.gy, 8          ; 3 uses
  %.sroa.07.0.copyload.sroa.speculated.i234.7 = select i1 %i.ha, ptr %.sroa.090.0.copyload, ptr %.sroa.0270.0.copyload
  %.sroa.48.0.copyload.sroa.speculated.i235.7 = select i1 %i.ha, i32 %.sroa.291.0.copyload, i32 %.sroa.2271.0.copyload
  %.neg390 = select i1 %i.ha, i32 0, i32 -8
  %i.hb = add nsw i32 %.neg390, %i.gy
  %i.hc = call fastcc noundef zeroext i1 @_ZL19IsElementEquivalentiN4llvm7SDValueES0_ii(i32 noundef 8, ptr %.sroa.07.0.copyload.sroa.speculated.i234.7, i32 %.sroa.48.0.copyload.sroa.speculated.i235.7, ptr %.sroa.0270.0.copyload, i32 %.sroa.2271.0.copyload, i32 noundef %i.hb, i32 noundef 3)
  br i1 %i.hc, label %.critedge, label %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit241

_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit241: ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %.critedge192.thread
  %i.hd = load ptr, ptr %11, align 8, !tbaa !83   ; 5 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !240 ; 4 uses
  %i.hf = icmp slt i32 %i.he, 0
  br i1 %i.hf, label %bb.ag, label %bb.ad

.critedge:                                        ; preds = %.critedge.i238.6, %bb.ac, %.critedge.i.6, %bb.u
  %. = phi ptr [ %5, %.critedge.i.6 ], [ %5, %bb.u ], [ %6, %bb.ac ], [ %6, %.critedge.i238.6 ]
  %i.hg = zext i16 %1 to i64
  %i.hh = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !345
  %switch.tableidx = add i16 %i.hj, -2            ; 2 uses
  %i.hk = icmp ult i16 %switch.tableidx, 14
  br i1 %i.hk, label %switch.lookup, label %_ZN4llvm3MVT11getVectorVTES0_j.exit

switch.lookup:                                    ; preds = %.critedge
  %i.hl = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL18lowerV4X128ShuffleRKN4llvm5SDLocENS_3MVTENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES9_RKNS_12X86SubtargetERNS_12SelectionDAGE, i64 %i.hl
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %.critedge, %switch.lookup
  %.sroa.0.0.i = phi i16 [ 0, %.critedge ], [ %switch.ext, %switch.lookup ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %., i64 16, i1 false), !tbaa.struct !683
  %i.hm = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract74 = extractvalue { ptr, i32 } %i.hm, 0
  %.fca.1.extract75 = extractvalue { ptr, i32 } %i.hm, 1
  store ptr %.fca.0.extract74, ptr %23, align 8
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract75, ptr %.sroa.277.0..sroa_idx, align 8
  %i.hn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #39 ; 2 uses
  %.fca.0.extract70 = extractvalue { ptr, i32 } %i.hn, 0
  %.fca.1.extract71 = extractvalue { ptr, i32 } %i.hn, 1
  store ptr %.fca.0.extract70, ptr %24, align 8, !tbaa !465
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract71, ptr %.sroa.480.0..sroa_idx, align 8, !tbaa !240
  %i.ho = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.ho, 0
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.ho, 1
  store ptr %.fca.0.extract65, ptr %25, align 8
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract66, ptr %.sroa.268.0..sroa_idx, align 8
  %i.hp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #39 ; 2 uses
  %.fca.0.extract61 = extractvalue { ptr, i32 } %i.hp, 0
  %.fca.1.extract62 = extractvalue { ptr, i32 } %i.hp, 1
  br label %bb.bh

bb.ad:                                            ; preds = %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit241
  %i.hq = icmp samesign ult i32 %i.he, 4
  br i1 %i.hq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.not186 = icmp eq i32 %i.he, 0
  br i1 %.not186, label %bb.ag, label %.thread298

bb.af:                                            ; preds = %bb.ad
  %.not = icmp eq i32 %i.he, 4
  br i1 %.not, label %bb.ag, label %.thread298

bb.ag:                                            ; preds = %bb.af, %bb.ae, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit241
  %i.hr = phi i1 [ true, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit241 ], [ true, %bb.ae ], [ false, %bb.af ]
  %.1184 = phi i32 [ -1, %_ZL19isShuffleEquivalentN4llvm8ArrayRefIiEES1_NS_7SDValueES2_.exit241 ], [ -1, %bb.ae ], [ 0, %bb.af ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !240 ; 4 uses
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hv = icmp samesign ult i32 %i.ht, 4
  br i1 %i.hv, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.1 = icmp eq i32 %i.ht, 4
  %or.cond.1 = and i1 %i.hr, %.not.1
  br i1 %or.cond.1, label %bb.ak, label %.thread298

bb.aj:                                            ; preds = %bb.ah
  %.not186.1 = icmp eq i32 %i.ht, 1
  br i1 %.not186.1, label %bb.ak, label %.thread298

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %.1184.1 = phi i32 [ %.1184, %bb.ag ], [ %.1184, %bb.aj ], [ 1, %bb.ai ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !240 ; 4 uses
  %i.hy = icmp slt i32 %i.hx, 0
  br i1 %i.hy, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hz = icmp samesign ult i32 %i.hx, 4
  br i1 %i.hz, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ia = icmp slt i32 %.1184.1, 0
  %.not.2 = icmp eq i32 %i.hx, 4
  %or.cond.2 = and i1 %i.ia, %.not.2
  br i1 %or.cond.2, label %bb.ao, label %.thread298

bb.an:                                            ; preds = %bb.al
  %.not186.2 = icmp eq i32 %i.hx, 2
  br i1 %.not186.2, label %bb.ao, label %.thread298

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak
  %.1184.2 = phi i32 [ %.1184.1, %bb.ak ], [ %.1184.1, %bb.an ], [ 2, %bb.am ] ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !240 ; 4 uses
  %i.id = icmp slt i32 %i.ic, 0
  br i1 %i.id, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = icmp samesign ult i32 %i.ic, 4
  br i1 %i.ie, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.if = icmp slt i32 %.1184.2, 0
  %.not.3 = icmp eq i32 %i.ic, 4
  %or.cond.3 = and i1 %i.if, %.not.3
  br i1 %or.cond.3, label %.thread400, label %.thread298

bb.ar:                                            ; preds = %bb.ap
  %.not186.3 = icmp eq i32 %i.ic, 3
  %i.ig = icmp sgt i32 %.1184.2, -1
  %or.cond = and i1 %.not186.3, %i.ig
  br i1 %or.cond, label %.thread400, label %.thread298

bb.as:                                            ; preds = %bb.ao
  %.old = icmp sgt i32 %.1184.2, -1
  br i1 %.old, label %.thread400, label %.thread298

.thread400:                                       ; preds = %bb.ar, %bb.aq, %bb.as
  %.1184.3402 = phi i32 [ %.1184.2, %bb.as ], [ 3, %bb.aq ], [ %.1184.2, %bb.ar ]
  %i.ih = zext i16 %1 to i64
  %i.ii = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 -2
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !345
  %switch.tableidx405 = add i16 %i.ik, -2         ; 2 uses
  %i.il = icmp ult i16 %switch.tableidx405, 14
  br i1 %i.il, label %switch.lookup406, label %_ZN4llvm3MVT11getVectorVTES0_j.exit245

switch.lookup406:                                 ; preds = %.thread400
  %i.im = zext nneg i16 %switch.tableidx405 to i64
  %switch.gep407 = getelementptr inbounds nuw i8, ptr @switch.table._ZL18lowerV4X128ShuffleRKN4llvm5SDLocENS_3MVTENS_8ArrayRefIiEERKNS_5APIntENS_7SDValueES9_RKNS_12X86SubtargetERNS_12SelectionDAGE.973, i64 %i.im
  %switch.load408 = load i8, ptr %switch.gep407, align 1
  %switch.ext409 = zext i8 %switch.load408 to i16
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit245

_ZN4llvm3MVT11getVectorVTES0_j.exit245:           ; preds = %.thread400, %switch.lookup406
  %.sroa.0.0.i244 = phi i16 [ %switch.ext409, %switch.lookup406 ], [ 0, %.thread400 ]
  %i.in = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.in, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.in, 1
  store ptr %.fca.0.extract41, ptr %26, align 8
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %.fca.1.extract42, ptr %.sroa.244.0..sroa_idx, align 8
  %i.io = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.sroa.0.0.i244, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26) #39 ; 2 uses
  %.fca.0.extract37 = extractvalue { ptr, i32 } %i.io, 0
  %.fca.1.extract38 = extractvalue { ptr, i32 } %i.io, 1
  %i.ip = shl nuw nsw i32 %.1184.3402, 1
  %i.iq = call fastcc { ptr, i32 } @_ZL15insertSubVectorN4llvm7SDValueES0_jRNS_12SelectionDAGERKNS_5SDLocEj(ptr %.sroa.090.0.copyload, i32 %.sroa.291.0.copyload, ptr %.fca.0.extract37, i32 %.fca.1.extract38, i32 noundef %i.ip, ptr noundef nonnull align 8 dereferenceable(920) %8, ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef 128) ; 2 uses
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.iq, 0
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.iq, 1
  br label %bb.bh

.thread298:                                       ; preds = %bb.ae, %bb.af, %bb.ai, %bb.aj, %bb.am, %bb.an, %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #39
  %i.ir = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store ptr %i.ir, ptr %27, align 8, !tbaa !83
  %i.is = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store i32 0, ptr %i.is, align 8, !tbaa !633
  %i.it = getelementptr inbounds nuw i8, ptr %27, i64 12
  store i32 2, ptr %i.it, align 4, !tbaa !634
  %i.iu = load i32, ptr %i.c, align 8, !tbaa !633
  %i.iv = zext i32 %i.iu to i64
  %i.iw = call fastcc noundef zeroext i1 @_ZL23canWidenShuffleElementsN4llvm8ArrayRefIiEERNS_15SmallVectorImplIiEE(ptr nonnull %i.hd, i64 %i.iv, ptr noundef nonnull align 8 dereferenceable(16) %27)
  br i1 %i.iw, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread298
  store i32 0, ptr %i.c, align 8, !tbaa !633
  %i.ix = load ptr, ptr %27, align 8, !tbaa !83
  %i.iy = load i32, ptr %i.is, align 8, !tbaa !633
  %i.iz = zext i32 %i.iy to i64
  call void @_ZN4llvm21narrowShuffleMaskEltsEiNS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef 2, ptr %i.ix, i64 %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %11) #39
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.thread298
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.ja = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %1, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.ja, 0 ; 4 uses
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.ja, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.jb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %1, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.jb, 0 ; 4 uses
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.jb, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 -1, i64 16, i1 false)
  %i.jc = load ptr, ptr %11, align 8, !tbaa !83   ; 4 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !240 ; 3 uses
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jf = icmp samesign ugt i32 %i.jd, 3
  %.3 = select i1 %i.jf, ptr %6, ptr %5           ; 2 uses
  %.sroa.0249.0.copyload = load ptr, ptr %.3, align 8, !tbaa !465 ; 2 uses
  %.sroa.6.0..3.sroa_idx = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..3.sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.fca.0.extract23, i64 24
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !468
  %i.ji = add i32 %i.jh, -53
  %spec.select.i.i246 = icmp ult i32 %i.ji, 2
  br i1 %spec.select.i.i246, label %.critedge194, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jj = icmp ne ptr %.fca.0.extract23, %.sroa.0249.0.copyload
  %i.jk = icmp ne i32 %.fca.1.extract24, %.sroa.6.0.copyload
  %.not3.i = select i1 %i.jj, i1 true, i1 %i.jk
  br i1 %.not3.i, label %.loopexit, label %.critedge194

.critedge194:                                     ; preds = %bb.av, %bb.aw
  %.sroa.8.0 = phi i32 [ %.fca.1.extract24, %bb.aw ], [ %.sroa.6.0.copyload, %bb.av ]
  %.sroa.0.0 = phi ptr [ %.fca.0.extract23, %bb.aw ], [ %.sroa.0249.0.copyload, %bb.av ]
  %i.jl = and i32 %i.jd, 3
  store i32 %i.jl, ptr %i.a, align 16, !tbaa !240
  br label %bb.ax

bb.ax:                                            ; preds = %.critedge194, %bb.au
  %.sroa.8.1 = phi i32 [ %.fca.1.extract24, %bb.au ], [ %.sroa.8.0, %.critedge194 ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %.fca.0.extract23, %bb.au ], [ %.sroa.0.0, %.critedge194 ] ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !240 ; 3 uses
  %i.jo = icmp slt i32 %i.jn, 0
  br i1 %i.jo, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jp = icmp samesign ugt i32 %i.jn, 3
  %.3.1 = select i1 %i.jp, ptr %6, ptr %5         ; 2 uses
  %.sroa.0249.0.copyload.1 = load ptr, ptr %.3.1, align 8, !tbaa !465 ; 2 uses
  %.sroa.6.0..3.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.3.1, i64 8
  %.sroa.6.0.copyload.1 = load i32, ptr %.sroa.6.0..3.sroa_idx.1, align 8, !tbaa !240 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !468
  %i.js = add i32 %i.jr, -53
  %spec.select.i.i246.1 = icmp ult i32 %i.js, 2
  br i1 %spec.select.i.i246.1, label %.critedge194.1, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jt = icmp ne ptr %.sroa.0.1, %.sroa.0249.0.copyload.1
  %i.ju = icmp ne i32 %.sroa.8.1, %.sroa.6.0.copyload.1
  %.not3.i.1 = select i1 %i.jt, i1 true, i1 %i.ju
  br i1 %.not3.i.1, label %.loopexit, label %.critedge194.1

.critedge194.1:                                   ; preds = %bb.ay, %bb.az
  %.sroa.8.2 = phi i32 [ %.sroa.8.1, %bb.az ], [ %.sroa.6.0.copyload.1, %bb.ay ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.az ], [ %.sroa.0249.0.copyload.1, %bb.ay ]
  %i.jv = and i32 %i.jn, 3
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !240
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge194.1, %bb.ax
  %.sroa.8.3 = phi i32 [ %.sroa.8.1, %bb.ax ], [ %.sroa.8.2, %.critedge194.1 ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %bb.ax ], [ %.sroa.0.2, %.critedge194.1 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !240 ; 3 uses
  %i.jz = icmp slt i32 %i.jy, 0
  br i1 %i.jz, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ka = icmp samesign ugt i32 %i.jy, 3
  %.3.2 = select i1 %i.ka, ptr %6, ptr %5         ; 2 uses
  %.sroa.0249.0.copyload.2 = load ptr, ptr %.3.2, align 8, !tbaa !465 ; 2 uses
  %.sroa.6.0..3.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.3.2, i64 8
  %.sroa.6.0.copyload.2 = load i32, ptr %.sroa.6.0..3.sroa_idx.2, align 8, !tbaa !240 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.fca.0.extract18, i64 24
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !468
  %i.kd = add i32 %i.kc, -53
  %spec.select.i.i246.2 = icmp ult i32 %i.kd, 2
  br i1 %spec.select.i.i246.2, label %.critedge194.2, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ke = icmp ne ptr %.fca.0.extract18, %.sroa.0249.0.copyload.2
  %i.kf = icmp ne i32 %.fca.1.extract19, %.sroa.6.0.copyload.2
  %.not3.i.2 = select i1 %i.ke, i1 true, i1 %i.kf
  br i1 %.not3.i.2, label %.loopexit, label %.critedge194.2

.critedge194.2:                                   ; preds = %bb.bb, %bb.bc
  %.sroa.19.0 = phi i32 [ %.fca.1.extract19, %bb.bc ], [ %.sroa.6.0.copyload.2, %bb.bb ]
  %.sroa.13323.0 = phi ptr [ %.fca.0.extract18, %bb.bc ], [ %.sroa.0249.0.copyload.2, %bb.bb ]
  %i.kg = and i32 %i.jy, 3
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.kg, ptr %i.kh, align 8, !tbaa !240
  br label %bb.bd

bb.bd:                                            ; preds = %.critedge194.2, %bb.ba
  %.sroa.19.1 = phi i32 [ %.fca.1.extract19, %bb.ba ], [ %.sroa.19.0, %.critedge194.2 ] ; 3 uses
  %.sroa.13323.1 = phi ptr [ %.fca.0.extract18, %bb.ba ], [ %.sroa.13323.0, %.critedge194.2 ] ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !240 ; 3 uses
  %i.kk = icmp slt i32 %i.kj, 0
  br i1 %i.kk, label %.critedge196, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kl = icmp samesign ugt i32 %i.kj, 3
  %.3.3 = select i1 %i.kl, ptr %6, ptr %5         ; 2 uses
  %.sroa.0249.0.copyload.3 = load ptr, ptr %.3.3, align 8, !tbaa !465 ; 2 uses
  %.sroa.6.0..3.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.3.3, i64 8
  %.sroa.6.0.copyload.3 = load i32, ptr %.sroa.6.0..3.sroa_idx.3, align 8, !tbaa !240 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.13323.1, i64 24
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !468
  %i.ko = add i32 %i.kn, -53
  %spec.select.i.i246.3 = icmp ult i32 %i.ko, 2
  br i1 %spec.select.i.i246.3, label %.critedge194.3, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kp = icmp ne ptr %.sroa.13323.1, %.sroa.0249.0.copyload.3
  %i.kq = icmp ne i32 %.sroa.19.1, %.sroa.6.0.copyload.3
  %.not3.i.3 = select i1 %i.kp, i1 true, i1 %i.kq
  br i1 %.not3.i.3, label %.loopexit, label %.critedge194.3

.critedge194.3:                                   ; preds = %bb.be, %bb.bf
  %.sroa.19.2 = phi i32 [ %.sroa.19.1, %bb.bf ], [ %.sroa.6.0.copyload.3, %bb.be ]
  %.sroa.13323.2 = phi ptr [ %.sroa.13323.1, %bb.bf ], [ %.sroa.0249.0.copyload.3, %bb.be ]
  %i.kr = and i32 %i.kj, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !240
  br label %.critedge196

.critedge196:                                     ; preds = %.critedge194.3, %bb.bd
  %.sroa.19.3 = phi i32 [ %.sroa.19.1, %bb.bd ], [ %.sroa.19.2, %.critedge194.3 ]
  %.sroa.13323.3 = phi ptr [ %.sroa.13323.1, %bb.bd ], [ %.sroa.13323.2, %.critedge194.3 ]
  store ptr %.sroa.0.3, ptr %28, align 8, !tbaa !465
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.sroa.8.3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !240
  store ptr %.sroa.13323.3, ptr %29, align 8, !tbaa !465
  %.sroa.19.16..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.sroa.19.3, ptr %.sroa.19.16..sroa_idx, align 8, !tbaa !240
  %i.kt = call fastcc noundef i32 @_ZL18getV4X86ShuffleImmN4llvm8ArrayRefIiEE(ptr nonnull %i.a, i64 4)
  %i.ku = zext i32 %i.kt to i64
end_hunk_14
