Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/genion?download=true
inline.NumInlined: 841
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.14" }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr.19" = type { %"struct.std::__uniq_ptr_data.20" }
%"struct.std::__uniq_ptr_data.20" = type { %"class.std::__uniq_ptr_impl.21" }
%"class.std::__uniq_ptr_impl.21" = type { %"class.std::tuple.22" }
%"class.std::tuple.22" = type { %"struct.std::_Tuple_impl.23" }
%"struct.std::_Tuple_impl.23" = type { %"struct.std::_Head_base.26" }
%"struct.std::_Head_base.26" = type { ptr }
%"struct.std::type_index" = type { ptr }

$_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev = comdat any

$_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEERN3gmx16ThreeFry2x64FastILj64EEEEvT_SB_OT0_ = comdat any

$_ZN8t_filenmD2Ev = comdat any

$_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA4096_cS1_EERKT_NS1_6formatE = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZN3gmx8internal14highBitCounter9incrementImLm2ELj7EEEvPSt5arrayIT_XT0_EES4_ = comdat any

$_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2EPKc = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv = comdat any

$_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@.str = private unnamed_addr constant [71 x i8] c"[THISMODULE] randomly replaces solvent molecules with monoatomic ions.\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"The group of solvent molecules should be continuous and all molecules\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"should have the same number of atoms.\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"The user should add the ion molecules to the topology file or use\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"the [TT]-p[tt] option to automatically modify the topology.[PAR]\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"The ion molecule type, residue and atom names in all force fields\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"are the capitalized element names without sign. This molecule name\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"should be given with [TT]-pname[tt] or [TT]-nname[tt], and the\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"[TT][molecules][tt] section of your topology updated accordingly,\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"either by hand or with [TT]-p[tt]. Do not use an atom name instead!\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"[PAR]Ions which can have multiple charge states get the multiplicity\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"added, without sign, for the uncommon states only.[PAR]\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"For larger ions, e.g. sulfate we recommended using [gmx-insert-molecules].\00", align 1
@__const._Z10gmx_genioniPPc.desc = private unnamed_addr constant [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 16
@.str.13 = private unnamed_addr constant [142 x i8] c"If you specify a salt concentration existing ions are not taken into account. In effect you therefore specify the amount of salt to be added.\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"NA\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"CL\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"-np\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Number of positive ions\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"-pname\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Name of the positive ion\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"-pq\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Charge of the positive ion\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"-nn\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Number of negative ions\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"-nname\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Name of the negative ion\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"-nq\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Charge of the negative ion\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"-rmin\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"Minimum distance between ions and non-solvent\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"-seed\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"Seed for random number generator (0 means generate)\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"-conc\00", align 1
@.str.33 = private unnamed_addr constant [238 x i8] c"Specify salt concentration (mol/liter). This will add sufficient ions to reach up to the specified concentration as computed from the volume of the cell in the input [REF].tpr[ref] file. Overrides the [TT]-np[tt] and [TT]-nn[tt] options.\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"-neutral\00", align 1
@.str.35 = private unnamed_addr constant [154 x i8] c"This option will add enough ions to neutralize the system. These ions are added on top of those specified with [TT]-np[tt]/[TT]-nn[tt] or [TT]-conc[tt]. \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"topol\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/gmxpreprocess/genion.cpp\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"Negative number of ions to add?\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [51 x i8] c"WARNING: -conc specified, overriding -nn and -np.\0A\00", align 1
@.str.42 = private unnamed_addr constant [55 x i8] c"Can't neutralize this system using -nq %d and -pq %d.\0A\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"No ions to add, will just copy input configuration.\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Will try to add %d %s ions and %d %s ions.\0A\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.47 = private unnamed_addr constant [67 x i8] c"The solvent group %s is not continuous: index[%d]=%d, index[%d]=%d\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"Your solvent group size (%td) is not a multiple of %d\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"Number of (%d-atomic) solvent molecules: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"Not enough solvent for adding ions\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"repl\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"Using random seed %d.\0A\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"grpname\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"atoms.pdbinfo\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"pptr\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"paptr\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"nptr\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"naptr\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.61 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.62 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"temp.topXXXXXX\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"molecules\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"%*s %d\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"mol_line\00", align 1
@.str.70 = private unnamed_addr constant [76 x i8] c"No line with moleculetype '%s' found the [ molecules ] section of file '%s'\00", align 1
@.str.71 = private unnamed_addr constant [135 x i8] c"The last entry for moleculetype '%s' in the [ molecules ] section of file '%s' has less solvent molecules (%d) than were replaced (%d)\00", align 1
@.str.72 = private unnamed_addr constant [79 x i8] c"Replacing %d solute molecules in topology file (%s)  by %d %s and %d %s ions.\0A\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"%-10s  %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"%-15s  %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.77 = private unnamed_addr constant [56 x i8] c"Random engine stream ran out of internal counter space.\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj7EEEvPSt5arrayIT_XT0_EES4_ = private unnamed_addr constant [149 x i8] c"static void gmx::internal::highBitCounter::increment(std::array<UIntType, words> *, UIntType) [UIntType = unsigned long, words = 2UL, highBits = 7U]\00", align 1
@.str.78 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/random/threefry.h\00", align 1
@_ZTIN3gmx13InternalErrorE = external constant ptr
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx13InternalErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE = private unnamed_addr constant [140 x i8] c"static void gmx::internal::highBitCounter::increment(std::array<UIntType, words> *) [UIntType = unsigned long, words = 2UL, highBits = 64U]\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"No more replaceable solvent!\00", align 1
@.str.81 = private unnamed_addr constant [49 x i8] c"Replacing solvent molecule %d (atom %d) with %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"xt\00", align 1
@str = private unnamed_addr constant [47 x i8] c"Select a continuous group of solvent molecules\00", align 1
@str.1 = private unnamed_addr constant [21 x i8] c"\0AProcessing topology\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z10gmx_genioniPPc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca [13 x ptr], align 16              ; 5 uses
  %i.c = alloca [1 x ptr], align 8                ; 5 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = alloca i32, align 4                      ; 14 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca ptr, align 8                      ; 10 uses
  %i.i = alloca ptr, align 8                      ; 10 uses
  %i.j = alloca float, align 4                    ; 7 uses
  %i.k = alloca float, align 4                    ; 7 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  %i.m = alloca i8, align 1                       ; 6 uses
  %2 = alloca [10 x %struct.t_pargs], align 16    ; 54 uses
  %3 = alloca %struct.t_topology, align 8         ; 7 uses
  %i.n = alloca ptr, align 8                      ; 9 uses
  %i.o = alloca [3 x [3 x float]], align 16       ; 15 uses
  %4 = alloca %struct.t_atoms, align 8            ; 14 uses
  %5 = alloca %struct.t_pbc, align 4              ; 6 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  %i.q = alloca ptr, align 8                      ; 7 uses
  %6 = alloca [4 x %struct.t_filenm], align 16    ; 43 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.s = alloca ptr, align 8                      ; 6 uses
  %i.t = alloca ptr, align 8                      ; 6 uses
  %i.u = alloca ptr, align 8                      ; 6 uses
  %i.v = alloca ptr, align 8                      ; 6 uses
  %i.w = alloca ptr, align 8                      ; 8 uses
  %10 = alloca %"class.std::vector.6", align 8    ; 18 uses
  %i.x = alloca ptr, align 8                      ; 7 uses
  %i.y = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::optional", align 8    ; 10 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %15 = alloca %"class.std::vector.6", align 8    ; 15 uses
  %16 = alloca %"class.std::vector.6", align 8    ; 14 uses
  %17 = alloca %"class.gmx::ThreeFry2x64Fast", align 8 ; 12 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.z = alloca ptr, align 8                      ; 5 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.b, ptr noundef nonnull align 16 dereferenceable(104) @__const._Z10gmx_genioniPPc.desc, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 ptrtoint (ptr @.str.13 to i64), ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 0, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 1, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i32 -1, ptr %i.g, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store ptr @.str.14, ptr %i.h, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store ptr @.str.15, ptr %i.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store float 6.000000e-01, ptr %i.j, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store i32 0, ptr %i.l, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  store i8 0, ptr %i.m, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr @.str.16, ptr %2, align 16, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.aa, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.d, ptr %i.ac, align 16, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @.str.17, ptr %i.ad, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str.18, ptr %i.ae, align 16, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.af, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 4, ptr %i.ag, align 4, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.h, ptr %i.ah, align 16, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.19, ptr %i.ai, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @.str.20, ptr %i.aj, align 16, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 0, ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 0, ptr %i.al, align 4, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.f, ptr %i.am, align 16, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr @.str.21, ptr %i.an, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr @.str.22, ptr %i.ao, align 16, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 0, ptr %i.ap, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 108
  store i32 0, ptr %i.aq, align 4, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.e, ptr %i.ar, align 16, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr @.str.23, ptr %i.as, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr @.str.24, ptr %i.at, align 16, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i8 0, ptr %i.au, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 4, ptr %i.av, align 4, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.i, ptr %i.aw, align 16, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr @.str.25, ptr %i.ax, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 160
  store ptr @.str.26, ptr %i.ay, align 16, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i8 0, ptr %i.az, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 0, ptr %i.ba, align 4, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr %i.g, ptr %i.bb, align 16, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr @.str.27, ptr %i.bc, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 192
  store ptr @.str.28, ptr %i.bd, align 16, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i8 0, ptr %i.be, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 204
  store i32 2, ptr %i.bf, align 4, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr %i.j, ptr %i.bg, align 16, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 216
  store ptr @.str.29, ptr %i.bh, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 224
  store ptr @.str.30, ptr %i.bi, align 16, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i8 0, ptr %i.bj, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 236
  store i32 0, ptr %i.bk, align 4, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 240
  store ptr %i.l, ptr %i.bl, align 16, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 248
  store ptr @.str.31, ptr %i.bm, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 256
  store ptr @.str.32, ptr %i.bn, align 16, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 264
  store i8 0, ptr %i.bo, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 268
  store i32 2, ptr %i.bp, align 4, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 272
  store ptr %i.k, ptr %i.bq, align 16, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr @.str.33, ptr %i.br, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 288
  store ptr @.str.34, ptr %i.bs, align 16, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i8 0, ptr %i.bt, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 300
  store i32 5, ptr %i.bu, align 4, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 304
  store ptr %i.m, ptr %i.bv, align 16, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 312
  store ptr @.str.35, ptr %i.bw, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #22
  store ptr null, ptr %i.q, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 27, ptr %6, align 16, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store i64 2, ptr %i.by, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  store i32 23, ptr %i.ca, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store i64 10, ptr %i.cc, align 16, !tbaa !33
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i8 0, i64 24, i1 false)
  store i32 11, ptr %i.ce, align 16, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr @.str.36, ptr %i.cf, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 128
  store ptr null, ptr %i.cg, align 16, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i64 4, ptr %i.ch, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  store i32 24, ptr %i.cj, align 8, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 176
  store ptr @.str.37, ptr %i.ck, align 16, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 184
  store ptr @.str.38, ptr %i.cl, align 8, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 192
  store i64 14, ptr %i.cm, align 16, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.co = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 0, i32 noundef 4, ptr noundef nonnull %6, i32 noundef 10, ptr noundef nonnull %2, i32 noundef 13, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.q)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.co, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %bb.eq, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_Z15output_env_doneP16gmx_output_env_t(ptr noundef nonnull %i.cp)
          to label %bb.eq unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.f:                                             ; preds = %bb.b
  %i.cr = load i32, ptr %i.d, align 4, !tbaa !9   ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  %i.ct = load i32, ptr %i.e, align 4             ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  %or.cond = select i1 %i.cs, i1 true, i1 %i.cu
  br i1 %or.cond, label %bb.g, label %bb.m
