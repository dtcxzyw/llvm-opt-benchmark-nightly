Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64CallLowering?download=true
inline.NumInlined: 2125
inline.NumDeleted: 1059
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

$_ZN4llvm19CGPassBuilderOptionD2Ev = comdat any

$_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE = comdat any

$_ZN4llvm12CallLowering13ValueAssignerD2Ev = comdat any

$_ZN4llvm16MachineIRBuilder10buildInstrEj = comdat any

$_ZNK4llvm5DstOp11addDefToMIBERNS_19MachineRegisterInfoERNS_19MachineInstrBuilderE = comdat any

$_ZN4llvm12CallLowering12ValueHandlerD2Ev = comdat any

$_ZN4llvm12CallLoweringD2Ev = comdat any

$_ZN4llvm19AArch64CallLoweringD0Ev = comdat any

$_ZNK4llvm19AArch64CallLowering17supportSwiftErrorEv = comdat any

$_ZNK4llvm12CallLowering11lowerReturnERNS_16MachineIRBuilderEPKNS_5ValueENS_8ArrayRefINS_8RegisterEEERNS_20FunctionLoweringInfoE = comdat any

$_ZNK4llvm12CallLowering15enableBigEndianEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12CallLowering12ValueHandler17assignCustomValueERNS0_7ArgInfoENS_8ArrayRefINS_11CCValAssignEEEPSt8functionIFvvEE = comdat any

$_ZN4llvm12CallLowering12ValueHandler20assignValueToAddressERKNS0_7ArgInfoEjNS_8RegisterENS_3LLTERKNS_18MachinePointerInfoERKNS_11CCValAssignE = comdat any

$_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_17ForwardedRegisterELb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterES2_ELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE6insertIPS2_vEES5_S5_T_S6_ = comdat any

$_ZN4llvm15SmallVectorImplINS_12CallLowering7ArgInfoEE6appendISt13move_iteratorIPS2_EvEEvT_S8_ = comdat any

$_ZN4llvm12CallLowering7ArgInfoaSERKS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE19moveElementsForGrowEPS2_ = comdat any

$_ZN4llvm15SmallVectorImplINS_3ISD10ArgFlagsTyEEaSEOS3_ = comdat any

$_ZN4llvm15SmallVectorImplINS_8RegisterEEaSEOS2_ = comdat any

$_ZN4llvm12CallLowering7ArgInfoC2ERKS1_ = comdat any

