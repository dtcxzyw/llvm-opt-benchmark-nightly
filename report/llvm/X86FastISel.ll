Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86FastISel?download=true
inline.NumInlined: 12764
inline.NumDeleted: 3524
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvm::MCRegisterClassStorage" = type { [135 x %"class.llvm::MCRegisterClass"], [1296 x i16], [2329 x i8], [1070 x i32], [16 x i16], [979 x i32] }
%"class.llvm::MCRegisterClass" = type <{ i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, [3 x i8], i32, i32, [4 x i8], %"struct.llvm::LaneBitmask", i8, i8, i8, i8, i8, i8, [2 x i8], i32, i16, [2 x i8] }>
%"struct.llvm::LaneBitmask" = type { i64 }
%struct.DivRemEntry = type { ptr, i32, i32, [4 x %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult"] }
%"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" = type { i32, i32, i32, i32, i8 }
%"struct.llvm::X86AddressMode" = type <{ i32, %"union.llvm::X86AddressMode::BaseUnion", i32, %"class.llvm::Register", i32, [4 x i8], ptr, i32, i8, [3 x i8] }>
%"union.llvm::X86AddressMode::BaseUnion" = type { %"class.llvm::Register" }
%"class.llvm::Register" = type { i32 }
%"class.llvm::SmallVector.213" = type { %"class.llvm::SmallVectorImpl.214", %"struct.llvm::SmallVectorStorage.217" }
%"class.llvm::SmallVectorImpl.214" = type { %"class.llvm::SmallVectorTemplateBase.215" }
%"class.llvm::SmallVectorTemplateBase.215" = type { %"class.llvm::SmallVectorTemplateCommon.216" }
%"class.llvm::SmallVectorTemplateCommon.216" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.217" = type { [256 x i8] }
%"class.llvm::MachineOperand" = type { i32, %union.anon.225, ptr, %"union.llvm::MachineOperand::ContentsUnion" }
%union.anon.225 = type { i32 }
%"union.llvm::MachineOperand::ContentsUnion" = type { %"class.llvm::ArrayRef.226" }
%"class.llvm::ArrayRef.226" = type { ptr, i64 }
%"struct.llvm::EVT" = type { %"class.llvm::MVT", ptr }
%"class.llvm::MVT" = type { i16 }
%"class.llvm::AttributeList" = type { ptr }
%"class.llvm::SmallVector.413" = type { %"class.llvm::SmallVectorImpl.414", %"struct.llvm::SmallVectorStorage.417" }
%"class.llvm::SmallVectorImpl.414" = type { %"class.llvm::SmallVectorTemplateBase.415" }
%"class.llvm::SmallVectorTemplateBase.415" = type { %"class.llvm::SmallVectorTemplateCommon.416" }
%"class.llvm::SmallVectorTemplateCommon.416" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.417" = type { [16 x i8] }
%"class.llvm::SmallVector.418" = type { %"class.llvm::SmallVectorImpl.419", %"struct.llvm::SmallVectorStorage.422" }
%"class.llvm::SmallVectorImpl.419" = type { %"class.llvm::SmallVectorTemplateBase.420" }
%"class.llvm::SmallVectorTemplateBase.420" = type { %"class.llvm::SmallVectorTemplateCommon.421" }
%"class.llvm::SmallVectorTemplateCommon.421" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.422" = type { [224 x i8] }
%"class.llvm::SmallVector.423" = type { %"class.llvm::SmallVectorImpl.424", %"struct.llvm::SmallVectorStorage.427" }
%"class.llvm::SmallVectorImpl.424" = type { %"class.llvm::SmallVectorTemplateBase.425" }
%"class.llvm::SmallVectorTemplateBase.425" = type { %"class.llvm::SmallVectorTemplateCommon.426" }
%"class.llvm::SmallVectorTemplateCommon.426" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.427" = type { [512 x i8] }
%"class.llvm::CCState" = type <{ i32, i8, i8, [2 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8], i64, %"struct.llvm::Align", [7 x i8], %"class.llvm::SmallVector.428", %"class.llvm::SmallVector.430", %"class.llvm::SmallVector.432", %"class.llvm::SmallVector.437", i32, [4 x i8] }>
%"struct.llvm::Align" = type { i8 }
%"class.llvm::SmallVector.428" = type { %"class.llvm::SmallVectorImpl.23", %"struct.llvm::SmallVectorStorage.429" }
%"class.llvm::SmallVectorImpl.23" = type { %"class.llvm::SmallVectorTemplateBase.24" }
%"class.llvm::SmallVectorTemplateBase.24" = type { %"class.llvm::SmallVectorTemplateCommon.25" }
%"class.llvm::SmallVectorTemplateCommon.25" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.429" = type { [64 x i8] }
%"class.llvm::SmallVector.430" = type { %"class.llvm::SmallVectorImpl.424", %"struct.llvm::SmallVectorStorage.431" }
%"struct.llvm::SmallVectorStorage.431" = type { [128 x i8] }
%"class.llvm::SmallVector.432" = type { %"class.llvm::SmallVectorImpl.433", %"struct.llvm::SmallVectorStorage.436" }
%"class.llvm::SmallVectorImpl.433" = type { %"class.llvm::SmallVectorTemplateBase.434" }
%"class.llvm::SmallVectorTemplateBase.434" = type { %"class.llvm::SmallVectorTemplateCommon.435" }
%"class.llvm::SmallVectorTemplateCommon.435" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.436" = type { [64 x i8] }
%"class.llvm::SmallVector.437" = type { %"class.llvm::SmallVectorImpl.438", %"struct.llvm::SmallVectorStorage.441" }
%"class.llvm::SmallVectorImpl.438" = type { %"class.llvm::SmallVectorTemplateBase.439" }
%"class.llvm::SmallVectorTemplateBase.439" = type { %"class.llvm::SmallVectorTemplateCommon.440" }
%"class.llvm::SmallVectorTemplateCommon.440" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.441" = type { [32 x i8] }
%"class.llvm::SmallVector.563" = type { %"class.llvm::SmallVectorImpl.564", %"struct.llvm::SmallVectorStorage.567" }
%"class.llvm::SmallVectorImpl.564" = type { %"class.llvm::SmallVectorTemplateBase.565" }
%"class.llvm::SmallVectorTemplateBase.565" = type { %"class.llvm::SmallVectorTemplateCommon.566" }
%"class.llvm::SmallVectorTemplateCommon.566" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.567" = type { [48 x i8] }
%"class.llvm::SmallVector.651" = type { %"class.llvm::SmallVectorImpl.652", %"struct.llvm::SmallVectorStorage.655" }
%"class.llvm::SmallVectorImpl.652" = type { %"class.llvm::SmallVectorTemplateBase.653" }
%"class.llvm::SmallVectorTemplateBase.653" = type { %"class.llvm::SmallVectorTemplateCommon.654" }
%"class.llvm::SmallVectorTemplateCommon.654" = type { %"class.llvm::SmallVectorBase.33" }
%"class.llvm::SmallVectorBase.33" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.655" = type { [32 x i8] }
%"class.llvm::SmallVector.656" = type { %"class.llvm::SmallVectorImpl.564", %"struct.llvm::SmallVectorStorage.657" }
%"struct.llvm::SmallVectorStorage.657" = type { [128 x i8] }
%"class.llvm::SmallVector.556" = type { %"class.llvm::SmallVectorImpl.414", %"struct.llvm::SmallVectorStorage.557" }
%"struct.llvm::SmallVectorStorage.557" = type { [64 x i8] }
%"class.llvm::APInt" = type <{ %union.anon, i32, [4 x i8] }>
%union.anon = type { i64 }
%"struct.llvm::MachinePointerInfo" = type <{ %"class.llvm::PointerUnion.362", i64, i32, i8, [3 x i8] }>
%"class.llvm::PointerUnion.362" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.363" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.363" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.364" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.364" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.365" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.365" = type { %"struct.llvm::detail::PunnedPointer.238" }
%"struct.llvm::detail::PunnedPointer.238" = type { [8 x i8] }
%"struct.llvm::AAMDNodes" = type { ptr, ptr, ptr, ptr, ptr }
%"class.llvm::MachineInstrBuilder" = type { ptr, ptr }
%"struct.llvm::MachineFunction::CallSiteInfo" = type { %"class.llvm::SmallVector.675", %"class.llvm::SmallVector.680", ptr }
%"class.llvm::SmallVector.675" = type { %"class.llvm::SmallVectorImpl.676", %"struct.llvm::SmallVectorStorage.679" }
%"class.llvm::SmallVectorImpl.676" = type { %"class.llvm::SmallVectorTemplateBase.677" }
%"class.llvm::SmallVectorTemplateBase.677" = type { %"class.llvm::SmallVectorTemplateCommon.678" }
%"class.llvm::SmallVectorTemplateCommon.678" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.679" = type { [8 x i8] }
%"class.llvm::SmallVector.680" = type { %"class.llvm::SmallVectorImpl.681", %"struct.llvm::SmallVectorStorage.684" }
%"class.llvm::SmallVectorImpl.681" = type { %"class.llvm::SmallVectorTemplateBase.682" }
%"class.llvm::SmallVectorTemplateBase.682" = type { %"class.llvm::SmallVectorTemplateCommon.683" }
%"class.llvm::SmallVectorTemplateCommon.683" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.684" = type { [32 x i8] }
%"class.llvm::SmallVector.230" = type { %"class.llvm::SmallVectorImpl.231", %"struct.llvm::SmallVectorStorage.234" }
%"class.llvm::SmallVectorImpl.231" = type { %"class.llvm::SmallVectorTemplateBase.232" }
%"class.llvm::SmallVectorTemplateBase.232" = type { %"class.llvm::SmallVectorTemplateCommon.233" }
%"class.llvm::SmallVectorTemplateCommon.233" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.234" = type { [256 x i8] }
%"class.llvm::DenseMapIterator.312" = type { ptr, ptr, ptr, ptr }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.103" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.4" = type { ptr, ptr, i32, i32 }

$_ZN4llvm14X86AddressMode14getFullAddressERNS_15SmallVectorImplINS_14MachineOperandEEE = comdat any

$_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb = comdat any

$_ZN4llvm3MVT19getScalableVectorVTES0_j = comdat any

$_ZN4llvm3MVT11getVectorVTES0_j = comdat any

$_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_5ValueELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_8RegisterENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_ = comdat any

$_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_8RegisterENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_8RegisterENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_8RegisterENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_8RegisterENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE15growAndPushBackERKS1_ = comdat any

$_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_ = comdat any

$_ZN4llvm7CCStateD2Ev = comdat any

$_ZNK4llvm8Function16hasStructRetAttrEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_ = comdat any

$_ZNK4llvm12X86Subtarget18isCallingConvWin64Ej = comdat any

$_ZNK4llvm8Function4argsEv = comdat any

$_ZNK4llvm18TargetLoweringBase15getRegisterTypeERNS_11LLVMContextENS_3EVTE = comdat any

$_ZNK4llvm8CallBase19hasInAllocaArgumentEv = comdat any

$_ZN4llvm7CCState13AllocateStackEjNS_5AlignE = comdat any

$_ZNK4llvm19MachineInstrBuilder6addSymEPNS_8MCSymbolEh = comdat any

$_ZN4llvm15MachineFunction12CallSiteInfoD2Ev = comdat any

$_ZN4llvm8CallBase7arg_endEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_3MVTELb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS4_JS6_EEESt4pairIPSB_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ = comdat any

$_ZN4llvm15SmallVectorImplINS_15MachineFunction10ArgRegPairEEaSEOS3_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEEaSEOS3_ = comdat any

$_ZNK4llvm13IntrinsicInst13isCommutativeEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_ = comdat any

$_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = comdat any

$_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_111X86FastISelE = internal unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr null, ptr @_ZN4llvm8FastISelD2Ev, ptr @_ZN12_GLOBAL__N_111X86FastISelD0Ev, ptr @_ZN12_GLOBAL__N_111X86FastISel19tryToFoldLoadIntoMIEPN4llvm12MachineInstrEjPKNS1_8LoadInstE, ptr @_ZN12_GLOBAL__N_111X86FastISel21fastSelectInstructionEPKN4llvm11InstructionE, ptr @_ZN12_GLOBAL__N_111X86FastISel18fastLowerArgumentsEv, ptr @_ZN12_GLOBAL__N_111X86FastISel13fastLowerCallERN4llvm8FastISel16CallLoweringInfoE, ptr @_ZN12_GLOBAL__N_111X86FastISel22fastLowerIntrinsicCallEPKN4llvm13IntrinsicInstE, ptr @_ZN4llvm8FastISel9fastEmit_ENS_3MVTES1_j, ptr @_ZN12_GLOBAL__N_111X86FastISel10fastEmit_rEN4llvm3MVTES2_jNS1_8RegisterE, ptr @_ZN12_GLOBAL__N_111X86FastISel11fastEmit_rrEN4llvm3MVTES2_jNS1_8RegisterES3_, ptr @_ZN12_GLOBAL__N_111X86FastISel11fastEmit_riEN4llvm3MVTES2_jNS1_8RegisterEm, ptr @_ZN12_GLOBAL__N_111X86FastISel10fastEmit_iEN4llvm3MVTES2_jm, ptr @_ZN4llvm8FastISel10fastEmit_fENS_3MVTES1_jPKNS_10ConstantFPE, ptr @_ZN12_GLOBAL__N_111X86FastISel23fastMaterializeConstantEPKN4llvm8ConstantE, ptr @_ZN12_GLOBAL__N_111X86FastISel21fastMaterializeAllocaEPKN4llvm10AllocaInstE, ptr @_ZN12_GLOBAL__N_111X86FastISel24fastMaterializeFloatZeroEPKN4llvm10ConstantFPE, ptr @_ZN4llvm8FastISel13lowerDbgValueEPKNS_5ValueEPNS_12DIExpressionEPNS_15DILocalVariableERKNS_8DebugLocE, ptr @_ZN4llvm8FastISel15lowerDbgDeclareEPKNS_5ValueEPNS_12DIExpressionEPNS_15DILocalVariableERKNS_8DebugLocE] }, align 8
@_ZN4llvm25X86MCRegisterClassStorageE = external global %"struct.llvm::MCRegisterClassStorage", align 8
@.str = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@_ZZN12_GLOBAL__N_111X86FastISel12X86SelectCmpEPKN4llvm11InstructionEE12SETFOpcTable = internal unnamed_addr constant [2 x [3 x i16]] [[3 x i16] [i16 4, i16 11, i16 948], [3 x i16] [i16 5, i16 10, i16 3066]], align 2
@_ZZN12_GLOBAL__N_111X86FastISel15X86SelectDivRemEPKN4llvm11InstructionEE7OpTable = internal unnamed_addr constant [4 x %struct.DivRemEntry] [%struct.DivRemEntry { ptr @_ZN4llvm25X86MCRegisterClassStorageE, i32 3, i32 0, [4 x %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult"] [%"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1777, i32 0, i32 2737, i32 2, i8 1 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1777, i32 0, i32 2737, i32 1, i8 1 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1573, i32 0, i32 2764, i32 2, i8 0 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1573, i32 0, i32 2764, i32 1, i8 0 }] }, %struct.DivRemEntry { ptr getelementptr (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 448), i32 3, i32 21, [4 x %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult"] [%"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1759, i32 1505, i32 20, i32 3, i8 1 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1759, i32 1505, i32 20, i32 21, i8 1 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1555, i32 385, i32 20, i32 3, i8 0 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1555, i32 385, i32 20, i32 21, i8 0 }] }, %struct.DivRemEntry { ptr getelementptr (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2240), i32 22, i32 27, [4 x %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult"] [%"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1765, i32 1201, i32 20, i32 22, i8 1 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1765, i32 1201, i32 20, i32 27, i8 1 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1561, i32 385, i32 20, i32 22, i8 0 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1561, i32 385, i32 20, i32 27, i8 0 }] }, %struct.DivRemEntry { ptr getelementptr (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4608), i32 51, i32 56, [4 x %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult"] [%"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1771, i32 1395, i32 20, i32 51, i8 1 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1771, i32 1395, i32 20, i32 56, i8 1 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1567, i32 385, i32 20, i32 51, i8 0 }, %"struct.(anonymous namespace)::X86FastISel::X86SelectDivRem(const Instruction *)::DivRemEntry::DivRemResult" { i32 1567, i32 385, i32 20, i32 56, i8 0 }] }], align 16
@_ZZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionEE12SETFOpcTable = internal unnamed_addr constant [2 x [3 x i16]] [[3 x i16] [i16 11, i16 4, i16 5021], [3 x i16] [i16 10, i16 5, i16 3066]], align 2
@_ZZN12_GLOBAL__N_111X86FastISel20X86FastEmitSSESelectEN4llvm3MVTEPKNS1_11InstructionEE8OpcTable = internal unnamed_addr constant [2 x [4 x i16]] [[4 x i16] [i16 1363, i16 977, i16 973, i16 3079], [4 x i16] [i16 1357, i16 975, i16 971, i16 3077]], align 16
@_ZZN12_GLOBAL__N_111X86FastISel16X86SelectIntToFPEPKN4llvm11InstructionEbE7SCvtOpc = internal unnamed_addr constant [2 x [2 x [2 x i16]]] [[2 x [2 x i16]] [[2 x i16] [i16 7496, i16 7519], [2 x i16] [i16 7482, i16 7505]], [2 x [2 x i16]] [[2 x i16] [i16 7491, i16 7514], [2 x i16] [i16 7478, i16 7500]]], align 16
@_ZZN12_GLOBAL__N_111X86FastISel16X86SelectIntToFPEPKN4llvm11InstructionEbE7UCvtOpc = internal unnamed_addr constant [2 x [2 x i16]] [[2 x i16] [i16 8735, i16 8750], [2 x i16] [i16 8726, i16 8740]], align 2
@_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = linkonce_odr local_unnamed_addr constant <{ [263 x { i64, i8 }], [9 x { i64, i8 }] }> <{ [263 x { i64, i8 }] [{ i64, i8 } zeroinitializer, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 3, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 5, i8 0 }, { i64, i8 } { i64 6, i8 0 }, { i64, i8 } { i64 7, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 24, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 40, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 56, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 768, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 1536, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 131072, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 1, i8 1 }, { i64, i8 } { i64 2, i8 1 }, { i64, i8 } { i64 4, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 2048, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 24, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 40, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 56, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 80, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 112, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 160, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 224, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 320, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 448, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } zeroinitializer, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }], [9 x { i64, i8 }] zeroinitializer }>, comdat, align 16
@_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable = linkonce_odr local_unnamed_addr constant <{ [215 x i16], [57 x i16] }> <{ [215 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 14, i16 14, i16 14, i16 14, i16 14, i16 15, i16 15, i16 15, i16 15], [57 x i16] zeroinitializer }>, comdat, align 16
@_ZZN12_GLOBAL__N_111X86FastISel18fastLowerArgumentsEvE12GPR32ArgRegs = internal unnamed_addr constant [6 x i16] [i16 26, i16 32, i16 27, i16 25, i16 167, i16 168], align 2
@_ZZN12_GLOBAL__N_111X86FastISel18fastLowerArgumentsEvE12GPR64ArgRegs = internal unnamed_addr constant [6 x i16] [i16 55, i16 60, i16 56, i16 54, i16 119, i16 120], align 2
@_ZZN12_GLOBAL__N_111X86FastISel18fastLowerArgumentsEvE10XMMArgRegs = internal unnamed_addr constant [8 x i16] [i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142], align 16
@.str.3 = private unnamed_addr constant [26 x i8] c"no_caller_saved_registers\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"no_callee_saved_registers\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"import-call-optimization\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"SSE register return with SSE disabled\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@_ZZN12_GLOBAL__N_111X86FastISel22fastLowerIntrinsicCallEPKN4llvm13IntrinsicInstEE7SqrtOpc = internal unnamed_addr constant [3 x [2 x i16]] [[2 x i16] [i16 4696, i16 4692], [2 x i16] [i16 21727, i16 21701], [2 x i16] [i16 21718, i16 21692]], align 2
@_ZZN12_GLOBAL__N_111X86FastISel22fastLowerIntrinsicCallEPKN4llvm13IntrinsicInstEE3Opc = internal unnamed_addr constant [2 x [4 x i16]] [[4 x i16] [i16 1937, i16 1905, i16 1916, i16 1927], [4 x i16] [i16 1547, i16 1515, i16 1526, i16 1537]], align 16
@_ZZN12_GLOBAL__N_111X86FastISel22fastLowerIntrinsicCallEPKN4llvm13IntrinsicInstEE6MULOpc = internal unnamed_addr constant [4 x i16] [i16 2798, i16 2780, i16 2786, i16 2792], align 2
@_ZZN12_GLOBAL__N_111X86FastISel22fastLowerIntrinsicCallEPKN4llvm13IntrinsicInstEE3Reg = internal unnamed_addr constant [4 x i16] [i16 2, i16 3, i16 22, i16 51], align 2
@_ZZN12_GLOBAL__N_111X86FastISel22fastLowerIntrinsicCallEPKN4llvm13IntrinsicInstEE6MULOpc_0 = internal unnamed_addr constant [4 x i16] [i16 1879, i16 1809, i16 1837, i16 1865], align 2
@_ZZN12_GLOBAL__N_111X86FastISel22fastLowerIntrinsicCallEPKN4llvm13IntrinsicInstEE6CvtOpc = internal unnamed_addr constant [3 x [2 x [2 x i16]]] [[2 x [2 x i16]] [[2 x i16] [i16 1503, i16 1499], [2 x i16] [i16 1495, i16 1491]], [2 x [2 x i16]] [[2 x i16] [i16 8525, i16 8511], [2 x i16] [i16 8457, i16 8443]], [2 x [2 x i16]] [[2 x i16] [i16 8520, i16 8506], [2 x i16] [i16 8452, i16 8438]]], align 16
@switch.table._ZN12_GLOBAL__N_111X86FastISel21fastSelectInstructionEPKN4llvm11InstructionE = private unnamed_addr constant [4 x i64] [i64 -5020, i64 -5005, i64 -5010, i64 -5015], align 8
@switch.table._ZN12_GLOBAL__N_111X86FastISel21fastSelectInstructionEPKN4llvm11InstructionE.19 = private unnamed_addr constant [3 x i64] [i64 -4402, i64 -4590, i64 -4141], align 8
@switch.table._ZN12_GLOBAL__N_111X86FastISel21fastSelectInstructionEPKN4llvm11InstructionE.20 = private unnamed_addr constant [3 x i64] [i64 -4312, i64 -4500, i64 -4051], align 8
@switch.table._ZN12_GLOBAL__N_111X86FastISel21fastSelectInstructionEPKN4llvm11InstructionE.21 = private unnamed_addr constant [3 x i64] [i64 -4342, i64 -4530, i64 -4081], align 8
@switch.table._ZN12_GLOBAL__N_111X86FastISel21fastSelectInstructionEPKN4llvm11InstructionE.22 = private unnamed_addr constant [3 x i64] [i64 -4372, i64 -4560, i64 -4111], align 8
@switch.table._ZN12_GLOBAL__N_111X86FastISel21fastSelectInstructionEPKN4llvm11InstructionE.23 = private unnamed_addr constant [5 x i8] [i8 2, i8 0, i8 poison, i8 3, i8 1], align 8
@switch.table._ZN12_GLOBAL__N_111X86FastISel13X86SelectZExtEPKN4llvm11InstructionE = private unnamed_addr constant [3 x i64] [i64 -2769, i64 -2768, i64 -2588], align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4llvm3X8614createFastISelERNS_20FunctionLoweringInfoEPKNS_17TargetLibraryInfoEPKNS_19LibcallLoweringInfoE(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #17 ; 4 uses
  tail call void @_ZN4llvm8FastISelC2ERNS_20FunctionLoweringInfoEPKNS_17TargetLibraryInfoEPKNS_19LibcallLoweringInfoEb(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(976) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #18
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_111X86FastISelE, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !744, !nonnull !206, !align !207
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.e, ptr %i.f, align 8, !tbaa !223
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare void @_ZN4llvm8FastISelC2ERNS_20FunctionLoweringInfoEPKNS_17TargetLibraryInfoEPKNS_19LibcallLoweringInfoEb(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(976), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm8FastISelD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111X86FastISelD0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvm8FastISelD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_111X86FastISel19tryToFoldLoadIntoMIEPN4llvm12MachineInstrEjPKNS1_8LoadInstE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::X86AddressMode", align 16 ; 10 uses
  %5 = alloca %"class.llvm::SmallVector.213", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %3, i64 -32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %4, align 16, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.e, align 16, !tbaa !233
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.f, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.g, align 16, !tbaa !235
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i8 0, ptr %i.h, align 4, !tbaa !236
  %i.i = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111X86FastISel16X86SelectAddressEPKN4llvm5ValueERNS1_14X86AddressModeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(37) %4)
  br i1 %i.i, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !238, !nonnull !206, !align !207
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !242
  %i.p = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.m, ptr noundef %i.o) #18 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.p, 1
  %i.q = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.q, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.b
  %.fca.0.extract = extractvalue { i64, i8 } %i.p, 0
  %i.r = trunc i64 %.fca.0.extract to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !243
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !244
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 8, ptr %i.u, align 4, !tbaa !245
  call void @_ZN4llvm14X86AddressMode14getFullAddressERNS_15SmallVectorImplINS_14MachineOperandEEE(ptr noundef nonnull align 8 dereferenceable(37) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !246
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.z = load ptr, ptr %5, align 8, !tbaa !243
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !244
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 688
  %.sroa.016.0.copyload = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !248
  %i.af = trunc i16 %i.ae to i8
  %i.ag = lshr i8 %i.af, 1
  %i.ah = and i8 %i.ag, 63
  %i.ai = ptrtoint ptr %.sroa.016.0.copyload to i64
  %i.aj = call noundef ptr @_ZNK4llvm12X86InstrInfo21foldMemoryOperandImplERNS_15MachineFunctionERNS_12MachineInstrEjNS_8ArrayRefINS_14MachineOperandEEENS_26MachineInstrBundleIteratorIS3_Lb0EEEjNS_5AlignEbRPS3_PNS_10VirtRegMapE(ptr noundef nonnull align 8 dereferenceable(456) %i.k, ptr noundef nonnull align 8 dereferenceable(1065) %i.y, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr %i.z, i64 %i.ab, i64 %i.ai, i32 noundef %i.r, i8 %i.ah, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null) #18 ; 7 uses
  %.not = icmp ne ptr %i.aj, null                 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !747 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.an = load i24, ptr %i.am, align 8            ; 2 uses
  %i.ao = zext i24 %i.an to i64
  %.idx = shl nuw nsw i64 %i.ao, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %.not4355 = icmp eq i24 %i.an, 0
  br i1 %.not4355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %.critedge, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !748 ; 2 uses
  %i.at = and i32 %i.as, 12
  %i.au = icmp eq i32 %i.at, 0
  %i.av = and i32 %i.as, 4
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond.i.i = or i1 %i.au, %i.aw
  br i1 %or.cond.i.i, label %.split, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit

.split:                                           ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !262
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !264
  %i.bb = and i64 %i.ba, 128
  %.not53 = icmp eq i64 %i.bb, 0
  br i1 %.not53, label %bb.j, label %bb.i

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit: ; preds = %._crit_edge
  %i.bc = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 128, i32 noundef 1) #18
  br i1 %i.bc, label %bb.i, label %bb.j

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %.04057 = phi ptr [ %i.al, %.lr.ph ], [ %i.bm, %.critedge ] ; 4 uses
  %.04156 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %.critedge ] ; 2 uses
  %i.bd = load i32, ptr %.04057, align 8
  %i.be = and i32 %i.bd, 16777471
  %or.cond.not = icmp eq i32 %i.be, 0
  br i1 %or.cond.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %.04057, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !229 ; 2 uses
  %i.bh = load i32, ptr %i.d, align 4, !tbaa !265
  %.not52 = icmp eq i32 %i.bg, %i.bh
  br i1 %.not52, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !262
  %i.bj = call i32 @_ZN4llvm8FastISel24constrainOperandRegClassERKNS_11MCInstrDescENS_8RegisterEj(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i32 %i.bg, i32 noundef %.04156) #18 ; 2 uses
  %i.bk = load i32, ptr %i.bf, align 4, !tbaa !229
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.04057, i32 %i.bj) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.e, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %.04057, i64 32 ; 2 uses
  %i.bn = add nuw nsw i32 %.04156, 1
  %.not43 = icmp eq ptr %i.bm, %i.ap
  br i1 %.not43, label %._crit_edge, label %bb.e, !llvm.loop !745

