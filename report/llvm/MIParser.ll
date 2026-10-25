Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MIParser?download=true
inline.NumInlined: 5291
inline.NumDeleted: 2150
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
%"class.llvm::StringRef" = type { ptr, i64 }
%"struct.std::pair.111" = type { %"class.std::__cxx11::basic_string", ptr }
%"struct.std::pair.25" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"struct.std::pair.49" = type { %"class.std::__cxx11::basic_string", ptr }
%"class.llvm::Register" = type { i32 }
%"struct.std::pair.383" = type { i32, ptr }
%"class.llvm::ModuleSlotTracker" = type { ptr, %"class.std::unique_ptr.352", i8, i8, ptr, ptr, ptr, %"class.std::function", %"class.std::function.360" }
%"class.std::unique_ptr.352" = type { %"struct.std::__uniq_ptr_data.353" }
%"struct.std::__uniq_ptr_data.353" = type { %"class.std::__uniq_ptr_impl.354" }
%"class.std::__uniq_ptr_impl.354" = type { %"class.std::tuple.355" }
%"class.std::tuple.355" = type { %"struct.std::_Tuple_impl.356" }
%"struct.std::_Tuple_impl.356" = type { %"struct.std::_Head_base.359" }
%"struct.std::_Head_base.359" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::function.360" = type { %"class.std::_Function_base", ptr }
%class.anon.391 = type { ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.std::optional.409" = type { %"struct.std::_Optional_base.410" }
%"struct.std::_Optional_base.410" = type { %"struct.std::_Optional_payload.412" }
%"struct.std::_Optional_payload.412" = type { %"struct.std::_Optional_payload_base.base.414", [3 x i8] }
%"struct.std::_Optional_payload_base.base.414" = type <{ %"union.std::_Optional_payload_base<llvm::UniqueBBID>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::UniqueBBID>::_Storage" = type { %"struct.llvm::UniqueBBID" }
%"struct.llvm::UniqueBBID" = type { i32, i32 }
%"struct.std::pair.425" = type { i32, ptr }
%"class.(anonymous namespace)::MIParser" = type { ptr, ptr, %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::SMRange", %"struct.llvm::MIToken", ptr, %"class.llvm::DenseMap.339" }
%"class.llvm::SMRange" = type { %"class.llvm::SMLoc", %"class.llvm::SMLoc" }
%"class.llvm::SMLoc" = type { ptr }
%"struct.llvm::MIToken" = type { i32, %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.std::__cxx11::basic_string", %"class.llvm::APSInt" }
%"class.llvm::APSInt" = type { %"class.llvm::APInt.base", i8, [3 x i8] }
%"class.llvm::APInt.base" = type <{ %union.anon.338, i32 }>
%union.anon.338 = type { i64 }
%"class.llvm::DenseMap.339" = type { ptr, ptr, i32, i32 }
%"class.llvm::LLT" = type { i64 }
%"struct.llvm::MachinePointerInfo" = type <{ %"class.llvm::PointerUnion.860", i64, i32, i8, [3 x i8] }>
%"class.llvm::PointerUnion.860" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.861" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.861" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.862" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.862" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.863" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.863" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"struct.llvm::AAMDNodes" = type { ptr, ptr, ptr, ptr, ptr }
%"class.llvm::MachineOperand" = type { i32, %union.anon.503, ptr, %"union.llvm::MachineOperand::ContentsUnion" }
%union.anon.503 = type { i32 }
%"union.llvm::MachineOperand::ContentsUnion" = type { %"class.llvm::ArrayRef.504" }
%"class.llvm::ArrayRef.504" = type { ptr, i64 }
%"class.llvm::SmallVector.509" = type { %"class.llvm::SmallVectorImpl.510", %"struct.llvm::SmallVectorStorage.513" }
%"class.llvm::SmallVectorImpl.510" = type { %"class.llvm::SmallVectorTemplateBase.511" }
%"class.llvm::SmallVectorTemplateBase.511" = type { %"class.llvm::SmallVectorTemplateCommon.512" }
%"class.llvm::SmallVectorTemplateCommon.512" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.513" = type { [448 x i8] }
%"class.std::optional.514" = type { %"struct.std::_Optional_base.515" }
%"struct.std::_Optional_base.515" = type { %"struct.std::_Optional_payload.517" }
%"struct.std::_Optional_payload.517" = type { %"struct.std::_Optional_payload_base.base.519", [3 x i8] }
%"struct.std::_Optional_payload_base.base.519" = type <{ %"union.std::_Optional_payload_base<unsigned int>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned int>::_Storage" = type { i32 }
%"struct.(anonymous namespace)::ParsedMachineOperand" = type { %"class.llvm::MachineOperand", ptr, ptr, %"class.std::optional.514" }
%"class.llvm::SmallVector.522" = type { %"class.llvm::SmallVectorImpl.523", %"struct.llvm::SmallVectorStorage.526" }
%"class.llvm::SmallVectorImpl.523" = type { %"class.llvm::SmallVectorTemplateBase.524" }
%"class.llvm::SmallVectorTemplateBase.524" = type { %"class.llvm::SmallVectorTemplateCommon.525" }
%"class.llvm::SmallVectorTemplateCommon.525" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.526" = type { [16 x i8] }
%"class.llvm::SmallVector.441" = type { %"class.llvm::SmallVectorImpl.442", %"struct.llvm::SmallVectorStorage.445" }
%"class.llvm::SmallVectorImpl.442" = type { %"class.llvm::SmallVectorTemplateBase.443" }
%"class.llvm::SmallVectorTemplateBase.443" = type { %"class.llvm::SmallVectorTemplateCommon.444" }
%"class.llvm::SmallVectorTemplateCommon.444" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.445" = type { [32 x i8] }
%"class.llvm::function_ref" = type { ptr, i64 }
%class.anon = type { ptr }
%"class.llvm::DenseMap.141" = type { ptr, ptr, i32, i32 }
%"class.llvm::SMDiagnostic" = type { ptr, %"class.llvm::SMLoc", %"class.std::__cxx11::basic_string", i32, i32, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector.341", %"class.llvm::SmallVector.346" }
%"class.std::vector.341" = type { %"struct.std::_Vector_base.342" }
%"struct.std::_Vector_base.342" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<unsigned int, unsigned int>, std::allocator<std::pair<unsigned int, unsigned int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.346" = type { %"class.llvm::SmallVectorImpl.347", %"struct.llvm::SmallVectorStorage.350" }
%"class.llvm::SmallVectorImpl.347" = type { %"class.llvm::SmallVectorTemplateBase.348" }
%"class.llvm::SmallVectorTemplateBase.348" = type { %"class.llvm::SmallVectorTemplateCommon.349" }
%"class.llvm::SmallVectorTemplateCommon.349" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.350" = type { [192 x i8] }
%"class.llvm::ArrayRef.392" = type { ptr, i64 }
%"class.llvm::ArrayRef.393" = type { ptr, i64 }
%"class.llvm::ArrayRef.394" = type { ptr, i64 }
%"class.llvm::APInt" = type <{ %union.anon.338, i32, [4 x i8] }>
%"struct.std::pair.477" = type { i32, ptr }
%"class.llvm::DenseMap.131" = type { ptr, ptr, i32, i32 }
%"class.llvm::MCCFIInstruction" = type { ptr, %"class.std::variant", i8, %"class.llvm::SMLoc" }
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type <{ %"union.std::__detail::__variant::_Variadic_union", i8 }>
%"union.std::__detail::__variant::_Variadic_union" = type { %"union.std::__detail::__variant::_Variadic_union.786" }
%"union.std::__detail::__variant::_Variadic_union.786" = type { %"union.std::__detail::__variant::_Variadic_union.788", [24 x i8] }
%"union.std::__detail::__variant::_Variadic_union.788" = type { %"union.std::__detail::__variant::_Variadic_union.790" }
%"union.std::__detail::__variant::_Variadic_union.790" = type { %"union.std::__detail::__variant::_Variadic_union.792" }
%"union.std::__detail::__variant::_Variadic_union.792" = type { %"union.std::__detail::__variant::_Variadic_union.795", [8 x i8] }
%"union.std::__detail::__variant::_Variadic_union.795" = type { %"struct.std::__detail::__variant::_Uninitialized.796" }
%"struct.std::__detail::__variant::_Uninitialized.796" = type { %"struct.llvm::MCCFIInstruction::VectorOffsetFields" }
%"struct.llvm::MCCFIInstruction::VectorOffsetFields" = type { i32, i32, i64, i32, i32 }
%class.anon.560 = type { ptr }
%"class.llvm::SmallVector.898" = type { %"class.llvm::SmallVectorImpl.899", %"struct.llvm::SmallVectorStorage.902" }
%"class.llvm::SmallVectorImpl.899" = type { %"class.llvm::SmallVectorTemplateBase.900" }
%"class.llvm::SmallVectorTemplateBase.900" = type { %"class.llvm::SmallVectorTemplateCommon.901" }
%"class.llvm::SmallVectorTemplateCommon.901" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.902" = type { [128 x i8] }
%"class.llvm::SmallVector.904" = type { %"class.llvm::SmallVectorImpl.905", %"struct.llvm::SmallVectorStorage.908" }
%"class.llvm::SmallVectorImpl.905" = type { %"class.llvm::SmallVectorTemplateBase.906" }
%"class.llvm::SmallVectorTemplateBase.906" = type { %"class.llvm::SmallVectorTemplateCommon.907" }
%"class.llvm::SmallVectorTemplateCommon.907" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.908" = type { [32 x i8] }
%class.anon.548 = type { ptr, ptr, ptr }
%"class.llvm::SmallVector.830" = type { %"class.llvm::SmallVectorImpl.831", %"struct.llvm::SmallVectorStorage.834" }
%"class.llvm::SmallVectorImpl.831" = type { %"class.llvm::SmallVectorTemplateBase.832" }
%"class.llvm::SmallVectorTemplateBase.832" = type { %"class.llvm::SmallVectorTemplateCommon.833" }
%"class.llvm::SmallVectorTemplateCommon.833" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.834" = type { [128 x i8] }
%class.anon.852 = type { ptr }
%"struct.llvm::MCCFIInstruction::EscapeFields" = type { %"class.std::vector.813", %"class.std::__cxx11::basic_string" }
%"class.std::vector.813" = type { %"struct.std::_Vector_base.814" }
%"struct.std::_Vector_base.814" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.anon.897 = type { ptr }
%class.anon.896 = type { ptr }
%"class.llvm::SmallVector.925" = type { %"class.llvm::SmallVectorImpl.926", %"struct.llvm::SmallVectorStorage.929" }
%"class.llvm::SmallVectorImpl.926" = type { %"class.llvm::SmallVectorTemplateBase.927" }
%"class.llvm::SmallVectorTemplateBase.927" = type { %"class.llvm::SmallVectorTemplateCommon.928" }
%"class.llvm::SmallVectorTemplateCommon.928" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.929" = type { [128 x i8] }
%"class.llvm::DenseMap.133" = type { ptr, ptr, i32, i32 }

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIjJS4_EEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm12SMDiagnosticaSEOS0_ = comdat any

$_ZN4llvm15SmallVectorImplINS_7SMFixItEEaSEOS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm = comdat any

$_ZN4llvmplERKNS_5TwineES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_10BasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIjJS4_EEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_10BasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_10BasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_10BasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIjJS3_EEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_ = comdat any

$_ZN4llvm19MachineRegisterInfo22noteNewVirtualRegisterENS_8RegisterE = comdat any

$_ZN4llvm3LLT6vectorENS_12ElementCountES0_ = comdat any

$_ZNK4llvm3LLTeqERKS0_ = comdat any

$_ZN4llvm16MCCFIInstructionD2Ev = comdat any

$_ZN4llvm16MCCFIInstruction25createLLVMVectorRegistersEPNS_8MCSymbolEjNS_8ArrayRefINS0_22VectorRegisterWithLaneEEENS_5SMLocE = comdat any

$_ZN4llvm16MCCFIInstruction12createEscapeEPNS_8MCSymbolENS_9StringRefENS_5SMLocES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi = comdat any

$_ZNK4llvm3LLT14getSizeInBytesEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_14MachineOperandELb1EE15growAndPushBackERKS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EE15growAndPushBackES2_ = comdat any

$_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISB_E = comdat any

$_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11try_emplaceIJEEES6_ISt17_Rb_tree_iteratorIS8_EbERS7_DpOT_ = comdat any

$_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEE5resetEPS1_ = comdat any

$_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEEixERSA_ = comdat any

$_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEEixERS7_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [6 x i8] c"noreg\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"expected a basic block definition before instructions\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"basic block definition should be located at the start of the line\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"extraneous closing brace ('}')\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"expected '}'\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"basic block '\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"' is not defined in the function '\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"redefinition of machine basic block with id #\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"expected unsigned integer\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"expected 32-bit integer (too large)\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"expected basic block after 'ir_block_address_taken'\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"expected an integer literal after 'align'\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"expected a power-of-2 literal after 'align'\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"expected 64-bit integer (too large)\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"use of undefined IR block '\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"use of undefined IR block '%ir-block.\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Unknown Section ID\00", align 1
@_ZN4llvm12MBBSectionID18ExceptionSectionIDE = external local_unnamed_addr global %"struct.llvm::MBBSectionID", align 4
@_ZN4llvm12MBBSectionID13ColdSectionIDE = external local_unnamed_addr global %"struct.llvm::MBBSectionID", align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"expected 'bb_id'\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Unknown BB ID\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Unknown Clone ID\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Unknown call frame size\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"expected \00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"'='\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"<unknown token>\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"use of undefined machine basic block #\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"the name of machine basic block #\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c" isn't '\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"expected line break at the end of a list\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"nested instruction bundles are not allowed\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"expected a machine basic block reference\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"expected an integer literal after '('\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"expected a named register\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"expected a lane mask\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"invalid lane mask value\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"unknown register name '\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"expected ',' before the next machine operand\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"expected an integer literal after 'cfi-type'\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"expected an integer literal after 'debug-instr-number'\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"expected a metadata node after 'debug-location'\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"referenced metadata is not a DILocation\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"expected ',' before the next machine memory operand\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"expected a register after register flags\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"subregister index expects a virtual register\00", align 1
@.str.53 = private unnamed_addr constant [56 x i8] c"register class specification expects a virtual register\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"tied-def not supported for defs\00", align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"unexpected type on physical register\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"expected tied-def or low-level type after '('\00", align 1
@.str.57 = private unnamed_addr constant [47 x i8] c"inconsistent type for generic virtual register\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"generic virtual registers must have a type\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"cannot have a killed def operand\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"cannot have a dead use operand\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"duplicate '\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"' register flag\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"expected a subregister index after '.'\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"use of unknown subregister index '\00", align 1
@.str.65 = private unnamed_addr constant [52 x i8] c"expected '_', register class, or register bank name\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"conflicting register classes, previously: \00", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"register class specification on generic register\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"conflicting generic register banks\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c"register bank specification on normal register\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"expected an integer literal after 'tied-def'\00", align 1
@.str.77 = private unnamed_addr constant [61 x i8] c"expected integers after 's'/'i'/'f'/'bf'/'p' type identifier\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"invalid size for scalar type\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"invalid address space number\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"invalid size for bfloat\00", align 1
@.str.81 = private unnamed_addr constant [130 x i8] c"expected tN, pA, <M x tN>, <M x pA>, <vscale x M x tN>, or <vscale x M x pA> for GlobalISel type, where t = {'s', 'i', 'f', 'bf'}\00", align 1
@.str.84 = private unnamed_addr constant [65 x i8] c"expected <vscale x M x tN>, where t = {'s', 'i', 'f', 'bf', 'p'}\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"invalid number of vector elements\00", align 1
@.str.86 = private unnamed_addr constant [42 x i8] c"invalid size for scalar element in vector\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"invalid size for float element in vector\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"invalid size for bfloat element in vector\00", align 1
@_ZN4llvm3LLT11ExtendedLLTE = external local_unnamed_addr global i8, align 1
@.str.89 = private unnamed_addr constant [81 x i8] c"expected <vscale x M x tN> for vector type, where t = {'s', 'i', 'f', 'bf', 'p'}\00", align 1
@.str.90 = private unnamed_addr constant [72 x i8] c"expected <M x tN> for vector type, where t = {'s', 'i', 'f', 'bf', 'p'}\00", align 1
@.str.91 = private unnamed_addr constant [31 x i8] c"expected a machine instruction\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"unknown machine instruction name '\00", align 1
@.str.93 = private unnamed_addr constant [37 x i8] c"expected the name of the target flag\00", align 1
@.str.94 = private unnamed_addr constant [31 x i8] c"use of undefined target flag '\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"register operands can't have target flags\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"expected a machine operand\00", align 1
@.str.98 = private unnamed_addr constant [56 x i8] c"integer literal is too large to be an immediate operand\00", align 1
@.str.99 = private unnamed_addr constant [34 x i8] c"expected a floating point literal\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"use of undefined stack object '%stack.\00", align 1
@.str.101 = private unnamed_addr constant [38 x i8] c"the name of the stack object '%stack.\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"' isn't '\00", align 1
@.str.103 = private unnamed_addr constant [51 x i8] c"use of undefined fixed stack object '%fixed-stack.\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"expected an integer literal after '\00", align 1
@.str.105 = private unnamed_addr constant [35 x i8] c"use of undefined constant '%const.\00", align 1
@.str.106 = private unnamed_addr constant [42 x i8] c"use of undefined jump table '%jump-table.\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"unknown subregister index '\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"expected a cfi register\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"invalid DWARF register\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"expected a cfi offset\00", align 1
@.str.111 = private unnamed_addr constant [56 x i8] c"expected a 32 bit integer (the cfi offset is too large)\00", align 1
@.str.112 = private unnamed_addr constant [37 x i8] c"expected a cfi address space literal\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"expected an unsigned integer (cfi address space)\00", align 1
@.str.114 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.115 = private unnamed_addr constant [31 x i8] c"expected a hexadecimal literal\00", align 1
@.str.116 = private unnamed_addr constant [37 x i8] c"expected a 8-bit integer (too large)\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"expected a global value\00", align 1
@.str.118 = private unnamed_addr constant [34 x i8] c"expected an IR function reference\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"expected an IR block reference\00", align 1
@.str.120 = private unnamed_addr constant [42 x i8] c"expected syntax intrinsic(@llvm.whatever)\00", align 1
@.str.121 = private unnamed_addr constant [41 x i8] c"expected ')' to terminate intrinsic name\00", align 1
@.str.122 = private unnamed_addr constant [23 x i8] c"unknown intrinsic name\00", align 1
@.str.123 = private unnamed_addr constant [38 x i8] c"expected the name of the target index\00", align 1
@.str.124 = private unnamed_addr constant [32 x i8] c"use of undefined target index '\00", align 1
@.str.125 = private unnamed_addr constant [33 x i8] c"expected a valid lane mask value\00", align 1
@.str.126 = private unnamed_addr constant [56 x i8] c"expected syntax intpred(whatever) or floatpred(whatever\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"whatever\00", align 1
@.str.144 = private unnamed_addr constant [33 x i8] c"invalid floating-point predicate\00", align 1
@.str.151 = private unnamed_addr constant [26 x i8] c"invalid integer predicate\00", align 1
@.str.152 = private unnamed_addr constant [39 x i8] c"predicate should be terminated by ')'.\00", align 1
@.str.153 = private unnamed_addr constant [53 x i8] c"expected syntax shufflemask(<integer or undef>, ...)\00", align 1
@.str.154 = private unnamed_addr constant [26 x i8] c"expected integer constant\00", align 1
@.str.155 = private unnamed_addr constant [41 x i8] c"shufflemask should be terminated by ')'.\00", align 1
@.str.156 = private unnamed_addr constant [36 x i8] c"shufflemask should have > 1 element\00", align 1
@.str.157 = private unnamed_addr constant [54 x i8] c"expected syntax dbg-instr-ref(<unsigned>, <unsigned>)\00", align 1
@.str.158 = private unnamed_addr constant [48 x i8] c"expected unsigned integer for instruction index\00", align 1
@.str.159 = private unnamed_addr constant [44 x i8] c"expected unsigned integer for operand index\00", align 1
@.str.168 = private unnamed_addr constant [37 x i8] c"unknown inline asm extra info flag '\00", align 1
@.str.175 = private unnamed_addr constant [34 x i8] c"unknown inline asm operand kind '\00", align 1
@.str.177 = private unnamed_addr constant [28 x i8] c"expected ':' after 'tiedto'\00", align 1
@.str.178 = private unnamed_addr constant [45 x i8] c"expected '$N' operand number after 'tiedto:'\00", align 1
@.str.179 = private unnamed_addr constant [44 x i8] c"invalid operand number in tiedto constraint\00", align 1
@.str.180 = private unnamed_addr constant [60 x i8] c"expected register class or memory constraint name after ':'\00", align 1
@.str.207 = private unnamed_addr constant [28 x i8] c"unknown memory constraint '\00", align 1
@.str.208 = private unnamed_addr constant [25 x i8] c"unknown register class '\00", align 1
@.str.209 = private unnamed_addr constant [79 x i8] c"a typed immediate operand should start with one of 'i', 's', 'f', 'bf', or 'p'\00", align 1
@.str.210 = private unnamed_addr constant [61 x i8] c"expected integers after 'i'/'s'/'f'/'bf'/'p' type identifier\00", align 1
@.str.211 = private unnamed_addr constant [28 x i8] c"expected an integer literal\00", align 1
@.str.212 = private unnamed_addr constant [43 x i8] c"expected a symbol after 'pre-instr-symbol'\00", align 1
@.str.213 = private unnamed_addr constant [44 x i8] c"expected a MDNode after 'heap-alloc-marker'\00", align 1
@.str.214 = private unnamed_addr constant [37 x i8] c"expected a MDNode after 'pcsections'\00", align 1
@.str.215 = private unnamed_addr constant [32 x i8] c"use of undefined global value '\00", align 1
@.str.216 = private unnamed_addr constant [33 x i8] c"use of undefined global value '@\00", align 1
@.str.217 = private unnamed_addr constant [31 x i8] c"expected metadata id after '!'\00", align 1
@.str.218 = private unnamed_addr constant [29 x i8] c"use of undefined metadata '!\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.222 = private unnamed_addr constant [23 x i8] c"expected metadata node\00", align 1
@.str.223 = private unnamed_addr constant [22 x i8] c"expected DIScope node\00", align 1
@.str.224 = private unnamed_addr constant [10 x i8] c"inlinedAt\00", align 1
@.str.225 = private unnamed_addr constant [25 x i8] c"expected DILocation node\00", align 1
@.str.226 = private unnamed_addr constant [15 x i8] c"isImplicitCode\00", align 1
@.str.227 = private unnamed_addr constant [20 x i8] c"expected true/false\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"atomGroup\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"atomRank\00", align 1
@.str.230 = private unnamed_addr constant [30 x i8] c"invalid DILocation argument '\00", align 1
@.str.231 = private unnamed_addr constant [32 x i8] c"DILocation requires line number\00", align 1
@.str.232 = private unnamed_addr constant [28 x i8] c"DILocation requires a scope\00", align 1
@.str.235 = private unnamed_addr constant [44 x i8] c"expected 'load' or 'store' memory operation\00", align 1
@.str.236 = private unnamed_addr constant [87 x i8] c"expected memory LLT, the size integer literal or 'unknown-size' after memory operation\00", align 1
@.str.237 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"into\00", align 1
@.str.240 = private unnamed_addr constant [11 x i8] c"expected '\00", align 1
@.str.241 = private unnamed_addr constant [48 x i8] c"specified alignment is more aligned than offset\00", align 1
@.str.242 = private unnamed_addr constant [96 x i8] c"expected 'align' or '!tbaa' or '!alias.scope' or '!noalias' or '!range' or '!noalias.addrspace'\00", align 1
@.str.243 = private unnamed_addr constant [35 x i8] c"use of undefined target MMO flag '\00", align 1
@.str.244 = private unnamed_addr constant [22 x i8] c"' memory operand flag\00", align 1
@.str.246 = private unnamed_addr constant [26 x i8] c"expected '(' in syncscope\00", align 1
@.str.247 = private unnamed_addr constant [26 x i8] c"expected ')' in syncscope\00", align 1
@.str.248 = private unnamed_addr constant [25 x i8] c"expected string constant\00", align 1
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_18MIParser12parseMDTupleERPN4llvm6MDNodeEb:bb.a

.split.thread.i:                                  ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bs = load i64, ptr %i.l, align 8, !tbaa !69
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %0, ptr %5, align 8, !tbaa !294
  %i.bu = call { ptr, i64 } @_ZN4llvm10lexMITokenENS_9StringRefERNS_7MITokenENS_12function_refIFvPKcRKNS_5TwineEEEE(ptr %i.bt, i64 %i.bs, ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr nonnull @"_ZN4llvm12function_refIFvPKcRKNS_5TwineEEE11callback_fnIZN12_GLOBAL__N_18MIParser3lexEjE3$_0EEvlS2_S5_", i64 %i.y) #19 ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1
  store ptr %i.bv, ptr %i.k, align 8, !tbaa !88
  store i64 %i.bw, ptr %i.l, align 8, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !343, !nonnull !33, !align !34 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !365, !nonnull !33, !align !34 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !143 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i.i.i, label %_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !79  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.m ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %bb.m ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !79
  %i.cg = icmp ult i32 %i.cf, %i.cd               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.cg, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.cg, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %bb.m, !llvm.loop !7

_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %bb.m
  %i.ch = icmp eq ptr %.19.i.i.i.i.i, %i.cc
  br i1 %i.ch, label %_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i, label %_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.i.i

_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !79
  %i.ck = icmp ult i32 %i.cd, %i.cj
  br i1 %i.ck, label %_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  br label %.split.i

_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i: ; preds = %_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.i.i, %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !143 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 120 ; 2 uses
  %.not10.i.i.i10.i.i = icmp eq ptr %i.cn, null
  br i1 %.not10.i.i.i10.i.i, label %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i, label %.lr.ph.i.i.i11.i.i

.lr.ph.i.i.i11.i.i:                               ; preds = %_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !79  ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i11.i.i
  %.012.i.i.i12.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i11.i.i ], [ %.1.i.i.i17.i.i, %bb.o ] ; 3 uses
  %.0811.i.i.i13.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i11.i.i ], [ %.19.i.i.i14.i.i, %bb.o ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i12.i.i, i64 32
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !79
  %i.cs = icmp ult i32 %i.cr, %i.cp               ; 2 uses
  %.19.i.i.i14.i.i = select i1 %i.cs, ptr %.0811.i.i.i13.i.i, ptr %.012.i.i.i12.i.i ; 4 uses
  %.1.in.v.i.i.i15.i.i = select i1 %i.cs, i64 24, i64 16
  %.1.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i12.i.i, i64 %.1.in.v.i.i.i15.i.i
  %.1.i.i.i17.i.i = load ptr, ptr %.1.in.i.i.i16.i.i, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i18.i.i = icmp eq ptr %.1.i.i.i17.i.i, null
  br i1 %.not.i.i.i18.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %bb.o, !llvm.loop !8

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %bb.o
  %i.ct = icmp eq ptr %.19.i.i.i14.i.i, %i.co
  br i1 %i.ct, label %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i, label %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.i.i

_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.i.i: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i14.i.i, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !79
  %i.cw = icmp ult i32 %i.cp, %i.cv
  br i1 %i.cw, label %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i14.i.i, i64 40
  br label %.split.i

_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i: ; preds = %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 160
  %i.cz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEEixERSA_(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 6 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !263, !nonnull !33, !align !34
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.db) #19
  %i.dd = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr null, i64 0, i32 noundef 2, i1 noundef zeroext true) #19, !noalias !1688
  %i.de = ptrtoint ptr %i.bq to i64
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !362 ; 2 uses
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !362
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7MDTupleENS0_17TempMDNodeDeleterEED2Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i
  call void @_ZN4llvm6MDNode15deleteTemporaryEPS0_(ptr noundef nonnull %i.df) #19
  br label %_ZNSt10unique_ptrIN4llvm7MDTupleENS0_17TempMDNodeDeleterEED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm7MDTupleENS0_17TempMDNodeDeleterEED2Ev.exit.i.i: ; preds = %bb.q, %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !88
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !343, !nonnull !33, !align !34
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 112
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 4 uses
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !362 ; 3 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !414 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm13TrackingMDRef7untrackEv.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7MDTupleENS0_17TempMDNodeDeleterEED2Ev.exit.i.i
  call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull align 4 dereferenceable(8) %i.dl) #19
  br label %_ZN4llvm13TrackingMDRef7untrackEv.exit.i.i.i

_ZN4llvm13TrackingMDRef7untrackEv.exit.i.i.i:     ; preds = %bb.r, %_ZNSt10unique_ptrIN4llvm7MDTupleENS0_17TempMDNodeDeleterEED2Ev.exit.i.i
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !414
  %.not.i2.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i2.i.i.i, label %.split.i, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm13TrackingMDRef7untrackEv.exit.i.i.i
  %i.dm = call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull align 4 dereferenceable(8) %i.dk, i64 1) #19 ; 0 uses
  br label %.split.i

.split.i:                                         ; preds = %bb.s, %_ZN4llvm13TrackingMDRef7untrackEv.exit.i.i.i, %bb.p, %bb.n
  %.sink.in.i.i = phi ptr [ %i.cl, %bb.n ], [ %i.cx, %bb.p ], [ %i.cz, %_ZN4llvm13TrackingMDRef7untrackEv.exit.i.i.i ], [ %i.cz, %bb.s ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.t

_ZN12_GLOBAL__N_18MIParser13parseMetadataERPN4llvm8MetadataE.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.aw, label %_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_18MIParser13parseMetadataERPN4llvm8MetadataE.exit.i, %.split.i
  %.269.i = phi ptr [ %.sink.i.i, %.split.i ], [ %.1.i, %_ZN12_GLOBAL__N_18MIParser13parseMetadataERPN4llvm8MetadataE.exit.i ] ; 2 uses
  %i.dn = load i32, ptr %i.c, align 8, !tbaa !101 ; 2 uses
  %i.do = load i32, ptr %i.d, align 4, !tbaa !102
  %.not.i4.i = icmp ult i32 %i.dn, %i.do
  br i1 %.not.i4.i, label %bb.v, label %bb.u, !prof !256

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef %.269.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.dp = zext i32 %i.dn to i64
  %i.dq = load ptr, ptr %14, align 8, !tbaa !100
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dp
  store ptr %.269.i, ptr %i.dr, align 1
  %i.ds = load i32, ptr %i.c, align 8, !tbaa !101
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.c, align 8, !tbaa !101
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit.i: ; preds = %bb.v, %bb.u
  %i.du = load i32, ptr %i.e, align 8, !tbaa !287
  switch i32 %i.du, label %bb.w [
    i32 3, label %thread-pre-split.i
    i32 13, label %bb.x
  ]

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.dw, align 1, !tbaa !297
  store ptr @.str.282, ptr %13, align 8, !tbaa !75
  store i8 3, ptr %i.dv, align 8, !tbaa !298
  %i.dx = load ptr, ptr %i.v, align 8, !tbaa !68
  call fastcc void @_ZN12_GLOBAL__N_18MIParser5errorEPKcRKN4llvm5TwineE(ptr noundef nonnull readonly align 8 dereferenceable(184) %0, ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(34) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit.thread

bb.x:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE9push_backES2_.exit.i
  %i.dy = load i64, ptr %i.l, align 8, !tbaa !69
  %i.dz = load ptr, ptr %i.k, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %0, ptr %3, align 8, !tbaa !294
  %i.ea = ptrtoint ptr %3 to i64
  %i.eb = call { ptr, i64 } @_ZN4llvm10lexMITokenENS_9StringRefERNS_7MITokenENS_12function_refIFvPKcRKNS_5TwineEEEE(ptr %i.dz, i64 %i.dy, ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr nonnull @"_ZN4llvm12function_refIFvPKcRKNS_5TwineEEE11callback_fnIZN12_GLOBAL__N_18MIParser3lexEjE3$_0EEvlS2_S5_", i64 %i.ea) #19 ; 2 uses
  %i.ec = extractvalue { ptr, i64 } %i.eb, 0
  %i.ed = extractvalue { ptr, i64 } %i.eb, 1
  store ptr %i.ec, ptr %i.k, align 8, !tbaa !88
  store i64 %i.ed, ptr %i.l, align 8, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit

_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit: ; preds = %bb.x, %bb.d
  %i.ee = load ptr, ptr %0, align 8, !tbaa !308, !nonnull !33, !align !34
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !263, !nonnull !33, !align !34
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ef) #19
  %i.eh = load ptr, ptr %14, align 8, !tbaa !100
  %i.ei = load i32, ptr %i.c, align 8, !tbaa !101
  %i.ej = zext i32 %i.ei to i64
  %. = zext i1 %2 to i32
  %15 = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr %i.eh, i64 %i.ej, i32 noundef %., i1 noundef zeroext true) #19
  store ptr %15, ptr %1, align 8, !tbaa !347
  br label %_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit.thread

_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit.thread: ; preds = %_ZN12_GLOBAL__N_18MIParser13parseMetadataERPN4llvm8MetadataE.exit.i, %._crit_edge.i, %.split.thread.i, %bb.j, %bb.w, %bb.b, %_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit
  %.2.i4 = phi i1 [ false, %_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit ], [ true, %bb.b ], [ true, %bb.w ], [ true, %bb.j ], [ true, %.split.thread.i ], [ true, %._crit_edge.i ], [ true, %_ZN12_GLOBAL__N_18MIParser13parseMetadataERPN4llvm8MetadataE.exit.i ]
  %i.ek = load ptr, ptr %14, align 8, !tbaa !100  ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.b
  br i1 %i.el, label %_ZN4llvm11SmallVectorIPNS_8MetadataELj16EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit.thread
  call void @free(ptr noundef %i.ek) #19
  br label %_ZN4llvm11SmallVectorIPNS_8MetadataELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8MetadataELj16EED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_18MIParser17parseMDNodeVectorERN4llvm15SmallVectorImplIPNS1_8MetadataEEE.exit.thread, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  ret i1 %.2.i4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !362  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS9_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6MDNode15deleteTemporaryEPS0_(ptr noundef nonnull %i.e) #19
  br label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS9_E.exit

_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS9_E.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 56) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !145
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !145
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11try_emplaceIJEEES6_ISt17_Rb_tree_iteratorIS8_EbERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !79     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %i.g = icmp ult i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  %i.k = icmp ult i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i16 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !79
  store i32 %i.n, ptr %i.m, align 8, !tbaa !441
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !414
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i16, ptr noundef nonnull align 4 dereferenceable(4) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 8, !tbaa !79
  %i.v = load i32, ptr %i.t, align 4, !tbaa !79
  %i.w = icmp ult i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !145
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !145
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !414 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(8) %i.ab) #19
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #20
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.c, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, %.thread.i
  %.sroa.014.0 = phi ptr [ %i.q, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i ], [ %i.l, %.thread.i ], [ %.19.i.i.i, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i ], [ 1, %.thread.i ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.014.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18TypedTrackingMDRefINS_6MDNodeEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !414    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN4llvm13TrackingMDRef7untrackEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.a) #19
  br label %_ZN4llvm13TrackingMDRef7untrackEv.exit.i