end_hunk_0
begin_hunk_1_@_Z10gmx_genioniPPc:bb.a
  %i.oo = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.op = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oo, ptr noundef nonnull @.str.52, i32 noundef %i.on) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.oq = load i32, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.or = load ptr, ptr %i.ln, align 8, !tbaa !81 ; 3 uses
  %i.os = load ptr, ptr %10, align 8, !tbaa !83   ; 4 uses
  %i.ot = ptrtoint ptr %i.or to i64               ; 2 uses
  %i.ou = ptrtoint ptr %i.os to i64               ; 2 uses
  %i.ov = sub i64 %i.ot, %i.ou                    ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.or, %i.os
  br i1 %.not.i.i.i.i, label %.noexc131, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ow = icmp ugt i64 %i.ov, 9223372036854775804
  br i1 %i.ow, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !89

.noexc.i.i:                                       ; preds = %bb.ch
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc130 unwind label %bb.dn

.noexc130:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ch
  %i.ox = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ov) #28
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc131_crit_edge unwind label %bb.dn

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc131_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre297 = load ptr, ptr %10, align 8, !tbaa !77 ; 2 uses
  %.pre298 = load ptr, ptr %i.ln, align 8, !tbaa !77
  %.pre299 = ptrtoint ptr %.pre298 to i64
  %.pre300 = ptrtoint ptr %.pre297 to i64
  br label %.noexc131