$_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm19AArch64CallLoweringE = unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12CallLowering6anchorEv, ptr @_ZN4llvm12CallLoweringD2Ev, ptr @_ZN4llvm19AArch64CallLoweringD0Ev, ptr @_ZNK4llvm19AArch64CallLowering17supportSwiftErrorEv, ptr @_ZNK4llvm19AArch64CallLowering14canLowerReturnERNS_15MachineFunctionEjRNS_15SmallVectorImplINS_12CallLowering11BaseArgInfoEEEb, ptr @_ZNK4llvm19AArch64CallLowering11lowerReturnERNS_16MachineIRBuilderEPKNS_5ValueENS_8ArrayRefINS_8RegisterEEERNS_20FunctionLoweringInfoES7_, ptr @_ZNK4llvm12CallLowering11lowerReturnERNS_16MachineIRBuilderEPKNS_5ValueENS_8ArrayRefINS_8RegisterEEERNS_20FunctionLoweringInfoE, ptr @_ZNK4llvm19AArch64CallLowering17fallBackToDAGISelERKNS_15MachineFunctionE, ptr @_ZNK4llvm19AArch64CallLowering20lowerFormalArgumentsERNS_16MachineIRBuilderERKNS_8FunctionENS_8ArrayRefINS6_INS_8RegisterEEEEERNS_20FunctionLoweringInfoE, ptr @_ZNK4llvm19AArch64CallLowering9lowerCallERNS_16MachineIRBuilderERNS_12CallLowering16CallLoweringInfoE, ptr @_ZNK4llvm12CallLowering15enableBigEndianEv, ptr @_ZNK4llvm19AArch64CallLowering26isTypeIsValidForThisReturnENS_3EVTE] }, align 8
@EnableSVEGISel = external local_unnamed_addr global %"class.llvm::cl::opt", align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN4llvm3LLT11ExtendedLLTE = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [134 x i8] c"Possible incorrect use of LLT::getNumElements() for scalable vector. Scalable flag may be dropped, use LLT::getElementCount() instead\00", align 1
@_ZTVN12_GLOBAL__N_128AArch64OutgoingValueAssignerE = internal unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12CallLowering13ValueAssignerD2Ev, ptr @_ZN12_GLOBAL__N_128AArch64OutgoingValueAssignerD0Ev, ptr @_ZN12_GLOBAL__N_128AArch64OutgoingValueAssigner9assignArgEjN4llvm3EVTENS1_3MVTES3_NS1_11CCValAssign7LocInfoERKNS1_12CallLowering7ArgInfoENS1_3ISD10ArgFlagsTyERNS1_7CCStateE, ptr @_ZN4llvm12CallLowering13ValueAssigner6anchorEv] }, align 8
@_ZTVN12_GLOBAL__N_118OutgoingArgHandlerE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12CallLowering12ValueHandlerD2Ev, ptr @_ZN12_GLOBAL__N_118OutgoingArgHandlerD0Ev, ptr @_ZN12_GLOBAL__N_118OutgoingArgHandler15getStackAddressEmlRN4llvm18MachinePointerInfoENS1_3ISD10ArgFlagsTyE, ptr @_ZNK12_GLOBAL__N_118OutgoingArgHandler22getStackValueStoreTypeERKN4llvm10DataLayoutERKNS1_11CCValAssignENS1_3ISD10ArgFlagsTyE, ptr @_ZN12_GLOBAL__N_118OutgoingArgHandler16assignValueToRegEN4llvm8RegisterES2_RKNS1_11CCValAssignENS1_3ISD10ArgFlagsTyE, ptr @_ZN12_GLOBAL__N_118OutgoingArgHandler20assignValueToAddressEN4llvm8RegisterES2_NS1_3LLTERKNS1_18MachinePointerInfoERKNS1_11CCValAssignE, ptr @_ZN12_GLOBAL__N_118OutgoingArgHandler20assignValueToAddressERKN4llvm12CallLowering7ArgInfoEjNS1_8RegisterENS1_3LLTERKNS1_18MachinePointerInfoERKNS1_11CCValAssignE, ptr @_ZN4llvm12CallLowering12ValueHandler17assignCustomValueERNS0_7ArgInfoENS_8ArrayRefINS_11CCValAssignEEEPSt8functionIFvvEE] }, align 8
@_ZTVN12_GLOBAL__N_128AArch64IncomingValueAssignerE = internal unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12CallLowering13ValueAssignerD2Ev, ptr @_ZN12_GLOBAL__N_128AArch64IncomingValueAssignerD0Ev, ptr @_ZN12_GLOBAL__N_128AArch64IncomingValueAssigner9assignArgEjN4llvm3EVTENS1_3MVTES3_NS1_11CCValAssign7LocInfoERKNS1_12CallLowering7ArgInfoENS1_3ISD10ArgFlagsTyERNS1_7CCStateE, ptr @_ZN4llvm12CallLowering13ValueAssigner6anchorEv] }, align 8
@_ZTVN12_GLOBAL__N_116FormalArgHandlerE = internal unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12CallLowering12ValueHandlerD2Ev, ptr @_ZN12_GLOBAL__N_116FormalArgHandlerD0Ev, ptr @_ZN12_GLOBAL__N_118IncomingArgHandler15getStackAddressEmlRN4llvm18MachinePointerInfoENS1_3ISD10ArgFlagsTyE, ptr @_ZNK12_GLOBAL__N_118IncomingArgHandler22getStackValueStoreTypeERKN4llvm10DataLayoutERKNS1_11CCValAssignENS1_3ISD10ArgFlagsTyE, ptr @_ZN12_GLOBAL__N_118IncomingArgHandler16assignValueToRegEN4llvm8RegisterES2_RKNS1_11CCValAssignENS1_3ISD10ArgFlagsTyE, ptr @_ZN12_GLOBAL__N_118IncomingArgHandler20assignValueToAddressEN4llvm8RegisterES2_NS1_3LLTERKNS1_18MachinePointerInfoERKNS1_11CCValAssignE, ptr @_ZN4llvm12CallLowering12ValueHandler20assignValueToAddressERKNS0_7ArgInfoEjNS_8RegisterENS_3LLTERKNS_18MachinePointerInfoERKNS_11CCValAssignE, ptr @_ZN4llvm12CallLowering12ValueHandler17assignCustomValueERNS0_7ArgInfoENS_8ArrayRefINS_11CCValAssignEEEPSt8functionIFvvEE, ptr @_ZN12_GLOBAL__N_116FormalArgHandler11markRegUsedEN4llvm8RegisterE] }, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN4llvm29AArch64MCRegisterClassStorageE = external global %"struct.llvm::MCRegisterClassStorage", align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"objc_claimAutoreleasedReturnValue\00", align 1
@_ZTVN12_GLOBAL__N_117CallReturnHandlerE = internal unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12CallLowering12ValueHandlerD2Ev, ptr @_ZN12_GLOBAL__N_117CallReturnHandlerD0Ev, ptr @_ZN12_GLOBAL__N_118IncomingArgHandler15getStackAddressEmlRN4llvm18MachinePointerInfoENS1_3ISD10ArgFlagsTyE, ptr @_ZNK12_GLOBAL__N_118IncomingArgHandler22getStackValueStoreTypeERKN4llvm10DataLayoutERKNS1_11CCValAssignENS1_3ISD10ArgFlagsTyE, ptr @_ZN12_GLOBAL__N_118IncomingArgHandler16assignValueToRegEN4llvm8RegisterES2_RKNS1_11CCValAssignENS1_3ISD10ArgFlagsTyE, ptr @_ZN12_GLOBAL__N_118IncomingArgHandler20assignValueToAddressEN4llvm8RegisterES2_NS1_3LLTERKNS1_18MachinePointerInfoERKNS1_11CCValAssignE, ptr @_ZN4llvm12CallLowering12ValueHandler20assignValueToAddressERKNS0_7ArgInfoEjNS_8RegisterENS_3LLTERKNS_18MachinePointerInfoERKNS_11CCValAssignE, ptr @_ZN4llvm12CallLowering12ValueHandler17assignCustomValueERNS0_7ArgInfoENS_8ArrayRefINS_11CCValAssignEEEPSt8functionIFvvEE, ptr @_ZN12_GLOBAL__N_117CallReturnHandler11markRegUsedEN4llvm8RegisterE] }, align 8
@_ZTVN12_GLOBAL__N_128ReturnedArgCallReturnHandlerE = internal unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12CallLowering12ValueHandlerD2Ev, ptr @_ZN12_GLOBAL__N_128ReturnedArgCallReturnHandlerD0Ev, ptr @_ZN12_GLOBAL__N_118IncomingArgHandler15getStackAddressEmlRN4llvm18MachinePointerInfoENS1_3ISD10ArgFlagsTyE, ptr @_ZNK12_GLOBAL__N_118IncomingArgHandler22getStackValueStoreTypeERKN4llvm10DataLayoutERKNS1_11CCValAssignENS1_3ISD10ArgFlagsTyE, ptr @_ZN12_GLOBAL__N_118IncomingArgHandler16assignValueToRegEN4llvm8RegisterES2_RKNS1_11CCValAssignENS1_3ISD10ArgFlagsTyE, ptr @_ZN12_GLOBAL__N_118IncomingArgHandler20assignValueToAddressEN4llvm8RegisterES2_NS1_3LLTERKNS1_18MachinePointerInfoERKNS1_11CCValAssignE, ptr @_ZN4llvm12CallLowering12ValueHandler20assignValueToAddressERKNS0_7ArgInfoEjNS_8RegisterENS_3LLTERKNS_18MachinePointerInfoERKNS_11CCValAssignE, ptr @_ZN4llvm12CallLowering12ValueHandler17assignCustomValueERNS0_7ArgInfoENS_8ArrayRefINS_11CCValAssignEEEPSt8functionIFvvEE, ptr @_ZN12_GLOBAL__N_128ReturnedArgCallReturnHandler11markRegUsedEN4llvm8RegisterE] }, align 8
@_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable = linkonce_odr local_unnamed_addr constant <{ [263 x { i64, i8 }], [9 x { i64, i8 }] }> <{ [263 x { i64, i8 }] [{ i64, i8 } zeroinitializer, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 1, i8 0 }, { i64, i8 } { i64 2, i8 0 }, { i64, i8 } { i64 3, i8 0 }, { i64, i8 } { i64 4, i8 0 }, { i64, i8 } { i64 5, i8 0 }, { i64, i8 } { i64 6, i8 0 }, { i64, i8 } { i64 7, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 24, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 40, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 56, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 768, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 1536, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 131072, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 80, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 112, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 16, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 48, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 32, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 96, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 224, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 288, i8 0 }, { i64, i8 } { i64 320, i8 0 }, { i64, i8 } { i64 352, i8 0 }, { i64, i8 } { i64 384, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 32768, i8 0 }, { i64, i8 } { i64 65536, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 256, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 1024, i8 0 }, { i64, i8 } { i64 2048, i8 0 }, { i64, i8 } { i64 4096, i8 0 }, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 16384, i8 0 }, { i64, i8 } { i64 1, i8 1 }, { i64, i8 } { i64 2, i8 1 }, { i64, i8 } { i64 4, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 8, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 1024, i8 1 }, { i64, i8 } { i64 2048, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } { i64 24, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 40, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 56, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 32, i8 1 }, { i64, i8 } { i64 48, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 80, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 112, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 64, i8 1 }, { i64, i8 } { i64 96, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 160, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 224, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 128, i8 1 }, { i64, i8 } { i64 192, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 320, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 448, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 256, i8 1 }, { i64, i8 } { i64 384, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 512, i8 1 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } zeroinitializer, { i64, i8 } { i64 8192, i8 0 }, { i64, i8 } { i64 512, i8 0 }, { i64, i8 } { i64 16, i8 1 }, { i64, i8 } zeroinitializer, { i64, i8 } { i64 160, i8 0 }, { i64, i8 } { i64 192, i8 0 }, { i64, i8 } { i64 8, i8 0 }, { i64, i8 } { i64 64, i8 0 }, { i64, i8 } { i64 128, i8 0 }], [9 x { i64, i8 }] zeroinitializer }>, comdat, align 16
@.str.6 = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1

