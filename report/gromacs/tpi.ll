Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tpi?download=true
inline.NumInlined: 1973
inline.NumDeleted: 915
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0
%struct.t_commrec = type { ptr, ptr, ptr }
%"class.gmx::ForceBuffers" = type <{ %"class.gmx::PaddedVector", %"class.gmx::PaddedVector", %"class.gmx::ForceBuffersView", i8, [7 x i8] }>
%"class.gmx::PaddedVector" = type { %"class.std::vector", %"class.__gnu_cxx::__normal_iterator" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<gmx::BasicVector<float>, gmx::Allocator<gmx::BasicVector<float>, gmx::HostAllocationPolicy>>::_Vector_impl" }
%"struct.std::_Vector_base<gmx::BasicVector<float>, gmx::Allocator<gmx::BasicVector<float>, gmx::HostAllocationPolicy>>::_Vector_impl" = type { %"class.gmx::Allocator.base", %"struct.std::_Vector_base<gmx::BasicVector<float>, gmx::Allocator<gmx::BasicVector<float>, gmx::HostAllocationPolicy>>::_Vector_impl_data" }
%"class.gmx::Allocator.base" = type { %"class.gmx::HostAllocationPolicy.base" }
%"class.gmx::HostAllocationPolicy.base" = type <{ i32, i8 }>
%"struct.std::_Vector_base<gmx::BasicVector<float>, gmx::Allocator<gmx::BasicVector<float>, gmx::HostAllocationPolicy>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.gmx::ForceBuffersView" = type <{ %"class.gmx::ArrayRefWithPadding", %"class.gmx::ArrayRefWithPadding", i8, [7 x i8] }>
%"class.gmx::ThreeFry2x64" = type { %"class.gmx::ThreeFry2x64General.base", [4 x i8] }
%"class.gmx::ThreeFry2x64General.base" = type <{ %"struct.std::array", %"struct.std::array", %"struct.std::array", i32 }>
%"struct.std::array" = type { [2 x i64] }
%"class.gmx::UniformRealDistribution" = type { %"class.gmx::UniformRealDistribution<>::param_type" }
%"class.gmx::UniformRealDistribution<>::param_type" = type { float, float }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::array.569" = type { [2 x %"class.std::__cxx11::basic_string"] }

$_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN3gmx8internal14highBitCounter9incrementImLm2ELj5EEEvPSt5arrayIT_XT0_EES4_ = comdat any

$_ZN3gmx19ThreeFry2x64GeneralILj20ELj16EE7restartEmm = comdat any

$_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2EPKc = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN3gmx19ThreeFry2x64GeneralILj20ELj16EE13generateBlockERKSt5arrayImLm2EES5_ = comdat any

$_ZN9t_mdatomsC2ERKS_ = comdat any

$_ZN3gmx12PaddedVectorIfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEED2Ev = comdat any

$_ZN9t_mdatomsD2Ev = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA29_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA25_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA6_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA19_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA30_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA33_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN3gmx8internal14highBitCounter9incrementImLm2ELj16EEEvPSt5arrayIT_XT0_EE = comdat any

$_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA58_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev = comdat any

$_ZN3gmx21TestParticleInsertionD2Ev = comdat any

$_ZN22InteractionDefinitionsD2Ev = comdat any

$_ZN14gmx_ffparams_tD2Ev = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@_ZN3gmxL18mtsForceGroupNamesB5cxx11E = internal global %"struct.gmx::EnumerationArray" zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"longrange-nonbonded\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"nonbonded\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"awh\00", align 1
@__dso_handle = external hidden global i8
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"GMX_TPI_DUMP\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%20lf\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Random engine stream ran out of internal counter space.\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj5EEEvPSt5arrayIT_XT0_EES4_ = private unnamed_addr constant [149 x i8] c"static void gmx::internal::highBitCounter::increment(std::array<UIntType, words> *, UIntType) [UIntType = unsigned long, words = 2UL, highBits = 5U]\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/random/threefry.h\00", align 1
@_ZTIN3gmx13InternalErrorE = external constant ptr
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx13InternalErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"High bits of counter are reserved for the internal stream counter.\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx19ThreeFry2x64GeneralILj20ELj16EE7restartEmm = private unnamed_addr constant [107 x i8] c"void gmx::ThreeFry2x64General<20, 16>::restart(uint64_t, uint64_t) [rounds = 20, internalCounterBits = 16]\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str.17 = private unnamed_addr constant [77 x i8] c"atomInfoInsertion.indexOfFirstAtomInMoleculeBlock == *testAtomsRange.begin()\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"The last molecule block should match the molecule to insert\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx21TestParticleInsertionC1ERK10t_inputrecRK10gmx_mtop_tRK14gmx_localtop_tRK9t_mdatomsRKNS_18MDModulesNotifiersEP10t_forcerecP14gmx_enerdata_tRKNS_5RangeIiEENS_8ArrayRefIKNS_11BasicVectorIfEEEEfffiiENK3$_0clEv" = private unnamed_addr constant [328 x i8] c"auto gmx::TestParticleInsertion::TestParticleInsertion(const t_inputrec &, const gmx_mtop_t &, const gmx_localtop_t &, const t_mdatoms &, const MDModulesNotifiers &, t_forcerec *, gmx_enerdata_t *, const Range<int> &, ArrayRef<const RVec>, const real, const real, const real, const int, const int)::(lambda)::operator()() const\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/mdrun/tpi.cpp\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Unknown integrator\00", align 1
@.str.23 = private unnamed_addr constant [148 x i8] c"NOTE: Atoms in the molecule to insert belong to different energy groups.\0A      Only contributions to the group of the first atom will be reported.\0A\00", align 1
@.str.24 = private unnamed_addr constant [78 x i8] c"atomInfoInsertion.indexOfFirstAtomInMoleculeBlock == *testAtomsRange_.begin()\00", align 1
@"__PRETTY_FUNCTION__._ZZNK3gmx21TestParticleInsertion17checkEnergyGroupsENS_8ArrayRefIKNS_27AtomInfoWithinMoleculeBlockEEEP8_IO_FILEENK3$_0clEv" = private unnamed_addr constant [134 x i8] c"auto gmx::TestParticleInsertion::checkEnergyGroups(ArrayRef<const AtomInfoWithinMoleculeBlock>, FILE *)::(lambda)::operator()() const\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"TPI energies\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Time (ps)\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"(kJ mol\\S-1\\N) / (nm\\S3\\N)\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"f. are averages over one frame\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"-kT log(<Ve\\S-\\betaU\\N>/<V>)\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"f. -kT log<e\\S-\\betaU\\N>\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"f. <e\\S-\\betaU\\N>\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"#f. V\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"f. <Ue\\S-\\betaU\\N>\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"f. <U\\sVdW %s\\Ne\\S-\\betaU\\N>\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"f. <U\\sdisp c\\Ne\\S-\\betaU\\N>\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"f. <U\\sCoul %s\\Ne\\S-\\betaU\\N>\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"f. <U\\sRF excl\\Ne\\S-\\betaU\\N>\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"f. <U\\sCoul recip\\Ne\\S-\\betaU\\N>\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [63 x i8] c"\0A  time %.3f, step %d: non-finite energy %f, using exp(-bU)=0\0A\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"TPI %7d %12.5e %12.5f %12.5f %12.5f\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"t%g_step%d.pdb\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"t: %f step %d ener: %f\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj16EEEvPSt5arrayIT_XT0_EE = private unnamed_addr constant [140 x i8] c"static void gmx::internal::highBitCounter::increment(std::array<UIntType, words> *) [UIntType = unsigned long, words = 2UL, highBits = 16U]\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"Test particle insertion not implemented with LJ-PME\00", align 1
@.str.46 = private unnamed_addr constant [85 x i8] c"TPI with PME currently only works in a 3D geometry with tin-foil boundary conditions\00", align 1
@.str.47 = private unnamed_addr constant [195 x i8] c"Note that it is planned to change the command gmx mdrun -tpi (and -tpic) to make the functionality available in a different form in a future version of GROMACS, e.g. gmx test-particle-insertion.\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"GMX_TPIC_MASSES\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"%20lf%n\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"mass[%d] = %f\0A\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"Found zero masses in GMX_TPIC_MASSES\00", align 1
@.str.52 = private unnamed_addr constant [92 x i8] c"\0AWARNING: The temperatures of the different temperature coupling groups are not identical\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [59 x i8] c"\0A  The temperature for test particle insertion is %.3f K\0A\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"Test Particle Insertion\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"TPI atoms %d-%d\0A\00", align 1
@.str.56 = private unnamed_addr constant [58 x i8] c"RF exclusion correction for inserted molecule: %f kJ/mol\0A\00", align 1
@.str.57 = private unnamed_addr constant [53 x i8] c"WARNING: Your TPI molecule is not centered at 0,0,0\0A\00", align 1
@.str.58 = private unnamed_addr constant [42 x i8] c"\0AWill insert %d atoms %s partial charges\0A\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"\0AWill insert %ld times in each frame of %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"-rerun\00", align 1
@.str.63 = private unnamed_addr constant [112 x i8] c"Re-using the neighborlist %d times for insertions of a single atom in a sphere of radius %f does not make sense\00", align 1
@.str.64 = private unnamed_addr constant [75 x i8] c"Will use the same neighborlist for %d insertions in a sphere of radius %f\0A\00", align 1
@.str.65 = private unnamed_addr constant [79 x i8] c"Will insert randomly in a sphere of radius %f around the center of the cavity\0A\00", align 1
@.str.66 = private unnamed_addr constant [130 x i8] c"Number of atoms in trajectory (%d)%s is not equal the number in the run input file (%d) minus the number of atoms to insert (%d)\0A\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c" minus one\00", align 1
@.str.68 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"-tpi\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"mu %10.3e <mu> %10.3e\0A\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"%10.3f %12.5e %12.5e %12.5e %12.5e\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c" %12.5e\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"  <V>  = %12.5e nm^3\0A\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"  <mu> = %12.5e kJ/mol\0A\00", align 1
@.str.76 = private unnamed_addr constant [134 x i8] c"\0AThe computed chemical potential is not finite - consider increasing the number of steps and/or the number of frames to insert into.\0A\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"-tpid\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"TPI energy distribution\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"\\betaU - log(V/<V>)\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"number \\betaU > %g: %9.3e\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"reweighted\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"%6.2f %10d %12.5e\0A\00", align 1
@.str.85 = private unnamed_addr constant [54 x i8] c"gmx_omp_nthreads_get(ModuleMultiThread::Default) == 1\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"TPI does not support OpenMP\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx15LegacySimulator6do_tpiEvENK3$_0clEv" = private unnamed_addr constant [66 x i8] c"auto gmx::LegacySimulator::do_tpi()::(lambda)::operator()() const\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"begin_ <= end_\00", align 1
@.str.143 = private unnamed_addr constant [31 x i8] c"A range should have begin<=end\00", align 1
@__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv = private unnamed_addr constant [90 x i8] c"auto gmx::Range<int>::Range(const int, const int)::(lambda)::operator()() const [T = int]\00", align 1
@.str.144 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/api/legacy/include/gromacs/utility/range.h\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_tpi.cpp, ptr null }]
@switch.table._ZN3gmx21TestParticleInsertionC2ERK10t_inputrecRK10gmx_mtop_tRK14gmx_localtop_tRK9t_mdatomsRKNS_18MDModulesNotifiersEP10t_forcerecP14gmx_enerdata_tRKNS_5RangeIiEENS_8ArrayRefIKNS_11BasicVectorIfEEEEfffii = private unnamed_addr constant [16 x i8] c"\01\01\00\00\00\00\00\00\00\00\01\00\00\00\00\01", align 1