_ZN4llvm13TrackingMDRef7untrackEv.exit.i:         ; preds = %bb.b, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !414
  %.not.i2.i = icmp eq ptr %1, null
  br i1 %.not.i2.i, label %_ZN4llvm13TrackingMDRef5resetEPNS_8MetadataE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm13TrackingMDRef7untrackEv.exit.i
  %i.b = tail call noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i64 1) #19 ; 0 uses
  br label %_ZN4llvm13TrackingMDRef5resetEPNS_8MetadataE.exit

_ZN4llvm13TrackingMDRef5resetEPNS_8MetadataE.exit: ; preds = %_ZN4llvm13TrackingMDRef7untrackEv.exit.i, %bb.c
  ret void
}

declare noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEEixERSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !79     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %i.g = icmp ult i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEE11lower_boundERSA_.exit, label %bb.b, !llvm.loop !1

_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEE11lower_boundERSA_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEE11lower_boundERSA_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  %i.k = icmp ult i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEE11lower_boundERSA_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEE11lower_boundERSA_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !79
  store i32 %i.n, ptr %i.m, align 8, !tbaa !1697
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 8, !tbaa !79
  %i.v = load i32, ptr %i.t, align 4, !tbaa !79
  %i.w = icmp ult i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !145
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !145
  br label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !362 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm6MDNode15deleteTemporaryEPS0_(ptr noundef nonnull %i.ab) #19
  br label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i