@_ZN4llvm19AArch64CallLoweringC1ERKNS_21AArch64TargetLoweringE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm19AArch64CallLoweringC2ERKNS_21AArch64TargetLoweringE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm19AArch64CallLoweringC2ERKNS_21AArch64TargetLoweringE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(518448) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !15
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvm19AArch64CallLoweringE, i64 16), ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19AArch64CallLowering11lowerReturnERNS_16MachineIRBuilderEPKNS_5ValueENS_8ArrayRefINS_8RegisterEEERNS_20FunctionLoweringInfoES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef readonly captures(none) %2, ptr %3, i64 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(976) %5, i32 %6) unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::SmallVector.296", align 8 ; 14 uses
  %9 = alloca %"class.llvm::TypeSize", align 8    ; 3 uses
  %10 = alloca %"class.llvm::SmallVector.301", align 8 ; 12 uses
  %11 = alloca %"class.llvm::Register", align 4   ; 16 uses
  %12 = alloca %"struct.llvm::CallLowering::ArgInfo", align 8 ; 15 uses
  %13 = alloca %"class.llvm::ArrayRef.313", align 8 ; 2 uses
  %14 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %15 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %16 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %17 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %18 = alloca %"class.llvm::LLT", align 8        ; 6 uses
  %19 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %20 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %21 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %22 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %23 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %24 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %25 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %26 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %27 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %28 = alloca %"struct.(anonymous namespace)::AArch64OutgoingValueAssigner", align 8 ; 10 uses
  %29 = alloca %"struct.(anonymous namespace)::OutgoingArgHandler", align 8 ; 13 uses
  %30 = alloca %"class.llvm::ArrayRef", align 8   ; 2 uses
  %31 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %32 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %i.a = tail call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef 1175) #18 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = load i8, ptr %i.d, align 8, !tbaa !96, !range !97, !noundef !98
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 52
  %.sroa.0106.0.copyload = load i32, ptr %i.i, align 4, !tbaa !104
  tail call void @_ZNK4llvm12CallLowering16insertSRetStoresERNS_16MachineIRBuilderEPNS_4TypeENS_8ArrayRefINS_8RegisterEEES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %i.h, ptr %3, i64 %4, i32 %.sroa.0106.0.copyload) #18
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %4, 0
  br i1 %i.j, label %bb.ar, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114  ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !226, !nonnull !98, !align !227 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !228, !nonnull !98, !align !227
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !229  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !230
  %i.v = lshr i16 %i.u, 4
  %i.w = and i16 %i.v, 1023
  %i.x = zext nneg i16 %i.w to i32
  %i.y = tail call noundef ptr @_ZNK4llvm21AArch64TargetLowering19CCAssignFnForReturnEj(ptr noundef nonnull align 8 dereferenceable(518448) %i.s, i32 noundef %i.x) #18 ; 3 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140) %i.m) #18 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !603, !nonnull !98, !align !227 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ad, ptr %8, align 8, !tbaa !235
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !236
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.af, align 4, !tbaa !237
  store i64 0, ptr %9, align 8
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %.sroa.275.0..sroa_idx, align 8
  call void @_ZN4llvm15ComputeValueVTsERKNS_14TargetLoweringERKNS_10DataLayoutEPNS_4TypeERNS_15SmallVectorImplINS_3EVTEEEPSA_PNS8_INS_8TypeSizeEEESD_(ptr noundef nonnull align 8 dereferenceable(518435) %i.s, ptr noundef nonnull align 8 dereferenceable(912) %i.z, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef null, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::TypeSize") align 8 %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.ag, ptr %10, align 8, !tbaa !235
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !236
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 8, ptr %i.ai, align 4, !tbaa !237
  %i.aj = load i16, ptr %i.t, align 2, !tbaa !230
  %i.ak = lshr i16 %i.aj, 4
  %i.al = and i16 %i.ak, 1023
  %i.am = zext nneg i16 %i.al to i32              ; 4 uses
  %i.an = load i32, ptr %i.ae, align 8, !tbaa !236
  %.not139.not234.not = icmp eq i32 %i.an, 0
  br i1 %.not139.not234.not, label %.critedge148, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 472 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 464 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit167
  %i.bi = phi i64 [ 0, %.lr.ph ], [ %34, %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit167 ] ; 5 uses
  %.0131235 = phi i32 [ 0, %.lr.ph ], [ %33, %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit167 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !104
  store i32 %i.bk, ptr %11, align 4, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.bl = load ptr, ptr %8, align 8, !tbaa !235
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bi
  %i.bn = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12CallLowering7ArgInfoC2ENS_8ArrayRefINS_8RegisterEEEPNS_4TypeEjNS2_INS_3ISD10ArgFlagsTyEEEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(156) %12, ptr nonnull %11, i64 1, ptr noundef %i.bn, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.313") align 8 %13, ptr noundef null)
  call void @_ZNK4llvm12CallLowering11setArgFlagsINS_8FunctionEEEvRNS0_7ArgInfoEjRKNS_10DataLayoutERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(156) %12, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(912) %i.z, ptr noundef nonnull align 8 dereferenceable(140) %i.m) #18
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !235
  %.sroa.054.0.copyload = load i32, ptr %11, align 4, !tbaa !104 ; 3 uses
  %i.bp = icmp slt i32 %.sroa.054.0.copyload, 0
  br i1 %i.bp, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bq = and i32 %.sroa.054.0.copyload, 2147483647 ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !236
  %i.bs = icmp ugt i32 %i.br, %i.bq
  br i1 %i.bs, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %.critedge

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.f
  %i.bt = zext nneg i32 %i.bq to i64
  %i.bu = load ptr, ptr %i.aq, align 8, !tbaa !235
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !238
  %.fr = freeze i64 %i.bw                         ; 10 uses
  %.mask.i.i = and i64 %.fr, -1152921504606846976
  %i.bx = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.bx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.by = lshr i64 %.fr, 60
  %.off.i.i = add nsw i64 %i.by, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.bz = icmp slt i64 %.fr, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.bz, %i.bx
  %i.ca = lshr i64 %.fr, 44
  %i.cb = and i64 %i.ca, 65535
  %i.cc = lshr i64 %.fr, 28
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = select i1 %spec.select.i.i.i, i64 %i.cb, i64 %i.cd
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

bb.i:                                             ; preds = %bb.g
  %i.cf = lshr i64 %.fr, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.cf, 65535
  %i.cg = icmp slt i64 %.fr, -8070450532247928832
  %i.ch = lshr i64 %.fr, 44
  %i.ci = and i64 %i.ch, 65535
  %i.cj = lshr i64 %.fr, 28
  %spec.select227 = select i1 %i.cg, i64 %i.ci, i64 %i.cj
  %i.ck = mul nuw nsw i64 %spec.select227, %.sroa.0.0.insert.ext.i.i.i
  %i.cl = and i64 %i.ck, 4294967295
  %i.cm = and i64 %.fr, 1
  %i.cn = icmp eq i64 %i.cm, 0
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.i, %bb.h
  %.sroa.05.0.i = phi i64 [ %i.ce, %bb.h ], [ %i.cl, %bb.i ]
  %.sroa.3.0.i = phi i1 [ true, %bb.h ], [ %i.cn, %bb.i ]
  %i.co = icmp eq i64 %.sroa.05.0.i, 1
  %i.cp = and i1 %i.co, %.sroa.3.0.i
  br i1 %i.cp, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %i.cq = load i64, ptr %i.bo, align 4
  %i.cr = and i64 %i.cq, 3
  %or.cond.not = icmp eq i64 %i.cr, 0
  br i1 %or.cond.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.cs = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !239, !range !97, !noundef !98
  %i.ct = trunc nuw i8 %i.cs to i1
  %.sroa.0.0.i = select i1 %i.ct, i64 2305843011361177600, i64 1152921506754330624
  store i64 %.sroa.0.0.i, ptr %14, align 8, !tbaa !238
  store i32 0, ptr %i.bb, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store i32 %.sroa.054.0.copyload, ptr %15, align 8, !tbaa !104
  store i32 0, ptr %i.bc, align 8, !tbaa !245
  %i.cu = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildZExtERKNS_5DstOpERKNS_5SrcOpESt8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 8 dereferenceable(20) %15, i64 0) #18
  %i.cv = extractvalue { ptr, ptr } %i.cu, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !259
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !238
  store i32 %i.cz, ptr %11, align 4, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.ag

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.j, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %i.da = load ptr, ptr %8, align 8, !tbaa !235
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.bi ; 2 uses
  %.sroa.042.0.copyload = load i16, ptr %i.db, align 8, !tbaa !261
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.244.0.copyload = load ptr, ptr %.sroa.244.0..sroa_idx, align 8, !tbaa !262
  %i.dc = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 744
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i32 %i.de(ptr noundef nonnull align 8 dereferenceable(518448) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.am, i16 %.sroa.042.0.copyload, ptr %.sroa.244.0.copyload) #18
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.l, label %bb.ag