@_ZN3gmx21TestParticleInsertionC1ERK10t_inputrecRK10gmx_mtop_tRK14gmx_localtop_tRK9t_mdatomsRKNS_18MDModulesNotifiersEP10t_forcerecP14gmx_enerdata_tRKNS_5RangeIiEENS_8ArrayRefIKNS_11BasicVectorIfEEEEfffii = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, i32, i32), ptr @_ZN3gmx21TestParticleInsertionC2ERK10t_inputrecRK10gmx_mtop_tRK14gmx_localtop_tRK9t_mdatomsRKNS_18MDModulesNotifiersEP10t_forcerecP14gmx_enerdata_tRKNS_5RangeIiEENS_8ArrayRefIKNS_11BasicVectorIfEEEEfffii

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !18
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.ak = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.an = load i64, ptr %i.al, align 8, !tbaa !18
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx21TestParticleInsertionC2ERK10t_inputrecRK10gmx_mtop_tRK14gmx_localtop_tRK9t_mdatomsRKNS_18MDModulesNotifiersEP10t_forcerecP14gmx_enerdata_tRKNS_5RangeIiEENS_8ArrayRefIKNS_11BasicVectorIfEEEEfffii(ptr noundef nonnull align 8 dereferenceable(472) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(768) %2, ptr noundef nonnull align 8 dereferenceable(2808) %3, ptr noundef nonnull align 8 dereferenceable(648) %4, ptr noundef nonnull align 1 %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %9, float noundef %10, float noundef %11, float noundef %12, i32 noundef %13, i32 noundef %14) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !426
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !427
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !428
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !429
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN3gmx7MpiCommC1ENS0_10SingleRankE(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN9t_commrecC1ERKN3gmx7MpiCommES3_P12gmx_domdec_t(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef null)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %6, ptr %i.g, align 8, !tbaa !430
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %7, ptr %i.h, align 8, !tbaa !431
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_ZN3gmx12ForceBuffersC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %i.i)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.l = load i64, ptr %i.k, align 8, !tbaa !432
  store i64 %i.l, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 8192, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !18
  invoke void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj5EEEvPSt5arrayIT_XT0_EES4_(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i64 noundef 15)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = invoke { i64, i64 } @_ZN3gmx19ThreeFry2x64GeneralILj20ELj16EE13generateBlockERKSt5arrayImLm2EES5_(ptr noundef nonnull align 8 dereferenceable(52) %i.j, ptr noundef nonnull align 8 dereferenceable(52) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.d unwind label %bb.p       ; 2 uses

bb.d:                                             ; preds = %.noexc
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.o, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.r, align 8, !tbaa !127
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.s, align 8, !tbaa !128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.u = load i64, ptr %8, align 4, !tbaa !129
  store i64 %i.u, ptr %i.t, align 8, !tbaa !129
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !130
  %i.y = icmp eq i32 %i.x, 8
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %i.v, align 8, !tbaa !167
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %9, align 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i62 = load ptr, ptr %i.ac, align 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ad = ptrtoint ptr %.sroa.0.0.copyload.i62 to i64
  %i.ae = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.af = sub i64 %i.ad, %i.ae
  %reass.sub.fr.i = freeze i64 %i.af              ; 5 uses
  %i.ag = sdiv exact i64 %reass.sub.fr.i, 12
  %i.ah = icmp ugt i64 %i.ag, 768614336404564650
  br i1 %i.ah, label %bb.e, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #29
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i62, %.sroa.0.0.copyload.i
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !168
  br label %bb.h

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #30
          to label %.noexc5.i unwind label %bb.f  ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %reass.sub.fr.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.al, ptr %i.am, align 8, !tbaa !168
  %i.an = add i64 %reass.sub.fr.i, -12            ; 2 uses
  %i.ao = urem i64 %i.an, 12
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = add i64 %i.ap, 12                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %.sroa.0.0.copyload.i, i64 %i.aq, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.ak, i64 %i.aq
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !169 ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i6.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !168
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #26
  br label %.body

bb.h:                                             ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !170
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !172
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !173
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 2
  %i.bi = trunc i64 %i.bh to i32
  store i32 %i.bi, ptr %i.az, align 8, !tbaa !174
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 376
  store float %10, ptr %i.bj, align 8, !tbaa !175
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 381 ; 2 uses
  %.val = load i32, ptr %8, align 4, !tbaa !176
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.val58 = load i32, ptr %i.bl, align 4, !tbaa !177
  %i.bm = invoke fastcc noundef zeroext i1 @_ZN3gmx12_GLOBAL__N_118haveElectrostaticsERK9t_mdatomsRKNS_5RangeIiEE(ptr noundef nonnull align 8 dereferenceable(648) %4, i32 %.val, i32 %.val58)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %i.bk, align 1, !tbaa !178
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 384
  store float %11, ptr %i.bo, align 8, !tbaa !179
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.bq = tail call noundef float @logf(float noundef %12) #27
  store float %i.bq, ptr %i.bp, align 4, !tbaa !180
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 416
  store double 1.000000e+01, ptr %i.bs, align 8, !tbaa !181
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %i.bu = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %bb.j unwind label %bb.r       ; 3 uses

bb.j:                                             ; preds = %bb.i
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !182
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !183
  store double 0.000000e+00, ptr %i.bu, align 8, !tbaa !184
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !185
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 %13, ptr %i.by, align 4, !tbaa !186
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %14, ptr %i.bz, align 8, !tbaa !187
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !433 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !193
  %i.ce = load i32, ptr %8, align 4, !tbaa !176
  %i.cf = icmp eq i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.k, label %.invoke

.invoke:                                          ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit, %bb.j
  %i.cg = phi ptr [ @.str.17, %bb.j ], [ @.str.21, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ]
  %i.ch = phi ptr [ @.str.18, %bb.j ], [ @.str.22, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ]
  %i.ci = phi i32 [ 378, %bb.j ], [ 411, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ]
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx21TestParticleInsertionC1ERK10t_inputrecRK10gmx_mtop_tRK14gmx_localtop_tRK9t_mdatomsRKNS_18MDModulesNotifiersEP10t_forcerecP14gmx_enerdata_tRKNS_5RangeIiEENS_8ArrayRefIKNS_11BasicVectorIfEEEEfffiiENK3$_0clEv", ptr noundef nonnull @.str.19, i32 noundef %i.ci) #29
          to label %.cont unwind label %bb.z

.cont:                                            ; preds = %.invoke
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !194, !nonnull !195, !align !196
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 176
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !248
  invoke void @_ZN3gmx12ForceBuffers6resizeEi(ptr noundef nonnull align 8 dereferenceable(137) %i.i, i32 noundef %i.cl)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds i8, ptr %i.cb, i64 -24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !173
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !129
  %i.cp = and i32 %i.co, 255
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !249
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !434
  %i.ct = icmp ne i32 %i.cs, 0                    ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.cv = zext i1 %i.ct to i8
  store i8 %i.cv, ptr %i.cu, align 4, !tbaa !250
  %i.cw = load i8, ptr %i.bk, align 1, !tbaa !178, !range !251, !noundef !195
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.val59 = load i32, ptr %i.cy, align 4, !tbaa !252 ; 2 uses
  %switch.tableidx = add i32 %.val59, -1          ; 2 uses
  %i.cz = icmp ult i32 %switch.tableidx, 16
  br i1 %i.cz, label %switch.lookup, label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 382
  store i8 0, ptr %i.da, align 2, !tbaa !253
  %i.db = load i32, ptr %i.az, align 8, !tbaa !174
  %spec.select.v = select i1 %i.ct, i32 2, i32 1
  %spec.select = add nsw i32 %i.db, %spec.select.v
  br label %bb.u

bb.o:                                             ; preds = %bb.b, %bb.a
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %.noexc, %bb.c
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.h
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit69

bb.r:                                             ; preds = %bb.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

switch.lookup:                                    ; preds = %bb.m
  %i.dg = zext nneg i32 %switch.tableidx to i64
  %switch.gep.a = getelementptr inbounds nuw i8, ptr @switch.table._ZN3gmx21TestParticleInsertionC2ERK10t_inputrecRK10gmx_mtop_tRK14gmx_localtop_tRK9t_mdatomsRKNS_18MDModulesNotifiersEP10t_forcerecP14gmx_enerdata_tRKNS_5RangeIiEENS_8ArrayRefIKNS_11BasicVectorIfEEEEfffii, i64 %i.dg
  %switch.load.a = load i8, ptr %switch.gep.a, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %switch.lookup
  %i.dh = phi i8 [ %switch.load.a, %switch.lookup ], [ 0, %bb.m ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 382
  store i8 %i.dh, ptr %i.di, align 2, !tbaa !253
  %i.dj = load i32, ptr %i.az, align 8, !tbaa !174
  %spec.select76.v = select i1 %i.ct, i32 2, i32 1
  %reass.add = shl i32 %i.dj, 1
  %15 = zext nneg i8 %i.dh to i32
  %i.dk = add nuw nsw i32 %spec.select76.v, %15
  %spec.select56 = add i32 %i.dk, %reass.add      ; 3 uses
  switch i32 %.val59, label %bb.u [
    i32 3, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 14, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 13, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 15, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 5, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 4, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 17, label %bb.t
    i32 6, label %bb.t
  ]

_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread: ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %i.dl = add nsw i32 %spec.select56, 1
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.dm = add nsw i32 %spec.select56, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread, %bb.n
  %.2 = phi i32 [ %spec.select, %bb.n ], [ %spec.select56, %bb.s ], [ %i.dl, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread ], [ %i.dm, %bb.t ]
  %i.dn = sext i32 %.2 to i64                     ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !185 ; 2 uses
  %i.dq = load ptr, ptr %i.br, align 8, !tbaa !182 ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3                 ; 3 uses
  %i.dv = icmp ult i64 %i.du, %i.dn
  br i1 %i.dv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dw = sub nuw nsw i64 %i.dn, %i.du
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %i.dw)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit unwind label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.dx = icmp ugt i64 %i.du, %i.dn
  br i1 %i.dx, label %bb.x, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dn ; 2 uses
  %.not.i.i = icmp eq ptr %i.dp, %i.dy
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.x
  store ptr %i.dy, ptr %i.do, align 8, !tbaa !185
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.x, %bb.w, %bb.v
  %i.dz = load i32, ptr %i.w, align 4, !tbaa !130
  switch i32 %i.dz, label %.invoke [
    i32 7, label %bb.y
    i32 8, label %bb.aa
  ]

bb.y:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !254
  br label %bb.aa

bb.z:                                             ; preds = %.invoke, %bb.k, %bb.v
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %i.bt, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ad

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit, %bb.y
  %.sink = phi i32 [ %i.eb, %bb.y ], [ 1, %_ZNSt6vectorIdSaIdEE6resizeEm.exit ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 %.sink, ptr %i.ee, align 8, !tbaa !255
  %i.ef = tail call ptr @getenv(ptr noundef nonnull @.str.8) #27 ; 2 uses
  %i.eg = icmp ne ptr %i.ef, null                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.ei = zext i1 %i.eg to i8
  store i8 %i.ei, ptr %i.eh, align 4, !tbaa !256
  br i1 %i.eg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ek = tail call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ef, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.ej) #27 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  ret void

bb.ad:                                            ; preds = %bb.z
  %i.el = load ptr, ptr %i.bw, align 8, !tbaa !183
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ed to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.eo) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.ad, %bb.z, %bb.r
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.df, %bb.r ], [ %i.ec, %bb.z ], [ %i.ec, %bb.ad ] ; 2 uses
  %i.ep = load ptr, ptr %i.br, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIdSaIdEED2Ev.exit69, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !183
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit69