.noexc131:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc131_crit_edge, %bb.cg
  %.pre-phi301 = phi i64 [ %.pre300, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc131_crit_edge ], [ %i.ou, %bb.cg ]
  %.pre-phi = phi i64 [ %.pre299, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc131_crit_edge ], [ %i.ot, %bb.cg ]
  %i.oy = phi ptr [ %.pre297, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc131_crit_edge ], [ %i.os, %bb.cg ] ; 2 uses
  %i.oz = phi ptr [ %i.ox, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc131_crit_edge ], [ null, %bb.cg ] ; 10 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.ov ; 3 uses
  %i.pb = sub i64 %.pre-phi, %.pre-phi301         ; 6 uses
  %i.pc = icmp sgt i64 %i.pb, 4
  br i1 %i.pc, label %bb.ci, label %bb.cj, !prof !90

bb.ci:                                            ; preds = %.noexc131
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.oz, ptr align 4 %i.oy, i64 %i.pb, i1 false)
  br label %bb.cl

bb.cj:                                            ; preds = %.noexc131
  %i.pd = icmp eq i64 %i.pb, 4
  br i1 %i.pd, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.pe = load i32, ptr %i.oy, align 4, !tbaa !9
  store i32 %i.pe, ptr %i.oz, align 4, !tbaa !9
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %.not.i.i.i132 = icmp eq i64 %i.pb, %i.ov
  br i1 %.not.i.i.i132, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pf = getelementptr inbounds i8, ptr %i.oz, i64 %i.pb
  store i32 -1, ptr %i.pf, align 4, !tbaa !9, !noalias !91
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.cn:                                            ; preds = %bb.cl
  %i.pg = icmp eq i64 %i.ov, 9223372036854775804
  br i1 %i.pg, label %bb.co, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #23
          to label %.noexc136 unwind label %bb.do

.noexc136:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.cn
  %i.ph = lshr exact i64 %i.ov, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ph, i64 1)
  %i.pi = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ph
  %i.pj = call i64 @llvm.umin.i64(i64 %i.pi, i64 2305843009213693951) ; 2 uses
  %i.pk = shl nuw nsw i64 %i.pj, 2
  %i.pl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pk) #28
          to label %.noexc137 unwind label %bb.do ; 4 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.pm = getelementptr inbounds i8, ptr %i.pl, i64 %i.ov
  store i32 -1, ptr %i.pm, align 4, !tbaa !9, !noalias !91
  %.not417 = icmp eq ptr %i.or, %i.os
  br i1 %.not417, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.noexc137
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.pl, ptr align 4 %i.oz, i64 %i.ov, i1 false), !noalias !91
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.cp, %.noexc137
  %.not.i17.i.i.i.i = icmp eq ptr %i.oz, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef %i.ov) #25, !noalias !91
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.cq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.pj
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.cm
  %.sroa.19.1 = phi ptr [ %i.pn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.pa, %bb.cm ] ; 5 uses
  %.sroa.0192.1 = phi ptr [ %i.pl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.oz, %bb.cm ] ; 7 uses
  %i.po = getelementptr inbounds i8, ptr %.sroa.0192.1, i64 %i.pb ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.pp, %.sroa.19.1
  br i1 %.not.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  store i32 %i.oq, ptr %i.pp, align 4, !tbaa !9, !noalias !91
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.cs:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %i.pr = ptrtoint ptr %.sroa.19.1 to i64
  %i.ps = ptrtoint ptr %.sroa.0192.1 to i64
  %i.pt = sub i64 %i.pr, %i.ps                    ; 6 uses
  %i.pu = icmp eq i64 %i.pt, 9223372036854775804
  br i1 %i.pu, label %bb.ct, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #23
          to label %.noexc138 unwind label %bb.do

.noexc138:                                        ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cs
  %i.pv = ashr exact i64 %i.pt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pv, i64 1)
  %i.pw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.pv ; 2 uses
  %i.px = icmp ult i64 %i.pw, %i.pv
  %i.py = call i64 @llvm.umin.i64(i64 %i.pw, i64 2305843009213693951)
  %i.pz = select i1 %i.px, i64 2305843009213693951, i64 %i.py ; 3 uses
  %.not.i.i.i.i135 = icmp ne i64 %i.pz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i135)
  %i.qa = shl nuw nsw i64 %i.pz, 2
  %i.qb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qa) #28
          to label %.noexc139 unwind label %bb.do ; 4 uses

.noexc139:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 %i.pt ; 2 uses
  store i32 %i.oq, ptr %i.qc, align 4, !tbaa !9, !noalias !91
  %i.qd = icmp sgt i64 %i.pt, 0
  br i1 %i.qd, label %bb.cu, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