bb.l:                                             ; preds = %.critedge
  %i.dh = load ptr, ptr %8, align 8, !tbaa !235
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.bi ; 2 uses
  %.sroa.039.0.copyload = load i16, ptr %i.di, align 8, !tbaa !261
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.241.0.copyload = load ptr, ptr %.sroa.241.0..sroa_idx, align 8, !tbaa !262
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 736
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call i16 %i.dl(ptr noundef nonnull align 8 dereferenceable(518448) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.am, i16 %.sroa.039.0.copyload, ptr %.sroa.241.0.copyload) #18 ; 4 uses
  %i.dn = load ptr, ptr %8, align 8, !tbaa !235
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.bi ; 2 uses
  %.sroa.035.0.copyload = load i16, ptr %i.do, align 8, !tbaa !261
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.237.0.copyload = load ptr, ptr %.sroa.237.0..sroa_idx, align 8, !tbaa !262
  %.not.i = icmp ne i16 %i.dm, %.sroa.035.0.copyload
  %i.dp = icmp ne ptr %.sroa.237.0.copyload, null
  %i.dq = select i1 %.not.i, i1 true, i1 %i.dp
  br i1 %i.dq, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ar, align 8, !tbaa !604
  store ptr %.sroa.0.0.copyload.i, ptr %16, align 8
  %i.dr = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0, i32 noundef 58) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %i.dr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %.sroa.0.0.copyload.i151 = load ptr, ptr %i.ar, align 8, !tbaa !604
  store ptr %.sroa.0.0.copyload.i151, ptr %17, align 8
  %i.ds = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 0, i32 noundef 84) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %spec.select = select i1 %i.ds, i32 154, i32 143
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0137 = phi i32 [ %spec.select, %bb.n ], [ 152, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @_ZN4llvm3LLTC1ENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(8) %18, i16 %i.dm) #18
  %i.dt = load ptr, ptr %12, align 8, !tbaa !270
  %i.du = call i64 @_ZN4llvm13getLLTForTypeERNS_4TypeERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(912) %i.z) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store i16 %i.dm, ptr %19, align 8, !tbaa !261
  store ptr null, ptr %i.as, align 8, !tbaa !606
  %i.dv = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #18
  store ptr %i.dv, ptr %12, align 8, !tbaa !270
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.dw = add i16 %i.dm, -19
  %spec.select.i = icmp ult i16 %i.dw, 197
  br i1 %spec.select.i, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.dx = lshr i64 %i.du, 60
  %i.dy = add nsw i64 %i.dx, -5
  %switch.selectcmp.i = icmp ult i64 %i.dy, 4
  %i.dz = load i64, ptr %18, align 8              ; 6 uses
  %i.ea = trunc i64 %i.dz to i1                   ; 2 uses
  br i1 %switch.selectcmp.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %i.ea, label %bb.r, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %bb.q
  %i.eb = trunc i64 %i.du to i1
  br i1 %i.eb, label %bb.s, label %_ZNK4llvm3LLT14getNumElementsEv.exit152

