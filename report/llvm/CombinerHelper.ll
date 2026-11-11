Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CombinerHelper?download=true
inline.NumInlined: 14639
inline.NumDeleted: 5068
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0
%"struct.llvm::SmallVectorStorage.343" = type { [48 x i8] }
%"class.llvm::SmallVector.344" = type { %"class.llvm::SmallVectorImpl.132", %"struct.llvm::SmallVectorStorage.345" }
%"class.llvm::SmallVectorImpl.132" = type { %"class.llvm::SmallVectorTemplateBase.133" }
%"class.llvm::SmallVectorTemplateBase.133" = type { %"class.llvm::SmallVectorTemplateCommon.134" }
%"class.llvm::SmallVectorTemplateCommon.134" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.345" = type { [48 x i8] }
%"struct.llvm::TargetLoweringBase::AddrMode" = type { ptr, i64, i8, i64, i64 }
%"class.std::optional.360" = type { %"struct.std::_Optional_base.361" }
%"struct.std::_Optional_base.361" = type { %"struct.std::_Optional_payload.363" }
%"struct.std::_Optional_payload.363" = type { %"struct.std::_Optional_payload.base.367", [7 x i8] }
%"struct.std::_Optional_payload.base.367" = type { %"struct.std::_Optional_payload_base.base.366" }
%"struct.std::_Optional_payload_base.base.366" = type { %"union.std::_Optional_payload_base<llvm::APInt>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::APInt>::_Storage" = type { %"class.llvm::APInt" }
%class.anon.388 = type <{ ptr, ptr, %"class.llvm::Register", %"class.llvm::Register", %"struct.llvm::MachinePointerInfo", %"struct.llvm::Align", [7 x i8] }>
%"class.llvm::MachineOperand" = type { i32, %union.anon.184, ptr, %"union.llvm::MachineOperand::ContentsUnion" }
%union.anon.184 = type { i32 }
%"union.llvm::MachineOperand::ContentsUnion" = type { %"class.llvm::ArrayRef.185" }
%"class.llvm::ArrayRef.185" = type { ptr, i64 }
%"class.std::optional.462" = type { %"struct.std::_Optional_base.463" }
%"struct.std::_Optional_base.463" = type { %"struct.std::_Optional_payload.465" }
%"struct.std::_Optional_payload.465" = type { %"struct.std::_Optional_payload_base.base.467", [7 x i8] }
%"struct.std::_Optional_payload_base.base.467" = type { %"union.std::_Optional_payload_base<llvm::DefinitionAndSourceRegister>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::DefinitionAndSourceRegister>::_Storage" = type { %"struct.llvm::DefinitionAndSourceRegister" }
%"struct.llvm::DefinitionAndSourceRegister" = type <{ ptr, %"class.llvm::Register", [4 x i8] }>
%"class.llvm::MachineIRBuilder" = type { ptr, %"struct.llvm::MachineIRBuilderState" }
%"struct.llvm::MachineIRBuilderState" = type { ptr, ptr, ptr, %"class.llvm::DebugLoc", ptr, ptr, ptr, ptr, %"class.llvm::MachineInstrBundleIterator", ptr, ptr }
%"class.llvm::DebugLoc" = type { ptr }
%"class.llvm::GISelObserverWrapper" = type { %"class.llvm::MachineFunction::Delegate", %"class.llvm::GISelChangeObserver", %"class.llvm::SmallVector.421" }
%"class.llvm::MachineFunction::Delegate" = type { ptr }
%"class.llvm::GISelChangeObserver" = type { ptr, %"class.llvm::SmallPtrSet.142" }
%"class.llvm::SmallPtrSet.142" = type { %"class.llvm::SmallPtrSetImpl.base.144", [4 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.144" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallVector.421" = type { %"class.llvm::SmallVectorImpl.422", %"struct.llvm::SmallVectorStorage.425" }
%"class.llvm::SmallVectorImpl.422" = type { %"class.llvm::SmallVectorTemplateBase.423" }
%"class.llvm::SmallVectorTemplateBase.423" = type { %"class.llvm::SmallVectorTemplateCommon.424" }
%"class.llvm::SmallVectorTemplateCommon.424" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.425" = type { [32 x i8] }
%"class.llvm::LegalizerHelper" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.llvm::detail::IEEEFloat" = type <{ ptr, %"union.llvm::detail::IEEEFloat::Significand", i32, i8, [3 x i8] }>
%"union.llvm::detail::IEEEFloat::Significand" = type { i64 }
%"class.llvm::APFloat" = type { %"union.llvm::APFloat::Storage" }
%"union.llvm::APFloat::Storage" = type { %"class.llvm::detail::DoubleAPFloat", [8 x i8] }
%"class.llvm::detail::DoubleAPFloat" = type { ptr, ptr }
%"struct.llvm::MIPatternMatch::ICstOrSplatMatch" = type { ptr }
%class.anon.433 = type { ptr, %"class.llvm::LLT", %"class.llvm::APInt", ptr }
%"class.llvm::SmallVector.437" = type { %"class.llvm::SmallVectorImpl.107", %"struct.llvm::SmallVectorStorage.438" }
%"struct.llvm::SmallVectorStorage.438" = type { [64 x i8] }
%"struct.llvm::MIPatternMatch::UnaryOp_match.443" = type { %"struct.llvm::MIPatternMatch::And" }
%"struct.llvm::MIPatternMatch::And" = type { %"struct.llvm::MIPatternMatch::And.444", %"struct.llvm::MIPatternMatch::CheckType" }
%"struct.llvm::MIPatternMatch::And.444" = type { %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::bind_ty" = type { ptr }
%"struct.llvm::MIPatternMatch::CheckType" = type { %"class.llvm::LLT" }
%"struct.llvm::MIPatternMatch::UnaryOp_match.450" = type { %"struct.llvm::MIPatternMatch::ConstantMatch" }
%"struct.llvm::MIPatternMatch::ConstantMatch" = type { ptr }
%"struct.llvm::MIPatternMatch::UnaryOp_match.451" = type { %"struct.llvm::MIPatternMatch::And.452" }
%"struct.llvm::MIPatternMatch::And.452" = type { %"struct.llvm::MIPatternMatch::And.453", %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::And.453" = type { %"struct.llvm::MIPatternMatch::CheckType" }
%"struct.llvm::KnownBits" = type { %"class.llvm::APInt", %"class.llvm::APInt" }
%"class.std::optional.472" = type { %"struct.std::_Optional_base.473" }
%"struct.std::_Optional_base.473" = type { %"struct.std::_Optional_payload.475" }
%"struct.std::_Optional_payload.475" = type { %"struct.std::_Optional_payload.base.479", [7 x i8] }
%"struct.std::_Optional_payload.base.479" = type { %"struct.std::_Optional_payload_base.base.478" }
%"struct.std::_Optional_payload_base.base.478" = type { %"union.std::_Optional_payload_base<llvm::FPValueAndVReg>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::FPValueAndVReg>::_Storage" = type { %"struct.llvm::FPValueAndVReg" }
%"struct.llvm::FPValueAndVReg" = type <{ %"class.llvm::APFloat", %"class.llvm::Register", [4 x i8] }>
%"struct.llvm::MIPatternMatch::GFCstOrSplatGFCstMatch" = type { ptr }
%"struct.llvm::MIPatternMatch::BinaryOp_match.975" = type { %"struct.llvm::MIPatternMatch::SpecificConstantMatch", %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::SpecificConstantMatch" = type { %"class.llvm::APInt" }
%class.anon.495 = type { ptr, ptr, ptr, ptr }
%"struct.llvm::MIPatternMatch::BinaryOp_match.978" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::SpecificConstantMatch" }
%"class.llvm::SmallVector.498" = type { %"class.llvm::SmallVectorImpl.499", %"struct.llvm::SmallVectorStorage.502" }
%"class.llvm::SmallVectorImpl.499" = type { %"class.llvm::SmallVectorTemplateBase.500" }
%"class.llvm::SmallVectorTemplateBase.500" = type { %"class.llvm::SmallVectorTemplateCommon.501" }
%"class.llvm::SmallVectorTemplateCommon.501" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.502" = type { [128 x i8] }
%"class.std::function.504" = type { %"class.std::_Function_base", ptr }
%"struct.llvm::InstructionBuildSteps" = type { i32, %"class.llvm::SmallVector.498" }
%"struct.llvm::InstructionStepsMatchInfo" = type { %"class.llvm::SmallVector.513" }
%"class.llvm::SmallVector.513" = type { %"class.llvm::SmallVectorImpl.514", %"struct.llvm::SmallVectorStorage.517" }
%"class.llvm::SmallVectorImpl.514" = type { %"class.llvm::SmallVectorTemplateBase.515" }
%"class.llvm::SmallVectorTemplateBase.515" = type { %"class.llvm::SmallVectorTemplateCommon.516" }
%"class.llvm::SmallVectorTemplateCommon.516" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.517" = type { [304 x i8] }
%"struct.llvm::MIPatternMatch::BinaryOp_match.519" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.520", %"struct.llvm::MIPatternMatch::ICstOrSplatMatch.521" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.520" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::ICstOrSplatMatch.521" }
%"struct.llvm::MIPatternMatch::ICstOrSplatMatch.521" = type { ptr }
%"struct.llvm::MIPatternMatch::BinaryOp_match.531" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.532", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.532" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::ConstantMatch.487" = type { ptr }
%"class.std::optional.548" = type { %"struct.std::_Optional_base.549" }
%"struct.std::_Optional_base.549" = type { %"struct.std::_Optional_payload.551" }
%"struct.std::_Optional_payload.551" = type { %"struct.std::_Optional_payload.base.557", [7 x i8] }
%"struct.std::_Optional_payload.base.557" = type { %"struct.std::_Optional_payload_base.base.556" }
%"struct.std::_Optional_payload_base.base.556" = type <{ %"union.std::_Optional_payload_base<llvm::SmallVector<llvm::Register, 8>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::SmallVector<llvm::Register, 8>>::_Storage" = type { %"class.llvm::SmallVector.554" }
%"class.llvm::SmallVector.554" = type { %"class.llvm::SmallVectorImpl.107", %"struct.llvm::SmallVectorStorage.555" }
%"struct.llvm::SmallVectorStorage.555" = type { [32 x i8] }
%"class.llvm::SmallVector.560" = type { %"class.llvm::SmallVectorImpl.561", %"struct.llvm::SmallVectorStorage.564" }
%"class.llvm::SmallVectorImpl.561" = type { %"class.llvm::SmallVectorTemplateBase.562" }
%"class.llvm::SmallVectorTemplateBase.562" = type { %"class.llvm::SmallVectorTemplateCommon.563" }
%"class.llvm::SmallVectorTemplateCommon.563" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.564" = type { [56 x i8] }
%"class.std::optional.566" = type { %"struct.std::_Optional_base.567" }
%"struct.std::_Optional_base.567" = type { %"struct.std::_Optional_payload.569" }
%"struct.std::_Optional_payload.569" = type { %"struct.std::_Optional_payload_base.base.577", [7 x i8] }
%"struct.std::_Optional_payload_base.base.577" = type <{ %"union.std::_Optional_payload_base<std::tuple<llvm::GZExtLoad *, long, llvm::GZExtLoad *>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::tuple<llvm::GZExtLoad *, long, llvm::GZExtLoad *>>::_Storage" = type { %"class.std::tuple.571" }
%"class.std::tuple.571" = type { %"struct.std::_Tuple_impl.572" }
%"struct.std::_Tuple_impl.572" = type { %"struct.std::_Tuple_impl.573", %"struct.std::_Head_base.576" }
%"struct.std::_Tuple_impl.573" = type { %"struct.std::_Tuple_impl.574", %"struct.std::_Head_base.525" }
%"struct.std::_Tuple_impl.574" = type { %"struct.std::_Head_base.575" }
%"struct.std::_Head_base.575" = type { ptr }
%"struct.std::_Head_base.525" = type { i64 }
%"struct.std::_Head_base.576" = type { ptr }
%"class.llvm::SmallSetVector" = type { %"class.llvm::SetVector" }
%"class.llvm::SetVector" = type { %"class.llvm::DenseSet", %"class.llvm::SmallVector.582" }
%"class.llvm::DenseSet" = type { %"class.llvm::detail::DenseSetImpl" }
%"class.llvm::detail::DenseSetImpl" = type { %"class.llvm::DenseMap.580" }
%"class.llvm::DenseMap.580" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.582" = type { %"class.llvm::SmallVectorImpl.561", %"struct.llvm::SmallVectorStorage.583" }
%"struct.llvm::SmallVectorStorage.583" = type { [64 x i8] }
%"class.llvm::SmallSet" = type { %"class.llvm::SmallVector.584", %"class.std::set" }
%"class.llvm::SmallVector.584" = type { %"class.llvm::SmallVectorImpl.585", %"struct.llvm::SmallVectorStorage.588" }
%"class.llvm::SmallVectorImpl.585" = type { %"class.llvm::SmallVectorTemplateBase.586" }
%"class.llvm::SmallVectorTemplateBase.586" = type { %"class.llvm::SmallVectorTemplateCommon.587" }
%"class.llvm::SmallVectorTemplateCommon.587" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.588" = type { [64 x i8] }
%"class.std::set" = type { %"class.std::_Rb_tree.589" }
%"class.std::_Rb_tree.589" = type { %"struct.std::_Rb_tree<long, long, std::_Identity<long>, std::less<long>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<long, long, std::_Identity<long>, std::less<long>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::pair.608" = type { %"class.llvm::SmallSetIterator", i8, [7 x i8] }
%"class.llvm::SmallSetIterator" = type <{ %union.anon.611, i8, [7 x i8] }>
%union.anon.611 = type { %"struct.std::_Rb_tree_const_iterator" }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"class.llvm::SmallDenseMap" = type { i32, %union.anon.617 }
%union.anon.617 = type { %"struct.llvm::SmallDenseMap<long, long, 8>::LargeRep", [112 x i8] }
%"struct.llvm::SmallDenseMap<long, long, 8>::LargeRep" = type { ptr, ptr, i32 }
%"class.llvm::DenseMapIterator" = type { ptr, ptr, ptr, ptr }
%class.anon.635 = type { ptr, i8, ptr, %"class.llvm::Register", %"class.llvm::Register", ptr }
%"class.llvm::SmallSetVector.639" = type { %"class.llvm::SetVector.640" }
%"class.llvm::SetVector.640" = type { %"class.llvm::DenseSet.641", %"class.llvm::SmallVector.645" }
%"class.llvm::DenseSet.641" = type { %"class.llvm::detail::DenseSetImpl.642" }
%"class.llvm::detail::DenseSetImpl.642" = type { %"class.llvm::DenseMap.643" }
%"class.llvm::DenseMap.643" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.645" = type { %"class.llvm::SmallVectorImpl.646", %"struct.llvm::SmallVectorStorage.649" }
%"class.llvm::SmallVectorImpl.646" = type { %"class.llvm::SmallVectorTemplateBase.647" }
%"class.llvm::SmallVectorTemplateBase.647" = type { %"class.llvm::SmallVectorTemplateCommon.648" }
%"class.llvm::SmallVectorTemplateCommon.648" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.649" = type { [64 x i8] }
%"class.llvm::SmallDenseMap.650" = type { i32, %union.anon.652 }
%union.anon.652 = type { %"struct.llvm::SmallDenseMap<llvm::MachineInstr *, llvm::MachineInstr *, 8>::LargeRep", [112 x i8] }
%"struct.llvm::SmallDenseMap<llvm::MachineInstr *, llvm::MachineInstr *, 8>::LargeRep" = type { ptr, ptr, i32 }
%"struct.std::pair.656" = type { %"class.llvm::Register", ptr }
%"struct.llvm::MIPatternMatch::BinaryOp_match.658" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.659", %"struct.llvm::MIPatternMatch::BinaryOp_match.660" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.659" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.660" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.661" = type { %"struct.llvm::MIPatternMatch::SpecificConstantOrSplatMatch", %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::SpecificConstantOrSplatMatch" = type { %"class.llvm::APInt" }
%"class.std::function.664" = type { %"class.std::_Function_base", ptr }
%"struct.llvm::MIPatternMatch::BinaryOp_match.668" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.669", %"struct.llvm::MIPatternMatch::And.670" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.669" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::And.670" = type { %"struct.llvm::MIPatternMatch::And.444", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::OneNonDBGUse_match.672" = type { %"struct.llvm::MIPatternMatch::Or.673" }
%"struct.llvm::MIPatternMatch::Or.673" = type { %"struct.llvm::MIPatternMatch::Or.674", %"struct.llvm::MIPatternMatch::BinaryOp_match.676" }
%"struct.llvm::MIPatternMatch::Or.674" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.675" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.675" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.676" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.678" = type { %"struct.llvm::MIPatternMatch::OneNonDBGUse_match.679", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::OneNonDBGUse_match.679" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.675" }
%"struct.llvm::MIPatternMatch::BinaryOpc_match" = type { i32, %"struct.llvm::MIPatternMatch::OneNonDBGUse_match.681", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::OneNonDBGUse_match.681" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.682" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.682" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::BinaryOpc_match.685" = type { i32, %"struct.llvm::MIPatternMatch::OneNonDBGUse_match.686", %"struct.llvm::MIPatternMatch::ConstantMatch.487" }
%"struct.llvm::MIPatternMatch::OneNonDBGUse_match.686" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.532" }
%class.anon.688 = type { %"class.llvm::LLT", i64, i64, %"class.llvm::Register", %"class.llvm::Register" }
%"struct.llvm::MIPatternMatch::OneNonDBGUse_match.691" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.692" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.692" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::GCstAndRegMatch" }
%"struct.llvm::MIPatternMatch::GCstAndRegMatch" = type { ptr }
%class.anon.693 = type <{ ptr, ptr, ptr, %"class.std::optional.303", i32, [4 x i8] }>
%class.anon.695 = type { ptr, ptr, %"class.llvm::Register", [4 x i8], %"class.std::optional.360", %"class.std::optional.360", %"class.llvm::Register", i32 }
%"class.llvm::SmallVector.698" = type { %"class.llvm::SmallVectorImpl.439", %"struct.llvm::SmallVectorStorage.699" }
%"class.llvm::SmallVectorImpl.439" = type { %"class.llvm::SmallVectorTemplateBase.440" }
%"class.llvm::SmallVectorTemplateBase.440" = type { %"class.llvm::SmallVectorTemplateCommon.441" }
%"class.llvm::SmallVectorTemplateCommon.441" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.699" = type { [48 x i8] }
%class.anon.700 = type { %"class.llvm::Register", %"class.llvm::SmallVector.698" }
%"class.std::optional.701" = type { %"struct.std::_Optional_base.702" }
%"struct.std::_Optional_base.702" = type { %"struct.std::_Optional_payload.704" }
%"struct.std::_Optional_payload.704" = type { %"struct.std::_Optional_payload.base.708", [7 x i8] }
%"struct.std::_Optional_payload.base.708" = type { %"struct.std::_Optional_payload_base.base.707" }
%"struct.std::_Optional_payload_base.base.707" = type <{ %"union.std::_Optional_payload_base<llvm::APFloat>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::APFloat>::_Storage" = type { %"class.llvm::APFloat" }
%class.anon.718 = type { ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register", i32, %"class.llvm::LLT" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.742" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.743", %"struct.llvm::MIPatternMatch::SpecificConstantOrSplatMatch" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.743" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::SpecificConstantOrSplatMatch" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.744" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.745", %"struct.llvm::MIPatternMatch::SpecificConstantOrSplatMatch" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.745" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::SpecificConstantOrSplatMatch" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.746" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.743", %"struct.llvm::MIPatternMatch::SpecificConstantOrSplatMatch" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.837" = type <{ %"struct.llvm::MIPatternMatch::UnaryOp_match.838", [8 x i8] }>
%"struct.llvm::MIPatternMatch::UnaryOp_match.838" = type { %"struct.llvm::MIPatternMatch::UnaryOp_match.839" }
%"struct.llvm::MIPatternMatch::UnaryOp_match.839" = type { %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::Or.841" = type { %"struct.llvm::MIPatternMatch::Or.842", %"struct.llvm::MIPatternMatch::BinaryOp_match.845" }
%"struct.llvm::MIPatternMatch::Or.842" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.843" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.843" = type { %"struct.llvm::MIPatternMatch::UnaryOp_match.838", %"struct.llvm::MIPatternMatch::UnaryOp_match.844" }
%"struct.llvm::MIPatternMatch::UnaryOp_match.844" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.840" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.840" = type { %"struct.llvm::MIPatternMatch::UnaryOp_match.839", %"struct.llvm::MIPatternMatch::GCstAndRegMatch" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.845" = type { %"struct.llvm::MIPatternMatch::UnaryOp_match.839", %"struct.llvm::MIPatternMatch::BinaryOp_match.840" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.849" = type { %"struct.llvm::MIPatternMatch::UnaryOp_match.850", %"struct.llvm::MIPatternMatch::GCstAndRegMatch" }
%"struct.llvm::MIPatternMatch::UnaryOp_match.850" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.851" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.851" = type { [8 x i8], %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::CompareOp_match.856" = type { %"struct.llvm::MIPatternMatch::bind_ty.853", %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::BinaryOp_match.857" }
%"struct.llvm::MIPatternMatch::bind_ty.853" = type { ptr }
%"struct.llvm::MIPatternMatch::BinaryOp_match.857" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::CompareOp_match.858" = type { %"struct.llvm::MIPatternMatch::bind_ty.853", %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::Or.859" }
%"struct.llvm::MIPatternMatch::Or.859" = type { %"struct.llvm::MIPatternMatch::Or.860", %"struct.llvm::MIPatternMatch::BinaryOp_match.430" }
%"struct.llvm::MIPatternMatch::Or.860" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.536" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.536" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::bind_ty" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.430" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::bind_ty" }
%class.anon.866 = type { ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register" }
%class.anon.867 = type { ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register" }
%class.anon.868 = type <{ ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register", %"class.llvm::Register", [4 x i8] }>
%class.anon.870 = type <{ ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register", %"class.llvm::Register", [4 x i8] }>
%class.anon.872 = type { ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", [4 x i8], %"class.llvm::APInt", %"class.llvm::Register", i32 }
%class.anon.873 = type { ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::LLT", %"class.llvm::APInt", %"class.llvm::Register", i32 }
%class.anon.874 = type { ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register", %"class.llvm::Register", i32 }
%class.anon.875 = type <{ ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", [4 x i8], %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register", i32, [4 x i8] }>
%class.anon.878 = type <{ ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register", %"class.llvm::Register", [4 x i8] }>
%class.anon.880 = type <{ ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", [4 x i8], %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register", i32, [4 x i8] }>
%class.anon.882 = type { ptr, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register" }
%class.anon.883 = type { %"class.llvm::Register", %"class.llvm::Register", %"class.llvm::Register" }
%class.anon.884 = type { %"class.llvm::Register", %"class.llvm::Register", %"class.llvm::Register" }
%class.anon.885 = type { %"class.llvm::Register", %"class.llvm::Register", %"class.llvm::Register" }
%class.anon.886 = type { %"class.llvm::Register", %"class.llvm::Register", %"class.llvm::Register" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.889" = type { %"struct.llvm::MIPatternMatch::SpecificConstantMatch", %"struct.llvm::MIPatternMatch::OneUse_match" }
%"struct.llvm::MIPatternMatch::OneUse_match" = type { %"struct.llvm::MIPatternMatch::Or.890" }
%"struct.llvm::MIPatternMatch::Or.890" = type { %"struct.llvm::MIPatternMatch::Or.891", %"struct.llvm::MIPatternMatch::BinaryOp_match.897" }
%"struct.llvm::MIPatternMatch::Or.891" = type { %"struct.llvm::MIPatternMatch::Or.892", %"struct.llvm::MIPatternMatch::BinaryOp_match.896" }
%"struct.llvm::MIPatternMatch::Or.892" = type { %"struct.llvm::MIPatternMatch::Or.893", %"struct.llvm::MIPatternMatch::BinaryOp_match.895" }
%"struct.llvm::MIPatternMatch::Or.893" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.894" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.894" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::And.887" }
%"struct.llvm::MIPatternMatch::And.887" = type { %"struct.llvm::MIPatternMatch::And.444", %"struct.llvm::MIPatternMatch::BinaryOp_match.888" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.888" = type { %"struct.llvm::MIPatternMatch::SpecificConstantMatch", %"struct.llvm::MIPatternMatch::deferred_ty" }
%"struct.llvm::MIPatternMatch::deferred_ty" = type { ptr }
%"struct.llvm::MIPatternMatch::BinaryOp_match.895" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::And.887" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.896" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::And.887" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.897" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::And.887" }
%"class.llvm::ConstantRange" = type { %"class.llvm::APInt", %"class.llvm::APInt" }
%"class.std::optional.899" = type { %"struct.std::_Optional_base.900" }
%"struct.std::_Optional_base.900" = type { %"struct.std::_Optional_payload.902" }
%"struct.std::_Optional_payload.902" = type { %"struct.std::_Optional_payload.base.906", [7 x i8] }
%"struct.std::_Optional_payload.base.906" = type { %"struct.std::_Optional_payload_base.base.905" }
%"struct.std::_Optional_payload_base.base.905" = type { %"union.std::_Optional_payload_base<llvm::ConstantRange>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::ConstantRange>::_Storage" = type { %"class.llvm::ConstantRange" }
%class.anon.909 = type <{ i8, [7 x i8], %"class.llvm::APInt", %"class.llvm::LLT", %"class.llvm::APInt", %"class.llvm::Register", i32, %"class.llvm::APInt", i32, [4 x i8], %"class.llvm::LLT", %"class.llvm::Register", [4 x i8] }>
%class.anon.911 = type { i32, ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::Register", %"class.llvm::Register", i32 }
%class.anon.915 = type <{ %"class.llvm::Register", [4 x i8], %"class.llvm::APInt", %"class.llvm::Register", i8, [3 x i8] }>
%class.anon.918 = type { %"class.llvm::LLT", %"class.llvm::APInt", %"class.llvm::Register", %"class.llvm::Register", ptr }
%class.anon.919 = type { %"class.llvm::LLT", %"class.llvm::APInt", %"class.llvm::Register", %"class.llvm::Register", ptr }
%"class.std::optional.925" = type { %"struct.std::_Optional_base.926" }
%"struct.std::_Optional_base.926" = type { %"struct.std::_Optional_payload.928" }
%"struct.std::_Optional_payload.928" = type { %"struct.std::_Optional_payload_base.base.930", [7 x i8] }
%"struct.std::_Optional_payload_base.base.930" = type { %"union.std::_Optional_payload_base<llvm::SrcOp>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::SrcOp>::_Storage" = type { %"class.llvm::SrcOp" }
%class.anon.933 = type { %"class.llvm::LLT", %"class.llvm::APInt", %"class.llvm::APInt", %"class.llvm::Register", ptr }
%class.anon.934 = type { %"class.llvm::LLT", %"class.llvm::APInt", %"class.llvm::APInt", %"class.llvm::Register", ptr }
%class.anon.935 = type { %"class.llvm::LLT", %"class.llvm::APInt", %"class.llvm::APInt", %"class.llvm::Register", ptr }
%class.anon.936 = type { %"class.llvm::LLT", %"class.llvm::APInt", %"class.llvm::APInt", %"class.llvm::Register", ptr }
%class.anon.937 = type { %"class.llvm::LLT", %"class.llvm::APInt", %"class.llvm::APInt", %"class.llvm::Register", ptr }
%class.anon.938 = type { ptr, %"class.llvm::LLT", ptr, %"class.llvm::LLT" }
%"class.llvm::SmallVector.939" = type { %"class.llvm::SmallVectorImpl.281", %"struct.llvm::SmallVectorStorage.940" }
%"struct.llvm::SmallVectorStorage.940" = type { [64 x i8] }
%class.anon.941 = type { %"class.llvm::SmallVector.939", ptr }
%class.anon.942 = type { ptr, %"class.llvm::LLT", %"class.llvm::Register", %"class.llvm::SmallVector.939" }
%"class.llvm::SmallVector.947" = type { %"class.llvm::SmallVectorImpl.132", %"struct.llvm::SmallVectorStorage.948" }
%"struct.llvm::SmallVectorStorage.948" = type { [16 x i8] }
%"struct.llvm::MIPatternMatch::OneUse_match.949" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.950" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.950" = type { %"struct.llvm::MIPatternMatch::OneUse_match.951", %"struct.llvm::MIPatternMatch::SpecificConstantMatch" }
%"struct.llvm::MIPatternMatch::OneUse_match.951" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.952" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.952" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::SpecificConstantMatch" }
%"struct.llvm::MIPatternMatch::OneUse_match.953" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.954" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.954" = type { %"struct.llvm::MIPatternMatch::bind_ty", %"struct.llvm::MIPatternMatch::OneUse_match.955" }
%"struct.llvm::MIPatternMatch::OneUse_match.955" = type { %"struct.llvm::MIPatternMatch::BinaryOp_match.956" }
%"struct.llvm::MIPatternMatch::BinaryOp_match.956" = type { %"struct.llvm::MIPatternMatch::deferred_ty", %"struct.llvm::MIPatternMatch::SpecificConstantMatch" }
%"struct.llvm::UnsignedDivisionByConstantInfo" = type <{ %"class.llvm::APInt", i8, [3 x i8], i32, i32, i8, [3 x i8] }>
%"struct.llvm::SignedDivisionByConstantInfo" = type { %"class.llvm::APInt", i32, [4 x i8] }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZNK4llvm3LLT14getElementTypeEv = comdat any

$_ZNK4llvm3LLT13getSizeInBitsEv = comdat any

$_ZNK4llvm19MachineRegisterInfo22use_nodbg_instructionsENS_8RegisterE = comdat any

$_ZNK4llvm3LLTeqERKS0_ = comdat any

$_ZNK4llvm13GMemOperation16getMemSizeInBitsEv = comdat any

$_ZNK4llvm13GMemOperation8isSimpleEv = comdat any

$_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev = comdat any

$_ZN4llvm20GISelObserverWrapperD2Ev = comdat any

$_ZNK4llvm12MachineInstr14mayLoadOrStoreENS0_9QueryTypeE = comdat any

$_ZNK4llvm7APFloat14isExactlyValueEd = comdat any

$_ZN4llvm11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EEC2ESt16initializer_listIS5_E = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE9push_backEOS5_ = comdat any

$_ZN4llvm25InstructionStepsMatchInfoC2ESt16initializer_listINS_21InstructionBuildStepsEE = comdat any

$_ZN4llvm25InstructionStepsMatchInfoD2Ev = comdat any

$_ZN4llvm21InstructionBuildStepsD2Ev = comdat any

$_ZN4llvm11SmallVectorISt8functionIFvRNS_19MachineInstrBuilderEEELj4EED2Ev = comdat any

$_ZNK4llvm5APInt9isAllOnesEv = comdat any

$_ZN4llvm9SetVectorIPKNS_12MachineInstrENS_11SmallVectorIS3_Lj8EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj8EE6insertERKS3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIllLj8ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E4findERKl = comdat any

$_ZN4llvm9SetVectorIPNS_12MachineInstrENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE6insertERKS2_ = comdat any

$_ZNK4llvm3LLT17changeElementSizeEj = comdat any

$_ZN4llvm3LLT6vectorENS_12ElementCountES0_ = comdat any

$_ZNSt8optionalIN4llvm14FPValueAndVRegEEaSEOS2_ = comdat any

$_ZNSt8optionalIN4llvm5APIntEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_ = comdat any

$_ZN4llvm13ConstantRangeaSEOS0_ = comdat any

$_ZN4llvm13ConstantRangeD2Ev = comdat any

$_ZN4llvmeoENS_5APIntERKS0_ = comdat any

$_ZN4llvmeoERKNS_5APIntEOS0_ = comdat any

$_ZNSt8optionalIN4llvm13ConstantRangeEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_ = comdat any

$_ZNSt8optionalIN4llvm13ConstantRangeEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_ = comdat any

$_ZNSt14_Optional_baseIN4llvm13ConstantRangeELb0ELb0EED2Ev = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE = comdat any

$_ZN4llvm20GISelObserverWrapperD0Ev = comdat any

$_ZN4llvm20GISelObserverWrapper18MF_HandleInsertionERNS_12MachineInstrE = comdat any

$_ZN4llvm20GISelObserverWrapper16MF_HandleRemovalERNS_12MachineInstrE = comdat any

$_ZN4llvm15MachineFunction8Delegate19MF_HandleChangeDescERNS_12MachineInstrERKNS_11MCInstrDescE = comdat any

$_ZN4llvm20GISelObserverWrapper12erasingInstrERNS_12MachineInstrE = comdat any

$_ZN4llvm20GISelObserverWrapper12createdInstrERNS_12MachineInstrE = comdat any

$_ZN4llvm20GISelObserverWrapper13changingInstrERNS_12MachineInstrE = comdat any

$_ZN4llvm20GISelObserverWrapper12changedInstrERNS_12MachineInstrE = comdat any

$_ZThn8_N4llvm20GISelObserverWrapperD1Ev = comdat any

$_ZThn8_N4llvm20GISelObserverWrapperD0Ev = comdat any

$_ZThn8_N4llvm20GISelObserverWrapper12erasingInstrERNS_12MachineInstrE = comdat any

$_ZThn8_N4llvm20GISelObserverWrapper12createdInstrERNS_12MachineInstrE = comdat any

$_ZThn8_N4llvm20GISelObserverWrapper13changingInstrERNS_12MachineInstrE = comdat any

$_ZThn8_N4llvm20GISelObserverWrapper12changedInstrERNS_12MachineInstrE = comdat any

$_ZN4llvm19GISelChangeObserverD2Ev = comdat any

$_ZN4llvm19GISelChangeObserverD0Ev = comdat any

$_ZN4llvm14MIPatternMatch21SpecificConstantMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE = comdat any

$_ZN4llvm5APInt11isSameValueERKS0_S2_b = comdat any

$_ZN4llvm15SmallVectorImplISt8functionIFvRNS_19MachineInstrBuilderEEEEaSERKS6_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_19MachineInstrBuilderEEELb0EE4growEm = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_21InstructionBuildStepsELb0EE4growEm = comdat any

$_ZN4llvm15SmallVectorImplISt8functionIFvRNS_19MachineInstrBuilderEEEEaSEOS6_ = comdat any

$_ZN4llvm15SmallVectorImplINS_21InstructionBuildStepsEEaSEOS2_ = comdat any

$_ZN4llvm15SmallVectorImplINS_8RegisterEEaSEOS2_ = comdat any

$_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEPNS_12MachineInstrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEPNS_12MachineInstrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEPNS_12MachineInstrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockEPNS_12MachineInstrENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ = comdat any

$_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZN4llvm14MIPatternMatch16ICstOrSplatMatchINS_5APIntEE5matchERKNS_19MachineRegisterInfoENS_8RegisterE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18growAndEmplaceBackIJS1_EEERS1_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE18growAndEmplaceBackIJS1_EEERS1_DpOT_ = comdat any

$_ZN4llvm14MIPatternMatch13UnaryOp_matchINS0_13ConstantMatchINS_5APIntEEELj87EE5matchIRNS_8RegisterEEEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch22GFCstOrSplatGFCstMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE = comdat any

$_ZN4llvm15SmallVectorImplISt8functionIFvRNS_19MachineInstrBuilderEEEE7reserveEm = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_16ICstOrSplatMatchIlEELj155ELb0ELj0EEES6_Lj157ELb0ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_13ConstantMatchIlEELj64ELb1ELj0EEES6_Lj64ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKNS_12MachineInstrELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm8SmallSetIlLj8ESt4lessIlEE10insertImplIRKlEESt4pairINS_16SmallSetIteratorIlLj8ES2_EEbEOT_ = comdat any

$_ZNSt3setIlSt4lessIlESaIlEE6insertISt13move_iteratorIPlEEEvT_S8_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIlLb1EE15growAndPushBackEl = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIllLj8ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E24lookupOrInsertIntoBucketIRKlJRlEEESt4pairIPS6_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIllLj8ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E15LookupBucketForIlEEbRKT_RPS6_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIllLj8ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIllLj8ENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E8moveFromERS7_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ = comdat any

$_ZNK4llvm9SetVectorIPKNS_12MachineInstrENS_11SmallVectorIS3_Lj8EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj8EE8containsES3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrES3_Lj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrES3_Lj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrES3_Lj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrES3_Lj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_12MachineInstrES3_Lj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterEPNS_12MachineInstrEELb1EE18growAndEmplaceBackIJS5_EEERS5_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterEPNS_12MachineInstrEELb1EE15growAndPushBackES5_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEES4_Lj155ELb0ELj0EEENS1_IS4_S4_Lj156ELb0ELj0EEELj65ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_13ConstantMatchIlEELj65ELb1ELj0EEENS0_3AndIJS6_S4_EEELj64ELb1ELj0EE5matchIPNS_12MachineInstrEEEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch2OrIJNS0_14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_13ConstantMatchIlEELj157ELb0ELj0EEENS2_IS5_S7_Lj156ELb0ELj0EEEEE5matchIRS4_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_18OneNonDBGUse_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_13ConstantMatchIlEELj156ELb0ELj0EEEEES7_Lj64ELb1ELj0EE5matchIRS4_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch15BinaryOpc_matchINS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_13ConstantMatchIlEELj155ELb0ELj0EEEEES8_Lb0EE5matchIRS5_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch15BinaryOpc_matchINS0_18OneNonDBGUse_matchINS0_14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_13ConstantMatchIlEELj64ELb1ELj0EEEEES8_Lb0EE5matchIRS5_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch15GCstAndRegMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE = comdat any

$_ZN4llvm15SmallVectorImplINS_5APIntEEaSEOS2_ = comdat any

$_ZN4llvm15SmallVectorImplINS_5APIntEEaSERKS2_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EEES5_Lj242ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EEES5_Lj243ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EEES5_Lj244ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_13UnaryOp_matchINS2_INS0_7bind_tyINS_8RegisterEEELj88EEELj144EEENS0_16ImplicitDefMatchELj83ELb0ELj0EE5matchIPNS_12MachineInstrEEEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_13UnaryOp_matchINS0_7bind_tyINS_8RegisterEEELj88EEENS1_IS6_NS0_15GCstAndRegMatchELj156ELb0ELj0EEELj84ELb0ELj0EE5matchIRPNS_12MachineInstrEEEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_13UnaryOp_matchINS2_INS0_7bind_tyINS_8RegisterEEELj88EEELj144EEENS2_INS1_IS6_NS0_15GCstAndRegMatchELj156ELb0ELj0EEELj144EEELj83ELb0ELj0EE5matchIRPNS_12MachineInstrEEEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch13UnaryOp_matchINS0_14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEELj88EEENS0_15GCstAndRegMatchELj156ELb0ELj0EEELj144EE5matchIS4_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_13UnaryOp_matchINS1_INS0_18operand_type_matchENS0_7bind_tyINS_8RegisterEEELj83ELb0ELj0EEELj88EEENS0_15GCstAndRegMatchELj156ELb0ELj0EE5matchIRS5_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch15CompareOp_matchINS0_7bind_tyINS_7CmpInst9PredicateEEENS2_INS_8RegisterEEENS0_14BinaryOp_matchIS7_S7_Lj56ELb0ELj0EEELj162ELb1EE5matchIRS6_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch15CompareOp_matchINS0_7bind_tyINS_7CmpInst9PredicateEEENS2_INS_8RegisterEEENS0_2OrIJNS0_14BinaryOp_matchIS7_S7_Lj55ELb1ELj0EEENS9_IS7_S7_Lj66ELb1ELj0EEEEEELj162ELb1EE5matchIRS6_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch2OrIJNS0_14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_3AndIJNS2_INS0_21SpecificConstantMatchENS0_11deferred_tyIS4_EELj56ELb0ELj0EEES5_EEELj242ELb1ELj0EEENS2_IS5_SB_Lj243ELb1ELj0EEENS2_IS5_SB_Lj244ELb1ELj0EEENS2_IS5_SB_Lj245ELb1ELj0EEEEEC2ERKSG_ = comdat any

$_ZN4llvm14MIPatternMatch12OneUse_matchINS0_2OrIJNS0_14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_3AndIJNS3_INS0_21SpecificConstantMatchENS0_11deferred_tyIS5_EELj56ELb0ELj0EEES6_EEELj242ELb1ELj0EEENS3_IS6_SC_Lj243ELb1ELj0EEENS3_IS6_SC_Lj244ELb1ELj0EEENS3_IS6_SC_Lj245ELb1ELj0EEEEEEE5matchERKNS_19MachineRegisterInfoES5_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_3AndIJNS1_INS0_21SpecificConstantMatchENS0_11deferred_tyIS3_EELj56ELb0ELj0EEES4_EEELj242ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_3AndIJNS1_INS0_21SpecificConstantMatchENS0_11deferred_tyIS3_EELj56ELb0ELj0EEES4_EEELj243ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_3AndIJNS1_INS0_21SpecificConstantMatchENS0_11deferred_tyIS3_EELj56ELb0ELj0EEES4_EEELj244ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_3AndIJNS1_INS0_21SpecificConstantMatchENS0_11deferred_tyIS3_EELj56ELb0ELj0EEES4_EEELj245ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi = comdat any

$_ZN4llvm15SmallVectorImplIiEaSEOS1_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_12OneUse_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_21SpecificConstantMatchELj155ELb0ELj0EEEEES6_Lj65ELb1ELj0EE5matchIRS4_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_12OneUse_matchINS1_INS0_11deferred_tyIS3_EENS0_21SpecificConstantMatchELj157ELb0ELj0EEEEELj66ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_ = comdat any

$_ZTVN4llvm20GISelObserverWrapperE = comdat any

$_ZTVN4llvm19GISelChangeObserverE = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

$_ZTVN4llvm2cl11OptionValueIjEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL18ForceLegalIndexing = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"force-legal-indexing\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Force all indexed operations to be legal for the GlobalISel combiner\00", align 1
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZL21PostIndexUseThreshold = internal global %"class.llvm::cl::opt.346" zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"post-index-use-threshold\00", align 1
@.str.5 = private unnamed_addr constant [95 x i8] c"Number of uses of a base pointer to check before it is no longer considered for post-indexing.\00", align 1
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZN4llvm3LLT11ExtendedLLTE = external local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [134 x i8] c"Possible incorrect use of LLT::getNumElements() for scalable vector. Scalable flag may be dropped, use LLT::getElementCount() instead\00", align 1
@.str.7 = private unnamed_addr constant [99 x i8] c"Cannot implicitly convert a scalable size to a fixed-width size in `TypeSize::operator ScalarTy()`\00", align 1
@_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm16MachineIRBuilderE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm20GISelObserverWrapperE = linkonce_odr unnamed_addr constant { [12 x ptr], [8 x ptr] } { [12 x ptr] [ptr null, ptr null, ptr @_ZN4llvm15MachineFunction8Delegate6anchorEv, ptr @_ZN4llvm20GISelObserverWrapperD2Ev, ptr @_ZN4llvm20GISelObserverWrapperD0Ev, ptr @_ZN4llvm20GISelObserverWrapper18MF_HandleInsertionERNS_12MachineInstrE, ptr @_ZN4llvm20GISelObserverWrapper16MF_HandleRemovalERNS_12MachineInstrE, ptr @_ZN4llvm15MachineFunction8Delegate19MF_HandleChangeDescERNS_12MachineInstrERKNS_11MCInstrDescE, ptr @_ZN4llvm20GISelObserverWrapper12erasingInstrERNS_12MachineInstrE, ptr @_ZN4llvm20GISelObserverWrapper12createdInstrERNS_12MachineInstrE, ptr @_ZN4llvm20GISelObserverWrapper13changingInstrERNS_12MachineInstrE, ptr @_ZN4llvm20GISelObserverWrapper12changedInstrERNS_12MachineInstrE], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr null, ptr @_ZThn8_N4llvm20GISelObserverWrapperD1Ev, ptr @_ZThn8_N4llvm20GISelObserverWrapperD0Ev, ptr @_ZThn8_N4llvm20GISelObserverWrapper12erasingInstrERNS_12MachineInstrE, ptr @_ZThn8_N4llvm20GISelObserverWrapper12createdInstrERNS_12MachineInstrE, ptr @_ZThn8_N4llvm20GISelObserverWrapper13changingInstrERNS_12MachineInstrE, ptr @_ZThn8_N4llvm20GISelObserverWrapper12changedInstrERNS_12MachineInstrE] }, comdat, align 8
@_ZTVN4llvm19GISelChangeObserverE = linkonce_odr unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZN4llvm19GISelChangeObserverD2Ev, ptr @_ZN4llvm19GISelChangeObserverD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4llvm11APFloatBase13semIEEEdoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm2cl11OptionValueIjEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIjEE = external unnamed_addr constant { [6 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_CombinerHelper.cpp, ptr null }]
@switch.table._ZNK4llvm14CombinerHelper26matchCombineExtendingLoadsERNS_12MachineInstrERNS_14PreferredTupleE = private unnamed_addr constant [12 x i8] [i8 99, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 100, i8 poison, i8 101], align 4
@switch.table._ZNK4llvm14CombinerHelper26applyCombineExtendingLoadsERNS_12MachineInstrERNS_14PreferredTupleE = private unnamed_addr constant [12 x i64] [i64 -99, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 -100, i64 poison, i64 -101], align 8
@switch.table._ZNK4llvm14CombinerHelper28applyCombineIndexedLoadStoreERNS_12MachineInstrERNS_25IndexedLoadStoreMatchInfoE = private unnamed_addr constant [8 x i8] [i8 103, i8 104, i8 105, i8 poison, i8 poison, i8 poison, i8 poison, i8 108], align 4
@switch.table._ZNK4llvm3LLT17changeElementSizeEj = private unnamed_addr constant [4 x i64] [i64 3458764518115508224, i64 3458764522412572672, i64 3458764531003555840, i64 3458764548184473600], align 8
@switch.table._ZNK4llvm14CombinerHelper25applyCommuteBinOpOperandsERNS_12MachineInstrE = private unnamed_addr constant [10 x i8] c"@   @   @@", align 8
@switch.table._ZNK4llvm14CombinerHelper25applyCommuteBinOpOperandsERNS_12MachineInstrE.589 = private unnamed_addr constant [10 x i8] c"\03\02\02\02\03\02\02\02\03\03", align 8
@switch.table._ZNK4llvm14CombinerHelper25applyCommuteBinOpOperandsERNS_12MachineInstrE.590 = private unnamed_addr constant [10 x i8] c"\02\01\01\01\02\01\01\01\02\02", align 8
@"switch.table._ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper15matchAddEToAddOERNS0_12MachineInstrERSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_" = private unnamed_addr constant [5 x i64] [i64 -169, i64 -167, i64 -171, i64 -167, i64 -173], align 8

@_ZN4llvm14CombinerHelperC1ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoE = unnamed_addr alias void (ptr, ptr, ptr, i1, ptr, ptr, ptr), ptr @_ZN4llvm14CombinerHelperC2ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoE

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #28, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !50, !range !51, !noundef !52
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.i) #28
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #28
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14CombinerHelperC2ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((0, 41), (48, 80)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %3 to i8
  store ptr %2, ptr %0, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188
  store ptr %i.f, ptr %i.b, align 8, !tbaa !666
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !189
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.h, align 8, !tbaa !196
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.i, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.a, ptr %i.j, align 8, !tbaa !198
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %6, ptr %i.k, align 8, !tbaa !199
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !200, !nonnull !52, !align !201 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(344) %i.n) #28
  store ptr %i.r, ptr %i.l, align 8, !tbaa !667
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !200, !nonnull !52, !align !201 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(344) %i.x) #28
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !203
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !200, !nonnull !52, !align !201 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(344) %i.ah) #28
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(518435) ptr @_ZNK4llvm14CombinerHelper17getTargetLoweringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !200, !nonnull !52, !align !201 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(344) %i.e) #28
  ret ptr %i.i
}
end_hunk_0
begin_hunk_1_@_ZNK4llvm14CombinerHelper15matchTruncUSatUERNS_12MachineInstrES2_:bb.a
  store i64 %spec.select.i.i.i, ptr %6, align 8, !tbaa !206, !alias.scope !1168
  br label %_ZN4llvm5APInt11getMaxValueEj.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %6, i64 noundef -1, i1 noundef zeroext true) #28
  br label %_ZN4llvm5APInt11getMaxValueEj.exit

_ZN4llvm5APInt11getMaxValueEj.exit:               ; preds = %bb.h, %bb.i
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef %.0.i18) #28
  %i.bd = load i32, ptr %i.ax, align 8, !tbaa !295
  %i.be = icmp ugt i32 %i.bd, 64
  br i1 %i.be, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvm5APInt11getMaxValueEj.exit
  %i.bf = load ptr, ptr %6, align 8, !tbaa !206   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN4llvm5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #32
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APInt11getMaxValueEj.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !233, !nonnull !52, !align !201
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !295, !noalias !1169 ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !295, !alias.scope !1169
  %i.bl = icmp ult i32 %i.bk, 65
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bm = load i64, ptr %5, align 8, !tbaa !206, !noalias !1169
  store i64 %i.bm, ptr %7, align 8, !tbaa !206, !alias.scope !1169
  br label %_ZN4llvm14MIPatternMatch21m_SpecificICstOrSplatERKNS_5APIntE.exit

bb.m:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(12) %5) #28
  br label %_ZN4llvm14MIPatternMatch21m_SpecificICstOrSplatERKNS_5APIntE.exit

_ZN4llvm14MIPatternMatch21m_SpecificICstOrSplatERKNS_5APIntE.exit: ; preds = %bb.l, %bb.m
  %i.bn = call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(520) %i.bh, i32 %i.d)
  br i1 %i.bn, label %bb.n, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_14BinaryOp_matchINS0_18operand_type_matchES4_Lj243ELb1ELj0EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit

bb.n:                                             ; preds = %_ZN4llvm14MIPatternMatch21m_SpecificICstOrSplatERKNS_5APIntE.exit
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.bp = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.bo, i32 %i.f) #28 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_14BinaryOp_matchINS0_18operand_type_matchES4_Lj243ELb1ELj0EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !246
  %i.bs = icmp eq i32 %i.br, 243
  br i1 %i.bs, label %bb.p, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_14BinaryOp_matchINS0_18operand_type_matchES4_Lj243ELb1ELj0EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bu = load i24, ptr %i.bt, align 8
  %i.bv = icmp ne i24 %i.bu, 3
  br label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_14BinaryOp_matchINS0_18operand_type_matchES4_Lj243ELb1ELj0EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit

_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_14BinaryOp_matchINS0_18operand_type_matchES4_Lj243ELb1ELj0EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit: ; preds = %bb.p, %bb.o, %bb.n, %_ZN4llvm14MIPatternMatch21m_SpecificICstOrSplatERKNS_5APIntE.exit
  %i.bw = phi i1 [ false, %_ZN4llvm14MIPatternMatch21m_SpecificICstOrSplatERKNS_5APIntE.exit ], [ true, %bb.o ], [ true, %bb.n ], [ %i.bv, %bb.p ]
  %i.bx = load i32, ptr %i.bi, align 8, !tbaa !295
  %i.by = icmp ugt i32 %i.bx, 64
  br i1 %i.by, label %bb.q, label %_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatchD2Ev.exit

bb.q:                                             ; preds = %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_14BinaryOp_matchINS0_18operand_type_matchES4_Lj243ELb1ELj0EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit
  %i.bz = load ptr, ptr %7, align 8, !tbaa !206   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatchD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #32
  br label %_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatchD2Ev.exit

_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatchD2Ev.exit: ; preds = %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_14BinaryOp_matchINS0_18operand_type_matchES4_Lj243ELb1ELj0EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.cb = load i32, ptr %i.bj, align 8, !tbaa !295
  %i.cc = icmp ugt i32 %i.cb, 64
  br i1 %i.cc, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit19

bb.s:                                             ; preds = %_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatchD2Ev.exit
  %i.cd = load ptr, ptr %5, align 8, !tbaa !206   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN4llvm5APIntD2Ev.exit19, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #32
  br label %_ZN4llvm5APIntD2Ev.exit19

_ZN4llvm5APIntD2Ev.exit19:                        ; preds = %_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatchD2Ev.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %.critedge, %_ZN4llvm5APIntD2Ev.exit19
  %.0 = phi i1 [ %i.bw, %_ZN4llvm5APIntD2Ev.exit19 ], [ false, %.critedge ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14CombinerHelper26matchTruncUSatUToFPTOUISatERNS_12MachineInstrES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::LegalityQuery", align 8 ; 7 uses
  %4 = alloca [2 x %"class.llvm::LLT"], align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !52, !align !201 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !206  ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.f, 2147483647                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.j = load i32, ptr %i.i, align 8, !tbaa !253
  %i.k = icmp ugt i32 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.m = zext nneg i32 %i.h to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.p, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !247
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !206  ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit8

bb.d:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %i.v = and i32 %i.t, 2147483647                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.x = load i32, ptr %i.w, align 8, !tbaa !253
  %i.y = icmp ugt i32 %i.x, %i.v
  br i1 %i.y, label %bb.e, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit8

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.aa = zext nneg i32 %i.v to i64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit8

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit8: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.d, %bb.e
  %.sroa.04.0.i7 = phi i64 [ %i.ad, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !199 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br i1 %.not, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit8
  store i64 %.sroa.04.0.i, ptr %4, align 8, !tbaa !206
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.04.0.i7, ptr %i.ag, align 8, !tbaa !206
  store i32 219, ptr %3, align 8, !tbaa !212
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.ah, align 8, !tbaa !213
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !214
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !198, !range !51, !noundef !52
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %3) #28
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %i.ao = and i64 %i.an, 255
  %i.ap = icmp eq i64 %i.ao, 0
  br label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit: ; preds = %bb.g, %bb.f, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit8
  %i.aq = phi i1 [ false, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit8 ], [ true, %bb.f ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i1 %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14CombinerHelper25matchRedundantNegOperandsERNS_12MachineInstrERSt8functionIFvRNS_16MachineIRBuilderEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::function.226", align 16 ; 9 uses
  %4 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %5 = alloca [1 x %"class.llvm::LLT"], align 8   ; 5 uses
  %6 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %7 = alloca [1 x %"class.llvm::LLT"], align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !246  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !247  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !206  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !206  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !206  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !233, !nonnull !52, !align !201 ; 5 uses
  %i.m = icmp slt i32 %i.f, 0
  br i1 %i.m, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = and i32 %i.f, 2147483647                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  %i.p = load i32, ptr %i.o, align 8, !tbaa !253
  %i.q = icmp ugt i32 %i.p, %i.n
  br i1 %i.q, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.s = zext nneg i32 %i.n to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %8 = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.l, i32 %i.f) #28 ; 4 uses
  %.not.i = icmp eq ptr %8, null
  br i1 %.not.i, label %bb.e, label %9

9:                                                ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 52
  %11 = load i32, ptr %10, align 4, !tbaa !246
  %12 = icmp eq i32 %11, 193
  br i1 %12, label %13, label %bb.e

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %15 = load i24, ptr %14, align 8
  %16 = icmp eq i24 %15, 3
  br i1 %16, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.a, label %bb.e

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.a: ; preds = %13
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %17 = load ptr, ptr %i.w, align 8, !tbaa !247   ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !206
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 68
  %21 = load i32, ptr %20, align 4, !tbaa !206
  %22 = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.l, i32 %21) #28 ; 4 uses
  %.not.i.i.i.not.i.i44 = icmp eq ptr %22, null
  br i1 %.not.i.i.i.not.i.i44, label %31, label %23

23:                                               ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.a
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 52
  %25 = load i32, ptr %24, align 4, !tbaa !246
  %26 = icmp eq i32 %25, 211
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %22, i64 40
  %29 = load i24, ptr %28, align 8
  %30 = icmp eq i24 %29, 2
  br i1 %30, label %bb.d, label %31

31:                                               ; preds = %27, %23, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.a
  %32 = load ptr, ptr %i.w, align 8, !tbaa !247   ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 68
  %34 = load i32, ptr %33, align 4, !tbaa !206    ; 4 uses
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 36
  %36 = load i32, ptr %35, align 4, !tbaa !206
  %37 = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.l, i32 %36) #28 ; 4 uses
  %.not.i.i.i.not.i11.i = icmp eq ptr %37, null
  br i1 %.not.i.i.i.not.i11.i, label %bb.e, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 52
  %40 = load i32, ptr %39, align 4, !tbaa !246
  %41 = icmp eq i32 %40, 211
  br i1 %41, label %42, label %bb.e

42:                                               ; preds = %38
  %43 = getelementptr inbounds nuw i8, ptr %37, i64 40
  %44 = load i24, ptr %43, align 8
  %45 = icmp eq i24 %44, 2
  br i1 %45, label %bb.d, label %bb.e

bb.d:                                             ; preds = %42, %27
  %.sroa.070.0 = phi i32 [ %34, %42 ], [ %19, %27 ] ; 3 uses
  %.sink.i = phi ptr [ %37, %42 ], [ %22, %27 ]
  %46 = getelementptr inbounds nuw i8, ptr %.sink.i, i64 32
  %47 = load ptr, ptr %46, align 8, !tbaa !247
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 36
  %49 = load i32, ptr %48, align 4, !tbaa !206    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %.sroa.04.0.i, ptr %5, align 8, !tbaa !206
  store i32 194, ptr %4, align 8, !tbaa !212
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.x, align 8, !tbaa !213
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !214
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !198, !range !51, !noundef !52
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.r

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !199
  %i.ae = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %4) #28
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = and i64 %i.af, 255
  %i.ah = icmp eq i64 %i.ag, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.ah, label %bb.r, label %bb.e

bb.e:                                             ; preds = %42, %38, %9, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %13, %31, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit
  %.sroa.070.1 = phi i32 [ %i.h, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ], [ %34, %31 ], [ %.sroa.070.0, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit ], [ %34, %42 ], [ %34, %38 ], [ %i.h, %13 ], [ %i.h, %9 ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %i.j, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit ], [ %i.j, %31 ], [ %49, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit ], [ %i.j, %42 ], [ %i.j, %38 ], [ %i.j, %13 ], [ %i.j, %9 ] ; 6 uses
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !233, !nonnull !52, !align !201 ; 2 uses
  %i.aj = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ai, i32 %i.f) #28 ; 4 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !246
  %i.am = icmp eq i32 %i.al, 194
  br i1 %i.am, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ao = load i24, ptr %i.an, align 8
  %i.ap = icmp eq i24 %i.ao, 3
  br i1 %i.ap, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !247 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !206 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %i.av = load i32, ptr %i.au, align 4, !tbaa !206
  %i.aw = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ai, i32 %i.av) #28 ; 4 uses
  %.not.i.i.i.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.not.i.i.i, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !246
  %i.az = icmp eq i32 %i.ay, 211
  br i1 %i.az, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bb = load i24, ptr %i.ba, align 8
  %i.bc = icmp eq i24 %i.bb, 2
  br i1 %i.bc, label %bb.k, label %.critedge2

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i64 %.sroa.04.0.i, ptr %7, align 8, !tbaa !206
  store i32 193, ptr %6, align 8, !tbaa !212
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %7, ptr %i.bh, align 8, !tbaa !213
  %.sroa.22.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 1, ptr %.sroa.22.0..sroa_idx.i36, align 8, !tbaa !214
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !198, !range !51, !noundef !52
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38.thread, label %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.r

_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38: ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !199
  %i.bo = call { i64, i64 } @_ZNK4llvm13LegalizerInfo9getActionERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(46376) %i.bn, ptr noundef nonnull align 8 dereferenceable(40) %6) #28
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = and i64 %i.bp, 255
  %i.br = icmp eq i64 %i.bq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %i.br, label %bb.r, label %.critedge2

.critedge2:                                       ; preds = %bb.h, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38
  %.sroa.070.2 = phi i32 [ %.sroa.070.1, %bb.e ], [ %i.at, %bb.h ], [ %i.at, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38 ], [ %i.at, %bb.j ], [ %i.at, %bb.i ], [ %.sroa.070.1, %bb.g ], [ %.sroa.070.1, %bb.f ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %bb.h ], [ %i.bg, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38 ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.i ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.f ]
  %i.bs = add i32 %i.b, -195
  %or.cond7 = icmp ult i32 %i.bs, 4
  br i1 %or.cond7, label %bb.l, label %.critedge9

bb.l:                                             ; preds = %.critedge2
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.bu = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.bt, i32 %.sroa.070.2) #28 ; 4 uses
  %.not.i.i.i.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.not.i.i, label %.critedge9, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 52
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !246
  %i.bx = icmp eq i32 %i.bw, 211
  br i1 %i.bx, label %bb.n, label %.critedge9

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bz = load i24, ptr %i.by, align 8
  %i.ca = icmp eq i24 %i.bz, 2
  br i1 %i.ca, label %bb.o, label %.critedge9

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %.sroa.0.0.copyload = load i32, ptr %i.cd, align 4, !tbaa !206
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !233, !nonnull !52, !align !201
  %i.cf = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ce, i32 %.sroa.0.1) #28 ; 4 uses
  %.not.i.i.i.not.i.i40 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.not.i.i40, label %.critedge9, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !246
  %i.ci = icmp eq i32 %i.ch, 211
  br i1 %i.ci, label %bb.q, label %.critedge9

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ck = load i24, ptr %i.cj, align 8
  %i.cl = icmp eq i24 %i.ck, 2
  br i1 %i.cl, label %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13UnaryOp_matchINS0_7bind_tyIS2_EELj211EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit42, label %.critedge9

_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13UnaryOp_matchINS0_7bind_tyIS2_EELj211EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit42: ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !247
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !206
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13UnaryOp_matchINS0_7bind_tyIS2_EELj211EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit42, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38.thread, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit
  %.033.a = phi i32 [ %.sroa.0.0.copyload, %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13UnaryOp_matchINS0_7bind_tyIS2_EELj211EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit42 ], [ %i.at, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38.thread ], [ %i.at, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38 ], [ %.sroa.070.0, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread ], [ %.sroa.070.0, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit ]
  %.sroa.0.2 = phi i32 [ %i.cp, %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13UnaryOp_matchINS0_7bind_tyIS2_EELj211EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit42 ], [ %i.bg, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38.thread ], [ %i.bg, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38 ], [ %49, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread ], [ %49, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit ]
  %.033 = phi i32 [ %i.b, %_ZN4llvm14MIPatternMatch8mi_matchINS_8RegisterENS0_13UnaryOp_matchINS0_7bind_tyIS2_EELj211EEEEEbT_RKNS_19MachineRegisterInfoEOT0_.exit42 ], [ 193, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38.thread ], [ 193, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit38 ], [ 194, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit.thread ], [ 194, %_ZNK4llvm14CombinerHelper24isLegalOrBeforeLegalizerERKNS_13LegalityQueryE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cr, align 8
  %i.cs = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 6 uses
  store ptr %1, ptr %i.cs, align 16, !tbaa !250
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !249
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i32 %.033, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !217
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  store i32 %.033.a, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !217
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i32 %.sroa.0.2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !217
  store ptr %i.cs, ptr %3, align 16, !tbaa !251
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !252
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %2, align 8, !tbaa !206
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cv = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !251
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !251 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper25matchRedundantNegOperandsERNS0_12MachineInstrERSt8functionIS3_EE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.ct, align 8, !tbaa !251
  store <2 x ptr> %i.cv, ptr %i.cq, align 16, !tbaa !251
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper25matchRedundantNegOperandsERNS0_12MachineInstrERSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.cu, align 8, !tbaa !251
  %.not.i.i43 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i43, label %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper25matchRedundantNegOperandsERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = call noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #28, !inline_history !1170 ; 0 uses
  br label %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper25matchRedundantNegOperandsERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit"

"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper25matchRedundantNegOperandsERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit": ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.critedge9

.critedge9:                                       ; preds = %bb.o, %bb.q, %bb.p, %bb.l, %bb.n, %bb.m, %.critedge2, %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper25matchRedundantNegOperandsERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit"
  %.0 = phi i1 [ true, %"_ZNSt8functionIFvRN4llvm16MachineIRBuilderEEEaSIZNKS0_14CombinerHelper25matchRedundantNegOperandsERNS0_12MachineInstrERS4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueES9_E4typeEOSC_.exit" ], [ false, %bb.l ], [ false, %.critedge2 ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.o ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14CombinerHelper15matchFsubToFnegERNS_12MachineInstrERNS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::optional.472", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !206
  store i32 %i.f, ptr %2, align 4, !tbaa !217
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !233, !nonnull !52, !align !201 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !206  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = and i32 %i.j, 2147483647                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 472
  %i.n = load i32, ptr %i.m, align 8, !tbaa !253
  %i.o = icmp ugt i32 %i.n, %i.l
  br i1 %i.o, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.thread

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  br label %bb.d

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.q = zext nneg i32 %i.l to i64
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.u = lshr i64 %i.t, 60
  %i.v = add nsw i64 %i.u, -5
  %switch.selectcmp.i = icmp ult i64 %i.v, 4
  br i1 %switch.selectcmp.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  call void @_ZN4llvm17getFConstantSplatENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.472") align 8 %3, i32 %i.d, ptr noundef nonnull align 8 dereferenceable(520) %i.h, i1 noundef zeroext true) #28
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit.thread, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit
  call void @_ZN4llvm34getFConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.472") align 8 %3, i32 %i.d, ptr noundef nonnull align 8 dereferenceable(520) %i.h, i1 noundef zeroext true) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !430, !range !51, !noundef !52
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %3, align 8, !tbaa !206
  %.not.i.i.i.i = icmp eq ptr %i.z, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i, ptr %i.ab, ptr %3
  %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 20
  %i.ac = load i8, ptr %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ad = and i8 %i.ac, 15
  switch i8 %i.ad, label %.fold.split [
    i8 11, label %bb.h
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !289
  %i.ag = and i32 %i.af, 64
  %i.ah = icmp ne i32 %i.ag, 0
  br label %bb.h

.fold.split:                                      ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.fold.split, %bb.g
  %.0.ph = phi i1 [ %i.ah, %bb.g ], [ true, %bb.f ], [ false, %.fold.split ]
  store i8 0, ptr %i.w, align 8, !tbaa !430
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %3) #28
  br label %_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm14FPValueAndVRegELb0ELb0EED2Ev.exit: ; preds = %bb.e, %bb.h
  %.020 = phi i1 [ %.0.ph, %bb.h ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i1 %.020
}

declare void @_ZN4llvm17getFConstantSplatENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind writable sret(%"class.std::optional.472") align 8, i32, ptr noundef nonnull align 8 dereferenceable(520), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm34getFConstantVRegValWithLookThroughENS_8RegisterERKNS_19MachineRegisterInfoEb(ptr dead_on_unwind writable sret(%"class.std::optional.472") align 8, i32, ptr noundef nonnull align 8 dereferenceable(520), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm14CombinerHelper15applyFsubToFnegERNS_12MachineInstrERNS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %4 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %5 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %6 = alloca [1 x %"class.llvm::SrcOp"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206  ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !52, !align !201 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !233, !nonnull !52, !align !201 ; 2 uses
  %i.h = icmp slt i32 %i.d, 0
  br i1 %i.h, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.d, 2147483647                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.k = load i32, ptr %i.j, align 8, !tbaa !253
  %i.l = icmp ugt i32 %i.k, %i.i
  br i1 %i.l, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.n = zext nneg i32 %i.i to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !206
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.04.0.i = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sroa.01.0.copyload = load i32, ptr %2, align 4, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %.sroa.04.0.i, ptr %5, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i32 %.sroa.01.0.copyload, ptr %6, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %.sroa.419.0..sroa_idx, align 8, !tbaa !267
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call { ptr, ptr } %i.t(ptr noundef nonnull align 8 dereferenceable(96) %i.e, i32 noundef 223, ptr nonnull %5, i64 1, ptr nonnull %6, i64 1, i64 0) #28, !inline_history !1171
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.v = extractvalue { ptr, ptr } %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !247
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 %i.d, ptr %3, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %.sroa.431.0..sroa_idx, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 %i.z, ptr %4, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !267
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call { ptr, ptr } %i.ac(ptr noundef nonnull align 8 dereferenceable(96) %i.e, i32 noundef 211, ptr nonnull %3, i64 1, ptr nonnull %4, i64 1, i64 0) #28, !inline_history !1172 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ae = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14CombinerHelper19canCombineFMadOrFMAERNS_12MachineInstrERbS3_S3_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"struct.llvm::LegalityQuery", align 8 ; 8 uses
  %7 = alloca [1 x %"class.llvm::LLT"], align 8   ; 5 uses
  %i.a = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !200, !nonnull !52, !align !201 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(344) %i.c) #28 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1173, !nonnull !52, !align !201
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !233, !nonnull !52, !align !201 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !206  ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.q = and i32 %i.o, 2147483647                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 472
  %i.s = load i32, ptr %i.r, align 8, !tbaa !253
  %i.t = icmp ugt i32 %i.s, %i.q
  br i1 %i.t, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

end_hunk_1
begin_hunk_2_@_ZN4llvm14MIPatternMatch14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EEES5_Lj243ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_:bb.a
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !206
  %i.am = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.al)
  br i1 %i.am, label %.critedge, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread

_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.h, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !206
  %i.aq = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.ap) #28 ; 4 uses
  %.not.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i13, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !246
  %i.at = icmp eq i32 %i.as, 242
  br i1 %i.at, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.av = load i24, ptr %i.au, align 8
  %i.aw = icmp eq i24 %i.av, 3
  br i1 %i.aw, label %bb.k, label %.critedge2

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !247 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !206
  %i.bb = load ptr, ptr %0, align 8, !tbaa !423, !nonnull !52, !align !424
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !217
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 68
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !206
  %i.bf = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.be)
  br i1 %i.bf, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !247 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !206
  %i.bj = load ptr, ptr %0, align 8, !tbaa !423, !nonnull !52, !align !424
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !217
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !206
  %i.bm = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.bl)
  br i1 %i.bm, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16, label %.critedge2

_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16: ; preds = %bb.l, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !206
  %i.br = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.bq)
  br i1 %i.br, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16
  br label %.critedge2

.critedge2:                                       ; preds = %bb.j, %bb.i, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread, %bb.l, %bb.a, %bb.c, %bb.b, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16, %.critedge
  %.0 = phi i1 [ true, %.critedge ], [ false, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.l ], [ false, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj242ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread ], [ false, %bb.i ], [ false, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm14MIPatternMatch14BinaryOp_matchINS1_INS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EEES5_Lj244ELb1ELj0EE5matchIRS3_EEbRKNS_19MachineRegisterInfoEOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.04.0.copyload = load i32, ptr %2, align 4, !tbaa !217
  %i.a = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %.sroa.04.0.copyload) #28 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !246
  %i.d = icmp eq i32 %i.c, 244
  br i1 %i.d, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = load i24, ptr %i.e, align 8
  %i.g = icmp eq i24 %i.f, 3
  br i1 %i.g, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !206
  %i.l = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.k) #28 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !246
  %i.o = icmp eq i32 %i.n, 243
  br i1 %i.o, label %bb.f, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load i24, ptr %i.p, align 8
  %i.r = icmp eq i24 %i.q, 3
  br i1 %i.r, label %bb.g, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !247  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !206
  %i.w = load ptr, ptr %0, align 8, !tbaa !423, !nonnull !52, !align !424
  store i32 %i.v, ptr %i.w, align 4, !tbaa !217
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !206
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.z)
  br i1 %i.aa, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !247 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !206
  %i.ae = load ptr, ptr %0, align 8, !tbaa !423, !nonnull !52, !align !424
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !217
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !206
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.ag)
  br i1 %i.ah, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread

_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit: ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !206
  %i.am = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.al)
  br i1 %i.am, label %.critedge, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread

_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.h, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !206
  %i.aq = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.ap) #28 ; 4 uses
  %.not.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i13, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !246
  %i.at = icmp eq i32 %i.as, 243
  br i1 %i.at, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.av = load i24, ptr %i.au, align 8
  %i.aw = icmp eq i24 %i.av, 3
  br i1 %i.aw, label %bb.k, label %.critedge2

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !247 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !206
  %i.bb = load ptr, ptr %0, align 8, !tbaa !423, !nonnull !52, !align !424
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !217
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 68
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !206
  %i.bf = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.be)
  br i1 %i.bf, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !247 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !206
  %i.bj = load ptr, ptr %0, align 8, !tbaa !423, !nonnull !52, !align !424
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !217
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !206
  %i.bm = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.bl)
  br i1 %i.bm, label %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16, label %.critedge2

_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16: ; preds = %bb.l, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !206
  %i.br = tail call noundef zeroext i1 @_ZN4llvm14MIPatternMatch28SpecificConstantOrSplatMatch5matchERKNS_19MachineRegisterInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %i.bq)
  br i1 %i.br, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16
  br label %.critedge2

.critedge2:                                       ; preds = %bb.j, %bb.i, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread, %bb.l, %bb.a, %bb.c, %bb.b, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16, %.critedge
  %.0 = phi i1 [ true, %.critedge ], [ false, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit16 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.l ], [ false, %_ZN4llvm14MIPatternMatch14BinaryOp_matchINS0_7bind_tyINS_8RegisterEEENS0_28SpecificConstantOrSplatMatchELj243ELb1ELj0EE5matchIS3_EEbRKNS_19MachineRegisterInfoEOT_.exit.thread ], [ false, %bb.i ], [ false, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper25matchRedundantNegOperandsERNS0_12MachineInstrERSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !251   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1617
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !216, !nonnull !52, !align !201 ; 2 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !1618, !nonnull !52, !align !201
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.e) #28, !inline_history !1615
  %i.i = load ptr, ptr %.val, align 8, !tbaa !1618, !nonnull !52, !align !201
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !227
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1619
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.p = zext i32 %i.n to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [32 x i8], ptr %i.o, i64 %i.q
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r) #28
  %i.s = load ptr, ptr %.val, align 8, !tbaa !1618, !nonnull !52, !align !201
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !247
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.w, align 4, !tbaa !217
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 %.sroa.01.0.copyload.i.i.i) #28
  %i.x = load ptr, ptr %.val, align 8, !tbaa !1618, !nonnull !52, !align !201
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !217
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 %.sroa.0.0.copyload.i.i.i) #28
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !216, !nonnull !52, !align !201 ; 2 uses
  %i.ad = load ptr, ptr %.val, align 8, !tbaa !1618, !nonnull !52, !align !201
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.ad) #28, !inline_history !1615
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper25matchRedundantNegOperandsERNS0_12MachineInstrERSt8functionIS3_EE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper25matchRedundantNegOperandsERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !251
  store ptr %.val, ptr %0, align 8, !tbaa !251
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper25matchRedundantNegOperandsERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !624
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper25matchRedundantNegOperandsERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val5, i64 32, i1 false), !tbaa.struct !1620
  store ptr %i.a, ptr %0, align 8, !tbaa !251
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper25matchRedundantNegOperandsERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !251 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper25matchRedundantNegOperandsERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 32) #32
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper25matchRedundantNegOperandsERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper25matchRedundantNegOperandsERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS0_12MachineInstrERSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #3 align 2 {
bb.a:
  %2 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %3 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !251   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1623
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1624, !nonnull !52, !align !201
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !247
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !206
  store i32 %i.g, ptr %2, align 8, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.h, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1625
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !247  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !206
  store i32 %i.n, ptr %3, align 8, !tbaa !217
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !223
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !206
  store i32 %i.r, ptr %i.p, align 8, !tbaa !217
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !223
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.u, align 8, !tbaa !217
  store i32 %.sroa.01.0.copyload.i.i.i, ptr %i.t, align 8, !tbaa !217
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.v, align 8, !tbaa !223
  %i.w = load ptr, ptr %1, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call { ptr, ptr } %i.y(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.b, ptr nonnull %2, i64 1, ptr nonnull %3, i64 3, i64 0) #28, !inline_history !1621 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS0_12MachineInstrERSt8functionIS3_EE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !251
  store ptr %.val, ptr %0, align 8, !tbaa !251
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !624
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val5, i64 48, i1 false), !tbaa.struct !648
  store ptr %i.a, ptr %0, align 8, !tbaa !251
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !251 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 48) #32
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS1_12MachineInstrERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper31matchCombineFAddFMulToFMadOrFMAERNS0_12MachineInstrERSt8functionIS3_EE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #3 align 2 {
bb.a:
  %2 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %3 = alloca [3 x %"class.llvm::SrcOp"], align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !251   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1628
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1629, !nonnull !52, !align !201
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !247
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !206
  store i32 %i.g, ptr %2, align 8, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.h, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1630
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !247  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !206
  store i32 %i.n, ptr %3, align 8, !tbaa !217
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !223
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
end_hunk_2