bb.cu:                                            ; preds = %.noexc139
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qb, ptr nonnull align 4 %.sroa.0192.1, i64 %i.pt, i1 false), !noalias !91
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.cu, %.noexc139
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.1, i64 noundef %i.pt) #25, !noalias !91
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.pz
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.cr
  %.sroa.19.2 = phi ptr [ %i.qf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.19.1, %bb.cr ] ; 5 uses
  %.sroa.10.0 = phi ptr [ %i.qe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.pq, %bb.cr ] ; 5 uses
  %.sroa.0192.2 = phi ptr [ %i.qb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0192.1, %bb.cr ] ; 13 uses
  %.not.i.i10.i = icmp eq ptr %.sroa.0192.2, %.sroa.10.0
  br i1 %.not.i.i10.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %i.qg = ptrtoint ptr %.sroa.10.0 to i64
  %i.qh = ptrtoint ptr %.sroa.0192.2 to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = ashr exact i64 %i.qi, 2
  %i.qk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qj, i1 true)
  %i.ql = shl nuw nsw i64 %i.qk, 1
  %i.qm = xor i64 %i.ql, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.0192.2, ptr nonnull %.sroa.10.0, i64 noundef %i.qm)
          to label %.noexc140 unwind label %bb.do

.noexc140:                                        ; preds = %bb.cv
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %.sroa.0192.2, ptr nonnull %.sroa.10.0)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i unwind label %bb.do

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i: ; preds = %.noexc140, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !alias.scope !91
  %i.qn = getelementptr inbounds i8, ptr %.sroa.10.0, i64 -4 ; 2 uses
  %.not24.i = icmp eq ptr %.sroa.0192.2, %i.qn
  br i1 %.not24.i, label %_ZL16invertIndexGroupiSt6vectorIiSaIiEE.exit.thread, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i
  %i.qo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.cw