bb.s:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit152:          ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit
  %i.ec = lshr i64 %i.dz, 4
  %i.ed = trunc i64 %i.ec to i16
  %i.ee = lshr i64 %i.du, 4
  %i.ef = trunc i64 %i.ee to i16
  %i.eg = icmp ugt i16 %i.ed, %i.ef
  br i1 %i.eg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  store i64 %i.dz, ptr %20, align 8, !tbaa !238
  store i32 0, ptr %i.az, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %.sroa.029.0.copyload = load i32, ptr %11, align 4, !tbaa !104
  store i32 %.sroa.029.0.copyload, ptr %21, align 8, !tbaa !104
end_hunk_0
begin_hunk_1_@_ZNK4llvm19AArch64CallLowering11lowerReturnERNS_16MachineIRBuilderEPKNS_5ValueENS_8ArrayRefINS_8RegisterEEERNS_20FunctionLoweringInfoES7_:bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !238
  store i32 %i.em, ptr %11, align 4, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.ac

bb.u:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  store i64 %i.dz, ptr %22, align 8, !tbaa !238
  store i32 0, ptr %i.ax, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %.sroa.022.0.copyload = load i32, ptr %11, align 4, !tbaa !104
  store i32 %.sroa.022.0.copyload, ptr %23, align 8, !tbaa !104
  store i32 0, ptr %i.ay, align 8, !tbaa !245
  %i.en = load ptr, ptr %1, align 8, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call { ptr, ptr } %i.ep(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %.0137, ptr nonnull %22, i64 1, ptr nonnull %23, i64 1, i64 0) #18
  %i.er = extractvalue { ptr, ptr } %i.eq, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !259
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !238
  store i32 %i.ev, ptr %11, align 4, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.ac