bb.i:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !247, !nonnull !206, !align !207
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111X86FastISel21fastSelectInstructionEPKN4llvm11InstructionE:bb.a
bb.if:                                            ; preds = %bb.ie, %bb.id
  %.sroa.0110.0.i.i = phi i32 [ %i.bih, %bb.ie ], [ %i.bhf, %bb.id ]
  %i.bii = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 680
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !456 ; 2 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bij, i64 688
  %.sroa.010.0.copyload.i.i = load ptr, ptr %i.bim, align 8 ; 4 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bio = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 8
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !457
  %i.bis = getelementptr inbounds i8, ptr %i.bir, i64 -160640
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bil, i64 32
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !505 ; 6 uses
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.bin, align 8, !tbaa !506
  %i.biv = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.biu, ptr noundef nonnull align 8 dereferenceable(32) %i.bis, ptr %.sroa.02.0.copyload.i.i.i, i1 noundef zeroext false) #18 ; 11 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bil, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.biw, ptr noundef %i.biv) #18
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.0.copyload.i.i, align 8
  %i.bix = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.biy = inttoptr i64 %i.bix to ptr
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biv, i64 8
  store ptr %.sroa.010.0.copyload.i.i, ptr %i.biz, align 8, !tbaa !267
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %i.biv, align 8
  %i.bja = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  %i.bjb = or disjoint i64 %i.bja, %i.bix
  store i64 %i.bjb, ptr %i.biv, align 8
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.biy, i64 8
  store ptr %i.biv, ptr %i.bjc, align 8, !tbaa !267
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.0.copyload.i.i, align 8
  %i.bjd = ptrtoint ptr %i.biv to i64
  %i.bje = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 7
  %i.bjf = or disjoint i64 %i.bje, %i.bjd
  store i64 %i.bjf, ptr %.sroa.010.0.copyload.i.i, align 8
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bjh = load ptr, ptr %i.bjg, align 8, !tbaa !507 ; 2 uses
  %.not.i.i95.i.i = icmp eq ptr %i.bjh, null
  br i1 %.not.i.i95.i.i, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.biv, ptr noundef nonnull align 8 dereferenceable(1065) %i.biu, ptr noundef nonnull %i.bjh) #18
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.bji = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bjj = load ptr, ptr %i.bji, align 8, !tbaa !508 ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.bjj, null
  br i1 %.not7.i.i.i.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.biv, ptr noundef nonnull align 8 dereferenceable(1065) %i.biu, ptr noundef nonnull %i.bjj) #18
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.bjk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !509 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.bjl, null
  br i1 %.not8.i.i.i.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.biv, ptr noundef nonnull align 8 dereferenceable(1065) %i.biu, ptr noundef nonnull %i.bjl) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i: ; preds = %bb.ik, %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.bjm = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.bjm, align 8, !tbaa !459, !alias.scope !965
  %i.bjn = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %.sroa.0110.0.i.i, ptr %i.bjn, align 4, !tbaa !229, !alias.scope !965
  %i.bjo = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjo, i8 0, i64 16, i1 false), !alias.scope !965
  store i32 0, ptr %12, align 8, !alias.scope !965
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.biv, ptr noundef nonnull align 8 dereferenceable(1065) %i.biu, ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i32 1, ptr %11, align 8, !alias.scope !966
  %i.bjp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.bjp, align 8, !tbaa !459, !alias.scope !966
  %i.bjq = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 1, ptr %i.bjq, align 8, !tbaa !229, !alias.scope !966
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.biv, ptr noundef nonnull align 8 dereferenceable(1065) %i.biu, ptr noundef nonnull align 8 dereferenceable(32) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.il