_ZNSt6vectorIdSaIdEED2Ev.exit69:                  ; preds = %bb.ae, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.q
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.q ], [ %.pn49.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn49.pn.pn, %bb.ae ] ; 2 uses
  %i.ev = load ptr, ptr %i.ab, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i70, label %.body, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit69
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !168
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #26
  br label %.body

.body:                                            ; preds = %bb.af, %_ZNSt6vectorIdSaIdEED2Ev.exit69, %bb.g, %bb.f, %bb.p
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.f ], [ %i.dd, %bb.p ], [ %.pn49.pn.pn.pn, %bb.af ], [ %i.ar, %bb.g ], [ %.pn49.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit69 ]
  tail call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.i) #27
  br label %bb.ag

bb.ag:                                            ; preds = %.body, %bb.o
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn, %.body ], [ %i.dc, %bb.o ]
  tail call void @_ZN3gmx7MpiCommD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #27
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn.pn
}

declare void @_ZN3gmx7MpiCommC1ENS0_10SingleRankE(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare void @_ZN9t_commrecC1ERKN3gmx7MpiCommES3_P12gmx_domdec_t(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #5

declare void @_ZN3gmx12ForceBuffersC1Ev(ptr noundef nonnull align 8 dereferenceable(137)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN3gmx12_GLOBAL__N_118haveElectrostaticsERK9t_mdatomsRKNS_5RangeIiEE(ptr noundef nonnull align 8 dereferenceable(648) %0, i32 %.0.val, i32 %.4.val) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 7 uses
  %2 = alloca %class.anon.302, align 8            ; 6 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred", align 8 ; 6 uses
  %4 = alloca %class.anon.302, align 8            ; 6 uses
  %5 = alloca %class.anon.302, align 8            ; 6 uses
  %6 = alloca %class.anon.302, align 8            ; 6 uses
  %7 = alloca %class.anon.302, align 8            ; 4 uses
  call void @_ZN9t_mdatomsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(648) %7, ptr noundef nonnull align 8 dereferenceable(648) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  invoke void @_ZN9t_mdatomsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(648) %6, ptr noundef nonnull align 8 dereferenceable(648) %7)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  invoke void @_ZN9t_mdatomsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(648) %5, ptr noundef nonnull align 8 dereferenceable(648) %6)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN9t_mdatomsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(648) %4, ptr noundef nonnull align 8 dereferenceable(648) %5)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZN9t_mdatomsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(648) %2, ptr noundef nonnull align 8 dereferenceable(648) %4)
          to label %.noexc.i.i.i unwind label %bb.d

.noexc.i.i.i:                                     ; preds = %.noexc.i.i
  invoke void @_ZN9t_mdatomsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(648) %3, ptr noundef nonnull align 8 dereferenceable(648) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9t_mdatomsD2Ev(ptr noundef nonnull align 8 dead_on_return(648) dereferenceable(648) %2) #27
  br label %.body.i.i.i

bb.c:                                             ; preds = %.noexc.i.i.i
  call void @_ZN9t_mdatomsD2Ev(ptr noundef nonnull align 8 dead_on_return(648) dereferenceable(648) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  invoke void @_ZN9t_mdatomsC2ERKS_(ptr noundef nonnull align 8 dereferenceable(648) %1, ptr noundef nonnull align 8 dereferenceable(648) %3)
          to label %.noexc7.i.i.i unwind label %bb.e

.noexc7.i.i.i:                                    ; preds = %bb.c
  %.not8.i.i.i.i.i = icmp eq i32 %.0.val, %.4.val
  br i1 %.not8.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc7.i.i.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
end_hunk_0