bb.v:                                             ; preds = %bb.p
  br i1 %i.ea, label %bb.w, label %_ZNK4llvm3LLT14getNumElementsEv.exit155

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.1) #19
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit155:          ; preds = %bb.v
  %i.ew = lshr i64 %i.dz, 4
  %i.ex = trunc i64 %i.ew to i16
  %i.ey = add i16 %i.ex, -2
  %or.cond228 = icmp ult i16 %i.ey, 7
  br i1 %or.cond228, label %bb.x, label %.critedge142

bb.x:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit155
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  store i64 %i.dz, ptr %24, align 8, !tbaa !238
  store i32 0, ptr %i.av, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  %.sroa.019.0.copyload = load i32, ptr %11, align 4, !tbaa !104
  store i32 %.sroa.019.0.copyload, ptr %25, align 8, !tbaa !104
  store i32 0, ptr %i.aw, align 8, !tbaa !245
  %i.ez = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder31buildPadVectorWithUndefElementsERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(20) %24, ptr noundef nonnull align 8 dereferenceable(20) %25) #18
  %i.fa = extractvalue { ptr, ptr } %i.ez, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !259
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !238
  store i32 %i.fe, ptr %11, align 4, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.ac

bb.y:                                             ; preds = %bb.o
  %i.ff = load i64, ptr %18, align 8              ; 5 uses
  %.mask.i.i.i = and i64 %i.ff, -1152921504606846976
  %i.fg = icmp eq i64 %.mask.i.i.i, 4611686018427387904
  %i.fh = icmp slt i64 %i.ff, -8070450532247928832
  %spec.select.i.i = or i1 %i.fh, %i.fg
  %i.fi = lshr i64 %i.ff, 44
  %i.fj = and i64 %i.fi, 65535
  %i.fk = lshr i64 %i.ff, 28
  %.0.in.i = select i1 %spec.select.i.i, i64 %i.fj, i64 %i.fk
  %.0.i = trunc i64 %.0.in.i to i32
  %.sroa.018.0.copyload = load i32, ptr %11, align 4, !tbaa !104 ; 3 uses
  %i.fl = icmp slt i32 %.sroa.018.0.copyload, 0
  br i1 %i.fl, label %bb.z, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit158

bb.z:                                             ; preds = %bb.y
  %i.fm = and i32 %.sroa.018.0.copyload, 2147483647 ; 2 uses
  %i.fn = load i32, ptr %i.ap, align 8, !tbaa !236
  %i.fo = icmp ugt i32 %i.fn, %i.fm
  br i1 %i.fo, label %bb.aa, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit158

bb.aa:                                            ; preds = %bb.z
  %i.fp = zext nneg i32 %i.fm to i64
  %i.fq = load ptr, ptr %i.aq, align 8, !tbaa !235
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !238
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit158

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit158: ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.04.0.i157 = phi i64 [ %i.fs, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ] ; 4 uses
  %.mask.i.i.i159 = and i64 %.sroa.04.0.i157, -1152921504606846976
  %i.ft = icmp eq i64 %.mask.i.i.i159, 4611686018427387904
  %i.fu = icmp slt i64 %.sroa.04.0.i157, -8070450532247928832
  %spec.select.i.i160 = or i1 %i.fu, %i.ft
  %i.fv = lshr i64 %.sroa.04.0.i157, 44
  %i.fw = and i64 %i.fv, 65535
  %i.fx = lshr i64 %.sroa.04.0.i157, 28
  %.0.in.i161 = select i1 %spec.select.i.i160, i64 %i.fw, i64 %i.fx
  %.0.i162 = trunc i64 %.0.in.i161 to i32
  %.not = icmp eq i32 %.0.i, %.0.i162
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  store i64 %i.ff, ptr %26, align 8, !tbaa !238
  store i32 0, ptr %i.at, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  store i32 %.sroa.018.0.copyload, ptr %27, align 8, !tbaa !104
  store i32 0, ptr %i.au, align 8, !tbaa !245
  %i.fy = load ptr, ptr %1, align 8, !tbaa !17
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call { ptr, ptr } %i.ga(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %.0137, ptr nonnull %26, i64 1, ptr nonnull %27, i64 1, i64 0) #18
  %i.gc = extractvalue { ptr, ptr } %i.gb, 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !259
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !238
  store i32 %i.gg, ptr %11, align 4, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %bb.ac

bb.ac:                                            ; preds = %bb.t, %bb.u, %bb.x, %bb.ab, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit158
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.ag