bb.il:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i, %bb.ic, %bb.ia, %bb.hz, %bb.ht
  %i.bjr = load i32, ptr %i.azr, align 4          ; 2 uses
  %i.bjs = and i32 %i.bjr, 1073741824
  %.not.i.i96.i.i = icmp eq i32 %i.bjs, 0
  br i1 %.not.i.i96.i.i, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bjt = getelementptr inbounds i8, ptr %1, i64 -8
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !269
  br label %_ZNK4llvm4User10getOperandEj.exit99.i.i

bb.in:                                            ; preds = %bb.il
  %i.bjv = and i32 %i.bjr, 268435455
  %i.bjw = zext nneg i32 %i.bjv to i64
  %i.bjx = sub nsw i64 0, %i.bjw
  %i.bjy = getelementptr inbounds [32 x i8], ptr %1, i64 %i.bjx
  br label %_ZNK4llvm4User10getOperandEj.exit99.i.i

_ZNK4llvm4User10getOperandEj.exit99.i.i:          ; preds = %bb.in, %bb.im
  %.pn.i.i = phi ptr [ %i.bju, %bb.im ], [ %i.bjy, %bb.in ] ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32
  %i.bjz = load ptr, ptr %.in.i.i, align 8, !tbaa !228
  %i.bka = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 64
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !228
  %i.bkc = call i32 @_ZN4llvm8FastISel14getRegForValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bkb) #18 ; 2 uses
  %i.bkd = call i32 @_ZN4llvm8FastISel14getRegForValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bjz) #18 ; 2 uses
  %.not87.i.i = icmp eq i32 %i.bkd, 0
  %.not88.i.i = icmp eq i32 %i.bkc, 0
  %or.cond146.i.i = select i1 %.not87.i.i, i1 true, i1 %.not88.i.i
  br i1 %or.cond146.i.i, label %_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.thread79.i, label %_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.i