_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 56) #20
  br label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit

_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !79     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %i.g = icmp ult i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  %i.k = icmp ult i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !79
  store i32 %i.n, ptr %i.m, align 8, !tbaa !441
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !414
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 8, !tbaa !79
  %i.v = load i32, ptr %i.t, align 4, !tbaa !79
  %i.w = icmp ult i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !145
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !145
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !414 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(8) %i.ab) #19
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #20
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !360  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !79
  %i.i = load i32, ptr %2, align 4, !tbaa !79
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !360 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !79     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !79   ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !360 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1698

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !144
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #23 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !79
  %.pre82 = load i32, ptr %2, align 4, !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !79     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !79   ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !360 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !79
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !442
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !360 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !79 ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !360 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1698

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #23 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !360 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !79
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !442
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !360 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !79 ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !360 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !1698

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !144
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm6MDNode15deleteTemporaryEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !360  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !79
  %i.i = load i32, ptr %2, align 4, !tbaa !79
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !360 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !79     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !79   ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !360 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1699

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !144
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #23 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !79
  %.pre82 = load i32, ptr %2, align 4, !tbaa !79
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !79     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !79   ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !360 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !79
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !442
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !360 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !79 ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !360 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1699

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #23 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !360 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !79
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !442
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !360 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !79 ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !360 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !1699

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !144
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8MetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !101
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !100
  %i.g = load i32, ptr %i.a, align 8, !tbaa !101
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !101
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !101
  ret void
}