.critedge142:                                     ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.gh = load ptr, ptr %i.be, align 8, !tbaa !235 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.bf
  br i1 %i.gi, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge142
  call void @free(ptr noundef %i.gh) #18
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i: ; preds = %bb.ad, %.critedge142
  %i.gj = load ptr, ptr %i.bd, align 8, !tbaa !235 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.bg
  br i1 %i.gk, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i
  call void @free(ptr noundef %i.gj) #18
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i: ; preds = %bb.ae, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i
  %i.gl = load ptr, ptr %i.ao, align 8, !tbaa !235 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.bh
  br i1 %i.gm, label %.critedge150, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.gl) #18
  br label %.critedge150

bb.ag:                                            ; preds = %bb.ac, %bb.l, %.critedge, %bb.k
  %i.gn = load ptr, ptr %i.bd, align 8, !tbaa !235 ; 2 uses
  %i.go = load i32, ptr %11, align 4, !tbaa !272  ; 2 uses
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !272
  %.not230 = icmp eq i32 %i.go, %i.gp
  br i1 %.not230, label %.critedge146, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !104
  call void @_ZNK4llvm12CallLowering11setArgFlagsINS_8FunctionEEEvRNS0_7ArgInfoEjRKNS_10DataLayoutERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(156) %12, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(912) %i.z, ptr noundef nonnull align 8 dereferenceable(140) %i.m) #18
  br label %.critedge146

.critedge146:                                     ; preds = %bb.ah, %bb.ag
  call void @_ZNK4llvm12CallLowering17splitToValueTypesERKNS0_7ArgInfoERNS_15SmallVectorImplIS1_EERKNS_10DataLayoutEjPNS4_INS_8TypeSizeEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(156) %12, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(912) %i.z, i32 noundef %i.am, ptr noundef null) #18
  %i.gq = load ptr, ptr %i.be, align 8, !tbaa !235 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.bf
  br i1 %i.gr, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i165, label %bb.ai

bb.ai:                                            ; preds = %.critedge146
  call void @free(ptr noundef %i.gq) #18
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i165

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i165: ; preds = %bb.ai, %.critedge146
  %i.gs = load ptr, ptr %i.bd, align 8, !tbaa !235 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.bg
  br i1 %i.gt, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i166, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i165
  call void @free(ptr noundef %i.gs) #18
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i166

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i166: ; preds = %bb.aj, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i165
  %i.gu = load ptr, ptr %i.ao, align 8, !tbaa !235 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.bh
  br i1 %i.gv, label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit167, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i166
  call void @free(ptr noundef %i.gu) #18
  br label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit167

_ZN4llvm12CallLowering7ArgInfoD2Ev.exit167:       ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i166, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %33 = add nuw i32 %.0131235, 1                  ; 3 uses
  %34 = zext i32 %33 to i64
  %35 = load i32, ptr %i.ae, align 8, !tbaa !236
  %.not139.not = icmp ugt i32 %35, %33
  br i1 %.not139.not, label %bb.e, label %.critedge148, !llvm.loop !600

.critedge148:                                     ; preds = %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit167, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  %i.gw = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.y, ptr %i.gw, align 8, !tbaa !275
  %i.gx = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.gx, align 8, !tbaa !276
  %i.gy = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i64 0, ptr %i.gy, align 8, !tbaa !277
  %i.gz = getelementptr inbounds nuw i8, ptr %28, i64 32
  store i8 0, ptr %i.gz, align 8, !tbaa !278
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.al, label %_ZN12_GLOBAL__N_128AArch64OutgoingValueAssignerC2EPFbjN4llvm3MVTES2_NS1_11CCValAssign7LocInfoENS1_3ISD10ArgFlagsTyEPNS1_4TypeERNS1_7CCStateEESC_RKNS1_16AArch64SubtargetEb.exit

bb.al:                                            ; preds = %.critedge148
  store ptr null, ptr %i.gx, align 8, !tbaa !276
  br label %_ZN12_GLOBAL__N_128AArch64OutgoingValueAssignerC2EPFbjN4llvm3MVTES2_NS1_11CCValAssign7LocInfoENS1_3ISD10ArgFlagsTyEPNS1_4TypeERNS1_7CCStateEESC_RKNS1_16AArch64SubtargetEb.exit