_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.thread79.i: ; preds = %_ZNK4llvm4User10getOperandEj.exit99.i.i, %.critedge92.i.i, %bb.ic, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.pre.i120 = load i32, ptr %i.azr, align 4
  br label %_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.thread.i

_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.i: ; preds = %_ZNK4llvm4User10getOperandEj.exit99.i.i
  %i.bke = load ptr, ptr %i.bbw, align 8, !tbaa !223 ; 4 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 1176
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !967
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bke, i64 920
  %i.bki = load i32, ptr %i.bkh, align 8, !tbaa !968
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bke, i64 1192
  %i.bkk = load i32, ptr %i.bkj, align 8, !tbaa !969
  %i.bkl = mul i32 %i.bkk, %i.bki
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bcx, i64 20
  %i.bkn = load i16, ptr %i.bkm, align 4, !tbaa !970
  %i.bko = zext i16 %i.bkn to i32
  %i.bkp = add i32 %i.bkl, %i.bko
  %i.bkq = zext i32 %i.bkp to i64
  %i.bkr = getelementptr inbounds nuw [16 x i8], ptr %i.bkg, i64 %i.bkq
  %i.bks = load i32, ptr %i.bkr, align 4, !tbaa !972
  %i.bkt = lshr i32 %i.bks, 3
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bke, i64 461
  %i.bkv = load i8, ptr %i.bku, align 1, !tbaa !512, !range !427, !noundef !206
  %i.bkw = trunc nuw i8 %i.bkv to i1
  %i.bkx = call noundef i32 @_ZN4llvm3X8613getCMovOpcodeEjbb(i32 noundef %i.bkt, i1 noundef zeroext false, i1 noundef zeroext %i.bkw) #18
  %i.bky = load i32, ptr %i.a, align 4, !tbaa !469
  %i.bkz = zext i32 %i.bky to i64
  %i.bla = call i32 @_ZN4llvm8FastISel16fastEmitInst_rriEjPKNS_15MCRegisterClassENS_8RegisterES4_m(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.bkx, ptr noundef nonnull %i.bcx, i32 %i.bkc, i32 %i.bkd, i64 noundef %i.bkz) #18
  call void @_ZN4llvm8FastISel14updateValueMapEPKNS_5ValueENS_8RegisterEj(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %1, i32 %i.bla, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN12_GLOBAL__N_111X86FastISel13X86SelectLoadEPKN4llvm11InstructionE.exit

_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.thread79.i, %.thread.i119
  %i.blb = phi i32 [ %.pre84.i, %.thread.i119 ], [ %.pre.i120, %_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.thread79.i ] ; 2 uses
  %i.blc = and i32 %i.blb, 1073741824
  %.not.i.i.i39.i = icmp eq i32 %i.blc, 0
  br i1 %.not.i.i.i39.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.thread.i
  %i.bld = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !269
  br label %_ZNK4llvm4User10getOperandEj.exit.i40.i

bb.ip:                                            ; preds = %_ZN12_GLOBAL__N_111X86FastISel22X86FastEmitCMoveSelectEN4llvm3MVTEPKNS1_11InstructionE.exit.thread.i
  %i.blf = and i32 %i.blb, 268435455
  %i.blg = zext nneg i32 %i.blf to i64
  %i.blh = sub nsw i64 0, %i.blg
  %i.bli = getelementptr inbounds [32 x i8], ptr %1, i64 %i.blh
  br label %_ZNK4llvm4User10getOperandEj.exit.i40.i

_ZNK4llvm4User10getOperandEj.exit.i40.i:          ; preds = %bb.ip, %bb.io
  %i.blj = phi ptr [ %i.ble, %bb.io ], [ %i.bli, %bb.ip ]
  %i.blk = load ptr, ptr %i.blj, align 8, !tbaa !228 ; 5 uses
  %i.bll = load i8, ptr %i.blk, align 8, !tbaa !268
  %.not.i41.i = icmp eq i8 %i.bll, 86
  br i1 %.not.i41.i, label %bb.iq, label %bb.js

bb.iq:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i40.i
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blk, i64 40
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !413
  %i.blo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !413
  %.not91.i.i = icmp eq ptr %i.bln, %i.blp
  br i1 %.not91.i.i, label %bb.ir, label %bb.js

bb.ir:                                            ; preds = %bb.iq
  %i.blq = load ptr, ptr %i.ayr, align 8, !tbaa !242
  %i.blr = getelementptr inbounds i8, ptr %i.blk, i64 -64
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !228 ; 15 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 8
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !242
  %.not92.i.i = icmp eq ptr %i.blq, %i.blu
  br i1 %.not92.i.i, label %bb.is, label %bb.js

bb.is:                                            ; preds = %bb.ir
  %i.blv = load ptr, ptr %i.bbw, align 8, !tbaa !223
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 360
  %i.blx = load i32, ptr %i.blw, align 8, !tbaa !408 ; 2 uses
  %i.bly = icmp sgt i32 %i.blx, 0
  br i1 %i.bly, label %bb.it, label %bb.js

bb.it:                                            ; preds = %bb.is
  %i.blz = icmp eq i16 %i.ayy, 14                 ; 6 uses
  br i1 %i.blz, label %.critedge99.i.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bma = icmp eq i32 %i.blx, 1
  %i.bmb = icmp ne i16 %i.ayy, 15
  %or.cond177.i.i = or i1 %i.bmb, %i.bma
  br i1 %or.cond177.i.i, label %bb.js, label %.critedge99.i.i

.critedge99.i.i:                                  ; preds = %bb.iu, %bb.it
  %i.bmc = getelementptr inbounds i8, ptr %i.blk, i64 -32
  %i.bmd = load ptr, ptr %i.bmc, align 8, !tbaa !228 ; 5 uses
  %i.bme = call noundef i32 @_ZNK4llvm8FastISel20optimizeCmpPredicateEPKNS_7CmpInstE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.blk) #18 ; 2 uses
  %i.bmf = add i32 %i.bme, -7
  %or.cond.i42.i = icmp ult i32 %i.bmf, 2
  br i1 %or.cond.i42.i, label %bb.iv, label %bb.ix