bb.cw:                                            ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, %.lr.ph.i133
  %i.qq = phi ptr [ null, %.lr.ph.i133 ], [ %i.tj, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 6 uses
  %i.qr = phi ptr [ null, %.lr.ph.i133 ], [ %i.tk, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 8 uses
  %i.qs = phi ptr [ null, %.lr.ph.i133 ], [ %i.tl, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 14 uses
  %i.qt = phi ptr [ null, %.lr.ph.i133 ], [ %i.tm, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 3 uses
  %.sroa.017.025.i = phi ptr [ %.sroa.0192.2, %.lr.ph.i133 ], [ %i.qw, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i ] ; 2 uses
  %i.qu = load i32, ptr %.sroa.017.025.i, align 4, !tbaa !9
  %i.qv = add nsw i32 %i.qu, 1                    ; 6 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 4 ; 3 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !9
  %i.qy = sub nsw i32 %i.qx, %i.qv                ; 2 uses
  %i.qz = icmp sgt i32 %i.qy, 0
  br i1 %i.qz, label %bb.cx, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i

bb.cx:                                            ; preds = %bb.cw
  %i.ra = ptrtoint ptr %i.qt to i64
  %i.rb = ptrtoint ptr %i.qs to i64               ; 4 uses
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = ashr exact i64 %i.rc, 2                 ; 3 uses
  %i.re = zext nneg i32 %i.qy to i64              ; 9 uses
  %i.rf = add nsw i64 %i.rd, %i.re                ; 3 uses
  %i.rg = icmp ugt i64 %i.rf, %i.rd
  br i1 %i.rg, label %bb.cy, label %bb.de

bb.cy:                                            ; preds = %bb.cx
  %i.rh = ptrtoint ptr %i.qr to i64               ; 2 uses
  %i.ri = sub i64 %i.rh, %i.rb                    ; 4 uses
  %i.rj = ashr exact i64 %i.ri, 2                 ; 4 uses
  %i.rk = ptrtoint ptr %i.qq to i64               ; 3 uses
  %i.rl = sub i64 %i.rk, %i.rh
  %i.rm = ashr exact i64 %i.rl, 2                 ; 2 uses
  %i.rn = icmp ult i64 %i.rj, 2305843009213693952
  call void @llvm.assume(i1 %i.rn)
  %i.ro = xor i64 %i.rj, 2305843009213693951      ; 2 uses
  %i.rp = icmp ule i64 %i.rm, %i.ro
  call void @llvm.assume(i1 %i.rp)
  %.not28.i = icmp ult i64 %i.rm, %i.re
  br i1 %.not28.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.qr, align 4, !tbaa !9
  %i.rq = getelementptr i8, ptr %i.qr, i64 4      ; 3 uses
  %i.rr = add nsw i64 %i.re, -1                   ; 2 uses
  %i.rs = icmp eq i64 %i.rr, 0
  br i1 %i.rs, label %iter.check460, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.cz
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.rr, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.rq, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !9
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.idx.i.i.i.i.i.i
  br label %iter.check460

bb.da:                                            ; preds = %bb.cy
  %i.ru = icmp samesign ult i64 %i.ro, %i.re
  br i1 %i.ru, label %bb.db, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.db:                                            ; preds = %bb.da
  store ptr %i.qs, ptr %15, align 8
  store ptr %i.qr, ptr %i.qo, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #23
          to label %.noexc185 unwind label %.loopexit.split-lp210

.noexc185:                                        ; preds = %bb.db
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.da
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.rj, i64 %i.re)
  %i.rv = add nuw nsw i64 %.sroa.speculated.i.i, %i.rj
  %i.rw = call i64 @llvm.umin.i64(i64 %i.rv, i64 2305843009213693951) ; 2 uses
  %i.rx = shl nuw nsw i64 %i.rw, 2
  %i.ry = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rx) #28
          to label %.noexc186 unwind label %.loopexit209 ; 4 uses

.noexc186:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.ri ; 3 uses
  store i32 0, ptr %i.rz, align 4, !tbaa !9
  %i.sa = add nsw i64 %i.re, -1                   ; 2 uses
  %i.sb = icmp eq i64 %i.sa, 0
  br i1 %i.sb, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc186
  %i.sc = getelementptr i8, ptr %i.rz, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.sa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.sc, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !9
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc186
  %i.sd = icmp sgt i64 %i.ri, 0
  br i1 %i.sd, label %bb.dc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.dc:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ry, ptr align 4 %i.qs, i64 %i.ri, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.dc, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.qs, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.se = sub i64 %i.rk, %i.rb
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.se) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.dd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.re
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.rw ; 2 uses
  store ptr %i.sg, ptr %i.qp, align 8, !tbaa !94
  br label %iter.check460

bb.de:                                            ; preds = %bb.cx
  %i.sh = icmp ult i64 %i.rf, %i.rd
  br i1 %i.sh, label %bb.df, label %iter.check460

bb.df:                                            ; preds = %bb.de
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.rf ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.qt, %i.si
  %spec.select = select i1 %.not.i.i11.i, ptr %i.qr, ptr %i.si
  br label %iter.check460

iter.check460:                                    ; preds = %bb.df, %bb.cz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %bb.de
  %i.sj = phi ptr [ %i.sg, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %i.qq, %bb.de ], [ %i.qq, %bb.cz ], [ %i.qq, %bb.df ], [ %i.qq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ] ; 3 uses
  %i.sk = phi ptr [ %i.sf, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %i.qr, %bb.de ], [ %i.rq, %bb.cz ], [ %spec.select, %bb.df ], [ %i.rt, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ] ; 8 uses
  %i.sl = phi ptr [ %i.ry, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %i.qs, %bb.de ], [ %i.qs, %bb.cz ], [ %i.qs, %bb.df ], [ %i.qs, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ] ; 3 uses
  %.neg.i = mul nsw i64 %i.re, -4
  %i.sm = getelementptr inbounds i8, ptr %i.sk, i64 %.neg.i ; 5 uses
  %i.sn = add nuw nsw i64 %i.re, 4611686018427387903
  %i.so = and i64 %i.sn, 4611686018427387903      ; 3 uses
  %i.sp = add nuw nsw i64 %i.so, 1                ; 5 uses
  %min.iters.check448 = icmp samesign ult i64 %i.so, 7
  br i1 %min.iters.check448, label %.lr.ph.i.i134.preheader, label %vector.main.loop.iter.check449

vector.main.loop.iter.check449:                   ; preds = %iter.check460
  %min.iters.check450 = icmp samesign ult i64 %i.so, 31
  br i1 %min.iters.check450, label %vec.epilog.ph464, label %vector.ph451

vector.ph451:                                     ; preds = %vector.main.loop.iter.check449
  %i.sq = and i64 %i.sp, 24
  %n.vec452 = and i64 %i.sp, 9223372036854775776  ; 5 uses
  %i.sr = trunc i64 %n.vec452 to i32
  %i.ss = add i32 %i.qv, %i.sr                    ; 2 uses
  %i.st = shl i64 %n.vec452, 2
  %i.su = getelementptr i8, ptr %i.sm, i64 %i.st
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.qv, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph451
  %index454 = phi i64 [ 0, %vector.ph451 ], [ %index.next455, %vector.body453 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph451 ], [ %vec.ind.next, %vector.body453 ] ; 5 uses
  %step.add = add nsw <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add nsw <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add nsw <8 x i32> %vec.ind, splat (i32 24)
  %i.sv = shl i64 %index454, 2
  %next.gep = getelementptr i8, ptr %i.sm, i64 %i.sv ; 4 uses
  %i.sw = getelementptr i8, ptr %next.gep, i64 32
  %i.sx = getelementptr i8, ptr %next.gep, i64 64
  %i.sy = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !9
  store <8 x i32> %step.add, ptr %i.sw, align 4, !tbaa !9
  store <8 x i32> %step.add.2, ptr %i.sx, align 4, !tbaa !9
  store <8 x i32> %step.add.3, ptr %i.sy, align 4, !tbaa !9
  %index.next455 = add nuw i64 %index454, 32      ; 2 uses
  %vec.ind.next = add nsw <8 x i32> %vec.ind, splat (i32 32)
  %i.sz = icmp eq i64 %index.next455, %n.vec452
  br i1 %i.sz, label %middle.block456, label %vector.body453, !llvm.loop !95

middle.block456:                                  ; preds = %vector.body453
  %cmp.n457 = icmp eq i64 %i.sp, %n.vec452
  br i1 %cmp.n457, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %vec.epilog.iter.check462

vec.epilog.iter.check462:                         ; preds = %middle.block456
  %min.epilog.iters.check463 = icmp eq i64 %i.sq, 0
  br i1 %min.epilog.iters.check463, label %.lr.ph.i.i134.preheader, label %vec.epilog.ph464, !prof !96

vec.epilog.ph464:                                 ; preds = %vector.main.loop.iter.check449, %vec.epilog.iter.check462
  %vec.epilog.resume.val458 = phi i64 [ %n.vec452, %vec.epilog.iter.check462 ], [ 0, %vector.main.loop.iter.check449 ]
  %bc.resume.val = phi i32 [ %i.ss, %vec.epilog.iter.check462 ], [ %i.qv, %vector.main.loop.iter.check449 ]
  %n.vec465 = and i64 %i.sp, 9223372036854775800  ; 4 uses
  %i.ta = trunc i64 %n.vec465 to i32
  %i.tb = add i32 %i.qv, %i.ta
  %i.tc = shl i64 %n.vec465, 2
  %i.td = getelementptr i8, ptr %i.sm, i64 %i.tc
  %broadcast.splatinsert466 = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat467 = shufflevector <8 x i32> %broadcast.splatinsert466, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction468 = add nsw <8 x i32> %broadcast.splat467, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body469

vec.epilog.vector.body469:                        ; preds = %vec.epilog.vector.body469, %vec.epilog.ph464
  %index470 = phi i64 [ %vec.epilog.resume.val458, %vec.epilog.ph464 ], [ %index.next473, %vec.epilog.vector.body469 ] ; 2 uses
  %vec.ind471 = phi <8 x i32> [ %induction468, %vec.epilog.ph464 ], [ %vec.ind.next474, %vec.epilog.vector.body469 ] ; 2 uses
  %i.te = shl i64 %index470, 2
  %next.gep472 = getelementptr i8, ptr %i.sm, i64 %i.te
  store <8 x i32> %vec.ind471, ptr %next.gep472, align 4, !tbaa !9
  %index.next473 = add nuw i64 %index470, 8       ; 2 uses
  %vec.ind.next474 = add nsw <8 x i32> %vec.ind471, splat (i32 8)
  %i.tf = icmp eq i64 %index.next473, %n.vec465
  br i1 %i.tf, label %vec.epilog.middle.block475, label %vec.epilog.vector.body469, !llvm.loop !97

vec.epilog.middle.block475:                       ; preds = %vec.epilog.vector.body469
  %cmp.n476 = icmp eq i64 %i.sp, %n.vec465
  br i1 %cmp.n476, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i134.preheader

.lr.ph.i.i134.preheader:                          ; preds = %iter.check460, %vec.epilog.iter.check462, %vec.epilog.middle.block475
  %.07.i.i.ph = phi i32 [ %i.qv, %iter.check460 ], [ %i.ss, %vec.epilog.iter.check462 ], [ %i.tb, %vec.epilog.middle.block475 ]
  %.sroa.02.06.i.i.ph = phi ptr [ %i.sm, %iter.check460 ], [ %i.su, %vec.epilog.iter.check462 ], [ %i.td, %vec.epilog.middle.block475 ]
  br label %.lr.ph.i.i134

.lr.ph.i.i134:                                    ; preds = %.lr.ph.i.i134.preheader, %.lr.ph.i.i134
  %.07.i.i = phi i32 [ %i.tg, %.lr.ph.i.i134 ], [ %.07.i.i.ph, %.lr.ph.i.i134.preheader ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %i.th, %.lr.ph.i.i134 ], [ %.sroa.02.06.i.i.ph, %.lr.ph.i.i134.preheader ] ; 2 uses
  store i32 %.07.i.i, ptr %.sroa.02.06.i.i, align 4, !tbaa !9
  %i.tg = add nsw i32 %.07.i.i, 1
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i12.i = icmp eq ptr %i.th, %i.sk
  br i1 %.not.i12.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i134, !llvm.loop !98

.loopexit209:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.qs, ptr %15, align 8
  store ptr %i.qr, ptr %i.qo, align 8
  br label %bb.dg

.loopexit.split-lp210:                            ; preds = %bb.db
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.dg:                                            ; preds = %.loopexit.split-lp210, %.loopexit209
  %lpad.phi212 = phi { ptr, i32 } [ %lpad.loopexit211, %.loopexit209 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp210 ] ; 2 uses
  %.not.i.i.i13.i = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i13.i, label %.body, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ti = sub i64 %i.rk, %i.rb
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.ti) #25
  br label %.body

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i: ; preds = %.lr.ph.i.i134, %middle.block456, %vec.epilog.middle.block475, %bb.cw
  %i.tj = phi ptr [ %i.qq, %bb.cw ], [ %i.sj, %middle.block456 ], [ %i.sj, %vec.epilog.middle.block475 ], [ %i.sj, %.lr.ph.i.i134 ]
  %i.tk = phi ptr [ %i.qr, %bb.cw ], [ %i.sk, %middle.block456 ], [ %i.sk, %vec.epilog.middle.block475 ], [ %i.sk, %.lr.ph.i.i134 ] ; 2 uses
  %i.tl = phi ptr [ %i.qs, %bb.cw ], [ %i.sl, %middle.block456 ], [ %i.sl, %vec.epilog.middle.block475 ], [ %i.sl, %.lr.ph.i.i134 ] ; 2 uses
  %i.tm = phi ptr [ %i.qt, %bb.cw ], [ %i.sk, %middle.block456 ], [ %i.sk, %vec.epilog.middle.block475 ], [ %i.sk, %.lr.ph.i.i134 ]
  %.not.i = icmp eq ptr %i.qw, %i.qn
  br i1 %.not.i, label %_ZL16invertIndexGroupiSt6vectorIiSaIiEE.exit, label %bb.cw, !llvm.loop !99