_ZN12_GLOBAL__N_128AArch64OutgoingValueAssignerC2EPFbjN4llvm3MVTES2_NS1_11CCValAssign7LocInfoENS1_3ISD10ArgFlagsTyEPNS1_4TypeERNS1_7CCStateEESC_RKNS1_16AArch64SubtargetEb.exit: ; preds = %.critedge148, %bb.al
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_128AArch64OutgoingValueAssignerE, i64 16), ptr %28, align 8, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %28, i64 40
  store ptr %i.o, ptr %i.ha, align 8, !tbaa !280
  %i.hb = getelementptr inbounds nuw i8, ptr %28, i64 48
  store i8 1, ptr %i.hb, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  %i.hc = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %1, ptr %i.hc, align 8, !tbaa !285
  %i.hd = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %i.q, ptr %i.hd, align 8, !tbaa !286
  %i.he = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i8 0, ptr %i.he, align 8, !tbaa !288
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_118OutgoingArgHandlerE, i64 16), ptr %29, align 8, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %i.b, ptr %i.hf, align 8, !tbaa !289
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %29, i64 40
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !291
  %i.hg = getelementptr inbounds nuw i8, ptr %29, i64 48
  store i8 0, ptr %i.hg, align 8, !tbaa !295
  %i.hh = getelementptr inbounds nuw i8, ptr %29, i64 52
  store i32 0, ptr %i.hh, align 4, !tbaa !296
  %i.hi = getelementptr inbounds nuw i8, ptr %29, i64 56
  store i32 0, ptr %i.hi, align 8, !tbaa !272
  %i.hj = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.hk = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !228, !nonnull !98, !align !227
  store ptr %i.hm, ptr %i.hj, align 8, !tbaa !280
  %i.hn = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !301
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i32, ptr %i.hp, align 8
  %i.hr = icmp ugt i32 %i.hq, 255
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %i.hs = call noundef zeroext i1 @_ZNK4llvm12CallLowering29determineAndHandleAssignmentsERNS0_12ValueHandlerERNS0_13ValueAssignerERNS_15SmallVectorImplINS0_7ArgInfoEEERNS_16MachineIRBuilderEjbNS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %29, ptr noundef nonnull align 8 dereferenceable(33) %28, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.am, i1 noundef zeroext %i.hr, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.ht = load ptr, ptr %10, align 8, !tbaa !235  ; 3 uses
  %i.hu = load i32, ptr %i.ah, align 8, !tbaa !236 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN12_GLOBAL__N_128AArch64OutgoingValueAssignerC2EPFbjN4llvm3MVTES2_NS1_11CCValAssign7LocInfoENS1_3ISD10ArgFlagsTyEPNS1_4TypeERNS1_7CCStateEESC_RKNS1_16AArch64SubtargetEb.exit
  %i.hv = zext i32 %i.hu to i64
  %.idx.i = mul nuw nsw i64 %i.hv, 160
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.hx, %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i ], [ %i.hw, %.lr.ph.i.preheader.i ] ; 7 uses
  %i.hx = getelementptr inbounds i8, ptr %.05.i.i, i64 -160 ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %.05.i.i, i64 -40
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !235 ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.05.i.i, i64 -24
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.hz) #18
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i: ; preds = %bb.am, %.lr.ph.i.i
  %i.ic = getelementptr inbounds i8, ptr %.05.i.i, i64 -72
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !235 ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %.05.i.i, i64 -56
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.id) #18
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i: ; preds = %bb.an, %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit.i.i.i
  %i.ig = getelementptr inbounds i8, ptr %.05.i.i, i64 -152
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !235 ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %.05.i.i, i64 -136
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.ih) #18
  br label %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i

_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i:      ; preds = %bb.ao, %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i.i.i
  %.not.i.i = icmp eq ptr %i.ht, %i.hx
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i: ; preds = %_ZN4llvm12CallLowering7ArgInfoD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !235
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i, %_ZN12_GLOBAL__N_128AArch64OutgoingValueAssignerC2EPFbjN4llvm3MVTES2_NS1_11CCValAssign7LocInfoENS1_3ISD10ArgFlagsTyEPNS1_4TypeERNS1_7CCStateEESC_RKNS1_16AArch64SubtargetEb.exit
  %i.ik = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i ], [ %i.ht, %_ZN12_GLOBAL__N_128AArch64OutgoingValueAssignerC2EPFbjN4llvm3MVTES2_NS1_11CCValAssign7LocInfoENS1_3ISD10ArgFlagsTyEPNS1_4TypeERNS1_7CCStateEESC_RKNS1_16AArch64SubtargetEb.exit ] ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ag
  br i1 %i.il, label %_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj8EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i
  call void @free(ptr noundef %i.ik) #18
  br label %_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj8EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12CallLowering7ArgInfoELb0EE13destroy_rangeEPS2_S4_.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.im = load ptr, ptr %8, align 8, !tbaa !235   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.ad
  br i1 %i.in, label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj8EED2Ev.exit
  call void @free(ptr noundef %i.im) #18
  br label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit:     ; preds = %_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj8EED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit, %bb.c, %bb.b
  %.1130 = phi i1 [ true, %bb.c ], [ %i.hs, %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit ], [ true, %bb.b ]
  %.not140 = icmp eq i32 %6, 0
  br i1 %.not140, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.io, align 8, !tbaa !303, !alias.scope !607
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 260, ptr %i.ip, align 4, !tbaa !238, !alias.scope !607
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iq, i8 0, i64 16, i1 false), !alias.scope !607
  store i32 33554432, ptr %7, align 8, !alias.scope !607
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  store i32 260, ptr %31, align 8, !tbaa !272
  %i.ir = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 1, ptr %i.ir, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  store i32 %6, ptr %32, align 8, !tbaa !104
  %i.is = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 0, ptr %i.is, align 8, !tbaa !245
  %i.it = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(20) %31, ptr noundef nonnull align 8 dereferenceable(20) %32) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.iu = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr %i.b, ptr %i.c) #18 ; 0 uses
  br label %bb.av

.critedge150:                                     ; preds = %bb.af, %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN4llvm11SmallVectorINS_12CallLowering7ArgInfoELj8EED2Ev(ptr noundef nonnull align 8 dead_on_return(1296) dereferenceable(1296) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.iv = load ptr, ptr %8, align 8, !tbaa !235   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.ad
  br i1 %i.iw, label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit168, label %bb.au

bb.au:                                            ; preds = %.critedge150
  call void @free(ptr noundef %i.iv) #18
  br label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit168

_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit168:  ; preds = %.critedge150, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.av

bb.av:                                            ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit168, %bb.at
  %.7 = phi i1 [ %.1130, %bb.at ], [ false, %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit168 ]
  ret i1 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #3

declare void @_ZNK4llvm12CallLowering16insertSRetStoresERNS_16MachineIRBuilderEPNS_4TypeENS_8ArrayRefINS_8RegisterEEES6_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr, i64, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef ptr @_ZNK4llvm21AArch64TargetLowering19CCAssignFnForReturnEj(ptr noundef nonnull align 8 dereferenceable(518448), i32 noundef) local_unnamed_addr #3
end_hunk_1