bb.iv:                                            ; preds = %.critedge99.i.i
  %i.bmg = load i8, ptr %i.bmd, align 8, !tbaa !268
  %.not184.i.i = icmp eq i8 %i.bmg, 7
  br i1 %.not184.i.i, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmd, i64 1
  %i.bmi = load i8, ptr %i.bmh, align 1
  %i.bmj = icmp slt i8 %i.bmi, 0
  %spec.select.i46.i = select i1 %i.bmj, ptr %i.bls, ptr %i.bmd
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %.critedge99.i.i
  %.0155.i.i = phi ptr [ %i.bmd, %bb.iv ], [ %i.bmd, %.critedge99.i.i ], [ %spec.select.i46.i, %bb.iw ] ; 13 uses
  switch i32 %i.bme, label %bb.iy [
    i32 1, label %.thread167.i.i
    i32 2, label %bb.jl
    i32 4, label %bb.iz
    i32 3, label %bb.ja
    i32 5, label %bb.jb
    i32 8, label %bb.jc
    i32 14, label %bb.jd
    i32 13, label %bb.je
    i32 11, label %bb.jf
    i32 12, label %bb.jg
    i32 10, label %bb.jh
    i32 7, label %bb.ji
    i32 9, label %bb.jk
    i32 6, label %bb.jj
  ]

bb.iy:                                            ; preds = %bb.ix
  unreachable

bb.iz:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.ja:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.jb:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.jc:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.jd:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.je:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.jf:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.jg:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.jh:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.ji:                                            ; preds = %bb.ix
  br label %.thread167.i.i

