Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forceelement?download=true
inline.NumInlined: 843
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<std::function<void (long, double)>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::function<void (long, double)>>::_Storage" = type { %"class.std::function.1" }
%"class.std::function.1" = type { %"class.std::_Function_base", ptr }
%"class.gmx::StepWorkload" = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%"class.gmx::ArrayRefWithPadding" = type { ptr, ptr, ptr }
%"class.gmx::ArrayRef" = type { %"struct.gmx::ArrayRefIter", %"struct.gmx::ArrayRefIter" }
%"struct.gmx::ArrayRefIter" = type { ptr }
%"class.gmx::ArrayRef.496" = type { %"struct.gmx::ArrayRefIter.497", %"struct.gmx::ArrayRefIter.497" }
%"struct.gmx::ArrayRefIter.497" = type { ptr }
%"class.gmx::ArrayRef.411" = type { %"struct.gmx::ArrayRefIter.412", %"struct.gmx::ArrayRefIter.412" }
%"struct.gmx::ArrayRefIter.412" = type { ptr }
%"class.std::unique_ptr.513" = type { %"struct.std::__uniq_ptr_data.514" }
%"struct.std::__uniq_ptr_data.514" = type { %"class.std::__uniq_ptr_impl.515" }
%"class.std::__uniq_ptr_impl.515" = type { %"class.std::tuple.516" }
%"class.std::tuple.516" = type { %"struct.std::_Tuple_impl.517" }
%"struct.std::_Tuple_impl.517" = type { %"struct.std::_Head_base.520" }
%"struct.std::_Head_base.520" = type { ptr }
%"class.gmx::ElementNotFoundError" = type { %"class.gmx::ModularSimulatorError" }
%"class.gmx::ModularSimulatorError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.681" }
%"class.std::vector.681" = type { %"struct.std::_Vector_base.682" }
%"struct.std::_Vector_base.682" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr.686" = type { %"struct.std::__uniq_ptr_data.687" }
%"struct.std::__uniq_ptr_data.687" = type { %"class.std::__uniq_ptr_impl.688" }
%"class.std::__uniq_ptr_impl.688" = type { %"class.std::tuple.689" }
%"class.std::tuple.689" = type { %"struct.std::_Tuple_impl.690" }
%"struct.std::_Tuple_impl.690" = type { %"struct.std::_Head_base.693" }
%"struct.std::_Head_base.693" = type { ptr }
%"struct.std::type_index" = type { ptr }

$_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10unique_ptrI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EED2Ev = comdat any

$_ZN3gmx12ForceElement3runILb1EEEvldj = comdat any

$_ZN3gmx12ForceElement3runILb0EEEvldj = comdat any

$_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_12ForceElementEEEPT_St10unique_ptrIS3_St14default_deleteIS3_EE = comdat any

$_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_12ForceElementEEEvPT_ = comdat any

$_ZN3gmxlsINS_20ElementNotFoundErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2EPKc = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZN3gmx20ElementNotFoundErrorD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN3gmx16SignallerBuilderINS_23NeighborSearchSignallerEE23registerSignallerClientEPNS_30INeighborSearchSignallerClientE = comdat any

$_ZN3gmx16SignallerBuilderINS_15EnergySignallerEE23registerSignallerClientEPNS_22IEnergySignallerClientE = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx29SimulationAlgorithmSetupErrorD0Ev = comdat any

$_ZTIN3gmx17ISimulatorElementE = comdat any

$_ZTSN3gmx17ISimulatorElementE = comdat any

$_ZTIN3gmx21ITopologyHolderClientE = comdat any

$_ZTSN3gmx21ITopologyHolderClientE = comdat any

$_ZTIN3gmx30INeighborSearchSignallerClientE = comdat any

$_ZTSN3gmx30INeighborSearchSignallerClientE = comdat any

$_ZTIN3gmx22IEnergySignallerClientE = comdat any

$_ZTSN3gmx22IEnergySignallerClientE = comdat any

$_ZTIN3gmx19IDomDecHelperClientE = comdat any

$_ZTSN3gmx19IDomDecHelperClientE = comdat any

$_ZTIN3gmx20ElementNotFoundErrorE = comdat any