_ZL16invertIndexGroupiSt6vectorIiSaIiEE.exit:     ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit.i
  store ptr %i.tl, ptr %15, align 8
  store ptr %i.tk, ptr %i.qo, align 8
  %.not.i.i.i142 = icmp eq ptr %.sroa.0192.2, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZL16invertIndexGroupiSt6vectorIiSaIiEE.exit.thread

_ZL16invertIndexGroupiSt6vectorIiSaIiEE.exit.thread: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit.i, %_ZL16invertIndexGroupiSt6vectorIiSaIiEE.exit
  %i.tn = ptrtoint ptr %.sroa.19.2 to i64
  %i.to = ptrtoint ptr %.sroa.0192.2 to i64
  %i.tp = sub i64 %i.tn, %i.to
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.2, i64 noundef %i.tp) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZL16invertIndexGroupiSt6vectorIiSaIiEE.exit, %_ZL16invertIndexGroupiSt6vectorIiSaIiEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.tq = icmp ugt i64 %i.og, 2305843009213693951
  br i1 %i.tq, label %bb.di, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #23
          to label %.noexc144 unwind label %bb.dq

.noexc144:                                        ; preds = %bb.di
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.tr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.tr, align 8
  %.not.i.i.i.i143 = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i143, label %.thread, label %bb.dj

.thread:                                          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit

bb.dj:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ts = ashr exact i64 %sext, 30
  %i.tt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ts) #28
          to label %.noexc145 unwind label %bb.dq ; 13 uses