bb.jj:                                            ; preds = %bb.ix
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ix
  %.4.i.i.i = phi i32 [ 12, %bb.jj ], [ 8, %bb.ix ]
  %i.bmk = load ptr, ptr %i.bbw, align 8, !tbaa !223
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 360
  %i.bmm = load i32, ptr %i.bml, align 8, !tbaa !408
  %i.bmn = icmp sgt i32 %i.bmm, 6
  br i1 %i.bmn, label %.thread167.i.i, label %bb.js

bb.jl:                                            ; preds = %bb.ix
  br label %.thread167.i.i

.thread167.i.i:                                   ; preds = %bb.jl, %bb.jk, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.ix
  %.sroa.0139.0.extract.trunc165170.i.i = phi i32 [ 6, %bb.jh ], [ %.4.i.i.i, %bb.jk ], [ 0, %bb.ix ], [ 1, %bb.iz ], [ 3, %bb.jc ], [ 4, %bb.jd ], [ 2, %bb.jb ], [ 5, %bb.jf ], [ 7, %bb.ji ], [ 2, %bb.ja ], [ 6, %bb.jg ], [ 5, %bb.je ], [ 1, %bb.jl ] ; 3 uses
  %.1156.i.i = phi ptr [ %.0155.i.i, %bb.jh ], [ %.0155.i.i, %bb.jk ], [ %.0155.i.i, %bb.ix ], [ %.0155.i.i, %bb.iz ], [ %.0155.i.i, %bb.jc ], [ %.0155.i.i, %bb.jd ], [ %.0155.i.i, %bb.jb ], [ %.0155.i.i, %bb.jf ], [ %.0155.i.i, %bb.ji ], [ %i.bls, %bb.ja ], [ %i.bls, %bb.jg ], [ %i.bls, %bb.je ], [ %i.bls, %bb.jl ]
  %.0.i43.i = phi ptr [ %i.bls, %bb.jh ], [ %i.bls, %bb.jk ], [ %i.bls, %bb.ix ], [ %i.bls, %bb.iz ], [ %i.bls, %bb.jc ], [ %i.bls, %bb.jd ], [ %i.bls, %bb.jb ], [ %i.bls, %bb.jf ], [ %i.bls, %bb.ji ], [ %.0155.i.i, %bb.ja ], [ %.0155.i.i, %bb.jg ], [ %.0155.i.i, %bb.je ], [ %.0155.i.i, %bb.jl ]
  %i.bmo = load i32, ptr %i.azr, align 4          ; 2 uses
  %i.bmp = and i32 %i.bmo, 1073741824
  %.not.i.i105.i.i = icmp eq i32 %i.bmp, 0
  br i1 %.not.i.i105.i.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %.thread167.i.i
  %i.bmq = getelementptr inbounds i8, ptr %1, i64 -8
  %i.bmr = load ptr, ptr %i.bmq, align 8, !tbaa !269
  br label %_ZNK4llvm4User10getOperandEj.exit108.i.i

bb.jn:                                            ; preds = %.thread167.i.i
  %i.bms = and i32 %i.bmo, 268435455
  %i.bmt = zext nneg i32 %i.bms to i64
  %i.bmu = sub nsw i64 0, %i.bmt
  %i.bmv = getelementptr inbounds [32 x i8], ptr %1, i64 %i.bmu
  br label %_ZNK4llvm4User10getOperandEj.exit108.i.i

_ZNK4llvm4User10getOperandEj.exit108.i.i:         ; preds = %bb.jn, %bb.jm
  %.pn.i44.i = phi ptr [ %i.bmr, %bb.jm ], [ %i.bmv, %bb.jn ] ; 2 uses
  %.in.i45.i = getelementptr inbounds nuw i8, ptr %.pn.i44.i, i64 32
  %i.bmw = load ptr, ptr %.in.i45.i, align 8, !tbaa !228
  %i.bmx = getelementptr inbounds nuw i8, ptr %.pn.i44.i, i64 64
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !228
  %i.bmz = call i32 @_ZN4llvm8FastISel14getRegForValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bmw) #18 ; 4 uses
  %i.bna = call i32 @_ZN4llvm8FastISel14getRegForValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bmy) #18 ; 4 uses
  %i.bnb = call i32 @_ZN4llvm8FastISel14getRegForValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %.0.i43.i) #18 ; 4 uses
  %i.bnc = call i32 @_ZN4llvm8FastISel14getRegForValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %.1156.i.i) #18 ; 4 uses
  %.not94.i.i = icmp eq i32 %i.bmz, 0
  %.not95.i.i = icmp eq i32 %i.bna, 0
  %or.cond178.i.i = select i1 %.not94.i.i, i1 true, i1 %.not95.i.i
  %.not96.i.i = icmp eq i32 %i.bnb, 0
  %or.cond179.i.i = select i1 %or.cond178.i.i, i1 true, i1 %.not96.i.i
  %.not97.i.i = icmp eq i32 %i.bnc, 0
  %or.cond180.i.i = select i1 %or.cond179.i.i, i1 true, i1 %.not97.i.i
  br i1 %or.cond180.i.i, label %bb.js, label %bb.jo

bb.jo:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit108.i.i
  %i.bnd = load ptr, ptr %i.ayt, align 8, !tbaa !270, !nonnull !206, !align !207 ; 2 uses
  %i.bne = load ptr, ptr %i.bnd, align 8, !tbaa !12
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 528
  %i.bng = load ptr, ptr %i.bnf, align 8
  %i.bnh = call noundef ptr %i.bng(ptr noundef nonnull align 8 dereferenceable(518435) %i.bnd, i16 %i.ayy, i1 noundef zeroext false) #18, !inline_history !854 ; 5 uses
  %i.bni = load ptr, ptr %i.bbw, align 8, !tbaa !223
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 360
  %i.bnk = load i32, ptr %i.bnj, align 8, !tbaa !408 ; 2 uses
  %i.bnl = icmp sgt i32 %i.bnk, 8
  br i1 %i.bnl, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.bnm = select i1 %i.blz, i32 5857, i32 5837
  %i.bnn = zext nneg i32 %.sroa.0139.0.extract.trunc165170.i.i to i64
  %i.bno = call i32 @_ZN4llvm8FastISel16fastEmitInst_rriEjPKNS_15MCRegisterClassENS_8RegisterES4_m(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.bnm, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 640), i32 %i.bnb, i32 %i.bnc, i64 noundef %i.bnn) #18
  %i.bnp = call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8192)) #18 ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bnr = load ptr, ptr %i.bnq, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnr, i64 680
  %i.bnt = load ptr, ptr %i.bns, align 8, !tbaa !456
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnr, i64 688
  %.sroa.050.0.copyload.i.i = load ptr, ptr %i.bnu, align 8
  %i.bnv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 8
  %i.bnz = load ptr, ptr %i.bny, align 8, !tbaa !457
  %i.boa = getelementptr inbounds i8, ptr %i.bnz, i64 -320
  %i.bob = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bnt, ptr %.sroa.050.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bnv, ptr noundef nonnull align 8 dereferenceable(32) %i.boa, i32 %i.bnp) ; 0 uses
  %i.boc = select i1 %i.blz, i32 14002, i32 13923
  %i.bod = call fastcc i32 @_ZN12_GLOBAL__N_111X86FastISel17fastEmitInst_rrrrEjPKN4llvm15MCRegisterClassENS1_8RegisterES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.boc, i32 %i.bna, i32 %i.bno, i32 %i.bnp, i32 %i.bmz)
  %i.boe = call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bnh) #18 ; 2 uses
  %i.bof = load ptr, ptr %i.bnq, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 680
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !456
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bof, i64 688
  %.sroa.040.0.copyload.i.i = load ptr, ptr %i.boi, align 8
  %i.boj = load ptr, ptr %i.bnw, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boj, i64 8
  %i.bol = load ptr, ptr %i.bok, align 8, !tbaa !457
  %i.bom = getelementptr inbounds i8, ptr %i.bol, i64 -640
  %i.bon = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.boh, ptr %.sroa.040.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bnv, ptr noundef nonnull align 8 dereferenceable(32) %i.bom, i32 %i.boe) ; 2 uses
  %i.boo = extractvalue { ptr, ptr } %i.bon, 0
  %i.bop = extractvalue { ptr, ptr } %i.bon, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.boq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.boq, align 8, !tbaa !459, !alias.scope !973
  %i.bor = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.bod, ptr %i.bor, align 4, !tbaa !229, !alias.scope !973
  %i.bos = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bos, i8 0, i64 16, i1 false), !alias.scope !973
  store i32 0, ptr %10, align 8, !alias.scope !973
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bop, ptr noundef nonnull align 8 dereferenceable(1065) %i.boo, ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZN12_GLOBAL__N_111X86FastISel20X86FastEmitSSESelectEN4llvm3MVTEPKNS1_11InstructionE.exit.i