declare void @_ZN4llvm23ReplaceableMetadataImpl18replaceAllUsesWithEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvm16MetadataTracking5trackEPvRNS_8MetadataENS_12PointerUnionIJPNS_15MetadataAsValueEPS2_PNS_14DebugValueUserEEEE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), i64) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !443, !noalias !1704 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !444, !noalias !1704 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !445, !noalias !1704 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !331    ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !79
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !277

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !278, !llvm.loop !10

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !331
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_.exit, label %bb.c, !prof !256

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !446
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !447
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit, label %bb.d, !prof !256

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !446
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !444
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !443
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !79
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !79
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !447
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !79
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !359
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E22findBucketForInsertionIS2_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !443, !noalias !1709 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !444, !noalias !1709 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !445, !noalias !1709 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !331    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !79
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !277

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !79
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !278, !llvm.loop !10

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !331
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !256

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !446
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.133", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !445
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !443
  store ptr %i.y, ptr %i.q, align 8, !tbaa !444
  store i32 0, ptr %i.p, align 16, !tbaa !447
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !364
  %i.aa = load ptr, ptr %0, align 8, !tbaa !446
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !364
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !364
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !364
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !79 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !79
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !79
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !79
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !79
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !443    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !444
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !445  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !444  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !443
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !445
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !79   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !331  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1710

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !359
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !359
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !79
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !79
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1711

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1712

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !445
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !447
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !447
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 8) #19
  store i32 0, ptr %i.d, align 4, !tbaa !445
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !102
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !256

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !101
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !101
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !101
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #19 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !101 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !102
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !256

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !101
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !101
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !255
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !254
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !101
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !100
  %i.g = load i32, ptr %i.a, align 8, !tbaa !101
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !101
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !101
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !100
  %i.g = load i32, ptr %i.a, align 8, !tbaa !101
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !101
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPKcRKNS_5TwineEEE11callback_fnIZNS_12MIRFormatter12parseIRValueENS_9StringRefERNS_15MachineFunctionERNS_25PerFunctionMIParsingStateERPKNS_5ValueENS0_IFbS2_S5_EEEE3$_0EEvlS2_S5_"(i64 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(34) %2) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1715 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !427
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val2 = load i64, ptr %i.b, align 8, !tbaa !428
  %i.c = tail call noundef zeroext i1 %.val.val(i64 noundef %.val.val2, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(34) %2) #19, !inline_history !1713 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !76}