.noexc145:                                        ; preds = %bb.dj
  %i.tu = ptrtoaddr ptr %i.tt to i64
  store ptr %i.tt, ptr %16, align 8, !tbaa !83
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.og
  %i.tw = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.tv, ptr %i.tw, align 8, !tbaa !94
  store i32 0, ptr %i.tt, align 4, !tbaa !9
  %i.tx = getelementptr i8, ptr %i.tt, i64 4      ; 3 uses
  %i.ty = add nsw i64 %i.og, -1                   ; 2 uses
  %i.tz = icmp eq i64 %i.ty, 0
  br i1 %i.tz, label %iter.check499, label %bb.dk

bb.dk:                                            ; preds = %.noexc145
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ty, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.tx, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !9
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %.idx.i.i.i.i.i.i.i
  br label %iter.check499

iter.check499:                                    ; preds = %.noexc145, %bb.dk
  %.sink = phi ptr [ %i.ua, %bb.dk ], [ %i.tx, %.noexc145 ] ; 6 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sink, ptr %i.ub, align 8, !tbaa !81
  %.0.i.i.i.i.i398479 = ptrtoaddr ptr %.sink to i64
  %i.uc = add i64 %.0.i.i.i.i.i398479, -4
  %i.ud = sub i64 %i.uc, %i.tu                    ; 3 uses
  %i.ue = lshr i64 %i.ud, 2
  %i.uf = add nuw nsw i64 %i.ue, 1                ; 5 uses
  %min.iters.check480 = icmp ult i64 %i.ud, 28
  br i1 %min.iters.check480, label %.lr.ph.i146.preheader, label %vector.main.loop.iter.check481

vector.main.loop.iter.check481:                   ; preds = %iter.check499
  %min.iters.check482 = icmp ult i64 %i.ud, 124
  br i1 %min.iters.check482, label %vec.epilog.ph503, label %vector.ph483

vector.ph483:                                     ; preds = %vector.main.loop.iter.check481
  %i.ug = and i64 %i.uf, 24
  %n.vec484.a = and i64 %i.uf, 9223372036854775776 ; 5 uses
  %i.uh = trunc i64 %n.vec484.a to i32            ; 2 uses
  %i.ui = shl i64 %n.vec484.a, 2
  %i.uj = getelementptr i8, ptr %i.tt, i64 %i.ui
  br label %vector.body485

vector.body485:                                   ; preds = %vector.body485, %vector.ph483
  %index486 = phi i64 [ 0, %vector.ph483 ], [ %index.next492.a, %vector.body485 ] ; 2 uses
  %vec.ind487 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph483 ], [ %vec.ind.next493.a, %vector.body485 ] ; 5 uses
  %step.add488 = add nuw nsw <8 x i32> %vec.ind487, splat (i32 8)
  %step.add.2489 = add nuw nsw <8 x i32> %vec.ind487, splat (i32 16)
  %step.add.3490 = add nuw nsw <8 x i32> %vec.ind487, splat (i32 24)
  %i.uk = shl i64 %index486, 2
  %next.gep491.a = getelementptr i8, ptr %i.tt, i64 %i.uk ; 4 uses
  %i.ul = getelementptr i8, ptr %next.gep491.a, i64 32
  %i.um = getelementptr i8, ptr %next.gep491.a, i64 64
  %i.un = getelementptr i8, ptr %next.gep491.a, i64 96
  store <8 x i32> %vec.ind487, ptr %next.gep491.a, align 4, !tbaa !9
  store <8 x i32> %step.add488, ptr %i.ul, align 4, !tbaa !9
  store <8 x i32> %step.add.2489, ptr %i.um, align 4, !tbaa !9
  store <8 x i32> %step.add.3490, ptr %i.un, align 4, !tbaa !9
  %index.next492.a = add nuw i64 %index486, 32    ; 2 uses
  %vec.ind.next493.a = add nuw nsw <8 x i32> %vec.ind487, splat (i32 32)
  %i.uo = icmp eq i64 %index.next492.a, %n.vec484.a
  br i1 %i.uo, label %middle.block494, label %vector.body485, !llvm.loop !100

middle.block494:                                  ; preds = %vector.body485
  %cmp.n495.a = icmp eq i64 %i.uf, %n.vec484.a
  br i1 %cmp.n495.a, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %vec.epilog.iter.check501

vec.epilog.iter.check501:                         ; preds = %middle.block494
  %min.epilog.iters.check502 = icmp eq i64 %i.ug, 0
  br i1 %min.epilog.iters.check502, label %.lr.ph.i146.preheader, label %vec.epilog.ph503, !prof !96

vec.epilog.ph503:                                 ; preds = %vector.main.loop.iter.check481, %vec.epilog.iter.check501
  %vec.epilog.resume.val496 = phi i64 [ %n.vec484.a, %vec.epilog.iter.check501 ], [ 0, %vector.main.loop.iter.check481 ]
  %bc.resume.val497 = phi i32 [ %i.uh, %vec.epilog.iter.check501 ], [ 0, %vector.main.loop.iter.check481 ]
  %n.vec504 = and i64 %i.uf, 9223372036854775800  ; 4 uses
  %i.up = trunc i64 %n.vec504 to i32
  %i.uq = shl i64 %n.vec504, 2
  %i.ur = getelementptr i8, ptr %i.tt, i64 %i.uq
  %broadcast.splatinsert505 = insertelement <8 x i32> poison, i32 %bc.resume.val497, i64 0
  %broadcast.splat506 = shufflevector <8 x i32> %broadcast.splatinsert505, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction507 = add nuw nsw <8 x i32> %broadcast.splat506, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body508

vec.epilog.vector.body508:                        ; preds = %vec.epilog.vector.body508, %vec.epilog.ph503
  %index509 = phi i64 [ %vec.epilog.resume.val496, %vec.epilog.ph503 ], [ %index.next512, %vec.epilog.vector.body508 ] ; 2 uses
  %vec.ind510 = phi <8 x i32> [ %induction507, %vec.epilog.ph503 ], [ %vec.ind.next513, %vec.epilog.vector.body508 ] ; 2 uses
  %i.us = shl i64 %index509, 2
  %next.gep511 = getelementptr i8, ptr %i.tt, i64 %i.us
  store <8 x i32> %vec.ind510, ptr %next.gep511, align 4, !tbaa !9
  %index.next512 = add nuw i64 %index509, 8       ; 2 uses
  %vec.ind.next513 = add nuw nsw <8 x i32> %vec.ind510, splat (i32 8)
  %i.ut = icmp eq i64 %index.next512, %n.vec504
  br i1 %i.ut, label %vec.epilog.middle.block514, label %vec.epilog.vector.body508, !llvm.loop !101