bb.jq:                                            ; preds = %bb.jo
  %i.bot = icmp sgt i32 %i.bnk, 6
  br i1 %i.bot, label %bb.jr, label %.critedge103.i.i

bb.jr:                                            ; preds = %bb.jq
  %i.bou = select i1 %i.blz, i32 5864, i32 5844
  %i.bov = select i1 %i.blz, i32 5607, i32 5603
  %i.bow = zext nneg i32 %.sroa.0139.0.extract.trunc165170.i.i to i64
  %i.box = call i32 @_ZN4llvm8FastISel16fastEmitInst_rriEjPKNS_15MCRegisterClassENS_8RegisterES4_m(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.bou, ptr noundef %i.bnh, i32 %i.bnb, i32 %i.bnc, i64 noundef %i.bow) #18
  %i.boy = call i32 @_ZN4llvm8FastISel16fastEmitInst_rrrEjPKNS_15MCRegisterClassENS_8RegisterES4_S4_(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.bov, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), i32 %i.bna, i32 %i.bmz, i32 %i.box) #18
  %i.boz = call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bnh) #18 ; 2 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bpb = load ptr, ptr %i.bpa, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 680
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !456
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpb, i64 688
  %.sroa.027.0.copyload.i.i = load ptr, ptr %i.bpe, align 8
  %i.bpf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bpg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 8
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !457
  %i.bpk = getelementptr inbounds i8, ptr %i.bpj, i64 -640
  %i.bpl = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bpd, ptr %.sroa.027.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bpf, ptr noundef nonnull align 8 dereferenceable(32) %i.bpk, i32 %i.boz) ; 2 uses
  %i.bpm = extractvalue { ptr, ptr } %i.bpl, 0
  %i.bpn = extractvalue { ptr, ptr } %i.bpl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bpo = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.bpo, align 8, !tbaa !459, !alias.scope !974
  %i.bpp = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.boy, ptr %i.bpp, align 4, !tbaa !229, !alias.scope !974
  %i.bpq = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bpq, i8 0, i64 16, i1 false), !alias.scope !974
  store i32 0, ptr %9, align 8, !alias.scope !974
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bpn, ptr noundef nonnull align 8 dereferenceable(1065) %i.bpm, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZN12_GLOBAL__N_111X86FastISel20X86FastEmitSSESelectEN4llvm3MVTEPKNS1_11InstructionE.exit.i

.critedge103.i.i:                                 ; preds = %bb.jq
  %spec.select181.i.i = select i1 %i.blz, ptr @_ZZN12_GLOBAL__N_111X86FastISel20X86FastEmitSSESelectEN4llvm3MVTEPKNS1_11InstructionEE8OpcTable, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_111X86FastISel20X86FastEmitSSESelectEN4llvm3MVTEPKNS1_11InstructionEE8OpcTable, i64 8) ; 4 uses
  %70 = load i16, ptr %spec.select181.i.i, align 8, !tbaa !463
  %71 = zext i16 %70 to i32
  %i.bpr = zext nneg i32 %.sroa.0139.0.extract.trunc165170.i.i to i64
  %i.bps = call i32 @_ZN4llvm8FastISel16fastEmitInst_rriEjPKNS_15MCRegisterClassENS_8RegisterES4_m(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %71, ptr noundef %i.bnh, i32 %i.bnb, i32 %i.bnc, i64 noundef %i.bpr) #18 ; 2 uses
  %72 = getelementptr inbounds nuw i8, ptr %spec.select181.i.i, i64 2
  %73 = load i16, ptr %72, align 2, !tbaa !463
  %74 = zext i16 %73 to i32
  %i.bpt = call i32 @_ZN4llvm8FastISel15fastEmitInst_rrEjPKNS_15MCRegisterClassENS_8RegisterES4_(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %74, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), i32 %i.bps, i32 %i.bmz) #18
  %75 = getelementptr inbounds nuw i8, ptr %spec.select181.i.i, i64 4
  %76 = load i16, ptr %75, align 4, !tbaa !463
  %77 = zext i16 %76 to i32
  %i.bpu = call i32 @_ZN4llvm8FastISel15fastEmitInst_rrEjPKNS_15MCRegisterClassENS_8RegisterES4_(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %77, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), i32 %i.bps, i32 %i.bna) #18
  %78 = getelementptr inbounds nuw i8, ptr %spec.select181.i.i, i64 6
  %79 = load i16, ptr %78, align 2, !tbaa !463
  %80 = zext i16 %79 to i32
  %i.bpv = call i32 @_ZN4llvm8FastISel15fastEmitInst_rrEjPKNS_15MCRegisterClassENS_8RegisterES4_(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %80, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 8256), i32 %i.bpu, i32 %i.bpt) #18
  %i.bpw = call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bnh) #18 ; 2 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 680
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !456
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpy, i64 688
  %.sroa.04.0.copyload.i.i = load ptr, ptr %i.bqb, align 8
  %i.bqc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bqd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 8
  %i.bqg = load ptr, ptr %i.bqf, align 8, !tbaa !457
  %i.bqh = getelementptr inbounds i8, ptr %i.bqg, i64 -640
  %i.bqi = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bqa, ptr %.sroa.04.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bqc, ptr noundef nonnull align 8 dereferenceable(32) %i.bqh, i32 %i.bpw) ; 2 uses
  %i.bqj = extractvalue { ptr, ptr } %i.bqi, 0
  %i.bqk = extractvalue { ptr, ptr } %i.bqi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bql = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.bql, align 8, !tbaa !459, !alias.scope !975
  %i.bqm = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.bpv, ptr %i.bqm, align 4, !tbaa !229, !alias.scope !975
  %i.bqn = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bqn, i8 0, i64 16, i1 false), !alias.scope !975
  store i32 0, ptr %8, align 8, !alias.scope !975
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bqk, ptr noundef nonnull align 8 dereferenceable(1065) %i.bqj, ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %_ZN12_GLOBAL__N_111X86FastISel20X86FastEmitSSESelectEN4llvm3MVTEPKNS1_11InstructionE.exit.i

_ZN12_GLOBAL__N_111X86FastISel20X86FastEmitSSESelectEN4llvm3MVTEPKNS1_11InstructionE.exit.i: ; preds = %.critedge103.i.i, %bb.jr, %bb.jp
  %.sroa.0117.0.i.i = phi i32 [ %i.boe, %bb.jp ], [ %i.boz, %bb.jr ], [ %i.bpw, %.critedge103.i.i ]
  call void @_ZN4llvm8FastISel14updateValueMapEPKNS_5ValueENS_8RegisterEj(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %1, i32 %.sroa.0117.0.i.i, i32 noundef 1) #18
  br label %_ZN12_GLOBAL__N_111X86FastISel13X86SelectLoadEPKN4llvm11InstructionE.exit

bb.js:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit108.i.i, %bb.jk, %bb.iu, %bb.is, %bb.ir, %bb.iq, %_ZNK4llvm4User10getOperandEj.exit.i40.i
  switch i16 %i.ayy, label %_ZN12_GLOBAL__N_111X86FastISel13X86SelectLoadEPKN4llvm11InstructionE.exit [
    i16 5, label %bb.jy
    i16 6, label %bb.jt
    i16 7, label %bb.ju
    i16 13, label %bb.jv
    i16 14, label %bb.jw
    i16 15, label %bb.jx
  ]

bb.jt:                                            ; preds = %bb.js
  br label %bb.jy

bb.ju:                                            ; preds = %bb.js
  br label %bb.jy

bb.jv:                                            ; preds = %bb.js
  %i.bqo = load ptr, ptr %i.bbw, align 8, !tbaa !223
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqo, i64 360
  %i.bqq = load i32, ptr %i.bqp, align 8, !tbaa !408
  %i.bqr = icmp sgt i32 %i.bqq, 8
  %i.bqs = select i1 %i.bqr, i32 1286, i32 1285
  br label %bb.jy