$_ZTSN3gmx20ElementNotFoundErrorE = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx20ElementNotFoundErrorE = comdat any

$_ZTIN3gmx29SimulationAlgorithmSetupErrorE = comdat any

$_ZTSN3gmx29SimulationAlgorithmSetupErrorE = comdat any

$_ZTVN3gmx29SimulationAlgorithmSetupErrorE = comdat any

@_ZTVN3gmx12ForceElementE = constant { [11 x ptr], [5 x ptr], [5 x ptr], [5 x ptr], [5 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN3gmx12ForceElementE, ptr @_ZN3gmx12ForceElement12scheduleTaskEldRKSt8functionIFvS1_IFvvEEEE, ptr @_ZN3gmx12ForceElement12elementSetupEv, ptr @_ZN3gmx12ForceElement15elementTeardownEv, ptr @_ZN3gmx12ForceElementD1Ev, ptr @_ZN3gmx12ForceElementD0Ev, ptr @_ZN3gmx12ForceElement22registerDomDecCallbackEv, ptr @_ZN3gmx12ForceElement11setTopologyEPK14gmx_localtop_t, ptr @_ZN3gmx12ForceElement18registerNSCallbackEv, ptr @_ZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventE], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN3gmx12ForceElementE, ptr @_ZThn8_N3gmx12ForceElementD1Ev, ptr @_ZThn8_N3gmx12ForceElementD0Ev, ptr @_ZThn8_N3gmx12ForceElement11setTopologyEPK14gmx_localtop_t], [5 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN3gmx12ForceElementE, ptr @_ZThn16_N3gmx12ForceElementD1Ev, ptr @_ZThn16_N3gmx12ForceElementD0Ev, ptr @_ZThn16_N3gmx12ForceElement18registerNSCallbackEv], [5 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN3gmx12ForceElementE, ptr @_ZThn24_N3gmx12ForceElementD1Ev, ptr @_ZThn24_N3gmx12ForceElementD0Ev, ptr @_ZThn24_N3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventE], [5 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN3gmx12ForceElementE, ptr @_ZThn32_N3gmx12ForceElementD1Ev, ptr @_ZThn32_N3gmx12ForceElementD0Ev, ptr @_ZThn32_N3gmx12ForceElement22registerDomDecCallbackEv] }, align 8
@_ZTIN3gmx12ForceElementE = constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN3gmx12ForceElementE, i32 0, i32 5, ptr @_ZTIN3gmx17ISimulatorElementE, i64 2, ptr @_ZTIN3gmx21ITopologyHolderClientE, i64 2050, ptr @_ZTIN3gmx30INeighborSearchSignallerClientE, i64 4098, ptr @_ZTIN3gmx22IEnergySignallerClientE, i64 6146, ptr @_ZTIN3gmx19IDomDecHelperClientE, i64 8194 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx12ForceElementE = constant [21 x i8] c"N3gmx12ForceElementE\00", align 1
@_ZTIN3gmx17ISimulatorElementE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3gmx17ISimulatorElementE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx17ISimulatorElementE = linkonce_odr constant [26 x i8] c"N3gmx17ISimulatorElementE\00", comdat, align 1
@_ZTIN3gmx21ITopologyHolderClientE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3gmx21ITopologyHolderClientE }, comdat, align 8
@_ZTSN3gmx21ITopologyHolderClientE = linkonce_odr constant [30 x i8] c"N3gmx21ITopologyHolderClientE\00", comdat, align 1
@_ZTIN3gmx30INeighborSearchSignallerClientE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3gmx30INeighborSearchSignallerClientE }, comdat, align 8
@_ZTSN3gmx30INeighborSearchSignallerClientE = linkonce_odr constant [39 x i8] c"N3gmx30INeighborSearchSignallerClientE\00", comdat, align 1
@_ZTIN3gmx22IEnergySignallerClientE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3gmx22IEnergySignallerClientE }, comdat, align 8
@_ZTSN3gmx22IEnergySignallerClientE = linkonce_odr constant [31 x i8] c"N3gmx22IEnergySignallerClientE\00", comdat, align 1
@_ZTIN3gmx19IDomDecHelperClientE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3gmx19IDomDecHelperClientE }, comdat, align 8
@_ZTSN3gmx19IDomDecHelperClientE = linkonce_odr constant [28 x i8] c"N3gmx19IDomDecHelperClientE\00", comdat, align 1
@_ZN3gmxL18mtsForceGroupNamesB5cxx11E = internal global %"struct.gmx::EnumerationArray.6" zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"longrange-nonbonded\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"nonbonded\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"awh\00", align 1
@__dso_handle = external hidden global i8
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@"_ZTIZN3gmx12ForceElement12scheduleTaskEldRKSt8functionIFvS1_IFvvEEEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3gmx12ForceElement12scheduleTaskEldRKSt8functionIFvS1_IFvvEEEEE3$_0" }, align 8
@"_ZTSZN3gmx12ForceElement12scheduleTaskEldRKSt8functionIFvS1_IFvvEEEEE3$_0" = internal constant [70 x i8] c"ZN3gmx12ForceElement12scheduleTaskEldRKSt8functionIFvS1_IFvvEEEEE3$_0\00", align 1
@"_ZTIZN3gmx12ForceElement18registerNSCallbackEvE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3gmx12ForceElement18registerNSCallbackEvE3$_0" }, align 8
@"_ZTSZN3gmx12ForceElement18registerNSCallbackEvE3$_0" = internal constant [48 x i8] c"ZN3gmx12ForceElement18registerNSCallbackEvE3$_0\00", align 1
@"_ZTIZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_0" }, align 8
@"_ZTSZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_0" = internal constant [77 x i8] c"ZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_0\00", align 1
@"_ZTIZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_1" }, align 8
@"_ZTSZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_1" = internal constant [77 x i8] c"ZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_1\00", align 1
@"_ZTIZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_2" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_2" }, align 8
@"_ZTSZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_2" = internal constant [77 x i8] c"ZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventEE3$_2\00", align 1
@"_ZTIZN3gmx12ForceElement22registerDomDecCallbackEvE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3gmx12ForceElement22registerDomDecCallbackEvE3$_0" }, align 8
@"_ZTSZN3gmx12ForceElement22registerDomDecCallbackEvE3$_0" = internal constant [52 x i8] c"ZN3gmx12ForceElement22registerDomDecCallbackEvE3$_0\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"Tried to register non-existing element to infrastructure.\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_12ForceElementEEEvPT_ = private unnamed_addr constant [109 x i8] c"void gmx::ModularSimulatorAlgorithmBuilder::registerExistingElement(Element *) [Element = gmx::ForceElement]\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/modularsimulator/simulatoralgorithm.h\00", align 1
@_ZTIN3gmx20ElementNotFoundErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx20ElementNotFoundErrorE, ptr @_ZTIN3gmx21ModularSimulatorErrorE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx20ElementNotFoundErrorE = linkonce_odr constant [29 x i8] c"N3gmx20ElementNotFoundErrorE\00", comdat, align 1
@_ZTIN3gmx21ModularSimulatorErrorE = external constant ptr
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx20ElementNotFoundErrorE = linkonce_odr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3gmx20ElementNotFoundErrorE, ptr @_ZN3gmx16GromacsExceptionD2Ev, ptr @_ZN3gmx20ElementNotFoundErrorD0Ev, ptr @_ZNK3gmx16GromacsException4whatEv, ptr @_ZNK3gmx21ModularSimulatorError9errorCodeEv] }, comdat, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Tried to register to signaller after it was built.\00", align 1
@_ZTIN3gmx29SimulationAlgorithmSetupErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx29SimulationAlgorithmSetupErrorE, ptr @_ZTIN3gmx21ModularSimulatorErrorE }, comdat, align 8
@_ZTSN3gmx29SimulationAlgorithmSetupErrorE = linkonce_odr constant [38 x i8] c"N3gmx29SimulationAlgorithmSetupErrorE\00", comdat, align 1
@_ZTVN3gmx29SimulationAlgorithmSetupErrorE = linkonce_odr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3gmx29SimulationAlgorithmSetupErrorE, ptr @_ZN3gmx16GromacsExceptionD2Ev, ptr @_ZN3gmx29SimulationAlgorithmSetupErrorD0Ev, ptr @_ZNK3gmx16GromacsException4whatEv, ptr @_ZNK3gmx21ModularSimulatorError9errorCodeEv] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_forceelement.cpp, ptr null }]
@switch.table._ZThn24_N3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventE = private unnamed_addr constant [3 x ptr] [ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx12ForceElement22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_0E9_M_invokeERKSt9_Any_dataOlOd", ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx12ForceElement22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_1E9_M_invokeERKSt9_Any_dataOlOd", ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx12ForceElement22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_2E9_M_invokeERKSt9_Any_dataOlOd"], align 8
@switch.table._ZThn24_N3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventE.69 = private unnamed_addr constant [3 x ptr] [ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx12ForceElement22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx12ForceElement22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx12ForceElement22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"], align 8

@_ZN3gmx12ForceElementC1EPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEbP8_IO_FILEPK9t_commrecPK10t_inputrecRKNS_18MDModulesNotifiersEPKNS_7MDAtomsEP6t_nrnbP10t_forcerecP13gmx_wallcyclePNS_21MdrunScheduleWorkloadEPNS_19VirtualSitesHandlerEPNS_10ImdSessionEP6pull_tPNS_11ConstraintsERK10gmx_mtop_tP10gmx_enfrot = unnamed_addr alias void (ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN3gmx12ForceElementC2EPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEbP8_IO_FILEPK9t_commrecPK10t_inputrecRKNS_18MDModulesNotifiersEPKNS_7MDAtomsEP6t_nrnbP10t_forcerecP13gmx_wallcyclePNS_21MdrunScheduleWorkloadEPNS_19VirtualSitesHandlerEPNS_10ImdSessionEP6pull_tPNS_11ConstraintsERK10gmx_mtop_tP10gmx_enfrot
@_ZN3gmx12ForceElementD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx12ForceElementD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12ForceElement12scheduleTaskEldRKSt8functionIFvS1_IFvvEEEE(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt8functionIFvvEEC2IZN3gmx12ForceElement12scheduleTaskEldRKS_IFvS1_EEE3$_0vEEOT_.exit":
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !48, !range !49, !noundef !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i8, ptr %i.c, align 8, !range !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = trunc nuw i8 %i.b to i1
  %i.i = zext nneg i8 %i.d to i32
  %i.j = shl nuw nsw i32 %i.i, 9
  %i.k = or disjoint i32 %i.j, 209
  %i.l = select i1 %i.h, i32 %i.k, i32 209
  %i.m = load <4 x i64>, ptr %i.e, align 8, !tbaa !51
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26 ; 5 uses
  %i.o = insertelement <4 x i64> poison, i64 %1, i64 0
  %i.p = shufflevector <4 x i64> %i.o, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.q = icmp eq <4 x i64> %i.m, %i.p
  %i.r = select <4 x i1> %i.q, <4 x i32> <i32 4, i32 512, i32 256, i32 1024>, <4 x i32> zeroinitializer ; 4 uses
  %5 = extractelement <4 x i32> %i.r, i64 2
  %6 = or disjoint i32 %i.l, %5
  %7 = extractelement <4 x i32> %i.r, i64 1
  %8 = or i32 %6, %7
  %9 = extractelement <4 x i32> %i.r, i64 3
  %10 = or i32 %8, %9
  %11 = extractelement <4 x i32> %i.r, i64 0
  %i.s = or i32 %10, %11
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.n, align 16, !tbaa !53
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !51
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store double %2, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !55
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %i.s, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !56
  store ptr %i.n, ptr %4, align 8, !tbaa !57
  store ptr @"_ZNSt17_Function_handlerIFvvEZN3gmx12ForceElement12scheduleTaskEldRKSt8functionIFvS3_IS0_EEEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.t, align 8, !tbaa !60
  store ptr @"_ZNSt17_Function_handlerIFvvEZN3gmx12ForceElement12scheduleTaskEldRKSt8functionIFvS3_IS0_EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.f, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61
  %.not.i.i10 = icmp eq ptr %i.v, null
  br i1 %.not.i.i10, label %bb.a, label %bb.b

common.resume:                                    ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.ac

bb.a:                                             ; preds = %"_ZNSt8functionIFvvEEC2IZN3gmx12ForceElement12scheduleTaskEldRKS_IFvS1_EEE3$_0vEEOT_.exit"
  invoke void @_ZSt25__throw_bad_function_callv() #27
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %"_ZNSt8functionIFvvEEC2IZN3gmx12ForceElement12scheduleTaskEldRKS_IFvS1_EEE3$_0vEEOT_.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !134
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit unwind label %bb.e, !inline_history !132

_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit:          ; preds = %bb.b
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !61  ; 2 uses
  %.not.i12 = icmp eq ptr %i.ad, null
  br i1 %.not.i12, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN3gmx12ForceElement12elementSetupEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12ForceElement15elementTeardownEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !48, !range !49, !noundef !50
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  tail call void @_Z12done_shellfcP8_IO_FILEP13gmx_shellfc_tl(ptr noundef %i.e, ptr noundef %i.g, i64 noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx12ForceElementD0Ev(ptr noundef nonnull align 8 dereferenceable(304) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN3gmx12ForceElementD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 304) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx12ForceElement22registerDomDecCallbackEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::function") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %0, align 8, !tbaa !53
  store ptr @"_ZNSt17_Function_handlerIFvvEZN3gmx12ForceElement22registerDomDecCallbackEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.c, align 8, !tbaa !60
  store ptr @"_ZNSt17_Function_handlerIFvvEZN3gmx12ForceElement22registerDomDecCallbackEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.b, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx12ForceElement11setTopologyEPK14gmx_localtop_t(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(304) initializes((112, 120)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx12ForceElement18registerNSCallbackEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((0, 33)) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %0, align 8, !tbaa !53
  store ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx12ForceElement18registerNSCallbackEvE3$_0E9_M_invokeERKSt9_Any_dataOlOd", ptr %i.c, align 8, !tbaa !67
  store ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx12ForceElement18registerNSCallbackEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.b, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.e, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((32, 33)) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %2, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZThn24_N3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = zext nneg i32 %2 to i64
  %switch.gep12 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZThn24_N3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventE.69, i64 %i.c
  %switch.load13 = load ptr, ptr %switch.gep12, align 8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  store i64 %i.d, ptr %0, align 8, !tbaa !53
  store ptr %switch.load, ptr %i.f, align 8, !tbaa !67
  store ptr %switch.load13, ptr %i.e, align 8, !tbaa !61
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sink = phi i8 [ 0, %bb.a ], [ 1, %switch.lookup ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.h, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn8_N3gmx12ForceElementD1Ev(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN3gmx12ForceElementD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %i.a) #29
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn8_N3gmx12ForceElementD0Ev(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN3gmx12ForceElementD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %i.a) #29
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(304) %i.a, i64 noundef 304) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZThn8_N3gmx12ForceElement11setTopologyEPK14gmx_localtop_t(ptr nofree noundef writeonly captures(none) initializes((104, 112)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN3gmx16SignallerBuilderINS_15EnergySignallerEE23registerSignallerClientEPNS_22IEnergySignallerClientE:bb.a
_ZNSt6vectorIPN3gmx22IEnergySignallerClientESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPN3gmx22IEnergySignallerClientESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !494
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !490
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !491
  br label %_ZNSt6vectorIPN3gmx22IEnergySignallerClientESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit

_ZNSt6vectorIPN3gmx22IEnergySignallerClientESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit: ; preds = %_ZNSt6vectorIPN3gmx22IEnergySignallerClientESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.i, %bb.a
  ret void

bb.n:                                             ; preds = %bb.f, %bb.g
  %.pn9 = phi { ptr, i32 } [ %i.g, %bb.f ], [ %.pn10, %bb.g ]
  resume { ptr, i32 } %.pn9

bb.o:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN3gmx24TrajectoryElementBuilder20registerWriterClientEPNS_23ITrajectoryWriterClientE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #10

declare void @_ZN3gmx14TopologyHolder7Builder14registerClientEPNS_21ITopologyHolderClientE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #10

declare void @_ZN3gmx23CheckpointHelperBuilder14registerClientEPNS_23ICheckpointHelperClientE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) local_unnamed_addr #10

declare void @_ZN3gmx19DomDecHelperBuilder14registerClientEPNS_19IDomDecHelperClientE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !129
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !495
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !495
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !130

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx29SimulationAlgorithmSetupErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN3gmx16GromacsExceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !129
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !0
  br label %_ZN3gmx16GromacsExceptionD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN3gmx16GromacsExceptionD2Ev.exit, !prof !130

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZN3gmx16GromacsExceptionD2Ev.exit

_ZN3gmx16GromacsExceptionD2Ev.exit:               ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_forceelement.cpp() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 19, ptr %i.a, align 8, !tbaa !51
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !73
  %i.c = load i64, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 8), align 8, !tbaa !126
  %i.d = load ptr, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 32), align 8, !tbaa !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 40), align 8, !tbaa !126
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 57), align 1, !tbaa !74
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 64), align 8, !tbaa !125
  store i32 1919508848, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 72), align 8, !tbaa !126
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 84), align 4, !tbaa !74
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 96), align 8, !tbaa !125
  store i64 7809649004360788324, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 104), align 8, !tbaa !126
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 120), align 8, !tbaa !74
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 128), align 8, !tbaa !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 136), align 8, !tbaa !126
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 149), align 1, !tbaa !74
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 160), align 8, !tbaa !125
  store i32 1819047280, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 168), align 8, !tbaa !126
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 180), align 4, !tbaa !74
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 192), align 8, !tbaa !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 200), align 8, !tbaa !126
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 211), align 1, !tbaa !74
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev, ptr nonnull @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr nonnull @__dso_handle) #29 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nofree nounwind }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { cold noreturn }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind }
attributes #30 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZN3gmx16GromacsExceptionD2Ev, null, null, null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTSN3gmx17ISimulatorElementE"}
!11 = !{!"_ZTSN3gmx21ITopologyHolderClientE"}
!12 = !{!"_ZTSN3gmx30INeighborSearchSignallerClientE"}
!13 = !{!"_ZTSN3gmx22IEnergySignallerClientE"}
!14 = !{!"_ZTSN3gmx19IDomDecHelperClientE"}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTS13gmx_shellfc_t", !15, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 _ZTSN3gmx19StatePropagatorDataE", !15, i64 0}
!20 = !{!"p1 _ZTSN3gmx10EnergyDataE", !15, i64 0}
!21 = !{!"p1 _ZTSN3gmx26FreeEnergyPerturbationDataE", !15, i64 0}
!22 = !{!"p1 _ZTS14gmx_localtop_t", !15, i64 0}
!23 = !{!"p1 _ZTS12gmx_domdec_t", !15, i64 0}
!24 = !{!"_ZTS22DDBalanceRegionHandler", !17, i64 0, !23, i64 8}
!25 = !{!"p1 _ZTS24CpuPpLongRangeNonbondeds", !15, i64 0}
!26 = !{!"_ZTSSt10_Head_baseILm0EP24CpuPpLongRangeNonbondedsLb0EE", !25, i64 0}
!27 = !{!"_ZTSSt11_Tuple_implILm0EJP24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EEE", !26, i64 0}
!28 = !{!"_ZTSSt5tupleIJP24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EEE", !27, i64 0}
!29 = !{!"_ZTSSt15__uniq_ptr_implI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EE", !28, i64 0}
!30 = !{!"_ZTSSt15__uniq_ptr_dataI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_ELb1ELb1EE", !29, i64 0}
!31 = !{!"_ZTSSt10unique_ptrI24CpuPpLongRangeNonbondedsSt14default_deleteIS0_EE", !30, i64 0}
!32 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypefLS1_7EEE", !6, i64 0}
!33 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!34 = !{!"p1 _ZTS9t_commrec", !15, i64 0}
!35 = !{!"p1 _ZTS10t_inputrec", !15, i64 0}
!36 = !{!"p1 _ZTSN3gmx18MDModulesNotifiersE", !15, i64 0}
!37 = !{!"p1 _ZTSN3gmx7MDAtomsE", !15, i64 0}
!38 = !{!"p1 _ZTS6t_nrnb", !15, i64 0}
!39 = !{!"p1 _ZTS13gmx_wallcycle", !15, i64 0}
!40 = !{!"p1 _ZTS10t_forcerec", !15, i64 0}
!41 = !{!"p1 _ZTSN3gmx19VirtualSitesHandlerE", !15, i64 0}
!42 = !{!"p1 _ZTSN3gmx10ImdSessionE", !15, i64 0}
!43 = !{!"p1 _ZTS6pull_t", !15, i64 0}
!44 = !{!"p1 _ZTSN3gmx21MdrunScheduleWorkloadE", !15, i64 0}
!45 = !{!"p1 _ZTSN3gmx11ConstraintsE", !15, i64 0}
!46 = !{!"p1 _ZTS10gmx_enfrot", !15, i64 0}
!47 = !{!"_ZTSN3gmx12ForceElementE", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !16, i64 40, !17, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !19, i64 88, !20, i64 96, !21, i64 104, !22, i64 112, !17, i64 120, !18, i64 128, !24, i64 136, !31, i64 152, !32, i64 160, !33, i64 192, !34, i64 200, !35, i64 208, !36, i64 216, !37, i64 224, !38, i64 232, !39, i64 240, !40, i64 248, !41, i64 256, !42, i64 264, !43, i64 272, !44, i64 280, !45, i64 288, !46, i64 296}
!48 = !{!47, !17, i64 48}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!18, !18, i64 0}
!52 = !{!"p1 _ZTSN3gmx12ForceElementE", !15, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"double", !6, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!7, !7, i64 0}
!57 = !{!15, !15, i64 0}
!58 = !{!"_ZTSSt14_Function_base", !6, i64 0, !15, i64 16}
!59 = !{!"_ZTSSt8functionIFvvEE", !58, i64 0, !15, i64 24}
!60 = !{!59, !15, i64 24}
!61 = !{!58, !15, i64 16}
!62 = !{!47, !33, i64 192}
!63 = !{!47, !16, i64 40}
!64 = !{!47, !18, i64 128}
!65 = !{!47, !22, i64 112}
!66 = !{!"_ZTSSt8functionIFvldEE", !58, i64 0, !15, i64 24}
!67 = !{!66, !15, i64 24}
!68 = !{!"_ZTSSt22_Optional_payload_baseISt8functionIFvldEEE", !6, i64 0, !17, i64 32}
!69 = !{!68, !17, i64 32}
!70 = !{!"p1 omnipotent char", !15, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !18, i64 8, !6, i64 16}
!73 = !{!72, !70, i64 0}
!74 = !{!6, !6, i64 0}
!75 = !{!"vtable pointer", !5, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 _ZTSN3gmx8MtsLevelE", !15, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!"float", !6, i64 0}
!80 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !15, i64 0}
!81 = !{!"p1 float", !15, i64 0}
!82 = !{!"any p2 pointer", !15, i64 0}
!83 = !{!"p1 _ZTSN3gmx7MpiCommE", !15, i64 0}
!84 = !{!"_ZTS9t_commrec", !83, i64 0, !83, i64 8, !23, i64 16}
!85 = !{!84, !23, i64 16}
!86 = !{!47, !19, i64 88}
!87 = !{!47, !20, i64 96}
!88 = !{!47, !21, i64 104}
!89 = !{!47, !17, i64 120}
!90 = !{!25, !25, i64 0}
!91 = !{!47, !34, i64 200}
!92 = !{!47, !35, i64 208}
!93 = !{!47, !37, i64 224}
!94 = !{!47, !38, i64 232}
!95 = !{!47, !39, i64 240}
!96 = !{!47, !40, i64 248}
!97 = !{!47, !41, i64 256}
!98 = !{!47, !42, i64 264}
!99 = !{!47, !43, i64 272}
!100 = !{!47, !44, i64 280}
!101 = !{!47, !45, i64 288}
!102 = !{!47, !46, i64 296}
!103 = !{!"p1 _ZTS9t_mdatoms", !15, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"p1 _ZTSSt9type_info", !15, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"p1 _ZTSN3gmx15ListedForcesGpuE", !15, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!17, !17, i64 0}
!110 = !{!78, !77, i64 0}
!111 = !{!78, !77, i64 8}
!112 = !{i64 0, i64 1, !109, i64 1, i64 1, !109, i64 2, i64 1, !109, i64 3, i64 1, !109, i64 4, i64 1, !109, i64 5, i64 1, !109, i64 6, i64 1, !109, i64 7, i64 1, !109, i64 8, i64 1, !109, i64 9, i64 1, !109, i64 10, i64 1, !109, i64 11, i64 1, !109, i64 12, i64 1, !109, i64 13, i64 1, !109, i64 14, i64 1, !109, i64 15, i64 1, !109, i64 16, i64 1, !109, i64 17, i64 1, !109, i64 18, i64 1, !109}
!113 = !{!47, !36, i64 216}
!114 = !{!47, !18, i64 56}
!115 = !{!80, !80, i64 0}
!116 = !{!"_ZTSN3gmx19ArrayRefWithPaddingINS_11BasicVectorIfEEEE", !80, i64 0, !80, i64 8, !80, i64 16}
!117 = !{!116, !80, i64 16}
!118 = !{!"p1 _ZTSN3gmx17ISimulatorElementE", !15, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!70, !70, i64 0}
!122 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!123 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !122, i64 0}
!124 = !{!123, !122, i64 0}
!125 = !{!71, !70, i64 0}
!126 = !{!72, !18, i64 8}
!127 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!128 = !{!127, !7, i64 8}
!129 = !{!127, !7, i64 12}
!130 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!131 = !{!"_ZTSN3gmx28ModularSimulatorBuilderStateE", !6, i64 0}
!132 = distinct !{null}
!133 = !{!"_ZTSSt8functionIFvS_IFvvEEEE", !58, i64 0, !15, i64 24}
!134 = !{!133, !15, i64 24}
!135 = distinct !{!135, i1 true, !"_ZN3gmx12ForceElement18registerNSCallbackEv"}
!136 = distinct !{!136, !135, !"_ZN3gmx12ForceElement18registerNSCallbackEv: argument 0"}
!137 = !{!136}
!138 = distinct !{!138, i1 true, !"_ZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventE"}
!139 = distinct !{!139, !138, !"_ZN3gmx12ForceElement22registerEnergyCallbackENS_20EnergySignallerEventE: argument 0"}
!140 = !{!139}
!141 = distinct !{!141, i1 true, !"_ZN3gmx12ForceElement22registerDomDecCallbackEv"}
!142 = distinct !{!142, !141, !"_ZN3gmx12ForceElement22registerDomDecCallbackEv: argument 0"}
!143 = !{!142}
!144 = distinct !{!144, i1 true, !"_ZSt11make_uniqueI24CpuPpLongRangeNonbondedsJRiRfS2_RSt5arrayIdLm2EER22CoulombInteractionTypeR15VanDerWaalsTypeRK10t_inputrecRP6t_nrnbRP13gmx_wallcycleRP8_IO_FILEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!145 = distinct !{!145, !144, !"_ZSt11make_uniqueI24CpuPpLongRangeNonbondedsJRiRfS2_RSt5arrayIdLm2EER22CoulombInteractionTypeR15VanDerWaalsTypeRK10t_inputrecRP6t_nrnbRP13gmx_wallcycleRP8_IO_FILEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!146 = !{!"_ZTS20IntegrationAlgorithm", !6, i64 0}
!147 = !{!"_ZTS12CutoffScheme", !6, i64 0}
!148 = !{!"_ZTS19ComRemovalAlgorithm", !6, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !78, i64 0}
!150 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !149, i64 0}
!151 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !150, i64 0}
!152 = !{!"_ZTS13EwaldGeometry", !6, i64 0}
!153 = !{!"_ZTS12LongRangeVdW", !6, i64 0}
!154 = !{!"_ZTS7PbcType", !6, i64 0}
!155 = !{!"_ZTS26EnsembleTemperatureSetting", !6, i64 0}
!156 = !{!"_ZTS19TemperatureCoupling", !6, i64 0}
!157 = !{!"_ZTS16PressureCoupling", !6, i64 0}
!158 = !{!"_ZTS20PressureCouplingType", !6, i64 0}
!159 = !{!"_ZTS15RefCoordScaling", !6, i64 0}
!160 = !{!"_ZTS23PressureCouplingOptions", !157, i64 0, !158, i64 4, !7, i64 8, !79, i64 12, !6, i64 16, !6, i64 52, !159, i64 88}
!161 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!162 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !161, i64 0}
!163 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !162, i64 0}
end_hunk_1