!1 = distinct !{!1, !76}
!2 = distinct !{null}
!3 = distinct !{!3, !76}
!4 = distinct !{!4, !76}
!5 = distinct !{!5, !76}
!6 = distinct !{!6, !76}
!7 = distinct !{!7, !76}
!8 = distinct !{!8, !76}
!9 = distinct !{!9, !76}
!10 = distinct !{!10, !76}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"any pointer", !15, i64 0}
!20 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !19, i64 0}
!21 = !{!"any p2 pointer", !19, i64 0}
!22 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !21, i64 0}
!23 = !{!"_ZTSN4llvm13StringMapImplE", !22, i64 0, !16, i64 8, !16, i64 12, !16, i64 16}
!24 = !{!"_ZTSN4llvm9StringMapIjNS_15MallocAllocatorEEE", !23, i64 0}
!25 = !{!"_ZTSN4llvm9StringMapINS_8RegisterENS_15MallocAllocatorEEE", !23, i64 0}
!26 = !{!"_ZTSN4llvm9StringMapIPKjNS_15MallocAllocatorEEE", !23, i64 0}
!27 = !{!"_ZTSN4llvm9StringMapIiNS_15MallocAllocatorEEE", !23, i64 0}
!28 = !{!"_ZTSN4llvm9StringMapINS_17MachineMemOperand5FlagsENS_15MallocAllocatorEEE", !23, i64 0}
!29 = !{!"_ZTSN4llvm9StringMapIPKNS_15MCRegisterClassENS_15MallocAllocatorEEE", !23, i64 0}
!30 = !{!"_ZTSN4llvm9StringMapIPKNS_12RegisterBankENS_15MallocAllocatorEEE", !23, i64 0}
!31 = !{!"_ZTSN4llvm23PerTargetMIParsingStateE", !20, i64 0, !24, i64 8, !25, i64 32, !26, i64 56, !24, i64 80, !27, i64 104, !24, i64 128, !24, i64 152, !28, i64 176, !29, i64 200, !30, i64 224}
!32 = !{!31, !20, i64 0}
!33 = !{}
!34 = !{i64 8}
!35 = !{!23, !16, i64 12}
!36 = !{!23, !22, i64 0}
!37 = !{!23, !16, i64 8}
!38 = !{!"p1 _ZTSN4llvm18StringMapEntryBaseE", !19, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"long", !15, i64 0}
!41 = !{!"_ZTSN4llvm18StringMapEntryBaseE", !40, i64 0}
!42 = !{!41, !40, i64 0}
!43 = !{!"vtable pointer", !14, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !19, i64 0}
!46 = !{!"_ZTSN4llvm10MCRegisterE", !16, i64 0}
!47 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !19, i64 0}
!48 = !{!"p1 short", !19, i64 0}
!49 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !19, i64 0}
!50 = !{!"p1 omnipotent char", !19, i64 0}
!51 = !{!"p1 int", !19, i64 0}
!52 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !19, i64 0}
!53 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !19, i64 0}
!54 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !53, i64 0, !51, i64 8, !16, i64 16, !16, i64 20}
!55 = !{!"p1 _ZTSSt6vectorItSaItEE", !19, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !58, i64 0}
!60 = !{!"_ZTSN4llvm14MCRegisterInfoE", !45, i64 8, !16, i64 16, !46, i64 20, !46, i64 24, !47, i64 32, !16, i64 40, !16, i64 44, !48, i64 48, !48, i64 56, !49, i64 64, !50, i64 72, !50, i64 80, !48, i64 88, !16, i64 96, !48, i64 104, !51, i64 112, !16, i64 120, !16, i64 124, !16, i64 128, !16, i64 132, !52, i64 136, !52, i64 144, !52, i64 152, !52, i64 160, !54, i64 168, !54, i64 192, !59, i64 216}
!61 = !{!60, !50, i64 80}
!62 = !{!"short", !15, i64 0}
!63 = !{!"bool", !15, i64 0}
!64 = !{!"_ZTSN4llvm11LaneBitmaskE", !40, i64 0}
!65 = !{!"_ZTSN4llvm15MCRegisterClassE", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !62, i64 16, !62, i64 18, !62, i64 20, !15, i64 22, !63, i64 23, !63, i64 24, !16, i64 28, !16, i64 32, !64, i64 40, !15, i64 48, !63, i64 49, !15, i64 50, !15, i64 51, !63, i64 52, !63, i64 53, !16, i64 56, !62, i64 60}
!66 = !{!65, !16, i64 8}
!67 = !{!"_ZTSN4llvm9StringRefE", !50, i64 0, !40, i64 8}
!68 = !{!67, !50, i64 0}
!69 = !{!67, !40, i64 8}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!71 = !{!70, !50, i64 0}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !70, i64 0, !40, i64 8, !15, i64 16}
!73 = !{!72, !50, i64 0}
!74 = !{!72, !40, i64 8}
!75 = !{!15, !15, i64 0}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"p1 _ZTSN4llvm12RegisterBankE", !19, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!16, !16, i64 0}
!80 = !{!60, !50, i64 72}
!81 = !{!60, !45, i64 8}
!82 = !{!"_ZTSN4llvm14MCRegisterDescE", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !62, i64 20, !63, i64 22, !63, i64 23}
!83 = !{!82, !16, i64 0}
!84 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !19, i64 0}
!85 = !{!"_ZTSN4llvm11MCInstrInfoE", !84, i64 0, !51, i64 8, !50, i64 16, !50, i64 24, !19, i64 32, !16, i64 40, !48, i64 48, !62, i64 56}
!86 = !{!"_ZTSN4llvm21StringMapEntryStorageIjEE", !41, i64 0, !16, i64 8}
!87 = !{!86, !16, i64 8}
!88 = !{!50, !50, i64 0}
!89 = !{!51, !51, i64 0}
!90 = !{!"_ZTSN4llvm21StringMapEntryStorageIiEE", !41, i64 0, !16, i64 8}
!91 = !{!90, !16, i64 8}
!92 = !{!"_ZTSSt4pairIjPKcE", !16, i64 0, !50, i64 8}
!93 = !{!92, !50, i64 8}
!94 = !{!"_ZTSN4llvm17MachineMemOperand5FlagsE", !15, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSN4llvm21StringMapEntryStorageINS_17MachineMemOperand5FlagsEEE", !41, i64 0, !94, i64 8}
!97 = !{!96, !94, i64 8}
!98 = !{!47, !47, i64 0}
!99 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !19, i64 0, !16, i64 8, !16, i64 12}
!100 = !{!99, !19, i64 0}
!101 = !{!99, !16, i64 8}
!102 = !{!99, !16, i64 12}
!103 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !19, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !99, i64 0}
!106 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !105, i64 0}
!107 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !106, i64 0}
!108 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !15, i64 0}
!109 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !107, i64 0, !108, i64 16}
!110 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !99, i64 0}
!111 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !110, i64 0}
!112 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !111, i64 0}
!113 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !112, i64 0}
!114 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !50, i64 0, !40, i64 8, !109, i64 16, !113, i64 64}
!115 = !{!"p1 _ZTSN4llvm9SourceMgrE", !19, i64 0}
!116 = !{!"p1 _ZTSN4llvm11SlotMappingE", !19, i64 0}
!117 = !{!"p1 _ZTSN4llvm23PerTargetMIParsingStateE", !19, i64 0}
!118 = !{!"_ZTSSt4lessIjE"}
!119 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !118, i64 0}
!120 = !{!"_ZTSSt14_Rb_tree_color", !15, i64 0}
!121 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !19, i64 0}
!122 = !{!"_ZTSSt18_Rb_tree_node_base", !120, i64 0, !121, i64 8, !121, i64 16, !121, i64 24}
!123 = !{!"_ZTSSt15_Rb_tree_header", !122, i64 0, !40, i64 32}
!124 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !119, i64 0, !123, i64 8}
!125 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN4llvm18TypedTrackingMDRefINS2_6MDNodeEEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE", !124, i64 0}
!126 = !{!"_ZTSSt3mapIjN4llvm18TypedTrackingMDRefINS0_6MDNodeEEESt4lessIjESaISt4pairIKjS3_EEE", !125, i64 0}
!127 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !119, i64 0, !123, i64 8}
!128 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjS0_ISt10unique_ptrIN4llvm7MDTupleENS3_17TempMDNodeDeleterEENS3_5SMLocEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE", !127, i64 0}
!129 = !{!"_ZTSSt3mapIjSt4pairISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEESt4lessIjESaIS0_IKjS7_EEE", !128, i64 0}
!130 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjPNS_17MachineBasicBlockEEE", !19, i64 0}
!131 = !{!"_ZTSN4llvm8DenseMapIjPNS_17MachineBasicBlockENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEE", !130, i64 0, !51, i64 8, !16, i64 16, !16, i64 20}
!132 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_8RegisterEPNS_8VRegInfoEEE", !19, i64 0}
!133 = !{!"_ZTSN4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !132, i64 0, !51, i64 8, !16, i64 16, !16, i64 20}
!134 = !{!"_ZTSN4llvm9StringMapIPNS_8VRegInfoENS_15MallocAllocatorEEE", !23, i64 0}
!135 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjiEE", !19, i64 0}
!136 = !{!"_ZTSN4llvm8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEE", !135, i64 0, !51, i64 8, !16, i64 16, !16, i64 20}
!137 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjjEE", !19, i64 0}
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!1489 = !{!1484, !1482}
!1490 = !{!1488, !1486}
!1491 = distinct !{!1491, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1492 = distinct !{!1492, !1491, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1493 = distinct !{!1493, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1494 = distinct !{!1494, !1493, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1495 = distinct !{!1495, !76}
!1496 = distinct !{!1496, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1497 = distinct !{!1497, !1496, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1498 = distinct !{!1498, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1499 = distinct !{!1499, !1498, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1500 = !{!1494, !1492}
!1501 = !{!1499, !1497}
!1502 = distinct !{!1502, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1503 = distinct !{!1503, !1502, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1504 = distinct !{!1504, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1505 = distinct !{!1505, !1504, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1506 = distinct !{!1506, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1507 = distinct !{!1507, !1506, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1508 = distinct !{!1508, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1509 = distinct !{!1509, !1508, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1510 = !{!1505, !1503}
!1511 = !{!1509, !1507}
!1512 = distinct !{!1512, i1 true, !"_ZN4llvmplEPKcNS_9StringRefE"}
!1513 = distinct !{!1513, !1512, !"_ZN4llvmplEPKcNS_9StringRefE: argument 0"}
!1514 = distinct !{!1514, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1515 = distinct !{!1515, !1514, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1516 = distinct !{!1516, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1517 = distinct !{!1517, !1516, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1518 = distinct !{!1518, !76}
!1519 = distinct !{!1519, i1 true, !"_ZN4llvmplEPKcNS_9StringRefE"}
!1520 = distinct !{!1520, !1519, !"_ZN4llvmplEPKcNS_9StringRefE: argument 0"}
!1521 = distinct !{!1521, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1522 = distinct !{!1522, !1521, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1523 = distinct !{!1523, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1524 = distinct !{!1524, !1523, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1525 = distinct !{!1525, i1 true, !"_ZN4llvmplEPKcNS_9StringRefE"}
!1526 = distinct !{!1526, !1525, !"_ZN4llvmplEPKcNS_9StringRefE: argument 0"}
!1527 = distinct !{!1527, i1 true, !"_ZN4llvmplEPKcNS_9StringRefE"}
!1528 = distinct !{!1528, !1527, !"_ZN4llvmplEPKcNS_9StringRefE: argument 0"}
!1529 = !{!1513}
!1530 = !{!1517, !1515}
!1531 = !{!1520}
!1532 = !{!1524, !1522}
!1533 = !{!1526}
!1534 = !{!1528}
!1535 = !{!65, !62, i64 20}
!1536 = distinct !{!1536, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1537 = distinct !{!1537, !1536, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1538 = distinct !{!1538, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1539 = distinct !{!1539, !1538, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1540 = distinct !{!1540, !76}
!1541 = distinct !{!1541, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1542 = distinct !{!1542, !1541, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1543 = distinct !{!1543, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1544 = distinct !{!1544, !1543, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1545 = !{!1539, !1537}
!1546 = !{!1544, !1542}
!1547 = distinct !{!1547, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!1548 = distinct !{!1548, !1547, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!1549 = !{!1548}
!1550 = !{!"_ZTSN4llvm9SourceMgr8DiagKindE", !15, i64 0}
!1551 = !{!"_ZTSNSt12_Vector_baseISt4pairIjjESaIS1_EE12_Vector_implE", !376, i64 0}
!1552 = !{!"_ZTSSt12_Vector_baseISt4pairIjjESaIS1_EE", !1551, i64 0}
!1553 = !{!"_ZTSSt6vectorISt4pairIjjESaIS1_EE", !1552, i64 0}
!1554 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_7SMFixItEvEE", !99, i64 0}
!1555 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EEE", !1554, i64 0}
!1556 = !{!"_ZTSN4llvm15SmallVectorImplINS_7SMFixItEEE", !1555, i64 0}
!1557 = !{!"_ZTSN4llvm18SmallVectorStorageINS_7SMFixItELj4EEE", !15, i64 0}
!1558 = !{!"_ZTSN4llvm11SmallVectorINS_7SMFixItELj4EEE", !1556, i64 0, !1557, i64 16}
!1559 = !{!"_ZTSN4llvm12SMDiagnosticE", !115, i64 0, !303, i64 8, !72, i64 16, !16, i64 48, !16, i64 52, !1550, i64 56, !72, i64 64, !72, i64 96, !1553, i64 128, !1558, i64 152}
!1560 = !{!1559, !16, i64 48}
!1561 = !{!1559, !16, i64 52}
!1562 = !{!1559, !1550, i64 56}
!1563 = distinct !{!1563, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E4findERKj"}
!1564 = distinct !{!1564, !1563, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E4findERKj: argument 0"}
!1565 = distinct !{!1565, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E7find_asIjEENS_16DenseMapIteratorIjiS3_S6_Lb0EEERKT_"}
!1566 = distinct !{!1566, !1565, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E7find_asIjEENS_16DenseMapIteratorIjiS3_S6_Lb0EEERKT_: argument 0"}
!1567 = distinct !{!1567, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E6getRepEv"}
!1568 = distinct !{!1568, !1567, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E6getRepEv: argument 0"}
!1569 = distinct !{!1569, i1 true, !"_ZNK4llvm8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEE6getRepEv"}
!1570 = distinct !{!1570, !1569, !"_ZNK4llvm8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEE6getRepEv: argument 0"}
!1571 = distinct !{!1571, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1572 = distinct !{!1572, !1571, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1573 = distinct !{!1573, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1574 = distinct !{!1574, !1573, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1575 = distinct !{!1575, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1576 = distinct !{!1576, !1575, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1577 = distinct !{!1577, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1578 = distinct !{!1578, !1577, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1579 = distinct !{!1579, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1580 = distinct !{!1580, !1579, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1581 = distinct !{!1581, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1582 = distinct !{!1582, !1581, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1583 = distinct !{!1583, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1584 = distinct !{!1584, !1583, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1585 = distinct !{!1585, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1586 = distinct !{!1586, !1585, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1587 = distinct !{!1587, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1588 = distinct !{!1588, !1587, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1589 = distinct !{!1589, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1590 = distinct !{!1590, !1589, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1591 = distinct !{!1591, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1592 = distinct !{!1592, !1591, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1593 = distinct !{!1593, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1594 = distinct !{!1594, !1593, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1595 = !{!1570, !1568, !1566, !1564}
!1596 = !{!1566, !1564}
!1597 = !{!1574, !1572}
!1598 = !{!1578, !1576}
!1599 = !{!252, !156, i64 48}
!1600 = !{!"p1 _ZTSN4llvm16MachineFrameInfo11StackObjectE", !19, i64 0}
!1601 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MachineFrameInfo11StackObjectESaIS2_EE17_Vector_impl_dataE", !1600, i64 0, !1600, i64 8, !1600, i64 16}
!1602 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MachineFrameInfo11StackObjectESaIS2_EE12_Vector_implE", !1601, i64 0}
!1603 = !{!"_ZTSSt12_Vector_baseIN4llvm16MachineFrameInfo11StackObjectESaIS2_EE", !1602, i64 0}
!1604 = !{!"_ZTSSt6vectorIN4llvm16MachineFrameInfo11StackObjectESaIS2_EE", !1603, i64 0}
!1605 = !{!"_ZTSN4llvm16FramePointerKindE", !15, i64 0}
!1606 = !{!"p1 _ZTSN4llvm15CalleeSavedInfoE", !19, i64 0}
!1607 = !{!"_ZTSNSt12_Vector_baseIN4llvm15CalleeSavedInfoESaIS1_EE17_Vector_impl_dataE", !1606, i64 0, !1606, i64 8, !1606, i64 16}
!1608 = !{!"_ZTSNSt12_Vector_baseIN4llvm15CalleeSavedInfoESaIS1_EE12_Vector_implE", !1607, i64 0}
!1609 = !{!"_ZTSSt12_Vector_baseIN4llvm15CalleeSavedInfoESaIS1_EE", !1608, i64 0}
!1610 = !{!"_ZTSSt6vectorIN4llvm15CalleeSavedInfoESaIS1_EE", !1609, i64 0}
!1611 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIilEvEE", !99, i64 0}
!1612 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIilELb1EEE", !1611, i64 0}
!1613 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIilEEE", !1612, i64 0}
!1614 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIilELj32EEE", !15, i64 0}
!1615 = !{!"_ZTSN4llvm11SmallVectorISt4pairIilELj32EEE", !1613, i64 0, !1614, i64 16}
!1616 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_17MachineBasicBlockESt6vectorINS_15CalleeSavedInfoESaIS5_EEEE", !19, i64 0}
!1617 = !{!"_ZTSN4llvm8DenseMapIPNS_17MachineBasicBlockESt6vectorINS_15CalleeSavedInfoESaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE", !1616, i64 0, !51, i64 8, !16, i64 16, !16, i64 20}
!1618 = !{!"_ZTSN4llvm16MachineFrameInfoE", !184, i64 0, !63, i64 1, !63, i64 2, !1604, i64 8, !16, i64 32, !63, i64 36, !63, i64 37, !63, i64 38, !63, i64 39, !63, i64 40, !40, i64 48, !40, i64 56, !184, i64 64, !63, i64 65, !63, i64 66, !1605, i64 68, !16, i64 72, !16, i64 76, !40, i64 80, !16, i64 88, !1610, i64 96, !63, i64 120, !1615, i64 128, !40, i64 656, !184, i64 664, !63, i64 665, !63, i64 666, !63, i64 667, !63, i64 668, !63, i64 669, !63, i64 670, !1617, i64 672, !1617, i64 696, !40, i64 720}
!1619 = !{!1618, !16, i64 32}
!1620 = !{!1601, !1600, i64 0}
!1621 = !{!"p1 _ZTSN4llvm10AllocaInstE", !19, i64 0}
!1622 = !{!"_ZTSN4llvm16MachineFrameInfo11StackObjectE", !40, i64 0, !40, i64 8, !184, i64 16, !63, i64 17, !63, i64 18, !63, i64 19, !63, i64 20, !15, i64 21, !1621, i64 24, !63, i64 32, !63, i64 33, !63, i64 34, !63, i64 35, !15, i64 36}
!1623 = !{!1622, !1621, i64 24}
!1624 = !{!1582, !1580}
!1625 = !{!1586, !1584}
!1626 = !{!1590, !1588}
!1627 = !{!1594, !1592}
!1628 = distinct !{!1628, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E4findERKj"}
!1629 = distinct !{!1629, !1628, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E4findERKj: argument 0"}
!1630 = distinct !{!1630, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E7find_asIjEENS_16DenseMapIteratorIjiS3_S6_Lb0EEERKT_"}
!1631 = distinct !{!1631, !1630, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E7find_asIjEENS_16DenseMapIteratorIjiS3_S6_Lb0EEERKT_: argument 0"}
!1632 = distinct !{!1632, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E6getRepEv"}
!1633 = distinct !{!1633, !1632, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEEEjiS3_S6_E6getRepEv: argument 0"}
!1634 = distinct !{!1634, i1 true, !"_ZNK4llvm8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEE6getRepEv"}
!1635 = distinct !{!1635, !1634, !"_ZNK4llvm8DenseMapIjiNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjiEEE6getRepEv: argument 0"}
!1636 = distinct !{!1636, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1637 = distinct !{!1637, !1636, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1638 = distinct !{!1638, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1639 = distinct !{!1639, !1638, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1640 = distinct !{!1640, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1641 = distinct !{!1641, !1640, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1642 = distinct !{!1642, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1643 = distinct !{!1643, !1642, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1644 = !{!1635, !1633, !1631, !1629}
!1645 = !{!1631, !1629}
!1646 = !{!1639, !1637}
!1647 = !{!1643, !1641}
!1648 = distinct !{!1648, i1 true, !"_ZN4llvmplEPKcNS_9StringRefE"}
!1649 = distinct !{!1649, !1648, !"_ZN4llvmplEPKcNS_9StringRefE: argument 0"}
!1650 = distinct !{!1650, i1 true, !"_ZN4llvmplERKNS_5TwineES2_"}
!1651 = distinct !{!1651, !1650, !"_ZN4llvmplERKNS_5TwineES2_: argument 0"}
!1652 = distinct !{!1652, i1 true, !"_ZNK4llvm5Twine6concatERKS0_"}
!1653 = distinct !{!1653, !1652, !"_ZNK4llvm5Twine6concatERKS0_: argument 0"}
!1654 = !{!1649}
!1655 = !{!1653, !1651}
!1656 = distinct !{!1656, i1 true, !"_ZNK4llvm8ArrayRefINS_16MCCFIInstruction22VectorRegisterWithLaneEEcvSt6vectorIS2_SaIS2_EEEv"}
!1657 = distinct !{!1657, !1656, !"_ZNK4llvm8ArrayRefINS_16MCCFIInstruction22VectorRegisterWithLaneEEcvSt6vectorIS2_SaIS2_EEEv: argument 0"}
!1658 = !{!1657}
!1659 = !{i64 0, i64 4, !79, i64 4, i64 4, !79, i64 8, i64 4, !79}
!1660 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstruction22VectorRegisterWithLaneESaIS2_EE12_Vector_implE", !409, i64 0}
!1661 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstruction22VectorRegisterWithLaneESaIS2_EE", !1660, i64 0}
!1662 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstruction22VectorRegisterWithLaneESaIS2_EE", !1661, i64 0}
!1663 = !{!"_ZTSN4llvm16MCCFIInstruction21VectorRegistersFieldsE", !16, i64 0, !1662, i64 8}
!1664 = !{!1663, !16, i64 0}
!1665 = !{!409, !408, i64 8}
!1666 = !{!409, !408, i64 16}
!1667 = distinct !{!1667, i1 true, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!1668 = distinct !{!1668, !1667, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!1669 = !{!406, !50, i64 16}
!1670 = !{!406, !50, i64 8}
!1671 = !{!1668}
!1672 = distinct !{null}
!1673 = !{!188, !188, i64 0}
!1674 = !{!"p1 _ZTSN4llvm17PseudoSourceValueE", !19, i64 0}
!1675 = !{!1674, !1674, i64 0}
!1676 = !{!"_ZTSN4llvm17PseudoSourceValueE", !16, i64 8, !16, i64 12}
!1677 = !{!1676, !16, i64 12}
!1678 = !{!266, !264, i64 8}
!1679 = !{!"p1 _ZTSN4llvm11LLVMContextE", !19, i64 0}
!1680 = !{!"_ZTSN4llvm4Type6TypeIDE", !15, i64 0}
!1681 = !{!"p2 _ZTSN4llvm4TypeE", !21, i64 0}
!1682 = !{!"_ZTSN4llvm4TypeE", !1679, i64 0, !1680, i64 8, !16, i64 9, !16, i64 12, !1681, i64 16}
!1683 = !{!1682, !1681, i64 16}
!1684 = !{!264, !264, i64 0}
!1685 = distinct !{!1685, i1 true, !"_ZN4llvm7MDTuple12getTemporaryERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEE"}
!1686 = distinct !{!1686, !1685, !"_ZN4llvm7MDTuple12getTemporaryERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEE: argument 0"}
!1687 = !{!303, !50, i64 0}
!1688 = !{!1686}
!1689 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm7MDTupleELb0EE", !361, i64 0}
!1690 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm7MDTupleENS0_17TempMDNodeDeleterEEE", !1689, i64 0}
!1691 = !{!"_ZTSSt5tupleIJPN4llvm7MDTupleENS0_17TempMDNodeDeleterEEE", !1690, i64 0}
!1692 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm7MDTupleENS0_17TempMDNodeDeleterEE", !1691, i64 0}
!1693 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm7MDTupleENS0_17TempMDNodeDeleterELb1ELb1EE", !1692, i64 0}
!1694 = !{!"_ZTSSt10unique_ptrIN4llvm7MDTupleENS0_17TempMDNodeDeleterEE", !1693, i64 0}
!1695 = !{!"_ZTSSt4pairISt10unique_ptrIN4llvm7MDTupleENS1_17TempMDNodeDeleterEENS1_5SMLocEE", !1694, i64 0, !303, i64 8}
!1696 = !{!"_ZTSSt4pairIKjS_ISt10unique_ptrIN4llvm7MDTupleENS2_17TempMDNodeDeleterEENS2_5SMLocEEE", !16, i64 0, !1695, i64 8}
!1697 = !{!1696, !16, i64 0}
!1698 = distinct !{!1698, !76}
!1699 = distinct !{!1699, !76}
!1700 = distinct !{!1700, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E6getRepEv"}
!1701 = distinct !{!1701, !1700, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E6getRepEv: argument 0"}
!1702 = distinct !{!1702, i1 true, !"_ZNK4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE6getRepEv"}
!1703 = distinct !{!1703, !1702, !"_ZNK4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE6getRepEv: argument 0"}
!1704 = !{!1703, !1701}
!1705 = distinct !{!1705, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E6getRepEv"}
!1706 = distinct !{!1706, !1705, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E6getRepEv: argument 0"}
!1707 = distinct !{!1707, i1 true, !"_ZNK4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE6getRepEv"}
!1708 = distinct !{!1708, !1707, !"_ZNK4llvm8DenseMapINS_8RegisterEPNS_8VRegInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE6getRepEv: argument 0"}
!1709 = !{!1708, !1706}
!1710 = distinct !{!1710, !76}
!1711 = distinct !{!1711, !76}
!1712 = distinct !{!1712, !76}
!1713 = distinct !{null, null}
!1714 = !{!"_ZTSZN4llvm12MIRFormatter12parseIRValueENS_9StringRefERNS_15MachineFunctionERNS_25PerFunctionMIParsingStateERPKNS_5ValueENS_12function_refIFbPKcRKNS_5TwineEEEEE3$_0", !363, i64 0}
!1715 = !{!1714, !363, i64 0}
end_hunk_2