bb.jw:                                            ; preds = %bb.js
  %i.bqt = load ptr, ptr %i.bbw, align 8, !tbaa !223
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 360
  %i.bqv = load i32, ptr %i.bqu, align 8, !tbaa !408
  %i.bqw = icmp sgt i32 %i.bqv, 8
  %i.bqx = select i1 %i.bqw, i32 1288, i32 1287
  br label %bb.jy

bb.jx:                                            ; preds = %bb.js
  %i.bqy = load ptr, ptr %i.bbw, align 8, !tbaa !223
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 360
  %i.bra = load i32, ptr %i.bqz, align 8, !tbaa !408
  %i.brb = icmp sgt i32 %i.bra, 8
  %i.brc = select i1 %i.brb, i32 1290, i32 1289
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js
  %.040.i.i = phi i32 [ %i.brc, %bb.jx ], [ 1291, %bb.jt ], [ 1292, %bb.ju ], [ %i.bqs, %bb.jv ], [ %i.bqx, %bb.jw ], [ 1293, %bb.js ]
  %i.brd = load i32, ptr %i.azr, align 4          ; 2 uses
  %i.bre = and i32 %i.brd, 1073741824
  %.not.i.i.i47.i = icmp eq i32 %i.bre, 0
  br i1 %.not.i.i.i47.i, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.brf = getelementptr inbounds i8, ptr %1, i64 -8
  %i.brg = load ptr, ptr %i.brf, align 8, !tbaa !269
  br label %_ZNK4llvm4User10getOperandEj.exit.i48.i

bb.ka:                                            ; preds = %bb.jy
  %i.brh = and i32 %i.brd, 268435455
  %i.bri = zext nneg i32 %i.brh to i64
  %i.brj = sub nsw i64 0, %i.bri
  %i.brk = getelementptr inbounds [32 x i8], ptr %1, i64 %i.brj
  br label %_ZNK4llvm4User10getOperandEj.exit.i48.i

_ZNK4llvm4User10getOperandEj.exit.i48.i:          ; preds = %bb.ka, %bb.jz
  %i.brl = phi ptr [ %i.brg, %bb.jz ], [ %i.brk, %bb.ka ]
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !228 ; 7 uses
  %i.brn = load i8, ptr %i.brm, align 8, !tbaa !268
  %i.bro = add i8 %i.brn, -87
  %i.brp = icmp ult i8 %i.bro, -2
  br i1 %i.brp, label %bb.ke, label %bb.kb

bb.kb:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i48.i
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brm, i64 40
  %i.brr = load ptr, ptr %i.brq, align 8, !tbaa !413
  %i.brs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !413
  %i.bru = icmp eq ptr %i.brr, %i.brt
  br i1 %i.bru, label %bb.kc, label %bb.ke

bb.kc:                                            ; preds = %bb.kb
  %i.brv = getelementptr inbounds nuw i8, ptr %i.brm, i64 2
  %i.brw = load i16, ptr %i.brv, align 2, !tbaa !248
  %i.brx = and i16 %i.brw, 63
  %i.bry = zext nneg i16 %i.brx to i32
  %i.brz = call i64 @_ZN4llvm3X8619getX86ConditionCodeENS_7CmpInst9PredicateE(i32 noundef %i.bry) #18 ; 3 uses
  %.sroa.074.0.extract.trunc.i.i = trunc i64 %i.brz to i32
  %i.bsa = icmp sgt i32 %.sroa.074.0.extract.trunc.i.i, 15
  br i1 %i.bsa, label %_ZN12_GLOBAL__N_111X86FastISel13X86SelectLoadEPKN4llvm11InstructionE.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bsb = getelementptr inbounds i8, ptr %i.brm, i64 -64
  %i.bsc = load ptr, ptr %i.bsb, align 8, !tbaa !228 ; 2 uses
  %i.bsd = getelementptr inbounds i8, ptr %i.brm, i64 -32
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !228 ; 2 uses
  %i.bsf = and i64 %i.brz, 4294967296
  %.not.i62.i = icmp eq i64 %i.bsf, 0             ; 2 uses
  %spec.select.i63.i = select i1 %.not.i62.i, ptr %i.bse, ptr %i.bsc
  %spec.select80.i.i = select i1 %.not.i62.i, ptr %i.bsc, ptr %i.bse ; 2 uses
  %i.bsg = load ptr, ptr %i.ayt, align 8, !tbaa !270, !nonnull !206, !align !207
  %i.bsh = load ptr, ptr %i.ayv, align 8, !tbaa !238, !nonnull !206, !align !207
  %i.bsi = getelementptr inbounds nuw i8, ptr %spec.select80.i.i, i64 8
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !242
  %i.bsk = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.bsg, ptr noundef nonnull align 8 dereferenceable(912) %i.bsh, ptr noundef %i.bsj, i1 noundef zeroext false)
  %i.bsl = extractvalue { i16, ptr } %i.bsk, 0
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.brm, i64 48
  %i.bsn = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111X86FastISel18X86FastEmitCompareEPKN4llvm5ValueES4_NS1_3EVTERKNS1_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %spec.select80.i.i, ptr noundef %spec.select.i63.i, i16 %i.bsl, ptr noundef nonnull align 8 dereferenceable(8) %i.bsm)
  br i1 %i.bsn, label %bb.kn, label %_ZN12_GLOBAL__N_111X86FastISel13X86SelectLoadEPKN4llvm11InstructionE.exit

bb.ke:                                            ; preds = %bb.kb, %_ZNK4llvm4User10getOperandEj.exit.i48.i
  %i.bso = call i32 @_ZN4llvm8FastISel14getRegForValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.brm) #18 ; 4 uses
  %.not44.not.i.i = icmp eq i32 %i.bso, 0
  br i1 %.not44.not.i.i, label %_ZN12_GLOBAL__N_111X86FastISel13X86SelectLoadEPKN4llvm11InstructionE.exit, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bsp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !903, !nonnull !206, !align !207
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 48
  %i.bss = and i32 %i.bso, 2147483647
  %i.bst = zext nneg i32 %i.bss to i64
  %i.bsu = load ptr, ptr %i.bsr, align 8, !tbaa !243
  %i.bsv = getelementptr inbounds nuw [16 x i8], ptr %i.bsu, i64 %i.bst
  %.0.copyload.i.i.i.i.i.i.i49.i = load i64, ptr %i.bsv, align 8
  %i.bsw = and i64 %.0.copyload.i.i.i.i.i.i.i49.i, -5
  %i.bsx = icmp eq i64 %i.bsw, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 640) to i64)
  br i1 %i.bsx, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  %i.bsy = call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 2240)) #18 ; 2 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bta, i64 680
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !456
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bta, i64 688
  %.sroa.014.0.copyload.i.i = load ptr, ptr %i.btd, align 8
  %i.bte = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.btf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btg, i64 8
  %i.bti = load ptr, ptr %i.bth, align 8, !tbaa !457
  %i.btj = getelementptr inbounds i8, ptr %i.bti, i64 -640
  %i.btk = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.btc, ptr %.sroa.014.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bte, ptr noundef nonnull align 8 dereferenceable(32) %i.btj, i32 %i.bsy) ; 2 uses
  %i.btl = extractvalue { ptr, ptr } %i.btk, 0
  %i.btm = extractvalue { ptr, ptr } %i.btk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.btn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.btn, align 8, !tbaa !459, !alias.scope !976
  %i.bto = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.bso, ptr %i.bto, align 4, !tbaa !229, !alias.scope !976
  %i.btp = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.btp, i8 0, i64 16, i1 false), !alias.scope !976
  store i32 0, ptr %7, align 8, !alias.scope !976
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.btm, ptr noundef nonnull align 8 dereferenceable(1065) %i.btl, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.btq = call i32 @_ZN4llvm8FastISel26fastEmitInst_extractsubregENS_3MVTENS_8RegisterEj(ptr noundef nonnull align 8 dereferenceable(200) %0, i16 5, i32 %i.bsy, i32 noundef 1) #18
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %.sroa.062.0.i.i = phi i32 [ %i.btq, %bb.kg ], [ %i.bso, %bb.kf ]
  %i.btr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bts, i64 680
  %i.btu = load ptr, ptr %i.btt, align 8, !tbaa !456 ; 2 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bts, i64 688
  %.sroa.09.0.copyload.i.i = load ptr, ptr %i.btv, align 8 ; 4 uses
  %i.btw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.btx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bty, i64 8
  %i.bua = load ptr, ptr %i.btz, align 8, !tbaa !457
  %i.bub = getelementptr inbounds i8, ptr %i.bua, i64 -160640
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btu, i64 32
end_hunk_1