vec.epilog.middle.block514:                       ; preds = %vec.epilog.vector.body508
  %cmp.n515 = icmp eq i64 %i.uf, %n.vec504
  br i1 %cmp.n515, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i146.preheader

.lr.ph.i146.preheader:                            ; preds = %iter.check499, %vec.epilog.iter.check501, %vec.epilog.middle.block514
  %.07.i.ph = phi i32 [ 0, %iter.check499 ], [ %i.uh, %vec.epilog.iter.check501 ], [ %i.up, %vec.epilog.middle.block514 ]
  %.sroa.02.06.i.ph = phi ptr [ %i.tt, %iter.check499 ], [ %i.uj, %vec.epilog.iter.check501 ], [ %i.ur, %vec.epilog.middle.block514 ]
  br label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146.preheader, %.lr.ph.i146
  %.07.i = phi i32 [ %i.uu, %.lr.ph.i146 ], [ %.07.i.ph, %.lr.ph.i146.preheader ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.uv, %.lr.ph.i146 ], [ %.sroa.02.06.i.ph, %.lr.ph.i146.preheader ] ; 2 uses
  store i32 %.07.i, ptr %.sroa.02.06.i, align 4, !tbaa !9
  %i.uu = add nuw nsw i32 %.07.i, 1
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i147 = icmp eq ptr %i.uv, %.sink
  br i1 %.not.i147, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i146, !llvm.loop !102

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i146, %middle.block494, %vec.epilog.middle.block514, %.thread
  %.0.i.i.i.i.i394 = phi ptr [ null, %.thread ], [ %.sink, %middle.block494 ], [ %.sink, %vec.epilog.middle.block514 ], [ %.sink, %.lr.ph.i146 ]
  %i.uw = phi ptr [ null, %.thread ], [ %i.tt, %middle.block494 ], [ %i.tt, %vec.epilog.middle.block514 ], [ %i.tt, %.lr.ph.i146 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ux = load i32, ptr %i.l, align 4, !tbaa !9
  %i.uy = sext i32 %i.ux to i64
  store i64 %i.uy, ptr %17, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !21
  invoke void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj7EEEvPSt5arrayIT_XT0_EES4_(ptr noundef nonnull align 8 dereferenceable(52) %17, i64 noundef 63)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %i.uz = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uz, i8 0, i64 16, i1 false)
  %i.va = load i64, ptr %17, align 8, !tbaa !103  ; 4 uses
  %i.vb = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !103 ; 6 uses
  %i.vc = xor i64 %i.va, %i.vb
  %i.vd = xor i64 %i.vc, 2004413935125273122      ; 2 uses
  %i.ve = add i64 %i.vb, %i.va                    ; 2 uses
  %i.vf = call i64 @llvm.fshl.i64(i64 %i.vb, i64 %i.vb, i64 16)
  %i.vg = xor i64 %i.vf, %i.ve                    ; 3 uses
  %i.vh = add i64 %i.vg, %i.ve                    ; 2 uses
  %i.vi = call i64 @llvm.fshl.i64(i64 %i.vg, i64 %i.vg, i64 42)
  %i.vj = xor i64 %i.vi, %i.vh                    ; 3 uses
  %i.vk = add i64 %i.vj, %i.vh                    ; 2 uses
  %i.vl = call i64 @llvm.fshl.i64(i64 %i.vj, i64 %i.vj, i64 12)
  %i.vm = xor i64 %i.vl, %i.vk                    ; 3 uses
  %i.vn = add i64 %i.vm, %i.vk                    ; 2 uses
  %i.vo = call i64 @llvm.fshl.i64(i64 %i.vm, i64 %i.vm, i64 31)
  %i.vp = xor i64 %i.vo, %i.vn
  %i.vq = add i64 %i.vn, %i.vb
  %i.vr = add i64 %i.vd, 1
  %i.vs = add i64 %i.vr, %i.vp                    ; 3 uses
  %i.vt = add i64 %i.vq, %i.vs                    ; 2 uses
  %i.vu = call i64 @llvm.fshl.i64(i64 %i.vs, i64 %i.vs, i64 16)
  %i.vv = xor i64 %i.vu, %i.vt                    ; 3 uses
  %i.vw = add i64 %i.vv, %i.vt                    ; 2 uses
  %i.vx = call i64 @llvm.fshl.i64(i64 %i.vv, i64 %i.vv, i64 32)
  %i.vy = xor i64 %i.vx, %i.vw                    ; 3 uses
  %i.vz = add i64 %i.vy, %i.vw                    ; 2 uses
  %i.wa = call i64 @llvm.fshl.i64(i64 %i.vy, i64 %i.vy, i64 24)
  %i.wb = xor i64 %i.wa, %i.vz                    ; 3 uses
  %i.wc = add i64 %i.wb, %i.vz                    ; 2 uses
  %i.wd = call i64 @llvm.fshl.i64(i64 %i.wb, i64 %i.wb, i64 21)
  %i.we = xor i64 %i.wd, %i.wc
  %i.wf = add i64 %i.wc, %i.vd
  %i.wg = add i64 %i.va, 2
  %i.wh = add i64 %i.wg, %i.we                    ; 3 uses
  %i.wi = add i64 %i.wf, %i.wh                    ; 2 uses
  %i.wj = call i64 @llvm.fshl.i64(i64 %i.wh, i64 %i.wh, i64 16)
  %i.wk = xor i64 %i.wj, %i.wi                    ; 3 uses
end_hunk_1
