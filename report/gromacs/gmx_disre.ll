inline.NumInlined: 1036
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0
$_ZN8t_filenmD2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt13unordered_mapIibSt4hashIiESt8equal_toIiESaISt4pairIKibEEED2Ev = comdat any

$_ZNSt10_HashtableIiSt4pairIKibESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm = comdat any

$_ZNSt10_HashtableIiSt4pairIKibESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN9t_mdatomsD2Ev = comdat any

$_ZNSt22_Optional_payload_baseI13t_cluster_ndxE10_M_destroyEv = comdat any

$_ZN22InteractionDefinitionsD2Ev = comdat any

@.str = private unnamed_addr constant [57 x i8] c"[THISMODULE] computes violations of distance restraints.\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"The program always\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"computes the instantaneous violations rather than time-averaged,\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"because this analysis is done from a trajectory file afterwards\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"it does not make sense to use time averaging. However,\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"the time averaged values per restraint are given in the log file.[PAR]\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"An index file may be used to select specific restraints by index group label for\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"printing.[PAR]\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"When the optional [TT]-q[tt] flag is given a [REF].pdb[ref] file coloured by the\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"amount of average violations.[PAR]\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"When the [TT]-c[tt] option is given, an index file will be read\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"containing the frames in your trajectory corresponding to the clusters\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"(defined in another manner) that you want to analyze. For these clusters\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"the program will compute average violations using the third power\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"averaging algorithm and print them in the log file.\00", align 1
@__const._Z9gmx_disreiPPc.desc = private unnamed_addr constant [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 16
@_ZZ9gmx_disreiPPcE7ntoppar = internal global i32 0, align 4
@_ZZ9gmx_disreiPPcE7nlevels = internal global i32 20, align 4
@_ZZ9gmx_disreiPPcE6max_dr = internal global float 0.000000e+00, align 4
@_ZZ9gmx_disreiPPcE6bThird = internal global i8 1, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"-ntop\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"Number of large violations that are stored in the log file every step\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"-maxdr\00", align 1
@.str.18 = private unnamed_addr constant [116 x i8] c"Maximum distance violation in matrix output. If less than or equal to 0 the maximum will be determined by the data.\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"-nlevels\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Number of levels in the matrix output\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"-third\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"Use inverse third power averaging or linear for matrix output\00", align 1
@__const._Z9gmx_disreiPPc.pa = private unnamed_addr constant [4 x %struct.t_pargs] [%struct.t_pargs { ptr @.str.15, i8 0, i32 0, %union.anon { ptr @_ZZ9gmx_disreiPPcE7ntoppar }, ptr @.str.16 }, %struct.t_pargs { ptr @.str.17, i8 0, i32 2, %union.anon { ptr @_ZZ9gmx_disreiPPcE6max_dr }, ptr @.str.18 }, %struct.t_pargs { ptr @.str.19, i8 0, i32 0, %union.anon { ptr @_ZZ9gmx_disreiPPcE7nlevels }, ptr @.str.20 }, %struct.t_pargs { ptr @.str.21, i8 0, i32 5, %union.anon { ptr @_ZZ9gmx_disreiPPcE6bThird }, ptr @.str.22 }], align 16
@.str.23 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"-ds\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"drsum\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"-da\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"draver\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"-dn\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"drnum\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"-dm\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"drmax\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"-dr\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"restr\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"disres\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"viol\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"clust\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"xav\00", align 1
@.str.44 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/gmxana/gmx_disre.cpp\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"ind_fit\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"w_rls\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"atoms->pdbinfo\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"Individual Restraints\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Time (ps)\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"vvindex\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"index %d\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"dr_clust\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Sum of Violations\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"Average Violation\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"# Violations\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Largest Violation\00", align 1
@.str.60 = private unnamed_addr constant [81 x i8] c"There are more frames in the trajectory than in the cluster index file. t = %8f\0A\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"my_clust\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"%10g\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"  %10g\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"%10g  %10g\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"%10g  %10d\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"Coloured by average violation in Angstrom\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"-nxy\00", align 1
@.str.69 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZL4ntop = internal unnamed_addr global i32 0, align 4
@.str.70 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@_ZL3top = internal unnamed_addr global ptr null, align 8
@.str.71 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"dr->aver1\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"dr->aver2\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"dr->aver_3\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"dr->aver_6\00", align 1
@_ZZL10check_violP8_IO_FILERK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEPA3_fPA4_fP5t_pbcP11t_dr_resultiiPKiPfP12t_disresdataE6bFirst = internal unnamed_addr global i1 false, align 1
@interaction_function = external local_unnamed_addr global %"struct.gmx::EnumerationArray.202", align 8
@.str.76 = private unnamed_addr constant [102 x i8] c"Label mismatch in distance restrains. Label for restraint %d is %d, expected it to be either %d or %d\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.77 = private unnamed_addr constant [42 x i8] c"DISRE: ndr = %d, label = %d  i=%d, n =%d\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"ndr = %d, rt_6 = %f\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"fshift\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.80 = private unnamed_addr constant [39 x i8] c"\0AThere are %d restraints and %d pairs\0A\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"Index:\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c" %6d\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"\0AViol: \00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c" %6.3f\00", align 1
@.str.85 = private unnamed_addr constant [50 x i8] c"++++++++++++++ STATISTICS ++++++++++++++++++++++\0A\00", align 1
@.str.86 = private unnamed_addr constant [76 x i8] c"Cluster  NFrames    SumV      MaxV     SumVT     MaxVT     SumVS     MaxVS\0A\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"drs\00", align 1
@.str.88 = private unnamed_addr constant [89 x i8] c"Inconsistency in cluster %s.\0AFound %d frames in trajectory rather than the expected %td\0A\00", align 1
@.str.89 = private unnamed_addr constant [44 x i8] c"Inconsistency with cluster %d. Invalid name\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"dr[%d].aver_3[%d] = %f\00", align 1
@.str.91 = private unnamed_addr constant [50 x i8] c"%-10s%6d%8.3f  %8.3f  %8.3f  %8.3f  %8.3f  %8.3f\0A\00", align 1
@.str.92 = private unnamed_addr constant [52 x i8] c"++++++++++++++ STATISTICS ++++++++++++++++++++++++\0A\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"+++ Sorted by linear averaged violations: +++\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"i >= 0 && i < dd.nres\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"The restraint index should be in range\00", align 1
@"__PRETTY_FUNCTION__._ZZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsENK3$_1clEv" = private unnamed_addr constant [176 x i8] c"auto dump_stats(FILE *, int, const t_disresdata &, const InteractionList &, gmx::ArrayRef<const t_iparams>, t_dr_result *, int, int *, t_atoms *)::(lambda)::operator()() const\00", align 1
@.str.96 = private unnamed_addr constant [69 x i8] c"Restr. Core     Up1     <r>   <rT3>   <rT6>  <viol><violT3><violT6>\0A\00", align 1
@.str.97 = private unnamed_addr constant [43 x i8] c"%6d%5s%8.3f%8.3f%8.3f%8.3f%8.3f%8.3f%8.3f\0A\00", align 1
@_ZZL9dump_dumpP8_IO_FILEiP10t_dr_statsE4core = internal unnamed_addr constant [2 x ptr] [ptr @.str.98, ptr @.str.99], align 16
@.str.98 = private unnamed_addr constant [15 x i8] c"All restraints\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"Core restraints\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"third power\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"sixth power\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"+++++++ %s ++++++++\0A\00", align 1
@.str.106 = private unnamed_addr constant [38 x i8] c"+++++++ Using %s averaging: ++++++++\0A\00", align 1
@.str.107 = private unnamed_addr constant [29 x i8] c"Sum of violations: %8.3f nm\0A\00", align 1
@.str.108 = private unnamed_addr constant [29 x i8] c"Average violation: %8.3f nm\0A\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"Largest violation: %8.3f nm\0A\00", align 1
@.str.110 = private unnamed_addr constant [38 x i8] c"Number of violated restraints: %d/%d\0A\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"resnr\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"t_res\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"mat\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"mat[i]\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"w_dr\00", align 1
@.str.117 = private unnamed_addr constant [25 x i8] c"nlabel is %d, label = %d\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"ndr = %d, index = %d\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"nlabel = %d, index = %d, ndr = %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [34 x i8] c"DR %d, atoms %d, %d, distance %g\0A\00", align 1
@.str.121 = private unnamed_addr constant [107 x i8] c"Warning: the maxdr that you have specified (%g) is smaller than\0Athe largest value in your simulation (%g)\0A\00", align 1
@.str.122 = private unnamed_addr constant [40 x i8] c"Highest level in the matrix will be %g\0A\00", align 1
@.str.123 = private unnamed_addr constant [20 x i8] c"Distance Violations\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"Residue\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z9gmx_disreiPPc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %struct.t_rgb, align 16             ; 5 uses
  %10 = alloca %struct.t_rgb, align 8             ; 4 uses
  %.sroa.0.i.i25.i.i.i.i = alloca { i32, i8, float, float, float, float }, align 8 ; 4 uses
  %11 = alloca %struct.t_dr_stats, align 4        ; 4 uses
  %.sroa.0.i.i13.i.i.i.i = alloca { i32, i8, float, float, float, float }, align 8 ; 12 uses
  %.sroa.0.i.i.i.i.i.i = alloca { i32, i8, float, float, float, float }, align 8 ; 4 uses
  %12 = alloca %struct.t_dr_stats, align 4        ; 4 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %15 = alloca %"class.std::unordered_map", align 8 ; 16 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca [15 x ptr], align 16              ; 5 uses
  %17 = alloca [4 x %struct.t_pargs], align 16    ; 5 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca float, align 4                    ; 11 uses
  %i.i = alloca ptr, align 8                      ; 10 uses
  %i.j = alloca [3 x [3 x float]], align 16       ; 8 uses
  %i.k = alloca i32, align 4                      ; 15 uses
  %i.l = alloca ptr, align 8                      ; 9 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %18 = alloca %struct.t_dr_result, align 8       ; 13 uses
  %19 = alloca %"class.std::vector", align 8      ; 14 uses
  %20 = alloca %struct.t_pbc, align 4             ; 5 uses
  %i.n = alloca ptr, align 8                      ; 17 uses
  %21 = alloca [12 x %struct.t_filenm], align 16  ; 97 uses
  %22 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %23 = alloca %struct.t_inputrec, align 8        ; 14 uses
  %24 = alloca %"class.gmx::TopologyInformation", align 8 ; 15 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::unique_ptr.96", align 8 ; 9 uses
  %27 = alloca %"class.std::unique_ptr.96", align 8 ; 5 uses
  %28 = alloca %struct.gmx_localtop_t, align 8    ; 20 uses
  %29 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %33 = alloca %struct.t_disresdata, align 8      ; 8 uses
  %34 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %35 = alloca %"class.std::optional", align 8    ; 14 uses
  %36 = alloca %struct.t_cluster_ndx, align 8     ; 9 uses
  %37 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.std::unique_ptr.167", align 8 ; 8 uses
  %50 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %51 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %52 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.v = alloca ptr, align 8                      ; 5 uses
  store i32 %0, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.f, ptr noundef nonnull align 16 dereferenceable(120) @__const._Z9gmx_disreiPPc.desc, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %17, ptr noundef nonnull align 16 dereferenceable(128) @__const._Z9gmx_disreiPPc.pa, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store ptr null, ptr %i.l, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store i32 27, ptr %21, align 16, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %21, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store i64 2, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %21, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %21, i64 64
  store ptr @.str.23, ptr %i.aa, align 16, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 72
  store ptr null, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 80
  store i64 2, ptr %i.ac, align 16, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.ae, align 16, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 120
  store ptr @.str.24, ptr %i.af, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 128
  store ptr @.str.25, ptr %i.ag, align 16, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 136
  store i64 4, ptr %i.ah, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %21, i64 176
  store ptr @.str.26, ptr %i.ak, align 16, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %21, i64 184
  store ptr @.str.27, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 192
  store i64 4, ptr %i.am, align 16, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %21, i64 200
  %i.ao = getelementptr inbounds nuw i8, ptr %21, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.ao, align 16, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %21, i64 232
  store ptr @.str.28, ptr %i.ap, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %21, i64 240
  store ptr @.str.29, ptr %i.aq, align 16, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %21, i64 248
  store i64 4, ptr %i.ar, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %21, i64 256
  %i.at = getelementptr inbounds nuw i8, ptr %21, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %21, i64 288
  store ptr @.str.30, ptr %i.au, align 16, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %21, i64 296
  store ptr @.str.31, ptr %i.av, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 304
  store i64 4, ptr %i.aw, align 16, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 312
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.ay, align 16, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %21, i64 344
  store ptr @.str.32, ptr %i.az, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 352
  store ptr @.str.33, ptr %i.ba, align 16, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 360
  store i64 4, ptr %i.bb, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %21, i64 368
  %i.bd = getelementptr inbounds nuw i8, ptr %21, i64 392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  store i32 20, ptr %i.bd, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %21, i64 400
  store ptr @.str.34, ptr %i.be, align 16, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 408
  store ptr @.str.35, ptr %i.bf, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 416
  store i64 4, ptr %i.bg, align 16, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %21, i64 424
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  store i32 23, ptr %i.bi, align 16, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %21, i64 456
  store ptr null, ptr %i.bj, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %21, i64 464
  store ptr @.str.36, ptr %i.bk, align 16, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 472
  store i64 10, ptr %i.bl, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %21, i64 480
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  store i32 14, ptr %i.bn, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 512
  store ptr @.str.37, ptr %i.bo, align 16, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %21, i64 520
  store ptr @.str.36, ptr %i.bp, align 8, !tbaa !24
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 528
  store i64 12, ptr %i.bq, align 16, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 536
  %i.bs = getelementptr inbounds nuw i8, ptr %21, i64 560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  store i32 23, ptr %i.bs, align 16, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %21, i64 568
  store ptr @.str.38, ptr %i.bt, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %21, i64 576
  store ptr @.str.39, ptr %i.bu, align 16, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 584
  store i64 10, ptr %i.bv, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 592
  %i.bx = getelementptr inbounds nuw i8, ptr %21, i64 616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  store i32 41, ptr %i.bx, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %21, i64 624
  store ptr @.str.40, ptr %i.by, align 16, !tbaa !23
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 632
  store ptr @.str.41, ptr %i.bz, align 8, !tbaa !24
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 640
  store i64 12, ptr %i.ca, align 16, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %21, i64 648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  %i.cc = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.e, ptr noundef %1, i64 noundef 16608, i32 noundef 12, ptr noundef nonnull %21, i32 noundef 4, ptr noundef nonnull %17, i32 noundef 15, ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.n)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.cc, label %bb.d, label %bb.jy

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  %i.ce = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 20, i32 noundef 12, ptr noundef nonnull %21)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  store ptr %i.ce, ptr %i.o, align 8, !tbaa !25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef zeroext 2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.cf = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull @.str.42)
          to label %bb.g unwind label %bb.k       ; 61 uses

bb.g:                                             ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.h
end_hunk_0
begin_hunk_1_@_Z9gmx_disreiPPc:bb.a
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !31 ; 2 uses
  %i.abn = getelementptr inbounds [36 x i8], ptr %i.xl, i64 %i.aai ; 8 uses
  store i32 %i.abm, ptr %i.abn, align 4, !tbaa !307
  br i1 %i.xt, label %_ZL7is_coreiiPKi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ey, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.ey ] ; 2 uses
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %indvars.iv.i.i
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !9
  %i.abq = icmp eq i32 %i.abp, %i.abm             ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.abr = icmp samesign uge i64 %indvars.iv.next.i.i, %i.xu
  %.not8.i.i = select i1 %i.abq, i1 true, i1 %i.abr
  br i1 %.not8.i.i, label %_ZL7is_coreiiPKi.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !309

_ZL7is_coreiiPKi.exit.loopexit.i:                 ; preds = %.lr.ph.i.i
  %i.abs = zext i1 %i.abq to i8
  br label %_ZL7is_coreiiPKi.exit.i

_ZL7is_coreiiPKi.exit.i:                          ; preds = %_ZL7is_coreiiPKi.exit.loopexit.i, %bb.ey
  %.0.lcssa.i.i = phi i8 [ 0, %bb.ey ], [ %i.abs, %_ZL7is_coreiiPKi.exit.loopexit.i ]
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  store i8 %.0.lcssa.i.i, ptr %i.abt, align 4, !tbaa !310
  %i.abu = load i32, ptr %i.abh, align 4, !tbaa !9
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr inbounds [48 x i8], ptr %i.wz, i64 %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 4
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !31 ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  store float %i.aby, ptr %i.abz, align 4, !tbaa !311
  %i.aca = load ptr, ptr %i.zf, align 8, !tbaa !312
  %i.acb = getelementptr inbounds [4 x i8], ptr %i.aca, i64 %i.aai
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !101
  %i.acd = load i32, ptr %i.xz, align 4, !tbaa !285
  %i.ace = sitofp i32 %i.acd to float             ; 3 uses
  %i.acf = fdiv float %i.acc, %i.ace              ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abn, i64 12
  store float %i.acf, ptr %i.acg, align 4, !tbaa !313
  %i.ach = load ptr, ptr %i.zg, align 8, !tbaa !314
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.ach, i64 %i.aai
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !101 ; 2 uses
  %or.cond.i = call i1 @llvm.is.fpclass.f32(float %i.acj, /* (psub pnorm) */ i32 384)
  br i1 %or.cond.i, label %bb.ff, label %bb.ez

bb.ez:                                            ; preds = %_ZL7is_coreiiPKi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(65) @.str.44, i8 noundef zeroext 2)
          to label %bb.fa unwind label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.ack = trunc nuw nsw i64 %indvars.iv313.i to i32
  %i.acl = load ptr, ptr %i.zg, align 8, !tbaa !314
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.aai
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !101
  %i.aco = fpext float %i.acn to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 517, ptr noundef nonnull @.str.90, i32 noundef %i.ack, i32 noundef %i.aah, double noundef %i.aco) #24
          to label %bb.fb unwind label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  unreachable

bb.fc:                                            ; preds = %bb.ez
  %i.acp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fa
  %i.acq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #22
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.pn.i = phi { ptr, i32 } [ %i.acq, %bb.fd ], [ %i.acp, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body.i

bb.ff:                                            ; preds = %_ZL7is_coreiiPKi.exit.i
  %i.acr = fdiv float %i.acj, %i.ace
  %i.acs = call noundef float @cbrtf(float noundef %i.acr) #26
  %i.act = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  %i.acu = load ptr, ptr %i.zh, align 8, !tbaa !315
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.acu, i64 %i.aai
  %i.acw = getelementptr inbounds nuw i8, ptr %i.abn, i64 20
  %i.acx = fsub float %i.acf, %i.aby              ; 2 uses
  %i.acy = fcmp ogt float %i.acx, 0.000000e+00
  %i.acz = select i1 %i.acy, float %i.acx, float 0.000000e+00 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.abn, i64 24
  %i.adb = getelementptr inbounds nuw i8, ptr %i.abn, i64 28
  %i.adc = fpext float %i.acz to double           ; 3 uses
  %i.add = fcmp olt double %.0169250.i, %i.adc
  %.sroa.speculated106.i = select i1 %i.add, double %i.adc, double %.0169250.i
  %i.ade = fdiv float 1.000000e+00, %i.acs        ; 2 uses
  store float %i.ade, ptr %i.act, align 4, !tbaa !316
  %i.adf = load float, ptr %i.acv, align 4, !tbaa !101
  %i.adg = fdiv float %i.adf, %i.ace
  %i.adh = call noundef float @cbrtf(float noundef %i.adg) #26
  %i.adi = call noundef float @sqrtf(float noundef %i.adh) #22
  %i.adj = fdiv float 1.000000e+00, %i.adi        ; 2 uses
  store float %i.adj, ptr %i.acw, align 4, !tbaa !317
  store float %i.acz, ptr %i.ada, align 4, !tbaa !318
  %i.adk = insertelement <2 x float> poison, float %i.ade, i64 0
  %i.adl = insertelement <2 x float> %i.adk, float %i.adj, i64 1
  %i.adm = insertelement <2 x float> poison, float %i.aby, i64 0
  %i.adn = shufflevector <2 x float> %i.adm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ado = fsub <2 x float> %i.adl, %i.adn        ; 2 uses
  %i.adp = fcmp ogt <2 x float> %i.ado, zeroinitializer
  %i.adq = select <2 x i1> %i.adp, <2 x float> %i.ado, <2 x float> zeroinitializer ; 2 uses
  store <2 x float> %i.adq, ptr %i.adb, align 4, !tbaa !101
  %i.adr = fpext <2 x float> %i.adq to <2 x double> ; 3 uses
  %i.ads = fcmp olt <2 x double> %i.aab, %i.adr
  %i.adt = select <2 x i1> %i.ads, <2 x double> %i.adr, <2 x double> %i.aab
  %i.adu = load i64, ptr %i.xo, align 8, !tbaa !295 ; 2 uses
  %i.adv = urem i64 %i.aai, %i.adu                ; 3 uses
  %i.adw = load ptr, ptr %15, align 8, !tbaa !289
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %i.adv
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !301 ; 2 uses
  %.not.i.i.i.i87.i = icmp eq ptr %i.ady, null
  br i1 %.not.i.i.i.i87.i, label %.loopexit.i.i93.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !298 ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !9
  %i.aec = icmp eq i32 %i.aah, %i.aeb
  br i1 %i.aec, label %.loopexit.i, label %.lr.ph.i.i.i.i88.i

bb.fh:                                            ; preds = %bb.fi
  %i.aed = icmp eq i32 %i.aah, %i.aeg
  br i1 %i.aed, label %.loopexit.i, label %.lr.ph.i.i.i.i88.i, !llvm.loop !302

.lr.ph.i.i.i.i88.i:                               ; preds = %bb.fg, %bb.fh
  %.020.i.i.i.i89.i = phi ptr [ %i.aee, %bb.fh ], [ %i.adz, %bb.fg ]
  %i.aee = load ptr, ptr %.020.i.i.i.i89.i, align 8, !tbaa !298 ; 4 uses
  %.not18.i.i.i.i90.i = icmp eq ptr %i.aee, null
  br i1 %.not18.i.i.i.i90.i, label %.loopexit.i.i93.i, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph.i.i.i.i88.i
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !9 ; 2 uses
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = urem i64 %i.aeh, %i.adu
  %.not19.i.i.i.i91.i = icmp eq i64 %i.aei, %i.adv
  br i1 %.not19.i.i.i.i91.i, label %bb.fh, label %..loopexit_crit_edge21.i.i.i.i92.i, !llvm.loop !302

..loopexit_crit_edge21.i.i.i.i92.i:               ; preds = %bb.fi
  br label %.loopexit.i.i93.i, !llvm.loop !302

.loopexit.i.i93.i:                                ; preds = %.lr.ph.i.i.i.i88.i, %..loopexit_crit_edge21.i.i.i.i92.i, %bb.ff
  %i.aej = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %.noexc97.i unwind label %bb.ex ; 5 uses

.noexc97.i:                                       ; preds = %.loopexit.i.i93.i
  store ptr null, ptr %i.aej, align 8, !tbaa !298
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  store i32 %i.aah, ptr %i.aek, align 8, !tbaa !303
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aej, i64 12
  store i8 0, ptr %i.ael, align 4, !tbaa !305
  %i.aem = invoke ptr @_ZNSt10_HashtableIiSt4pairIKibESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %15, i64 noundef %i.adv, i64 noundef %i.aai, ptr noundef nonnull %i.aej, i64 noundef 1)
          to label %.loopexit.i unwind label %_ZNSt10_HashtableIiSt4pairIKibESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i94.i

_ZNSt10_HashtableIiSt4pairIKibESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i94.i: ; preds = %.noexc97.i
  %i.aen = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef 16) #23
  br label %.body.i

.loopexit.i:                                      ; preds = %bb.fh, %.noexc97.i, %bb.fg
  %.pn.i.i95.i = phi ptr [ %i.aem, %.noexc97.i ], [ %i.adz, %bb.fg ], [ %i.aee, %bb.fh ]
  %.1.i.i96.i = getelementptr inbounds nuw i8, ptr %.pn.i.i95.i, i64 12
  %i.aeo = fadd <2 x double> %i.aac, %i.adr
  %i.aep = fadd double %.071251.i, %i.adc
  store i8 1, ptr %.1.i.i96.i, align 1, !tbaa !306
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit.i, %.loopexit175.i
  %.1.i = phi double [ %.0169250.i, %.loopexit175.i ], [ %.sroa.speculated106.i, %.loopexit.i ] ; 2 uses
  %.172.i = phi double [ %.071251.i, %.loopexit175.i ], [ %i.aep, %.loopexit.i ] ; 2 uses
  %i.aeq = phi <2 x double> [ %i.aab, %.loopexit175.i ], [ %i.adt, %.loopexit.i ] ; 2 uses
  %i.aer = phi <2 x double> [ %i.aac, %.loopexit175.i ], [ %i.aeo, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %i.zi ; 2 uses
  %i.aes = load i32, ptr %i.jg, align 4, !tbaa !222
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = icmp slt i64 %indvars.iv.next.i, %i.aet
  br i1 %i.aeu, label %bb.et, label %._crit_edge.loopexit.i, !llvm.loop !319

.body.i:                                          ; preds = %_ZNSt10_HashtableIiSt4pairIKibESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i94.i, %bb.fe, %bb.ex, %_ZNSt10_HashtableIiSt4pairIKibESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.fe ], [ %i.abc, %_ZNSt10_HashtableIiSt4pairIKibESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i ], [ %i.abf, %bb.ex ], [ %i.aen, %_ZNSt10_HashtableIiSt4pairIKibESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i94.i ]
  call void @_ZNSt13unordered_mapIibSt4hashIiESt8equal_toIiESaISt4pairIKibEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.body

bb.fk:                                            ; preds = %_ZNSt13unordered_mapIibSt4hashIiESt8equal_toIiESaISt4pairIKibEEED2Ev.exit.i, %bb.ei
  %indvars.iv.next314.i = add nuw nsw i64 %indvars.iv313.i, 1 ; 2 uses
  %exitcond669.not = icmp eq i64 %indvars.iv.next314.i, %umax
  br i1 %exitcond669.not, label %._crit_edge267.i, label %bb.ei, !llvm.loop !320

bb.fl:                                            ; preds = %bb.eg
  %i.aev = load i32, ptr %i.k, align 4, !tbaa !9  ; 2 uses
  %i.aew = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.aex = load ptr, ptr %26, align 8             ; 3 uses
  %fputc.i371 = call i32 @fputc(i32 10, ptr %i.cf) ; 0 uses
  %i.aey = call i64 @fwrite(ptr nonnull @.str.92, i64 51, i64 1, ptr %i.cf) ; 0 uses
  %i.aez = load i32, ptr %i.jg, align 4, !tbaa !222
  %i.afa = sext i32 %i.aez to i64
  %i.afb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.44, i32 noundef 418, i64 noundef range(i64 -2147483648, 2147483648) %i.afa, i64 noundef 36)
          to label %.noexc388 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 49 uses

.noexc388:                                        ; preds = %bb.fl
  %i.afc = getelementptr inbounds nuw i8, ptr %28, i64 1368 ; 3 uses
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !286
  %i.afe = load ptr, ptr %i.rk, align 8, !tbaa !258 ; 2 uses
  %i.aff = ptrtoint ptr %i.afd to i64
  %i.afg = ptrtoint ptr %i.afe to i64
  %i.afh = sub i64 %i.aff, %i.afg
  %i.afi = lshr exact i64 %i.afh, 2               ; 2 uses
  %i.afj = trunc i64 %i.afi to i32
  %i.afk = icmp sgt i32 %i.afj, 0
  br i1 %i.afk, label %.lr.ph.i380, label %._crit_edge.i372

.lr.ph.i380:                                      ; preds = %.noexc388
  %i.afl = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 1744), align 8, !tbaa !287
  %i.afm = add i32 %i.afl, 1
  %i.afn = getelementptr inbounds nuw i8, ptr %33, i64 36
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !300
  %i.afp = icmp slt i32 %i.aev, 1
  %i.afq = zext nneg i32 %i.aev to i64
  %i.afr = uitofp nneg i32 %i.wv to float         ; 3 uses
  %.not.i381488 = icmp ne ptr %i.aex, null
  %.not.i381.not = select i1 %i.dm, i1 %.not.i381488, i1 false
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aex, i64 56
  %i.aft = sext i32 %i.afm to i64
  %i.afu = and i64 %i.afi, 2147483647
  %i.afv = load i32, ptr %i.jg, align 4           ; 2 uses
  %i.afw = load ptr, ptr %i.ji, align 8
  %i.afx = load ptr, ptr %i.jo, align 8
  %i.afy = load ptr, ptr %i.jq, align 8
  br label %bb.gs

._crit_edge.i372:                                 ; preds = %.noexc388
  %.pre.i373 = load i32, ptr %i.jg, align 4, !tbaa !222 ; 2 uses
  %i.afz = call i64 @fwrite(ptr nonnull @.str.96, i64 68, i64 1, ptr %i.cf) ; 0 uses
  %i.aga = icmp sgt i32 %.pre.i373, 0
  br i1 %i.aga, label %.lr.ph.i.i377, label %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit.i

.lr.ph.i.i377:                                    ; preds = %._crit_edge.thread.i, %._crit_edge.i372
  %i.agb = phi i32 [ %i.afv, %._crit_edge.thread.i ], [ %.pre.i373, %._crit_edge.i372 ]
  %wide.trip.count32.i.i = zext nneg i32 %i.agb to i64
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.noexc389, %.lr.ph.i.i377
  %indvars.iv.i.i378 = phi i64 [ %indvars.iv.next.i.i379, %.noexc389 ], [ 0, %.lr.ph.i.i377 ] ; 2 uses
  %i.agc = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv.i.i378 ; 5 uses
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !307
  %i.age = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  %i.agf = load i8, ptr %i.age, align 4, !tbaa !310, !range !256, !noundef !257
  %i.agg = trunc nuw i8 %i.agf to i1
  %i.agh = invoke noundef ptr @_Z20booleanValueToStringb(i1 noundef zeroext %i.agg)
          to label %.noexc389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc389:                                        ; preds = %.lr.ph.split.i.i
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %i.agj = load <4 x float>, ptr %i.agi, align 4, !tbaa !101
  %i.agk = fpext <4 x float> %i.agj to <4 x double> ; 4 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agc, i64 24
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !318
  %i.agn = fpext float %i.agm to double
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agc, i64 28
  %i.agp = load <2 x float>, ptr %i.ago, align 4, !tbaa !101
  %i.agq = fpext <2 x float> %i.agp to <2 x double> ; 2 uses
  %i.agr = extractelement <4 x double> %i.agk, i64 0
  %i.ags = extractelement <4 x double> %i.agk, i64 1
  %i.agt = extractelement <4 x double> %i.agk, i64 2
  %i.agu = extractelement <4 x double> %i.agk, i64 3
  %i.agv = extractelement <2 x double> %i.agq, i64 0
  %i.agw = extractelement <2 x double> %i.agq, i64 1
  %i.agx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.97, i32 noundef %i.agd, ptr noundef %i.agh, double noundef %i.agr, double noundef %i.ags, double noundef %i.agt, double noundef %i.agu, double noundef %i.agn, double noundef %i.agv, double noundef %i.agw) #22 ; 0 uses
  %indvars.iv.next.i.i379 = add nuw nsw i64 %indvars.iv.i.i378, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i379, %wide.trip.count32.i.i
  br i1 %exitcond.not.i.i, label %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit.i, label %.lr.ph.split.i.i, !llvm.loop !321

_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit.i:    ; preds = %.noexc389, %._crit_edge.i372
  %i.agy = call i64 @fwrite(ptr nonnull @.str.93, i64 46, i64 1, ptr %i.cf) ; 0 uses
  %i.agz = load i32, ptr %i.jg, align 4, !tbaa !222 ; 4 uses
  %i.aha = sext i32 %i.agz to i64                 ; 2 uses
  %.idx.i = mul nsw i64 %i.aha, 36                ; 2 uses
  %i.ahb = getelementptr inbounds i8, ptr %i.afb, i64 %.idx.i ; 3 uses
  %.not.i.i.i374 = icmp eq i32 %i.agz, 0
  br i1 %.not.i.i.i374, label %"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.thread.i", label %bb.fm

"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.thread.i": ; preds = %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit.i
  %i.ahc = call i64 @fwrite(ptr nonnull @.str.96, i64 68, i64 1, ptr %i.cf) ; 0 uses
  br label %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit66.i

bb.fm:                                            ; preds = %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit.i
  %i.ahd = ptrtoint ptr %i.afb to i64
  %i.ahe = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aha, i1 true)
  %i.ahf = shl nuw nsw i64 %i.ahe, 1
  %i.ahg = xor i64 %i.ahf, 126
  call fastcc void @"_ZSt16__introsort_loopIP10t_dr_statslN9__gnu_cxx5__ops15_Iter_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_SP_T0_T1_"(ptr noundef %i.afb, ptr noundef nonnull %i.ahb, i64 noundef %i.ahg)
  %i.ahh = icmp sgt i32 %i.agz, 16
  br i1 %i.ahh, label %bb.fn, label %.preheader.i.i.i.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.ahi = getelementptr i8, ptr %i.afb, i64 24
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.afb, i64 36
  br label %bb.fo

bb.fo:                                            ; preds = %bb.ft, %bb.fn
  %.019.i.idx.i.i.i.i = phi i64 [ 36, %bb.fn ], [ %.019.i.add.i.i.i.i, %bb.ft ] ; 4 uses
  %.pn18.i.i.i.i.i = phi ptr [ %i.afb, %bb.fn ], [ %.019.i.ptr.i.i.i.i, %bb.ft ] ; 4 uses
  %.019.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.afb, i64 %.019.i.idx.i.i.i.i ; 5 uses
  %i.ahj = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 60
  %.0.val.i.i.i.i.i = load float, ptr %i.ahj, align 4, !tbaa !318 ; 4 uses
  %.val.i.i.i.i.i = load float, ptr %i.ahi, align 4, !tbaa !318
  %i.ahk = fcmp ogt float %.0.val.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.ahk, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %12, ptr noundef nonnull align 4 dereferenceable(36) %.019.i.ptr.i.i.i.i, i64 36, i1 false), !tbaa.struct !322
  %i.ahl = icmp samesign ugt i64 %.019.i.idx.i.i.i.i, 36
  br i1 %i.ahl, label %bb.fq, label %bb.fr, !prof !323

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.afb, i64 %.019.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIP10t_dr_statsS1_ET0_T_S3_S2_.exit.i.i.i.i.i

bb.fr:                                            ; preds = %bb.fp
  %i.ahm = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ahm, ptr noundef nonnull align 4 dereferenceable(36) %i.afb, i64 36, i1 false), !tbaa.struct !322
  br label %_ZSt13move_backwardIP10t_dr_statsS1_ET0_T_S3_S2_.exit.i.i.i.i.i

_ZSt13move_backwardIP10t_dr_statsS1_ET0_T_S3_S2_.exit.i.i.i.i.i: ; preds = %bb.fr, %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.afb, ptr noundef nonnull align 4 dereferenceable(36) %12, i64 36, i1 false), !tbaa.struct !322
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.019.i.ptr.i.i.i.i, i64 24, i1 false), !tbaa.struct !322
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i, i64 64
  %i.ahn = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 4
  %i.aho = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 24
  %.0.val11.i.i.i.i.i.i = load float, ptr %i.aho, align 4, !tbaa !318
  %i.ahp = fcmp ogt float %.0.val.i.i.i.i.i, %.0.val11.i.i.i.i.i.i
  br i1 %i.ahp, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.fs, %.lr.ph.i.i.i.i.i.i
  %.0912.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.019.i.ptr.i.i.i.i, %bb.fs ] ; 3 uses
  %.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0912.i.i.i.i.i.i, i64 -36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.0912.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0.i.i.i.i.i.i, i64 36, i1 false), !tbaa.struct !322
  %i.ahq = getelementptr i8, ptr %.0912.i.i.i.i.i.i, i64 -48
  %.0.val.i.i.i.i.i.i = load float, ptr %i.ahq, align 4, !tbaa !318
  %i.ahr = fcmp ogt float %.0.val.i.i.i.i.i, %.0.val.i.i.i.i.i.i
  br i1 %i.ahr, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i.i.i.i.i", !llvm.loop !324

"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.fs
  %.09.lcssa.i.i.i.i.i.i = phi ptr [ %.019.i.ptr.i.i.i.i, %bb.fs ], [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.09.lcssa.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !322
  %.sroa.4.0..09.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i.i, i64 24
  store float %.0.val.i.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i.i.i.i.i, align 4, !tbaa !101
  %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i.i, i64 28
  store i64 %i.ahn, ptr %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  br label %bb.ft

bb.ft:                                            ; preds = %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i.i.i.i.i", %_ZSt13move_backwardIP10t_dr_statsS1_ET0_T_S3_S2_.exit.i.i.i.i.i
  %.019.i.add.i.i.i.i = add nuw nsw i64 %.019.i.idx.i.i.i.i, 36 ; 2 uses
  %.not.i.i.i.i.i375 = icmp eq i64 %.019.i.add.i.i.i.i, 576
  br i1 %.not.i.i.i.i.i375, label %"_ZSt16__insertion_sortIP10t_dr_statsN9__gnu_cxx5__ops15_Iter_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_SP_T0_.exit.i.i.i.i", label %bb.fo, !llvm.loop !325

"_ZSt16__insertion_sortIP10t_dr_statsN9__gnu_cxx5__ops15_Iter_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_SP_T0_.exit.i.i.i.i": ; preds = %bb.ft
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.afb, i64 576 ; 4 uses
  %i.aht = add nsw i64 %.idx.i, -612              ; 2 uses
  %i.ahu = udiv i64 %i.aht, 36
  %i.ahv = and i64 %i.ahu, 1
  %lcmp.mod1135.not.not = icmp eq i64 %i.ahv, 0
  br i1 %lcmp.mod1135.not.not, label %.lr.ph.i.i.i.i.i376.prol, label %.lr.ph.i.i.i.i.i376.prol.loopexit

.lr.ph.i.i.i.i.i376.prol:                         ; preds = %"_ZSt16__insertion_sortIP10t_dr_statsN9__gnu_cxx5__ops15_Iter_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_SP_T0_.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i13.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i13.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.ahs, i64 24, i1 false), !tbaa.struct !322
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.afb, i64 600
  %.sroa.4.0.copyload.i.i.i.i.i.i.prol = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.prol, align 4, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.afb, i64 604
  %i.ahw = load i64, ptr %.sroa.5.0..sroa_idx.i.i14.i.i.i.i.prol, align 4
  %i.ahx = getelementptr i8, ptr %i.afb, i64 564
  %.0.val11.i.i15.i.i.i.i.prol = load float, ptr %i.ahx, align 4, !tbaa !318
  %i.ahy = fcmp ogt float %.sroa.4.0.copyload.i.i.i.i.i.i.prol, %.0.val11.i.i15.i.i.i.i.prol
  br i1 %i.ahy, label %.lr.ph.i.i21.i.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.prol"

.lr.ph.i.i21.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i376.prol, %.lr.ph.i.i21.i.i.i.i.prol
  %.0912.i.i22.i.i.i.i.prol = phi ptr [ %.0.i.i23.i.i.i.i.prol, %.lr.ph.i.i21.i.i.i.i.prol ], [ %i.ahs, %.lr.ph.i.i.i.i.i376.prol ] ; 3 uses
  %.0.i.i23.i.i.i.i.prol = getelementptr inbounds i8, ptr %.0912.i.i22.i.i.i.i.prol, i64 -36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.0912.i.i22.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(36) %.0.i.i23.i.i.i.i.prol, i64 36, i1 false), !tbaa.struct !322
  %i.ahz = getelementptr i8, ptr %.0912.i.i22.i.i.i.i.prol, i64 -48
  %.0.val.i.i24.i.i.i.i.prol = load float, ptr %i.ahz, align 4, !tbaa !318
  %i.aia = fcmp ogt float %.sroa.4.0.copyload.i.i.i.i.i.i.prol, %.0.val.i.i24.i.i.i.i.prol
  br i1 %i.aia, label %.lr.ph.i.i21.i.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.prol", !llvm.loop !324

"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.prol": ; preds = %.lr.ph.i.i21.i.i.i.i.prol, %.lr.ph.i.i.i.i.i376.prol
  %.09.lcssa.i.i17.i.i.i.i.prol = phi ptr [ %i.ahs, %.lr.ph.i.i.i.i.i376.prol ], [ %.0.i.i23.i.i.i.i.prol, %.lr.ph.i.i21.i.i.i.i.prol ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.09.lcssa.i.i17.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i13.i.i.i.i, i64 24, i1 false), !tbaa.struct !322
  %.sroa.4.0..09.sroa_idx.i.i18.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i.i.prol, i64 24
  store float %.sroa.4.0.copyload.i.i.i.i.i.i.prol, ptr %.sroa.4.0..09.sroa_idx.i.i18.i.i.i.i.prol, align 4, !tbaa !101
  %.sroa.5.0..09.sroa_idx.i.i19.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i.i.prol, i64 28
  store i64 %i.ahw, ptr %.sroa.5.0..09.sroa_idx.i.i19.i.i.i.i.prol, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i13.i.i.i.i)
  %i.aib = getelementptr inbounds nuw i8, ptr %i.afb, i64 612
  br label %.lr.ph.i.i.i.i.i376.prol.loopexit

.lr.ph.i.i.i.i.i376.prol.loopexit:                ; preds = %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.prol", %"_ZSt16__insertion_sortIP10t_dr_statsN9__gnu_cxx5__ops15_Iter_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_SP_T0_.exit.i.i.i.i"
  %.07.i.i.i.i.i.unr = phi ptr [ %i.ahs, %"_ZSt16__insertion_sortIP10t_dr_statsN9__gnu_cxx5__ops15_Iter_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_SP_T0_.exit.i.i.i.i" ], [ %i.aib, %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.prol" ]
  %i.aic = icmp ult i64 %i.aht, 36
  br i1 %i.aic, label %"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.i", label %.lr.ph.i.i.i.i.i376

.lr.ph.i.i.i.i.i376:                              ; preds = %.lr.ph.i.i.i.i.i376.prol.loopexit, %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.1"
  %.07.i.i.i.i.i = phi ptr [ %i.aio, %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.1" ], [ %.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i376.prol.loopexit ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i13.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i13.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.07.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !322
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 28
  %i.aid = load i64, ptr %.sroa.5.0..sroa_idx.i.i14.i.i.i.i, align 4
  %i.aie = getelementptr i8, ptr %.07.i.i.i.i.i, i64 -12
  %.0.val11.i.i15.i.i.i.i = load float, ptr %i.aie, align 4, !tbaa !318
  %i.aif = fcmp ogt float %.sroa.4.0.copyload.i.i.i.i.i.i, %.0.val11.i.i15.i.i.i.i
  br i1 %i.aif, label %.lr.ph.i.i21.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i"

.lr.ph.i.i21.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i376, %.lr.ph.i.i21.i.i.i.i
  %.0912.i.i22.i.i.i.i = phi ptr [ %.0.i.i23.i.i.i.i, %.lr.ph.i.i21.i.i.i.i ], [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i376 ] ; 3 uses
  %.0.i.i23.i.i.i.i = getelementptr inbounds i8, ptr %.0912.i.i22.i.i.i.i, i64 -36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.0912.i.i22.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0.i.i23.i.i.i.i, i64 36, i1 false), !tbaa.struct !322
  %i.aig = getelementptr i8, ptr %.0912.i.i22.i.i.i.i, i64 -48
  %.0.val.i.i24.i.i.i.i = load float, ptr %i.aig, align 4, !tbaa !318
  %i.aih = fcmp ogt float %.sroa.4.0.copyload.i.i.i.i.i.i, %.0.val.i.i24.i.i.i.i
  br i1 %i.aih, label %.lr.ph.i.i21.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i", !llvm.loop !324

"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i": ; preds = %.lr.ph.i.i21.i.i.i.i, %.lr.ph.i.i.i.i.i376
  %.09.lcssa.i.i17.i.i.i.i = phi ptr [ %.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i376 ], [ %.0.i.i23.i.i.i.i, %.lr.ph.i.i21.i.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.09.lcssa.i.i17.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i13.i.i.i.i, i64 24, i1 false), !tbaa.struct !322
  %.sroa.4.0..09.sroa_idx.i.i18.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i.i, i64 24
  store float %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i18.i.i.i.i, align 4, !tbaa !101
  %.sroa.5.0..09.sroa_idx.i.i19.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i.i, i64 28
  store i64 %i.aid, ptr %.sroa.5.0..09.sroa_idx.i.i19.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i13.i.i.i.i)
  %i.aii = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i13.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i13.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.aii, i64 24, i1 false), !tbaa.struct !322
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 60
  %.sroa.4.0.copyload.i.i.i.i.i.i.1 = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.1, align 4, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 64
  %i.aij = load i64, ptr %.sroa.5.0..sroa_idx.i.i14.i.i.i.i.1, align 4
  %i.aik = getelementptr i8, ptr %.07.i.i.i.i.i, i64 24
  %.0.val11.i.i15.i.i.i.i.1 = load float, ptr %i.aik, align 4, !tbaa !318
  %i.ail = fcmp ogt float %.sroa.4.0.copyload.i.i.i.i.i.i.1, %.0.val11.i.i15.i.i.i.i.1
  br i1 %i.ail, label %.lr.ph.i.i21.i.i.i.i.1, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.1"

.lr.ph.i.i21.i.i.i.i.1:                           ; preds = %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i", %.lr.ph.i.i21.i.i.i.i.1
  %.0912.i.i22.i.i.i.i.1 = phi ptr [ %.0.i.i23.i.i.i.i.1, %.lr.ph.i.i21.i.i.i.i.1 ], [ %i.aii, %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i" ] ; 3 uses
  %.0.i.i23.i.i.i.i.1 = getelementptr inbounds i8, ptr %.0912.i.i22.i.i.i.i.1, i64 -36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.0912.i.i22.i.i.i.i.1, ptr noundef nonnull align 4 dereferenceable(36) %.0.i.i23.i.i.i.i.1, i64 36, i1 false), !tbaa.struct !322
  %i.aim = getelementptr i8, ptr %.0912.i.i22.i.i.i.i.1, i64 -48
  %.0.val.i.i24.i.i.i.i.1 = load float, ptr %i.aim, align 4, !tbaa !318
  %i.ain = fcmp ogt float %.sroa.4.0.copyload.i.i.i.i.i.i.1, %.0.val.i.i24.i.i.i.i.1
  br i1 %i.ain, label %.lr.ph.i.i21.i.i.i.i.1, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.1", !llvm.loop !324

"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.1": ; preds = %.lr.ph.i.i21.i.i.i.i.1, %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i"
  %.09.lcssa.i.i17.i.i.i.i.1 = phi ptr [ %i.aii, %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i" ], [ %.0.i.i23.i.i.i.i.1, %.lr.ph.i.i21.i.i.i.i.1 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.09.lcssa.i.i17.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i13.i.i.i.i, i64 24, i1 false), !tbaa.struct !322
  %.sroa.4.0..09.sroa_idx.i.i18.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i.i.1, i64 24
  store float %.sroa.4.0.copyload.i.i.i.i.i.i.1, ptr %.sroa.4.0..09.sroa_idx.i.i18.i.i.i.i.1, align 4, !tbaa !101
  %.sroa.5.0..09.sroa_idx.i.i19.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i17.i.i.i.i.1, i64 28
  store i64 %i.aij, ptr %.sroa.5.0..09.sroa_idx.i.i19.i.i.i.i.1, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i13.i.i.i.i)
  %i.aio = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i20.i.i.i.i.1 = icmp eq ptr %i.aio, %i.ahb
  br i1 %.not.i20.i.i.i.i.1, label %"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.i", label %.lr.ph.i.i.i.i.i376, !llvm.loop !326

.preheader.i.i.i.i.i:                             ; preds = %bb.fm
  %.016.i26.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.afb, i64 36 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i32 %i.agz, 1
  br i1 %.not17.i.i.i.i.i, label %"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.i", label %.lr.ph.i27.i.i.i.i

.lr.ph.i27.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i
  %i.aip = getelementptr i8, ptr %i.afb, i64 24
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ga, %.lr.ph.i27.i.i.i.i
  %.019.i28.i.i.i.i = phi ptr [ %.016.i26.i.i.i.i, %.lr.ph.i27.i.i.i.i ], [ %.0.i38.i.i.i.i, %bb.ga ] ; 7 uses
  %.pn18.i29.i.i.i.i = phi ptr [ %i.afb, %.lr.ph.i27.i.i.i.i ], [ %.019.i28.i.i.i.i, %bb.ga ] ; 4 uses
  %i.aiq = getelementptr i8, ptr %.pn18.i29.i.i.i.i, i64 60
  %.0.val.i30.i.i.i.i = load float, ptr %i.aiq, align 4, !tbaa !318 ; 4 uses
  %.val.i31.i.i.i.i = load float, ptr %i.aip, align 4, !tbaa !318
  %i.air = fcmp ogt float %.0.val.i30.i.i.i.i, %.val.i31.i.i.i.i
  br i1 %i.air, label %bb.fv, label %bb.fz

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %11, ptr noundef nonnull align 4 dereferenceable(36) %.019.i28.i.i.i.i, i64 36, i1 false), !tbaa.struct !322
  %i.ais = ptrtoint ptr %.019.i28.i.i.i.i to i64
  %i.ait = sub i64 %i.ais, %i.ahd                 ; 3 uses
  %i.aiu = icmp sgt i64 %i.ait, 36
  br i1 %i.aiu, label %bb.fw, label %bb.fx, !prof !323

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.016.i26.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.afb, i64 %i.ait, i1 false)
  br label %_ZSt13move_backwardIP10t_dr_statsS1_ET0_T_S3_S2_.exit.i44.i.i.i.i

bb.fx:                                            ; preds = %bb.fv
  %i.aiv = icmp eq i64 %i.ait, 36
  br i1 %i.aiv, label %bb.fy, label %_ZSt13move_backwardIP10t_dr_statsS1_ET0_T_S3_S2_.exit.i44.i.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %i.aiw = getelementptr inbounds nuw i8, ptr %.pn18.i29.i.i.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.aiw, ptr noundef nonnull align 4 dereferenceable(36) %i.afb, i64 36, i1 false), !tbaa.struct !322
  br label %_ZSt13move_backwardIP10t_dr_statsS1_ET0_T_S3_S2_.exit.i44.i.i.i.i

_ZSt13move_backwardIP10t_dr_statsS1_ET0_T_S3_S2_.exit.i44.i.i.i.i: ; preds = %bb.fy, %bb.fx, %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.afb, ptr noundef nonnull align 4 dereferenceable(36) %11, i64 36, i1 false), !tbaa.struct !322
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i25.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i25.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.019.i28.i.i.i.i, i64 24, i1 false), !tbaa.struct !322
  %.sroa.5.0..sroa_idx.i.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i29.i.i.i.i, i64 64
  %i.aix = load i64, ptr %.sroa.5.0..sroa_idx.i.i32.i.i.i.i, align 4
  %i.aiy = getelementptr i8, ptr %.pn18.i29.i.i.i.i, i64 24
  %.0.val11.i.i33.i.i.i.i = load float, ptr %i.aiy, align 4, !tbaa !318
  %i.aiz = fcmp ogt float %.0.val.i30.i.i.i.i, %.0.val11.i.i33.i.i.i.i
  br i1 %i.aiz, label %.lr.ph.i.i40.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i34.i.i.i.i"

.lr.ph.i.i40.i.i.i.i:                             ; preds = %bb.fz, %.lr.ph.i.i40.i.i.i.i
  %.0912.i.i41.i.i.i.i = phi ptr [ %.0.i.i42.i.i.i.i, %.lr.ph.i.i40.i.i.i.i ], [ %.019.i28.i.i.i.i, %bb.fz ] ; 3 uses
  %.0.i.i42.i.i.i.i = getelementptr inbounds i8, ptr %.0912.i.i41.i.i.i.i, i64 -36 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.0912.i.i41.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0.i.i42.i.i.i.i, i64 36, i1 false), !tbaa.struct !322
  %i.aja = getelementptr i8, ptr %.0912.i.i41.i.i.i.i, i64 -48
  %.0.val.i.i43.i.i.i.i = load float, ptr %i.aja, align 4, !tbaa !318
  %i.ajb = fcmp ogt float %.0.val.i30.i.i.i.i, %.0.val.i.i43.i.i.i.i
  br i1 %i.ajb, label %.lr.ph.i.i40.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i34.i.i.i.i", !llvm.loop !324

"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i34.i.i.i.i": ; preds = %.lr.ph.i.i40.i.i.i.i, %bb.fz
  %.09.lcssa.i.i35.i.i.i.i = phi ptr [ %.019.i28.i.i.i.i, %bb.fz ], [ %.0.i.i42.i.i.i.i, %.lr.ph.i.i40.i.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.09.lcssa.i.i35.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i25.i.i.i.i, i64 24, i1 false), !tbaa.struct !322
  %.sroa.4.0..09.sroa_idx.i.i36.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i35.i.i.i.i, i64 24
  store float %.0.val.i30.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i36.i.i.i.i, align 4, !tbaa !101
  %.sroa.5.0..09.sroa_idx.i.i37.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i35.i.i.i.i, i64 28
  store i64 %i.aix, ptr %.sroa.5.0..09.sroa_idx.i.i37.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i25.i.i.i.i)
  br label %bb.ga

bb.ga:                                            ; preds = %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i34.i.i.i.i", %_ZSt13move_backwardIP10t_dr_statsS1_ET0_T_S3_S2_.exit.i44.i.i.i.i
  %.0.i38.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i28.i.i.i.i, i64 36 ; 2 uses
  %.not.i39.i.i.i.i = icmp eq ptr %.0.i38.i.i.i.i, %i.ahb
  br i1 %.not.i39.i.i.i.i, label %"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.i", label %bb.fu, !llvm.loop !325

"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.i": ; preds = %bb.ga, %.lr.ph.i.i.i.i.i376.prol.loopexit, %"_ZSt25__unguarded_linear_insertIP10t_dr_statsN9__gnu_cxx5__ops14_Val_comp_iterIZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EEEvT_T0_.exit.i16.i.i.i.i.1", %.preheader.i.i.i.i.i
  %.pr.i = load i32, ptr %i.jg, align 4, !tbaa !222 ; 2 uses
  %i.ajc = call i64 @fwrite(ptr nonnull @.str.96, i64 68, i64 1, ptr %i.cf) ; 0 uses
  %i.ajd = icmp sgt i32 %.pr.i, 0
  br i1 %i.ajd, label %.lr.ph.i64.i, label %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit66.i

.lr.ph.i64.i:                                     ; preds = %"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.i"
  %wide.trip.count32.i65.i = zext nneg i32 %.pr.i to i64
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.noexc390, %.lr.ph.i64.i
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i, %.noexc390 ], [ 0, %.lr.ph.i64.i ] ; 2 uses
  %i.aje = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv29.i.i ; 5 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 24 ; 2 uses
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !318
  %i.ajh = fcmp oeq float %i.ajg, 0.000000e+00
  br i1 %i.ajh, label %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit66.i, label %bb.gb

bb.gb:                                            ; preds = %.lr.ph.split.us.i.i
  %i.aji = load i32, ptr %i.aje, align 4, !tbaa !307
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aje, i64 4
  %i.ajk = load i8, ptr %i.ajj, align 4, !tbaa !310, !range !256, !noundef !257
  %i.ajl = trunc nuw i8 %i.ajk to i1
  %i.ajm = invoke noundef ptr @_Z20booleanValueToStringb(i1 noundef zeroext %i.ajl)
          to label %.noexc390 unwind label %.loopexit.split-lp.loopexit

.noexc390:                                        ; preds = %bb.gb
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aje, i64 8
  %i.ajo = load <4 x float>, ptr %i.ajn, align 4, !tbaa !101
  %i.ajp = fpext <4 x float> %i.ajo to <4 x double> ; 4 uses
  %i.ajq = load float, ptr %i.ajf, align 4, !tbaa !318
  %i.ajr = fpext float %i.ajq to double
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.aje, i64 28
  %i.ajt = load <2 x float>, ptr %i.ajs, align 4, !tbaa !101
  %i.aju = fpext <2 x float> %i.ajt to <2 x double> ; 2 uses
  %i.ajv = extractelement <4 x double> %i.ajp, i64 0
  %i.ajw = extractelement <4 x double> %i.ajp, i64 1
  %i.ajx = extractelement <4 x double> %i.ajp, i64 2
  %i.ajy = extractelement <4 x double> %i.ajp, i64 3
  %i.ajz = extractelement <2 x double> %i.aju, i64 0
  %i.aka = extractelement <2 x double> %i.aju, i64 1
  %i.akb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.97, i32 noundef %i.aji, ptr noundef %i.ajm, double noundef %i.ajv, double noundef %i.ajw, double noundef %i.ajx, double noundef %i.ajy, double noundef %i.ajr, double noundef %i.ajz, double noundef %i.aka) #22 ; 0 uses
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %indvars.iv.next30.i.i, %wide.trip.count32.i65.i
  br i1 %exitcond33.not.i.i, label %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit66.i, label %.lr.ph.split.us.i.i, !llvm.loop !321

_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit66.i:  ; preds = %.noexc390, %.lr.ph.split.us.i.i, %"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.i", %"_ZSt4sortIP10t_dr_statsZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsE3$_0EvT_SL_T0_.exit.thread.i"
  %i.akc = load i32, ptr %i.jg, align 4, !tbaa !222 ; 12 uses
  %i.akd = icmp sgt i32 %i.akc, 0
  br i1 %i.akd, label %.split113.us.us.preheader.i.i, label %_ZL9dump_dumpP8_IO_FILEiP10t_dr_stats.exit.i

.split113.us.us.preheader.i.i:                    ; preds = %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit66.i
  %wide.trip.count205.i.i = zext nneg i32 %i.akc to i64 ; 13 uses
  %i.ake = uitofp nneg i32 %i.akc to float        ; 3 uses
  %i.akf = add nsw i64 %wide.trip.count205.i.i, -1 ; 3 uses
  %xtraiter1137 = and i64 %wide.trip.count205.i.i, 3 ; 3 uses
  %i.akg = icmp ult i32 %i.akc, 4
  %unroll_iter = and i64 %wide.trip.count205.i.i, 2147483644
  %lcmp.mod1138.not = icmp eq i64 %xtraiter1137, 0
  %lcmp.mod1142 = icmp ne i64 %xtraiter1137, 0
  %xtraiter1143 = and i64 %wide.trip.count205.i.i, 3 ; 3 uses
  %i.akh = icmp ult i32 %i.akc, 4
  %unroll_iter1150 = and i64 %wide.trip.count205.i.i, 2147483644
  %lcmp.mod1145.not = icmp eq i64 %xtraiter1143, 0
  %lcmp.mod1149 = icmp ne i64 %xtraiter1143, 0
  %xtraiter1152 = and i64 %wide.trip.count205.i.i, 3 ; 3 uses
  %i.aki = icmp ult i32 %i.akc, 4
  %unroll_iter1159 = and i64 %wide.trip.count205.i.i, 2147483644
  %lcmp.mod1154.not = icmp eq i64 %xtraiter1152, 0
  %lcmp.mod1158 = icmp ne i64 %xtraiter1152, 0
  %xtraiter1161 = and i64 %wide.trip.count205.i.i, 1
  %i.akj = icmp eq i64 %i.akf, 0
  %unroll_iter1169 = and i64 %wide.trip.count205.i.i, 2147483646
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1161, 0
  %lcmp.mod1168 = trunc i32 %i.akc to i1
  %xtraiter1171 = and i64 %wide.trip.count205.i.i, 1
  %i.akk = icmp eq i64 %i.akf, 0
  %unroll_iter1179 = and i64 %wide.trip.count205.i.i, 2147483646
  %lcmp.mod1173.not = icmp eq i64 %xtraiter1171, 0
  %lcmp.mod1178 = trunc i32 %i.akc to i1
  %xtraiter1181 = and i64 %wide.trip.count205.i.i, 1
  %i.akl = icmp eq i64 %i.akf, 0
  %unroll_iter1189 = and i64 %wide.trip.count205.i.i, 2147483646
  %lcmp.mod1183.not = icmp eq i64 %xtraiter1181, 0
  %lcmp.mod1188 = trunc i32 %i.akc to i1
  br label %.split113.us.us.i.i

.split113.us.us.i.i:                              ; preds = %.split132.us.us.i.i, %.split113.us.us.preheader.i.i
  %i.akm = phi i1 [ true, %.split132.us.us.i.i ], [ false, %.split113.us.us.preheader.i.i ] ; 2 uses
  %i.akn = phi i1 [ false, %.split132.us.us.i.i ], [ true, %.split113.us.us.preheader.i.i ]
  %i.ako = zext i1 %i.akm to i64
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr @_ZZL9dump_dumpP8_IO_FILEiP10t_dr_statsE4core, i64 %i.ako ; 2 uses
  br i1 %i.akm, label %.lr.ph.split.us.us.us.us.split.us.i.i.preheader, label %.lr.ph.split.split.split.us.us.us.i.i.preheader

.lr.ph.split.split.split.us.us.us.i.i.preheader:  ; preds = %.split113.us.us.i.i
  br i1 %i.akg, label %.lr.ph.split.split.split.us.us.us.i.i.epil.preheader, label %.lr.ph.split.split.split.us.us.us.i.i

.lr.ph.split.us.us.us.us.split.us.i.i.preheader:  ; preds = %.split113.us.us.i.i
  br i1 %i.akj, label %.lr.ph.split.us.us.us.us.split.us.i.i.epil.preheader, label %.lr.ph.split.us.us.us.us.split.us.i.i

bb.gc:                                            ; preds = %._crit_edge.split.us.us.us.us.i.i
  %i.akq = uitofp nneg i32 %.147.us.us.us.us.us.i.i.lcssa to float
  %i.akr = fdiv float %.151.us.us.us.us.us.i.i.lcssa, %i.akq
  %i.aks = fpext float %i.akr to double
  %i.akt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.108, double noundef %i.aks) #22 ; 0 uses
  br label %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i

.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i: ; preds = %._crit_edge.split.us.us.us.us.i.i, %bb.gc
  %i.aku = fpext float %.1.us.us.us.us.us.i.i.lcssa to double
  %i.akv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.109, double noundef %i.aku) #22 ; 0 uses
  %i.akw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.110, i32 noundef %.2.us.us.us.us.us.i.i.lcssa, i32 noundef %.147.us.us.us.us.us.i.i.lcssa) #22 ; 0 uses
  br i1 %i.akk, label %.lr.ph.split.us.us.us.us.split.us140.1.i.i.epil.preheader, label %.lr.ph.split.us.us.us.us.split.us140.1.i.i

.lr.ph.split.us.us.us.us.split.us140.1.i.i:       ; preds = %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i, %bb.gf
  %indvars.iv222.1.i.i = phi i64 [ %indvars.iv.next223.1.i.i.1, %bb.gf ], [ 0, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ] ; 3 uses
  %.04667.us.us.us.us.us142.1.i.i = phi i32 [ %.147.us.us.us.us.us153.1.i.i.1, %bb.gf ], [ 0, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ] ; 2 uses
  %.04866.us.us.us.us.us143.1.i.i = phi i32 [ %.2.us.us.us.us.us152.1.i.i.1, %bb.gf ], [ 0, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ] ; 2 uses
  %.05065.us.us.us.us.us144.1.i.i = phi float [ %.151.us.us.us.us.us151.1.i.i.1, %bb.gf ], [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ] ; 2 uses
  %.05964.us.us.us.us.us145.1.i.i = phi float [ %.1.us.us.us.us.us150.1.i.i.1, %bb.gf ], [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ] ; 3 uses
  %niter1180 = phi i64 [ %niter1180.next.1, %bb.gf ], [ 0, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ]
  %i.akx = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv222.1.i.i ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %i.akz = load i8, ptr %i.aky, align 4, !tbaa !310, !range !256, !noundef !257
  %i.ala = trunc nuw i8 %i.akz to i1
  br i1 %i.ala, label %bb.gd, label %.lr.ph.split.us.us.us.us.split.us140.1.i.i.1

bb.gd:                                            ; preds = %.lr.ph.split.us.us.us.us.split.us140.1.i.i
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akx, i64 28
  %.0.us.us.us.us.us147.1.i.i = load float, ptr %i.alb, align 4, !tbaa !101 ; 4 uses
  %i.alc = fcmp olt float %.05964.us.us.us.us.us145.1.i.i, %.0.us.us.us.us.us147.1.i.i
  %.sroa.speculated.us.us.us.us.us148.1.i.i = select i1 %i.alc, float %.0.us.us.us.us.us147.1.i.i, float %.05964.us.us.us.us.us145.1.i.i
  %i.ald = fcmp ogt float %.0.us.us.us.us.us147.1.i.i, 0.000000e+00
  %i.ale = zext i1 %i.ald to i32
  %.149.us.us.us.us.us149.1.i.i = add nsw i32 %.04866.us.us.us.us.us143.1.i.i, %i.ale
  %i.alf = fadd float %.05065.us.us.us.us.us144.1.i.i, %.0.us.us.us.us.us147.1.i.i
  %i.alg = add nsw i32 %.04667.us.us.us.us.us142.1.i.i, 1
  br label %.lr.ph.split.us.us.us.us.split.us140.1.i.i.1

.lr.ph.split.us.us.us.us.split.us140.1.i.i.1:     ; preds = %bb.gd, %.lr.ph.split.us.us.us.us.split.us140.1.i.i
  %.1.us.us.us.us.us150.1.i.i = phi float [ %.sroa.speculated.us.us.us.us.us148.1.i.i, %bb.gd ], [ %.05964.us.us.us.us.us145.1.i.i, %.lr.ph.split.us.us.us.us.split.us140.1.i.i ] ; 3 uses
  %.151.us.us.us.us.us151.1.i.i = phi float [ %i.alf, %bb.gd ], [ %.05065.us.us.us.us.us144.1.i.i, %.lr.ph.split.us.us.us.us.split.us140.1.i.i ] ; 2 uses
  %.2.us.us.us.us.us152.1.i.i = phi i32 [ %.149.us.us.us.us.us149.1.i.i, %bb.gd ], [ %.04866.us.us.us.us.us143.1.i.i, %.lr.ph.split.us.us.us.us.split.us140.1.i.i ] ; 2 uses
  %.147.us.us.us.us.us153.1.i.i = phi i32 [ %i.alg, %bb.gd ], [ %.04667.us.us.us.us.us142.1.i.i, %.lr.ph.split.us.us.us.us.split.us140.1.i.i ] ; 2 uses
  %i.alh = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv222.1.i.i ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 40
  %i.alj = load i8, ptr %i.ali, align 4, !tbaa !310, !range !256, !noundef !257
  %i.alk = trunc nuw i8 %i.alj to i1
  br i1 %i.alk, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %.lr.ph.split.us.us.us.us.split.us140.1.i.i.1
  %i.all = getelementptr inbounds nuw i8, ptr %i.alh, i64 64
  %.0.us.us.us.us.us147.1.i.i.1 = load float, ptr %i.all, align 4, !tbaa !101 ; 4 uses
  %i.alm = fcmp olt float %.1.us.us.us.us.us150.1.i.i, %.0.us.us.us.us.us147.1.i.i.1
  %.sroa.speculated.us.us.us.us.us148.1.i.i.1 = select i1 %i.alm, float %.0.us.us.us.us.us147.1.i.i.1, float %.1.us.us.us.us.us150.1.i.i
  %i.aln = fcmp ogt float %.0.us.us.us.us.us147.1.i.i.1, 0.000000e+00
  %i.alo = zext i1 %i.aln to i32
  %.149.us.us.us.us.us149.1.i.i.1 = add nsw i32 %.2.us.us.us.us.us152.1.i.i, %i.alo
  %i.alp = fadd float %.151.us.us.us.us.us151.1.i.i, %.0.us.us.us.us.us147.1.i.i.1
  %i.alq = add nsw i32 %.147.us.us.us.us.us153.1.i.i, 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %.lr.ph.split.us.us.us.us.split.us140.1.i.i.1
  %.1.us.us.us.us.us150.1.i.i.1 = phi float [ %.sroa.speculated.us.us.us.us.us148.1.i.i.1, %bb.ge ], [ %.1.us.us.us.us.us150.1.i.i, %.lr.ph.split.us.us.us.us.split.us140.1.i.i.1 ] ; 3 uses
  %.151.us.us.us.us.us151.1.i.i.1 = phi float [ %i.alp, %bb.ge ], [ %.151.us.us.us.us.us151.1.i.i, %.lr.ph.split.us.us.us.us.split.us140.1.i.i.1 ] ; 3 uses
  %.2.us.us.us.us.us152.1.i.i.1 = phi i32 [ %.149.us.us.us.us.us149.1.i.i.1, %bb.ge ], [ %.2.us.us.us.us.us152.1.i.i, %.lr.ph.split.us.us.us.us.split.us140.1.i.i.1 ] ; 3 uses
  %.147.us.us.us.us.us153.1.i.i.1 = phi i32 [ %i.alq, %bb.ge ], [ %.147.us.us.us.us.us153.1.i.i, %.lr.ph.split.us.us.us.us.split.us140.1.i.i.1 ] ; 3 uses
  %indvars.iv.next223.1.i.i.1 = add nuw nsw i64 %indvars.iv222.1.i.i, 2 ; 2 uses
  %niter1180.next.1 = add nuw i64 %niter1180, 2   ; 2 uses
  %niter1180.ncmp.1 = icmp eq i64 %niter1180.next.1, %unroll_iter1179
  br i1 %niter1180.ncmp.1, label %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa, label %.lr.ph.split.us.us.us.us.split.us140.1.i.i, !llvm.loop !327

._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa:    ; preds = %bb.gf
  br i1 %lcmp.mod1173.not, label %._crit_edge.split.us.us.us.us.1.i.i, label %.lr.ph.split.us.us.us.us.split.us140.1.i.i.epil.preheader

.lr.ph.split.us.us.us.us.split.us140.1.i.i.epil.preheader: ; preds = %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i
  %indvars.iv222.1.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ], [ %indvars.iv.next223.1.i.i.1, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa ]
  %.04667.us.us.us.us.us142.1.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ], [ %.147.us.us.us.us.us153.1.i.i.1, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa ] ; 2 uses
  %.04866.us.us.us.us.us143.1.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ], [ %.2.us.us.us.us.us152.1.i.i.1, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa ] ; 2 uses
  %.05065.us.us.us.us.us144.1.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ], [ %.151.us.us.us.us.us151.1.i.i.1, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa ] ; 2 uses
  %.05964.us.us.us.us.us145.1.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i ], [ %.1.us.us.us.us.us150.1.i.i.1, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1178)
  %i.alr = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv222.1.i.i.epil.init ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 4
  %i.alt = load i8, ptr %i.als, align 4, !tbaa !310, !range !256, !noundef !257
  %i.alu = trunc nuw i8 %i.alt to i1
  br i1 %i.alu, label %bb.gg, label %._crit_edge.split.us.us.us.us.1.i.i

bb.gg:                                            ; preds = %.lr.ph.split.us.us.us.us.split.us140.1.i.i.epil.preheader
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 28
  %.0.us.us.us.us.us147.1.i.i.epil = load float, ptr %i.alv, align 4, !tbaa !101 ; 4 uses
  %i.alw = fcmp olt float %.05964.us.us.us.us.us145.1.i.i.epil.init, %.0.us.us.us.us.us147.1.i.i.epil
  %.sroa.speculated.us.us.us.us.us148.1.i.i.epil = select i1 %i.alw, float %.0.us.us.us.us.us147.1.i.i.epil, float %.05964.us.us.us.us.us145.1.i.i.epil.init
  %i.alx = fcmp ogt float %.0.us.us.us.us.us147.1.i.i.epil, 0.000000e+00
  %i.aly = zext i1 %i.alx to i32
  %.149.us.us.us.us.us149.1.i.i.epil = add nsw i32 %.04866.us.us.us.us.us143.1.i.i.epil.init, %i.aly
  %i.alz = fadd float %.05065.us.us.us.us.us144.1.i.i.epil.init, %.0.us.us.us.us.us147.1.i.i.epil
  %i.ama = add nsw i32 %.04667.us.us.us.us.us142.1.i.i.epil.init, 1
  br label %._crit_edge.split.us.us.us.us.1.i.i

._crit_edge.split.us.us.us.us.1.i.i:              ; preds = %.lr.ph.split.us.us.us.us.split.us140.1.i.i.epil.preheader, %bb.gg, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa
  %.1.us.us.us.us.us150.1.i.i.lcssa = phi float [ %.1.us.us.us.us.us150.1.i.i.1, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa ], [ %.sroa.speculated.us.us.us.us.us148.1.i.i.epil, %bb.gg ], [ %.05964.us.us.us.us.us145.1.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us140.1.i.i.epil.preheader ]
  %.151.us.us.us.us.us151.1.i.i.lcssa = phi float [ %.151.us.us.us.us.us151.1.i.i.1, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa ], [ %i.alz, %bb.gg ], [ %.05065.us.us.us.us.us144.1.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us140.1.i.i.epil.preheader ] ; 2 uses
  %.2.us.us.us.us.us152.1.i.i.lcssa = phi i32 [ %.2.us.us.us.us.us152.1.i.i.1, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa ], [ %.149.us.us.us.us.us149.1.i.i.epil, %bb.gg ], [ %.04866.us.us.us.us.us143.1.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us140.1.i.i.epil.preheader ]
  %.147.us.us.us.us.us153.1.i.i.lcssa = phi i32 [ %.147.us.us.us.us.us153.1.i.i.1, %._crit_edge.split.us.us.us.us.1.i.i.unr-lcssa ], [ %i.ama, %bb.gg ], [ %.04667.us.us.us.us.us142.1.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us140.1.i.i.epil.preheader ] ; 3 uses
  %i.amb = icmp sgt i32 %.147.us.us.us.us.us153.1.i.i.lcssa, 0
  %fputc.us.us.us.1.i.i = call i32 @fputc(i32 10, ptr %i.cf) ; 0 uses
  %i.amc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.105, ptr noundef %i.api) #22 ; 0 uses
  %i.amd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.101) #22 ; 0 uses
  %i.ame = fpext float %.151.us.us.us.us.us151.1.i.i.lcssa to double
  %i.amf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.107, double noundef %i.ame) #22 ; 0 uses
  br i1 %i.amb, label %bb.gh, label %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i

bb.gh:                                            ; preds = %._crit_edge.split.us.us.us.us.1.i.i
  %i.amg = uitofp nneg i32 %.147.us.us.us.us.us153.1.i.i.lcssa to float
  %i.amh = fdiv float %.151.us.us.us.us.us151.1.i.i.lcssa, %i.amg
  %i.ami = fpext float %i.amh to double
  %i.amj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.108, double noundef %i.ami) #22 ; 0 uses
  br label %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i

.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i: ; preds = %bb.gh, %._crit_edge.split.us.us.us.us.1.i.i
  %i.amk = fpext float %.1.us.us.us.us.us150.1.i.i.lcssa to double
  %i.aml = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.109, double noundef %i.amk) #22 ; 0 uses
  %i.amm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.110, i32 noundef %.2.us.us.us.us.us152.1.i.i.lcssa, i32 noundef %.147.us.us.us.us.us153.1.i.i.lcssa) #22 ; 0 uses
  br i1 %i.akl, label %.lr.ph.split.us.us.us.us.split.us162.2.i.i.epil.preheader, label %.lr.ph.split.us.us.us.us.split.us162.2.i.i

.lr.ph.split.us.us.us.us.split.us162.2.i.i:       ; preds = %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i, %bb.gk
  %indvars.iv217.2.i.i = phi i64 [ %indvars.iv.next218.2.i.i.1, %bb.gk ], [ 0, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ] ; 3 uses
  %.04667.us.us.us.us.us164.2.i.i = phi i32 [ %.147.us.us.us.us.us175.2.i.i.1, %bb.gk ], [ 0, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ] ; 2 uses
  %.04866.us.us.us.us.us165.2.i.i = phi i32 [ %.2.us.us.us.us.us174.2.i.i.1, %bb.gk ], [ 0, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ] ; 2 uses
  %.05065.us.us.us.us.us166.2.i.i = phi float [ %.151.us.us.us.us.us173.2.i.i.1, %bb.gk ], [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ] ; 2 uses
  %.05964.us.us.us.us.us167.2.i.i = phi float [ %.1.us.us.us.us.us172.2.i.i.1, %bb.gk ], [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ] ; 3 uses
  %niter1190 = phi i64 [ %niter1190.next.1, %bb.gk ], [ 0, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ]
  %i.amn = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv217.2.i.i ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 4
  %i.amp = load i8, ptr %i.amo, align 4, !tbaa !310, !range !256, !noundef !257
  %i.amq = trunc nuw i8 %i.amp to i1
  br i1 %i.amq, label %bb.gi, label %.lr.ph.split.us.us.us.us.split.us162.2.i.i.1

bb.gi:                                            ; preds = %.lr.ph.split.us.us.us.us.split.us162.2.i.i
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amn, i64 32
  %.0.us.us.us.us.us169.2.i.i = load float, ptr %i.amr, align 4, !tbaa !101 ; 4 uses
  %i.ams = fcmp olt float %.05964.us.us.us.us.us167.2.i.i, %.0.us.us.us.us.us169.2.i.i
  %.sroa.speculated.us.us.us.us.us170.2.i.i = select i1 %i.ams, float %.0.us.us.us.us.us169.2.i.i, float %.05964.us.us.us.us.us167.2.i.i
  %i.amt = fcmp ogt float %.0.us.us.us.us.us169.2.i.i, 0.000000e+00
  %i.amu = zext i1 %i.amt to i32
  %.149.us.us.us.us.us171.2.i.i = add nsw i32 %.04866.us.us.us.us.us165.2.i.i, %i.amu
  %i.amv = fadd float %.05065.us.us.us.us.us166.2.i.i, %.0.us.us.us.us.us169.2.i.i
  %i.amw = add nsw i32 %.04667.us.us.us.us.us164.2.i.i, 1
  br label %.lr.ph.split.us.us.us.us.split.us162.2.i.i.1

.lr.ph.split.us.us.us.us.split.us162.2.i.i.1:     ; preds = %bb.gi, %.lr.ph.split.us.us.us.us.split.us162.2.i.i
  %.1.us.us.us.us.us172.2.i.i = phi float [ %.sroa.speculated.us.us.us.us.us170.2.i.i, %bb.gi ], [ %.05964.us.us.us.us.us167.2.i.i, %.lr.ph.split.us.us.us.us.split.us162.2.i.i ] ; 3 uses
  %.151.us.us.us.us.us173.2.i.i = phi float [ %i.amv, %bb.gi ], [ %.05065.us.us.us.us.us166.2.i.i, %.lr.ph.split.us.us.us.us.split.us162.2.i.i ] ; 2 uses
  %.2.us.us.us.us.us174.2.i.i = phi i32 [ %.149.us.us.us.us.us171.2.i.i, %bb.gi ], [ %.04866.us.us.us.us.us165.2.i.i, %.lr.ph.split.us.us.us.us.split.us162.2.i.i ] ; 2 uses
  %.147.us.us.us.us.us175.2.i.i = phi i32 [ %i.amw, %bb.gi ], [ %.04667.us.us.us.us.us164.2.i.i, %.lr.ph.split.us.us.us.us.split.us162.2.i.i ] ; 2 uses
  %i.amx = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv217.2.i.i ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 40
  %i.amz = load i8, ptr %i.amy, align 4, !tbaa !310, !range !256, !noundef !257
  %i.ana = trunc nuw i8 %i.amz to i1
  br i1 %i.ana, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.lr.ph.split.us.us.us.us.split.us162.2.i.i.1
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 68
  %.0.us.us.us.us.us169.2.i.i.1 = load float, ptr %i.anb, align 4, !tbaa !101 ; 4 uses
  %i.anc = fcmp olt float %.1.us.us.us.us.us172.2.i.i, %.0.us.us.us.us.us169.2.i.i.1
  %.sroa.speculated.us.us.us.us.us170.2.i.i.1 = select i1 %i.anc, float %.0.us.us.us.us.us169.2.i.i.1, float %.1.us.us.us.us.us172.2.i.i
  %i.and = fcmp ogt float %.0.us.us.us.us.us169.2.i.i.1, 0.000000e+00
  %i.ane = zext i1 %i.and to i32
  %.149.us.us.us.us.us171.2.i.i.1 = add nsw i32 %.2.us.us.us.us.us174.2.i.i, %i.ane
  %i.anf = fadd float %.151.us.us.us.us.us173.2.i.i, %.0.us.us.us.us.us169.2.i.i.1
  %i.ang = add nsw i32 %.147.us.us.us.us.us175.2.i.i, 1
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.lr.ph.split.us.us.us.us.split.us162.2.i.i.1
  %.1.us.us.us.us.us172.2.i.i.1 = phi float [ %.sroa.speculated.us.us.us.us.us170.2.i.i.1, %bb.gj ], [ %.1.us.us.us.us.us172.2.i.i, %.lr.ph.split.us.us.us.us.split.us162.2.i.i.1 ] ; 3 uses
  %.151.us.us.us.us.us173.2.i.i.1 = phi float [ %i.anf, %bb.gj ], [ %.151.us.us.us.us.us173.2.i.i, %.lr.ph.split.us.us.us.us.split.us162.2.i.i.1 ] ; 3 uses
  %.2.us.us.us.us.us174.2.i.i.1 = phi i32 [ %.149.us.us.us.us.us171.2.i.i.1, %bb.gj ], [ %.2.us.us.us.us.us174.2.i.i, %.lr.ph.split.us.us.us.us.split.us162.2.i.i.1 ] ; 3 uses
  %.147.us.us.us.us.us175.2.i.i.1 = phi i32 [ %i.ang, %bb.gj ], [ %.147.us.us.us.us.us175.2.i.i, %.lr.ph.split.us.us.us.us.split.us162.2.i.i.1 ] ; 3 uses
  %indvars.iv.next218.2.i.i.1 = add nuw nsw i64 %indvars.iv217.2.i.i, 2 ; 2 uses
  %niter1190.next.1 = add nuw i64 %niter1190, 2   ; 2 uses
  %niter1190.ncmp.1 = icmp eq i64 %niter1190.next.1, %unroll_iter1189
  br i1 %niter1190.ncmp.1, label %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa, label %.lr.ph.split.us.us.us.us.split.us162.2.i.i, !llvm.loop !327

._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa:    ; preds = %bb.gk
  br i1 %lcmp.mod1183.not, label %._crit_edge.split.us.us.us.us.2.i.i, label %.lr.ph.split.us.us.us.us.split.us162.2.i.i.epil.preheader

.lr.ph.split.us.us.us.us.split.us162.2.i.i.epil.preheader: ; preds = %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i
  %indvars.iv217.2.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ], [ %indvars.iv.next218.2.i.i.1, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa ]
  %.04667.us.us.us.us.us164.2.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ], [ %.147.us.us.us.us.us175.2.i.i.1, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa ] ; 2 uses
  %.04866.us.us.us.us.us165.2.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ], [ %.2.us.us.us.us.us174.2.i.i.1, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa ] ; 2 uses
  %.05065.us.us.us.us.us166.2.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ], [ %.151.us.us.us.us.us173.2.i.i.1, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa ] ; 2 uses
  %.05964.us.us.us.us.us167.2.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us162.preheader.2.i.i ], [ %.1.us.us.us.us.us172.2.i.i.1, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1188)
  %i.anh = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv217.2.i.i.epil.init ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 4
  %i.anj = load i8, ptr %i.ani, align 4, !tbaa !310, !range !256, !noundef !257
  %i.ank = trunc nuw i8 %i.anj to i1
  br i1 %i.ank, label %bb.gl, label %._crit_edge.split.us.us.us.us.2.i.i

bb.gl:                                            ; preds = %.lr.ph.split.us.us.us.us.split.us162.2.i.i.epil.preheader
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anh, i64 32
  %.0.us.us.us.us.us169.2.i.i.epil = load float, ptr %i.anl, align 4, !tbaa !101 ; 4 uses
  %i.anm = fcmp olt float %.05964.us.us.us.us.us167.2.i.i.epil.init, %.0.us.us.us.us.us169.2.i.i.epil
  %.sroa.speculated.us.us.us.us.us170.2.i.i.epil = select i1 %i.anm, float %.0.us.us.us.us.us169.2.i.i.epil, float %.05964.us.us.us.us.us167.2.i.i.epil.init
  %i.ann = fcmp ogt float %.0.us.us.us.us.us169.2.i.i.epil, 0.000000e+00
  %i.ano = zext i1 %i.ann to i32
  %.149.us.us.us.us.us171.2.i.i.epil = add nsw i32 %.04866.us.us.us.us.us165.2.i.i.epil.init, %i.ano
  %i.anp = fadd float %.05065.us.us.us.us.us166.2.i.i.epil.init, %.0.us.us.us.us.us169.2.i.i.epil
  %i.anq = add nsw i32 %.04667.us.us.us.us.us164.2.i.i.epil.init, 1
  br label %._crit_edge.split.us.us.us.us.2.i.i

._crit_edge.split.us.us.us.us.2.i.i:              ; preds = %.lr.ph.split.us.us.us.us.split.us162.2.i.i.epil.preheader, %bb.gl, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa
  %.1.us.us.us.us.us172.2.i.i.lcssa = phi float [ %.1.us.us.us.us.us172.2.i.i.1, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa ], [ %.sroa.speculated.us.us.us.us.us170.2.i.i.epil, %bb.gl ], [ %.05964.us.us.us.us.us167.2.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us162.2.i.i.epil.preheader ]
  %.151.us.us.us.us.us173.2.i.i.lcssa = phi float [ %.151.us.us.us.us.us173.2.i.i.1, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa ], [ %i.anp, %bb.gl ], [ %.05065.us.us.us.us.us166.2.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us162.2.i.i.epil.preheader ] ; 2 uses
  %.2.us.us.us.us.us174.2.i.i.lcssa = phi i32 [ %.2.us.us.us.us.us174.2.i.i.1, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa ], [ %.149.us.us.us.us.us171.2.i.i.epil, %bb.gl ], [ %.04866.us.us.us.us.us165.2.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us162.2.i.i.epil.preheader ]
  %.147.us.us.us.us.us175.2.i.i.lcssa = phi i32 [ %.147.us.us.us.us.us175.2.i.i.1, %._crit_edge.split.us.us.us.us.2.i.i.unr-lcssa ], [ %i.anq, %bb.gl ], [ %.04667.us.us.us.us.us164.2.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us162.2.i.i.epil.preheader ] ; 3 uses
  %i.anr = icmp sgt i32 %.147.us.us.us.us.us175.2.i.i.lcssa, 0
  %fputc.us.us.us.2.i.i = call i32 @fputc(i32 10, ptr %i.cf) ; 0 uses
  %i.ans = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.105, ptr noundef %i.api) #22 ; 0 uses
  %i.ant = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.102) #22 ; 0 uses
  %i.anu = fpext float %.151.us.us.us.us.us173.2.i.i.lcssa to double
  %i.anv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.107, double noundef %i.anu) #22 ; 0 uses
  br i1 %i.anr, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %._crit_edge.split.us.us.us.us.2.i.i
  %i.anw = uitofp nneg i32 %.147.us.us.us.us.us175.2.i.i.lcssa to float
  %i.anx = fdiv float %.151.us.us.us.us.us173.2.i.i.lcssa, %i.anw
  %i.any = fpext float %i.anx to double
  %i.anz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.108, double noundef %i.any) #22 ; 0 uses
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %._crit_edge.split.us.us.us.us.2.i.i
  %i.aoa = fpext float %.1.us.us.us.us.us172.2.i.i.lcssa to double
  %i.aob = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.109, double noundef %i.aoa) #22 ; 0 uses
  %i.aoc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.110, i32 noundef %.2.us.us.us.us.us174.2.i.i.lcssa, i32 noundef %.147.us.us.us.us.us175.2.i.i.lcssa) #22 ; 0 uses
  br label %.split132.us.us.i.i

.lr.ph.split.us.us.us.us.split.us.i.i:            ; preds = %.lr.ph.split.us.us.us.us.split.us.i.i.preheader, %bb.gq
  %indvars.iv227.i.i = phi i64 [ %indvars.iv.next228.i.i.1, %bb.gq ], [ 0, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ] ; 3 uses
  %.04667.us.us.us.us.us.i.i = phi i32 [ %.147.us.us.us.us.us.i.i.1, %bb.gq ], [ 0, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ] ; 2 uses
  %.04866.us.us.us.us.us.i.i = phi i32 [ %.2.us.us.us.us.us.i.i.1, %bb.gq ], [ 0, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ] ; 2 uses
  %.05065.us.us.us.us.us.i.i = phi float [ %.151.us.us.us.us.us.i.i.1, %bb.gq ], [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ] ; 2 uses
  %.05964.us.us.us.us.us.i.i = phi float [ %.1.us.us.us.us.us.i.i.1, %bb.gq ], [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ] ; 3 uses
  %niter1170 = phi i64 [ %niter1170.next.1, %bb.gq ], [ 0, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ]
  %i.aod = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv227.i.i ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 4
  %i.aof = load i8, ptr %i.aoe, align 4, !tbaa !310, !range !256, !noundef !257
  %i.aog = trunc nuw i8 %i.aof to i1
  br i1 %i.aog, label %bb.go, label %.lr.ph.split.us.us.us.us.split.us.i.i.1

bb.go:                                            ; preds = %.lr.ph.split.us.us.us.us.split.us.i.i
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aod, i64 24
  %.0.us.us.us.us.us.i.i = load float, ptr %i.aoh, align 4, !tbaa !101 ; 4 uses
  %i.aoi = fcmp olt float %.05964.us.us.us.us.us.i.i, %.0.us.us.us.us.us.i.i
  %.sroa.speculated.us.us.us.us.us.i.i = select i1 %i.aoi, float %.0.us.us.us.us.us.i.i, float %.05964.us.us.us.us.us.i.i
  %i.aoj = fcmp ogt float %.0.us.us.us.us.us.i.i, 0.000000e+00
  %i.aok = zext i1 %i.aoj to i32
  %.149.us.us.us.us.us.i.i = add nsw i32 %.04866.us.us.us.us.us.i.i, %i.aok
  %i.aol = fadd float %.05065.us.us.us.us.us.i.i, %.0.us.us.us.us.us.i.i
  %i.aom = add nsw i32 %.04667.us.us.us.us.us.i.i, 1
  br label %.lr.ph.split.us.us.us.us.split.us.i.i.1

.lr.ph.split.us.us.us.us.split.us.i.i.1:          ; preds = %bb.go, %.lr.ph.split.us.us.us.us.split.us.i.i
  %.1.us.us.us.us.us.i.i = phi float [ %.sroa.speculated.us.us.us.us.us.i.i, %bb.go ], [ %.05964.us.us.us.us.us.i.i, %.lr.ph.split.us.us.us.us.split.us.i.i ] ; 3 uses
  %.151.us.us.us.us.us.i.i = phi float [ %i.aol, %bb.go ], [ %.05065.us.us.us.us.us.i.i, %.lr.ph.split.us.us.us.us.split.us.i.i ] ; 2 uses
  %.2.us.us.us.us.us.i.i = phi i32 [ %.149.us.us.us.us.us.i.i, %bb.go ], [ %.04866.us.us.us.us.us.i.i, %.lr.ph.split.us.us.us.us.split.us.i.i ] ; 2 uses
  %.147.us.us.us.us.us.i.i = phi i32 [ %i.aom, %bb.go ], [ %.04667.us.us.us.us.us.i.i, %.lr.ph.split.us.us.us.us.split.us.i.i ] ; 2 uses
  %i.aon = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv227.i.i ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 40
  %i.aop = load i8, ptr %i.aoo, align 4, !tbaa !310, !range !256, !noundef !257
  %i.aoq = trunc nuw i8 %i.aop to i1
  br i1 %i.aoq, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %.lr.ph.split.us.us.us.us.split.us.i.i.1
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aon, i64 60
  %.0.us.us.us.us.us.i.i.1 = load float, ptr %i.aor, align 4, !tbaa !101 ; 4 uses
  %i.aos = fcmp olt float %.1.us.us.us.us.us.i.i, %.0.us.us.us.us.us.i.i.1
  %.sroa.speculated.us.us.us.us.us.i.i.1 = select i1 %i.aos, float %.0.us.us.us.us.us.i.i.1, float %.1.us.us.us.us.us.i.i
  %i.aot = fcmp ogt float %.0.us.us.us.us.us.i.i.1, 0.000000e+00
  %i.aou = zext i1 %i.aot to i32
  %.149.us.us.us.us.us.i.i.1 = add nsw i32 %.2.us.us.us.us.us.i.i, %i.aou
  %i.aov = fadd float %.151.us.us.us.us.us.i.i, %.0.us.us.us.us.us.i.i.1
  %i.aow = add nsw i32 %.147.us.us.us.us.us.i.i, 1
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.lr.ph.split.us.us.us.us.split.us.i.i.1
  %.1.us.us.us.us.us.i.i.1 = phi float [ %.sroa.speculated.us.us.us.us.us.i.i.1, %bb.gp ], [ %.1.us.us.us.us.us.i.i, %.lr.ph.split.us.us.us.us.split.us.i.i.1 ] ; 3 uses
  %.151.us.us.us.us.us.i.i.1 = phi float [ %i.aov, %bb.gp ], [ %.151.us.us.us.us.us.i.i, %.lr.ph.split.us.us.us.us.split.us.i.i.1 ] ; 3 uses
  %.2.us.us.us.us.us.i.i.1 = phi i32 [ %.149.us.us.us.us.us.i.i.1, %bb.gp ], [ %.2.us.us.us.us.us.i.i, %.lr.ph.split.us.us.us.us.split.us.i.i.1 ] ; 3 uses
  %.147.us.us.us.us.us.i.i.1 = phi i32 [ %i.aow, %bb.gp ], [ %.147.us.us.us.us.us.i.i, %.lr.ph.split.us.us.us.us.split.us.i.i.1 ] ; 3 uses
  %indvars.iv.next228.i.i.1 = add nuw nsw i64 %indvars.iv227.i.i, 2 ; 2 uses
  %niter1170.next.1 = add nuw i64 %niter1170, 2   ; 2 uses
  %niter1170.ncmp.1 = icmp eq i64 %niter1170.next.1, %unroll_iter1169
  br i1 %niter1170.ncmp.1, label %._crit_edge.split.us.us.us.us.i.i.unr-lcssa, label %.lr.ph.split.us.us.us.us.split.us.i.i, !llvm.loop !327

._crit_edge.split.us.us.us.us.i.i.unr-lcssa:      ; preds = %bb.gq
  br i1 %lcmp.mod1163.not, label %._crit_edge.split.us.us.us.us.i.i, label %.lr.ph.split.us.us.us.us.split.us.i.i.epil.preheader

.lr.ph.split.us.us.us.us.split.us.i.i.epil.preheader: ; preds = %._crit_edge.split.us.us.us.us.i.i.unr-lcssa, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader
  %indvars.iv227.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ], [ %indvars.iv.next228.i.i.1, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa ]
  %.04667.us.us.us.us.us.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ], [ %.147.us.us.us.us.us.i.i.1, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa ] ; 2 uses
  %.04866.us.us.us.us.us.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ], [ %.2.us.us.us.us.us.i.i.1, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa ] ; 2 uses
  %.05065.us.us.us.us.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ], [ %.151.us.us.us.us.us.i.i.1, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa ] ; 2 uses
  %.05964.us.us.us.us.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us.us.us.us.split.us.i.i.preheader ], [ %.1.us.us.us.us.us.i.i.1, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1168)
  %i.aox = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv227.i.i.epil.init ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 4
  %i.aoz = load i8, ptr %i.aoy, align 4, !tbaa !310, !range !256, !noundef !257
  %i.apa = trunc nuw i8 %i.aoz to i1
  br i1 %i.apa, label %bb.gr, label %._crit_edge.split.us.us.us.us.i.i

bb.gr:                                            ; preds = %.lr.ph.split.us.us.us.us.split.us.i.i.epil.preheader
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aox, i64 24
  %.0.us.us.us.us.us.i.i.epil = load float, ptr %i.apb, align 4, !tbaa !101 ; 4 uses
  %i.apc = fcmp olt float %.05964.us.us.us.us.us.i.i.epil.init, %.0.us.us.us.us.us.i.i.epil
  %.sroa.speculated.us.us.us.us.us.i.i.epil = select i1 %i.apc, float %.0.us.us.us.us.us.i.i.epil, float %.05964.us.us.us.us.us.i.i.epil.init
  %i.apd = fcmp ogt float %.0.us.us.us.us.us.i.i.epil, 0.000000e+00
  %i.ape = zext i1 %i.apd to i32
  %.149.us.us.us.us.us.i.i.epil = add nsw i32 %.04866.us.us.us.us.us.i.i.epil.init, %i.ape
  %i.apf = fadd float %.05065.us.us.us.us.us.i.i.epil.init, %.0.us.us.us.us.us.i.i.epil
  %i.apg = add nsw i32 %.04667.us.us.us.us.us.i.i.epil.init, 1
  br label %._crit_edge.split.us.us.us.us.i.i

._crit_edge.split.us.us.us.us.i.i:                ; preds = %.lr.ph.split.us.us.us.us.split.us.i.i.epil.preheader, %bb.gr, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa
  %.1.us.us.us.us.us.i.i.lcssa = phi float [ %.1.us.us.us.us.us.i.i.1, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa ], [ %.sroa.speculated.us.us.us.us.us.i.i.epil, %bb.gr ], [ %.05964.us.us.us.us.us.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us.i.i.epil.preheader ]
  %.151.us.us.us.us.us.i.i.lcssa = phi float [ %.151.us.us.us.us.us.i.i.1, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa ], [ %i.apf, %bb.gr ], [ %.05065.us.us.us.us.us.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us.i.i.epil.preheader ] ; 2 uses
  %.2.us.us.us.us.us.i.i.lcssa = phi i32 [ %.2.us.us.us.us.us.i.i.1, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa ], [ %.149.us.us.us.us.us.i.i.epil, %bb.gr ], [ %.04866.us.us.us.us.us.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us.i.i.epil.preheader ]
  %.147.us.us.us.us.us.i.i.lcssa = phi i32 [ %.147.us.us.us.us.us.i.i.1, %._crit_edge.split.us.us.us.us.i.i.unr-lcssa ], [ %i.apg, %bb.gr ], [ %.04667.us.us.us.us.us.i.i.epil.init, %.lr.ph.split.us.us.us.us.split.us.i.i.epil.preheader ] ; 3 uses
  %i.aph = icmp sgt i32 %.147.us.us.us.us.us.i.i.lcssa, 0
  %fputc.us.us.us.i.i = call i32 @fputc(i32 10, ptr %i.cf) ; 0 uses
  %i.api = load ptr, ptr %i.akp, align 8, !tbaa !25 ; 3 uses
  %i.apj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.105, ptr noundef %i.api) #22 ; 0 uses
  %i.apk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.100) #22 ; 0 uses
  %i.apl = fpext float %.151.us.us.us.us.us.i.i.lcssa to double
  %i.apm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.107, double noundef %i.apl) #22 ; 0 uses
  br i1 %i.aph, label %bb.gc, label %.lr.ph.split.us.us.us.us.split.us140.preheader.1.i.i

.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa: ; preds = %.lr.ph.split.split.split.us.us.us.i.i
  br i1 %lcmp.mod1138.not, label %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i, label %.lr.ph.split.split.split.us.us.us.i.i.epil.preheader

.lr.ph.split.split.split.us.us.us.i.i.epil.preheader: ; preds = %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa, %.lr.ph.split.split.split.us.us.us.i.i.preheader
  %indvars.iv200.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.us.us.us.i.i.preheader ], [ %indvars.iv.next201.i.i.3, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa ]
  %.04866.us78.us.us.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.split.split.us.us.us.i.i.preheader ], [ %.149.us84.us.us.i.i.3, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa ]
  %.05065.us79.us.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.split.split.us.us.us.i.i.preheader ], [ %i.aud, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa ]
  %.05964.us80.us.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.split.split.us.us.us.i.i.preheader ], [ %.sroa.speculated.us83.us.us.i.i.3, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1142)
  br label %.lr.ph.split.split.split.us.us.us.i.i.epil

.lr.ph.split.split.split.us.us.us.i.i.epil:       ; preds = %.lr.ph.split.split.split.us.us.us.i.i.epil, %.lr.ph.split.split.split.us.us.us.i.i.epil.preheader
  %indvars.iv200.i.i.epil = phi i64 [ %indvars.iv.next201.i.i.epil, %.lr.ph.split.split.split.us.us.us.i.i.epil ], [ %indvars.iv200.i.i.epil.init, %.lr.ph.split.split.split.us.us.us.i.i.epil.preheader ] ; 2 uses
  %.04866.us78.us.us.i.i.epil = phi i32 [ %.149.us84.us.us.i.i.epil, %.lr.ph.split.split.split.us.us.us.i.i.epil ], [ %.04866.us78.us.us.i.i.epil.init, %.lr.ph.split.split.split.us.us.us.i.i.epil.preheader ]
  %.05065.us79.us.us.i.i.epil = phi float [ %i.aps, %.lr.ph.split.split.split.us.us.us.i.i.epil ], [ %.05065.us79.us.us.i.i.epil.init, %.lr.ph.split.split.split.us.us.us.i.i.epil.preheader ]
  %.05964.us80.us.us.i.i.epil = phi float [ %.sroa.speculated.us83.us.us.i.i.epil, %.lr.ph.split.split.split.us.us.us.i.i.epil ], [ %.05964.us80.us.us.i.i.epil.init, %.lr.ph.split.split.split.us.us.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.split.split.us.us.us.i.i.epil ], [ 0, %.lr.ph.split.split.split.us.us.us.i.i.epil.preheader ]
  %i.apn = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv200.i.i.epil
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 24
  %.0.us82.us.us.i.i.epil = load float, ptr %i.apo, align 4, !tbaa !101 ; 4 uses
  %i.app = fcmp olt float %.05964.us80.us.us.i.i.epil, %.0.us82.us.us.i.i.epil
  %.sroa.speculated.us83.us.us.i.i.epil = select i1 %i.app, float %.0.us82.us.us.i.i.epil, float %.05964.us80.us.us.i.i.epil ; 2 uses
  %i.apq = fcmp ogt float %.0.us82.us.us.i.i.epil, 0.000000e+00
  %i.apr = zext i1 %i.apq to i32
  %.149.us84.us.us.i.i.epil = add nuw nsw i32 %.04866.us78.us.us.i.i.epil, %i.apr ; 2 uses
  %i.aps = fadd float %.05065.us79.us.us.i.i.epil, %.0.us82.us.us.i.i.epil ; 2 uses
  %indvars.iv.next201.i.i.epil = add nuw nsw i64 %indvars.iv200.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1137
  br i1 %epil.iter.cmp.not, label %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i, label %.lr.ph.split.split.split.us.us.us.i.i.epil, !llvm.loop !328

.lr.ph.split.split.split.us93.us.us.preheader.1.i.i: ; preds = %.lr.ph.split.split.split.us.us.us.i.i.epil, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa
  %.sroa.speculated.us83.us.us.i.i.lcssa = phi float [ %.sroa.speculated.us83.us.us.i.i.3, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa ], [ %.sroa.speculated.us83.us.us.i.i.epil, %.lr.ph.split.split.split.us.us.us.i.i.epil ]
  %.149.us84.us.us.i.i.lcssa = phi i32 [ %.149.us84.us.us.i.i.3, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa ], [ %.149.us84.us.us.i.i.epil, %.lr.ph.split.split.split.us.us.us.i.i.epil ]
  %.lcssa1128 = phi float [ %i.aud, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa ], [ %i.aps, %.lr.ph.split.split.split.us.us.us.i.i.epil ] ; 2 uses
  %fputc.us.us.i.i = call i32 @fputc(i32 10, ptr %i.cf) ; 0 uses
  %i.apt = load ptr, ptr %i.akp, align 8, !tbaa !25 ; 3 uses
  %i.apu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.105, ptr noundef %i.apt) #22 ; 0 uses
  %i.apv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.100) #22 ; 0 uses
  %i.apw = fpext float %.lcssa1128 to double
  %i.apx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.107, double noundef %i.apw) #22 ; 0 uses
  %i.apy = fdiv float %.lcssa1128, %i.ake
  %i.apz = fpext float %i.apy to double
  %i.aqa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.108, double noundef %i.apz) #22 ; 0 uses
  %i.aqb = fpext float %.sroa.speculated.us83.us.us.i.i.lcssa to double
  %i.aqc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.109, double noundef %i.aqb) #22 ; 0 uses
  %i.aqd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.110, i32 noundef %.149.us84.us.us.i.i.lcssa, i32 noundef %i.akc) #22 ; 0 uses
  br i1 %i.akh, label %.lr.ph.split.split.split.us93.us.us.1.i.i.epil.preheader, label %.lr.ph.split.split.split.us93.us.us.1.i.i

.lr.ph.split.split.split.us93.us.us.1.i.i:        ; preds = %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i, %.lr.ph.split.split.split.us93.us.us.1.i.i
  %indvars.iv.1.i.i = phi i64 [ %indvars.iv.next.1.i.i.3, %.lr.ph.split.split.split.us93.us.us.1.i.i ], [ 0, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i ] ; 5 uses
  %.04866.us96.us.us.1.i.i = phi i32 [ %.149.us102.us.us.1.i.i.3, %.lr.ph.split.split.split.us93.us.us.1.i.i ], [ 0, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i ]
  %.05065.us97.us.us.1.i.i = phi float [ %i.arb, %.lr.ph.split.split.split.us93.us.us.1.i.i ], [ 0.000000e+00, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i ]
  %.05964.us98.us.us.1.i.i = phi float [ %.sroa.speculated.us101.us.us.1.i.i.3, %.lr.ph.split.split.split.us93.us.us.1.i.i ], [ 0.000000e+00, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i ] ; 2 uses
  %niter1151 = phi i64 [ %niter1151.next.3, %.lr.ph.split.split.split.us93.us.us.1.i.i ], [ 0, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i ]
  %i.aqe = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv.1.i.i
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 28
  %.0.us100.us.us.1.i.i = load float, ptr %i.aqf, align 4, !tbaa !101 ; 4 uses
  %i.aqg = fcmp olt float %.05964.us98.us.us.1.i.i, %.0.us100.us.us.1.i.i
  %.sroa.speculated.us101.us.us.1.i.i = select i1 %i.aqg, float %.0.us100.us.us.1.i.i, float %.05964.us98.us.us.1.i.i ; 2 uses
  %i.aqh = fcmp ogt float %.0.us100.us.us.1.i.i, 0.000000e+00
  %i.aqi = zext i1 %i.aqh to i32
  %.149.us102.us.us.1.i.i = add nuw nsw i32 %.04866.us96.us.us.1.i.i, %i.aqi
  %i.aqj = fadd float %.05065.us97.us.us.1.i.i, %.0.us100.us.us.1.i.i
  %i.aqk = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv.1.i.i
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 64
  %.0.us100.us.us.1.i.i.1 = load float, ptr %i.aql, align 4, !tbaa !101 ; 4 uses
  %i.aqm = fcmp olt float %.sroa.speculated.us101.us.us.1.i.i, %.0.us100.us.us.1.i.i.1
  %.sroa.speculated.us101.us.us.1.i.i.1 = select i1 %i.aqm, float %.0.us100.us.us.1.i.i.1, float %.sroa.speculated.us101.us.us.1.i.i ; 2 uses
  %i.aqn = fcmp ogt float %.0.us100.us.us.1.i.i.1, 0.000000e+00
  %i.aqo = zext i1 %i.aqn to i32
  %.149.us102.us.us.1.i.i.1 = add nuw nsw i32 %.149.us102.us.us.1.i.i, %i.aqo
  %i.aqp = fadd float %i.aqj, %.0.us100.us.us.1.i.i.1
  %i.aqq = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv.1.i.i
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 100
  %.0.us100.us.us.1.i.i.2 = load float, ptr %i.aqr, align 4, !tbaa !101 ; 4 uses
  %i.aqs = fcmp olt float %.sroa.speculated.us101.us.us.1.i.i.1, %.0.us100.us.us.1.i.i.2
  %.sroa.speculated.us101.us.us.1.i.i.2 = select i1 %i.aqs, float %.0.us100.us.us.1.i.i.2, float %.sroa.speculated.us101.us.us.1.i.i.1 ; 2 uses
  %i.aqt = fcmp ogt float %.0.us100.us.us.1.i.i.2, 0.000000e+00
  %i.aqu = zext i1 %i.aqt to i32
  %.149.us102.us.us.1.i.i.2 = add nuw nsw i32 %.149.us102.us.us.1.i.i.1, %i.aqu
  %i.aqv = fadd float %i.aqp, %.0.us100.us.us.1.i.i.2
  %i.aqw = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv.1.i.i
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 136
  %.0.us100.us.us.1.i.i.3 = load float, ptr %i.aqx, align 4, !tbaa !101 ; 4 uses
  %i.aqy = fcmp olt float %.sroa.speculated.us101.us.us.1.i.i.2, %.0.us100.us.us.1.i.i.3
  %.sroa.speculated.us101.us.us.1.i.i.3 = select i1 %i.aqy, float %.0.us100.us.us.1.i.i.3, float %.sroa.speculated.us101.us.us.1.i.i.2 ; 3 uses
  %i.aqz = fcmp ogt float %.0.us100.us.us.1.i.i.3, 0.000000e+00
  %i.ara = zext i1 %i.aqz to i32
  %.149.us102.us.us.1.i.i.3 = add nuw nsw i32 %.149.us102.us.us.1.i.i.2, %i.ara ; 3 uses
  %i.arb = fadd float %i.aqv, %.0.us100.us.us.1.i.i.3 ; 3 uses
  %indvars.iv.next.1.i.i.3 = add nuw nsw i64 %indvars.iv.1.i.i, 4 ; 2 uses
  %niter1151.next.3 = add nuw i64 %niter1151, 4   ; 2 uses
  %niter1151.ncmp.3 = icmp eq i64 %niter1151.next.3, %unroll_iter1150
  br i1 %niter1151.ncmp.3, label %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa, label %.lr.ph.split.split.split.us93.us.us.1.i.i, !llvm.loop !327

.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa: ; preds = %.lr.ph.split.split.split.us93.us.us.1.i.i
  br i1 %lcmp.mod1145.not, label %.lr.ph.split.split.split.us128.us.preheader.2.i.i, label %.lr.ph.split.split.split.us93.us.us.1.i.i.epil.preheader

.lr.ph.split.split.split.us93.us.us.1.i.i.epil.preheader: ; preds = %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i
  %indvars.iv.1.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i ], [ %indvars.iv.next.1.i.i.3, %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa ]
  %.04866.us96.us.us.1.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i ], [ %.149.us102.us.us.1.i.i.3, %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa ]
  %.05065.us97.us.us.1.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i ], [ %i.arb, %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa ]
  %.05964.us98.us.us.1.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i ], [ %.sroa.speculated.us101.us.us.1.i.i.3, %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1149)
  br label %.lr.ph.split.split.split.us93.us.us.1.i.i.epil

.lr.ph.split.split.split.us93.us.us.1.i.i.epil:   ; preds = %.lr.ph.split.split.split.us93.us.us.1.i.i.epil, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil.preheader
  %indvars.iv.1.i.i.epil = phi i64 [ %indvars.iv.1.i.i.epil.init, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil.preheader ], [ %indvars.iv.next.1.i.i.epil, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil ] ; 2 uses
  %.04866.us96.us.us.1.i.i.epil = phi i32 [ %.04866.us96.us.us.1.i.i.epil.init, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil.preheader ], [ %.149.us102.us.us.1.i.i.epil, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil ]
  %.05065.us97.us.us.1.i.i.epil = phi float [ %.05065.us97.us.us.1.i.i.epil.init, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil.preheader ], [ %i.arh, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil ]
  %.05964.us98.us.us.1.i.i.epil = phi float [ %.05964.us98.us.us.1.i.i.epil.init, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil.preheader ], [ %.sroa.speculated.us101.us.us.1.i.i.epil, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil ] ; 2 uses
  %epil.iter1144 = phi i64 [ 0, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil.preheader ], [ %epil.iter1144.next, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil ]
  %i.arc = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv.1.i.i.epil
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 28
  %.0.us100.us.us.1.i.i.epil = load float, ptr %i.ard, align 4, !tbaa !101 ; 4 uses
  %i.are = fcmp olt float %.05964.us98.us.us.1.i.i.epil, %.0.us100.us.us.1.i.i.epil
  %.sroa.speculated.us101.us.us.1.i.i.epil = select i1 %i.are, float %.0.us100.us.us.1.i.i.epil, float %.05964.us98.us.us.1.i.i.epil ; 2 uses
  %i.arf = fcmp ogt float %.0.us100.us.us.1.i.i.epil, 0.000000e+00
  %i.arg = zext i1 %i.arf to i32
  %.149.us102.us.us.1.i.i.epil = add nuw nsw i32 %.04866.us96.us.us.1.i.i.epil, %i.arg ; 2 uses
  %i.arh = fadd float %.05065.us97.us.us.1.i.i.epil, %.0.us100.us.us.1.i.i.epil ; 2 uses
  %indvars.iv.next.1.i.i.epil = add nuw nsw i64 %indvars.iv.1.i.i.epil, 1
  %epil.iter1144.next = add i64 %epil.iter1144, 1 ; 2 uses
  %epil.iter1144.cmp.not = icmp eq i64 %epil.iter1144.next, %xtraiter1143
  br i1 %epil.iter1144.cmp.not, label %.lr.ph.split.split.split.us128.us.preheader.2.i.i, label %.lr.ph.split.split.split.us93.us.us.1.i.i.epil, !llvm.loop !329

.lr.ph.split.split.split.us128.us.preheader.2.i.i: ; preds = %.lr.ph.split.split.split.us93.us.us.1.i.i.epil, %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa
  %.sroa.speculated.us101.us.us.1.i.i.lcssa = phi float [ %.sroa.speculated.us101.us.us.1.i.i.3, %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa ], [ %.sroa.speculated.us101.us.us.1.i.i.epil, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil ]
  %.149.us102.us.us.1.i.i.lcssa = phi i32 [ %.149.us102.us.us.1.i.i.3, %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa ], [ %.149.us102.us.us.1.i.i.epil, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil ]
  %.lcssa1129 = phi float [ %i.arb, %.lr.ph.split.split.split.us128.us.preheader.2.i.i.unr-lcssa ], [ %i.arh, %.lr.ph.split.split.split.us93.us.us.1.i.i.epil ] ; 2 uses
  %fputc.us.us.1.i.i = call i32 @fputc(i32 10, ptr %i.cf) ; 0 uses
  %i.ari = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.105, ptr noundef %i.apt) #22 ; 0 uses
  %i.arj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.101) #22 ; 0 uses
  %i.ark = fpext float %.lcssa1129 to double
  %i.arl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.107, double noundef %i.ark) #22 ; 0 uses
  %i.arm = fdiv float %.lcssa1129, %i.ake
  %i.arn = fpext float %i.arm to double
  %i.aro = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.108, double noundef %i.arn) #22 ; 0 uses
  %i.arp = fpext float %.sroa.speculated.us101.us.us.1.i.i.lcssa to double
  %i.arq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.109, double noundef %i.arp) #22 ; 0 uses
  %i.arr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.110, i32 noundef %.149.us102.us.us.1.i.i.lcssa, i32 noundef %i.akc) #22 ; 0 uses
  br i1 %i.aki, label %.lr.ph.split.split.split.us128.us.2.i.i.epil.preheader, label %.lr.ph.split.split.split.us128.us.2.i.i

.lr.ph.split.split.split.us128.us.2.i.i:          ; preds = %.lr.ph.split.split.split.us128.us.preheader.2.i.i, %.lr.ph.split.split.split.us128.us.2.i.i
  %indvars.iv207.2.i.i = phi i64 [ %indvars.iv.next208.2.i.i.3, %.lr.ph.split.split.split.us128.us.2.i.i ], [ 0, %.lr.ph.split.split.split.us128.us.preheader.2.i.i ] ; 5 uses
  %.04866.us116.us.2.i.i = phi i32 [ %.149.us121.us.2.i.i.3, %.lr.ph.split.split.split.us128.us.2.i.i ], [ 0, %.lr.ph.split.split.split.us128.us.preheader.2.i.i ]
  %.05065.us117.us.2.i.i = phi float [ %i.asp, %.lr.ph.split.split.split.us128.us.2.i.i ], [ 0.000000e+00, %.lr.ph.split.split.split.us128.us.preheader.2.i.i ]
  %.05964.us118.us.2.i.i = phi float [ %.sroa.speculated.us120.us.2.i.i.3, %.lr.ph.split.split.split.us128.us.2.i.i ], [ 0.000000e+00, %.lr.ph.split.split.split.us128.us.preheader.2.i.i ] ; 2 uses
  %niter1160 = phi i64 [ %niter1160.next.3, %.lr.ph.split.split.split.us128.us.2.i.i ], [ 0, %.lr.ph.split.split.split.us128.us.preheader.2.i.i ]
  %i.ars = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv207.2.i.i
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 32
  %.0.us119.us.2.i.i = load float, ptr %i.art, align 4, !tbaa !101 ; 4 uses
  %i.aru = fcmp olt float %.05964.us118.us.2.i.i, %.0.us119.us.2.i.i
  %.sroa.speculated.us120.us.2.i.i = select i1 %i.aru, float %.0.us119.us.2.i.i, float %.05964.us118.us.2.i.i ; 2 uses
  %i.arv = fcmp ogt float %.0.us119.us.2.i.i, 0.000000e+00
  %i.arw = zext i1 %i.arv to i32
  %.149.us121.us.2.i.i = add nuw nsw i32 %.04866.us116.us.2.i.i, %i.arw
  %i.arx = fadd float %.05065.us117.us.2.i.i, %.0.us119.us.2.i.i
  %i.ary = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv207.2.i.i
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 68
  %.0.us119.us.2.i.i.1 = load float, ptr %i.arz, align 4, !tbaa !101 ; 4 uses
  %i.asa = fcmp olt float %.sroa.speculated.us120.us.2.i.i, %.0.us119.us.2.i.i.1
  %.sroa.speculated.us120.us.2.i.i.1 = select i1 %i.asa, float %.0.us119.us.2.i.i.1, float %.sroa.speculated.us120.us.2.i.i ; 2 uses
  %i.asb = fcmp ogt float %.0.us119.us.2.i.i.1, 0.000000e+00
  %i.asc = zext i1 %i.asb to i32
  %.149.us121.us.2.i.i.1 = add nuw nsw i32 %.149.us121.us.2.i.i, %i.asc
  %i.asd = fadd float %i.arx, %.0.us119.us.2.i.i.1
  %i.ase = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv207.2.i.i
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 104
  %.0.us119.us.2.i.i.2 = load float, ptr %i.asf, align 4, !tbaa !101 ; 4 uses
  %i.asg = fcmp olt float %.sroa.speculated.us120.us.2.i.i.1, %.0.us119.us.2.i.i.2
  %.sroa.speculated.us120.us.2.i.i.2 = select i1 %i.asg, float %.0.us119.us.2.i.i.2, float %.sroa.speculated.us120.us.2.i.i.1 ; 2 uses
  %i.ash = fcmp ogt float %.0.us119.us.2.i.i.2, 0.000000e+00
  %i.asi = zext i1 %i.ash to i32
  %.149.us121.us.2.i.i.2 = add nuw nsw i32 %.149.us121.us.2.i.i.1, %i.asi
  %i.asj = fadd float %i.asd, %.0.us119.us.2.i.i.2
  %i.ask = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv207.2.i.i
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 140
  %.0.us119.us.2.i.i.3 = load float, ptr %i.asl, align 4, !tbaa !101 ; 4 uses
  %i.asm = fcmp olt float %.sroa.speculated.us120.us.2.i.i.2, %.0.us119.us.2.i.i.3
  %.sroa.speculated.us120.us.2.i.i.3 = select i1 %i.asm, float %.0.us119.us.2.i.i.3, float %.sroa.speculated.us120.us.2.i.i.2 ; 3 uses
  %i.asn = fcmp ogt float %.0.us119.us.2.i.i.3, 0.000000e+00
  %i.aso = zext i1 %i.asn to i32
  %.149.us121.us.2.i.i.3 = add nuw nsw i32 %.149.us121.us.2.i.i.2, %i.aso ; 3 uses
  %i.asp = fadd float %i.asj, %.0.us119.us.2.i.i.3 ; 3 uses
  %indvars.iv.next208.2.i.i.3 = add nuw nsw i64 %indvars.iv207.2.i.i, 4 ; 2 uses
  %niter1160.next.3 = add nuw i64 %niter1160, 4   ; 2 uses
  %niter1160.ncmp.3 = icmp eq i64 %niter1160.next.3, %unroll_iter1159
  br i1 %niter1160.ncmp.3, label %._crit_edge.split.us129.us.2.i.i.unr-lcssa, label %.lr.ph.split.split.split.us128.us.2.i.i, !llvm.loop !327

._crit_edge.split.us129.us.2.i.i.unr-lcssa:       ; preds = %.lr.ph.split.split.split.us128.us.2.i.i
  br i1 %lcmp.mod1154.not, label %._crit_edge.split.us129.us.2.i.i, label %.lr.ph.split.split.split.us128.us.2.i.i.epil.preheader

.lr.ph.split.split.split.us128.us.2.i.i.epil.preheader: ; preds = %._crit_edge.split.us129.us.2.i.i.unr-lcssa, %.lr.ph.split.split.split.us128.us.preheader.2.i.i
  %indvars.iv207.2.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.split.split.us128.us.preheader.2.i.i ], [ %indvars.iv.next208.2.i.i.3, %._crit_edge.split.us129.us.2.i.i.unr-lcssa ]
  %.04866.us116.us.2.i.i.epil.init = phi i32 [ 0, %.lr.ph.split.split.split.us128.us.preheader.2.i.i ], [ %.149.us121.us.2.i.i.3, %._crit_edge.split.us129.us.2.i.i.unr-lcssa ]
  %.05065.us117.us.2.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.split.split.us128.us.preheader.2.i.i ], [ %i.asp, %._crit_edge.split.us129.us.2.i.i.unr-lcssa ]
  %.05964.us118.us.2.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.split.split.us128.us.preheader.2.i.i ], [ %.sroa.speculated.us120.us.2.i.i.3, %._crit_edge.split.us129.us.2.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1158)
  br label %.lr.ph.split.split.split.us128.us.2.i.i.epil

.lr.ph.split.split.split.us128.us.2.i.i.epil:     ; preds = %.lr.ph.split.split.split.us128.us.2.i.i.epil, %.lr.ph.split.split.split.us128.us.2.i.i.epil.preheader
  %indvars.iv207.2.i.i.epil = phi i64 [ %indvars.iv207.2.i.i.epil.init, %.lr.ph.split.split.split.us128.us.2.i.i.epil.preheader ], [ %indvars.iv.next208.2.i.i.epil, %.lr.ph.split.split.split.us128.us.2.i.i.epil ] ; 2 uses
  %.04866.us116.us.2.i.i.epil = phi i32 [ %.04866.us116.us.2.i.i.epil.init, %.lr.ph.split.split.split.us128.us.2.i.i.epil.preheader ], [ %.149.us121.us.2.i.i.epil, %.lr.ph.split.split.split.us128.us.2.i.i.epil ]
  %.05065.us117.us.2.i.i.epil = phi float [ %.05065.us117.us.2.i.i.epil.init, %.lr.ph.split.split.split.us128.us.2.i.i.epil.preheader ], [ %i.asv, %.lr.ph.split.split.split.us128.us.2.i.i.epil ]
  %.05964.us118.us.2.i.i.epil = phi float [ %.05964.us118.us.2.i.i.epil.init, %.lr.ph.split.split.split.us128.us.2.i.i.epil.preheader ], [ %.sroa.speculated.us120.us.2.i.i.epil, %.lr.ph.split.split.split.us128.us.2.i.i.epil ] ; 2 uses
  %epil.iter1153 = phi i64 [ 0, %.lr.ph.split.split.split.us128.us.2.i.i.epil.preheader ], [ %epil.iter1153.next, %.lr.ph.split.split.split.us128.us.2.i.i.epil ]
  %i.asq = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv207.2.i.i.epil
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 32
  %.0.us119.us.2.i.i.epil = load float, ptr %i.asr, align 4, !tbaa !101 ; 4 uses
  %i.ass = fcmp olt float %.05964.us118.us.2.i.i.epil, %.0.us119.us.2.i.i.epil
  %.sroa.speculated.us120.us.2.i.i.epil = select i1 %i.ass, float %.0.us119.us.2.i.i.epil, float %.05964.us118.us.2.i.i.epil ; 2 uses
  %i.ast = fcmp ogt float %.0.us119.us.2.i.i.epil, 0.000000e+00
  %i.asu = zext i1 %i.ast to i32
  %.149.us121.us.2.i.i.epil = add nuw nsw i32 %.04866.us116.us.2.i.i.epil, %i.asu ; 2 uses
  %i.asv = fadd float %.05065.us117.us.2.i.i.epil, %.0.us119.us.2.i.i.epil ; 2 uses
  %indvars.iv.next208.2.i.i.epil = add nuw nsw i64 %indvars.iv207.2.i.i.epil, 1
  %epil.iter1153.next = add i64 %epil.iter1153, 1 ; 2 uses
  %epil.iter1153.cmp.not = icmp eq i64 %epil.iter1153.next, %xtraiter1152
  br i1 %epil.iter1153.cmp.not, label %._crit_edge.split.us129.us.2.i.i, label %.lr.ph.split.split.split.us128.us.2.i.i.epil, !llvm.loop !330

._crit_edge.split.us129.us.2.i.i:                 ; preds = %.lr.ph.split.split.split.us128.us.2.i.i.epil, %._crit_edge.split.us129.us.2.i.i.unr-lcssa
  %.sroa.speculated.us120.us.2.i.i.lcssa = phi float [ %.sroa.speculated.us120.us.2.i.i.3, %._crit_edge.split.us129.us.2.i.i.unr-lcssa ], [ %.sroa.speculated.us120.us.2.i.i.epil, %.lr.ph.split.split.split.us128.us.2.i.i.epil ]
  %.149.us121.us.2.i.i.lcssa = phi i32 [ %.149.us121.us.2.i.i.3, %._crit_edge.split.us129.us.2.i.i.unr-lcssa ], [ %.149.us121.us.2.i.i.epil, %.lr.ph.split.split.split.us128.us.2.i.i.epil ]
  %.lcssa1130 = phi float [ %i.asp, %._crit_edge.split.us129.us.2.i.i.unr-lcssa ], [ %i.asv, %.lr.ph.split.split.split.us128.us.2.i.i.epil ] ; 2 uses
  %fputc.us.us.2.i.i = call i32 @fputc(i32 10, ptr %i.cf) ; 0 uses
  %i.asw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.105, ptr noundef %i.apt) #22 ; 0 uses
  %i.asx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.102) #22 ; 0 uses
  %i.asy = fpext float %.lcssa1130 to double
  %i.asz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.107, double noundef %i.asy) #22 ; 0 uses
  %i.ata = fdiv float %.lcssa1130, %i.ake
  %i.atb = fpext float %i.ata to double
  %i.atc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.108, double noundef %i.atb) #22 ; 0 uses
  %i.atd = fpext float %.sroa.speculated.us120.us.2.i.i.lcssa to double
  %i.ate = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.109, double noundef %i.atd) #22 ; 0 uses
  %i.atf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.110, i32 noundef %.149.us121.us.2.i.i.lcssa, i32 noundef %i.akc) #22 ; 0 uses
  br label %.split132.us.us.i.i

.lr.ph.split.split.split.us.us.us.i.i:            ; preds = %.lr.ph.split.split.split.us.us.us.i.i.preheader, %.lr.ph.split.split.split.us.us.us.i.i
  %indvars.iv200.i.i = phi i64 [ %indvars.iv.next201.i.i.3, %.lr.ph.split.split.split.us.us.us.i.i ], [ 0, %.lr.ph.split.split.split.us.us.us.i.i.preheader ] ; 5 uses
  %.04866.us78.us.us.i.i = phi i32 [ %.149.us84.us.us.i.i.3, %.lr.ph.split.split.split.us.us.us.i.i ], [ 0, %.lr.ph.split.split.split.us.us.us.i.i.preheader ]
  %.05065.us79.us.us.i.i = phi float [ %i.aud, %.lr.ph.split.split.split.us.us.us.i.i ], [ 0.000000e+00, %.lr.ph.split.split.split.us.us.us.i.i.preheader ]
  %.05964.us80.us.us.i.i = phi float [ %.sroa.speculated.us83.us.us.i.i.3, %.lr.ph.split.split.split.us.us.us.i.i ], [ 0.000000e+00, %.lr.ph.split.split.split.us.us.us.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.split.split.split.us.us.us.i.i ], [ 0, %.lr.ph.split.split.split.us.us.us.i.i.preheader ]
  %i.atg = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv200.i.i
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 24
  %.0.us82.us.us.i.i = load float, ptr %i.ath, align 4, !tbaa !101 ; 4 uses
  %i.ati = fcmp olt float %.05964.us80.us.us.i.i, %.0.us82.us.us.i.i
  %.sroa.speculated.us83.us.us.i.i = select i1 %i.ati, float %.0.us82.us.us.i.i, float %.05964.us80.us.us.i.i ; 2 uses
  %i.atj = fcmp ogt float %.0.us82.us.us.i.i, 0.000000e+00
  %i.atk = zext i1 %i.atj to i32
  %.149.us84.us.us.i.i = add nuw nsw i32 %.04866.us78.us.us.i.i, %i.atk
  %i.atl = fadd float %.05065.us79.us.us.i.i, %.0.us82.us.us.i.i
  %i.atm = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv200.i.i
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 60
  %.0.us82.us.us.i.i.1 = load float, ptr %i.atn, align 4, !tbaa !101 ; 4 uses
  %i.ato = fcmp olt float %.sroa.speculated.us83.us.us.i.i, %.0.us82.us.us.i.i.1
  %.sroa.speculated.us83.us.us.i.i.1 = select i1 %i.ato, float %.0.us82.us.us.i.i.1, float %.sroa.speculated.us83.us.us.i.i ; 2 uses
  %i.atp = fcmp ogt float %.0.us82.us.us.i.i.1, 0.000000e+00
  %i.atq = zext i1 %i.atp to i32
  %.149.us84.us.us.i.i.1 = add nuw nsw i32 %.149.us84.us.us.i.i, %i.atq
  %i.atr = fadd float %i.atl, %.0.us82.us.us.i.i.1
  %i.ats = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv200.i.i
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 96
  %.0.us82.us.us.i.i.2 = load float, ptr %i.att, align 4, !tbaa !101 ; 4 uses
  %i.atu = fcmp olt float %.sroa.speculated.us83.us.us.i.i.1, %.0.us82.us.us.i.i.2
  %.sroa.speculated.us83.us.us.i.i.2 = select i1 %i.atu, float %.0.us82.us.us.i.i.2, float %.sroa.speculated.us83.us.us.i.i.1 ; 2 uses
  %i.atv = fcmp ogt float %.0.us82.us.us.i.i.2, 0.000000e+00
  %i.atw = zext i1 %i.atv to i32
  %.149.us84.us.us.i.i.2 = add nuw nsw i32 %.149.us84.us.us.i.i.1, %i.atw
  %i.atx = fadd float %i.atr, %.0.us82.us.us.i.i.2
  %i.aty = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %indvars.iv200.i.i
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 132
  %.0.us82.us.us.i.i.3 = load float, ptr %i.atz, align 4, !tbaa !101 ; 4 uses
  %i.aua = fcmp olt float %.sroa.speculated.us83.us.us.i.i.2, %.0.us82.us.us.i.i.3
  %.sroa.speculated.us83.us.us.i.i.3 = select i1 %i.aua, float %.0.us82.us.us.i.i.3, float %.sroa.speculated.us83.us.us.i.i.2 ; 3 uses
  %i.aub = fcmp ogt float %.0.us82.us.us.i.i.3, 0.000000e+00
  %i.auc = zext i1 %i.aub to i32
  %.149.us84.us.us.i.i.3 = add nuw nsw i32 %.149.us84.us.us.i.i.2, %i.auc ; 3 uses
  %i.aud = fadd float %i.atx, %.0.us82.us.us.i.i.3 ; 3 uses
  %indvars.iv.next201.i.i.3 = add nuw nsw i64 %indvars.iv200.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.split.split.split.us93.us.us.preheader.1.i.i.unr-lcssa, label %.lr.ph.split.split.split.us.us.us.i.i, !llvm.loop !327

.split132.us.us.i.i:                              ; preds = %._crit_edge.split.us129.us.2.i.i, %bb.gn
  br i1 %i.akn, label %.split113.us.us.i.i, label %_ZL9dump_dumpP8_IO_FILEiP10t_dr_stats.exit.i, !llvm.loop !331

_ZL9dump_dumpP8_IO_FILEiP10t_dr_stats.exit.i:     ; preds = %.split132.us.us.i.i, %_ZL9dump_violP8_IO_FILEiP10t_dr_statsb.exit66.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.44, i32 noundef 453, ptr noundef %i.afb)
          to label %_ZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atoms.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gs:                                            ; preds = %bb.gw, %.lr.ph.i380
  %indvars.iv.i382 = phi i64 [ 0, %.lr.ph.i380 ], [ %indvars.iv.next.i387, %bb.gw ] ; 2 uses
  %i.aue = getelementptr [4 x i8], ptr %i.afe, i64 %indvars.iv.i382 ; 4 uses
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !9 ; 2 uses
  %i.aug = sub nsw i32 %i.auf, %i.afo             ; 3 uses
  %i.auh = icmp sgt i32 %i.aug, -1
  %i.aui = icmp slt i32 %i.aug, %i.afv
  %or.cond = select i1 %i.auh, i1 %i.aui, i1 false
  br i1 %or.cond, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atomsENK3$_1clEv", ptr noundef nonnull @.str.44, i32 noundef 424) #24
          to label %.noexc392 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc392:                                        ; preds = %bb.gt
  unreachable

bb.gu:                                            ; preds = %bb.gs
  %i.auj = sext i32 %i.auf to i64
  %i.auk = getelementptr inbounds [48 x i8], ptr %i.wz, i64 %i.auj
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 20
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !31 ; 2 uses
  %i.aun = zext nneg i32 %i.aug to i64            ; 4 uses
  %i.auo = getelementptr inbounds nuw [36 x i8], ptr %i.afb, i64 %i.aun ; 9 uses
  store i32 %i.aum, ptr %i.auo, align 4, !tbaa !307
  br i1 %i.afp, label %_ZL7is_coreiiPKi.exit.i385, label %.lr.ph.i67.i

.lr.ph.i67.i:                                     ; preds = %bb.gu, %.lr.ph.i67.i
  %indvars.iv.i68.i = phi i64 [ %indvars.iv.next.i69.i, %.lr.ph.i67.i ], [ 0, %bb.gu ] ; 2 uses
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.aew, i64 %indvars.iv.i68.i
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !9
  %i.aur = icmp eq i32 %i.auq, %i.aum             ; 2 uses
  %indvars.iv.next.i69.i = add nuw nsw i64 %indvars.iv.i68.i, 1 ; 2 uses
  %i.aus = icmp samesign uge i64 %indvars.iv.next.i69.i, %i.afq
  %.not8.i.i383 = select i1 %i.aur, i1 true, i1 %i.aus
  br i1 %.not8.i.i383, label %_ZL7is_coreiiPKi.exit.loopexit.i384, label %.lr.ph.i67.i, !llvm.loop !309

_ZL7is_coreiiPKi.exit.loopexit.i384:              ; preds = %.lr.ph.i67.i
  %i.aut = zext i1 %i.aur to i8
  br label %_ZL7is_coreiiPKi.exit.i385

_ZL7is_coreiiPKi.exit.i385:                       ; preds = %_ZL7is_coreiiPKi.exit.loopexit.i384, %bb.gu
  %.0.lcssa.i.i386 = phi i8 [ 0, %bb.gu ], [ %i.aut, %_ZL7is_coreiiPKi.exit.loopexit.i384 ]
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auo, i64 4
  store i8 %.0.lcssa.i.i386, ptr %i.auu, align 4, !tbaa !310
  %i.auv = load i32, ptr %i.aue, align 4, !tbaa !9
  %i.auw = sext i32 %i.auv to i64
  %i.aux = getelementptr inbounds [48 x i8], ptr %i.wz, i64 %i.auw
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 4
  %i.auz = load float, ptr %i.auy, align 4, !tbaa !31 ; 4 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auo, i64 8
  store float %i.auz, ptr %i.ava, align 4, !tbaa !311
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.afw, i64 %i.aun
  %i.avc = load float, ptr %i.avb, align 4, !tbaa !101
  %i.avd = fdiv float %i.avc, %i.afr              ; 2 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.auo, i64 12
  store float %i.avd, ptr %i.ave, align 4, !tbaa !313
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.afx, i64 %i.aun
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !101
  %i.avh = fdiv float %i.avg, %i.afr
  %i.avi = call noundef float @cbrtf(float noundef %i.avh) #26
  %i.avj = fdiv float 1.000000e+00, %i.avi        ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.auo, i64 16
  store float %i.avj, ptr %i.avk, align 4, !tbaa !316
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %i.aun
  %i.avm = load float, ptr %i.avl, align 4, !tbaa !101
  %i.avn = fdiv float %i.avm, %i.afr
  %i.avo = call noundef float @cbrtf(float noundef %i.avn) #26
  %i.avp = call noundef float @sqrtf(float noundef %i.avo) #22
  %i.avq = fdiv float 1.000000e+00, %i.avp        ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.auo, i64 20
  store float %i.avq, ptr %i.avr, align 4, !tbaa !317
  %i.avs = fsub float %i.avd, %i.auz              ; 2 uses
  %i.avt = fcmp ogt float %i.avs, 0.000000e+00
  %i.avu = select i1 %i.avt, float %i.avs, float 0.000000e+00
  %i.avv = getelementptr inbounds nuw i8, ptr %i.auo, i64 24
  store float %i.avu, ptr %i.avv, align 4, !tbaa !318
  %i.avw = fsub float %i.avj, %i.auz              ; 2 uses
  %i.avx = fcmp ogt float %i.avw, 0.000000e+00
  %i.avy = select i1 %i.avx, float %i.avw, float 0.000000e+00 ; 3 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.auo, i64 28
  store float %i.avy, ptr %i.avz, align 4, !tbaa !332
  %i.awa = fsub float %i.avq, %i.auz              ; 2 uses
  %i.awb = fcmp ogt float %i.awa, 0.000000e+00
  %i.awc = select i1 %i.awb, float %i.awa, float 0.000000e+00
  %i.awd = getelementptr inbounds nuw i8, ptr %i.auo, i64 32
  store float %i.awc, ptr %i.awd, align 4, !tbaa !333
  br i1 %.not.i381.not, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %_ZL7is_coreiiPKi.exit.i385
  %i.awe = getelementptr i8, ptr %i.aue, i64 4
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !9
  %i.awg = getelementptr i8, ptr %i.aue, i64 8
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !9
  %i.awi = load ptr, ptr %i.afs, align 8, !tbaa !110 ; 2 uses
  %i.awj = sext i32 %i.awf to i64
  %i.awk = getelementptr inbounds [52 x i8], ptr %i.awi, i64 %i.awj
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 20 ; 2 uses
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !334
  %i.awn = call float @llvm.fmuladd.f32(float %i.avy, float 5.000000e+00, float %i.awm)
  store float %i.awn, ptr %i.awl, align 4, !tbaa !334
  %i.awo = sext i32 %i.awh to i64
  %i.awp = getelementptr inbounds [52 x i8], ptr %i.awi, i64 %i.awo
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 20 ; 2 uses
  %i.awr = load float, ptr %i.awq, align 4, !tbaa !334
  %i.aws = call float @llvm.fmuladd.f32(float %i.avy, float 5.000000e+00, float %i.awr)
  store float %i.aws, ptr %i.awq, align 4, !tbaa !334
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %_ZL7is_coreiiPKi.exit.i385
  %indvars.iv.next.i387 = add nsw i64 %indvars.iv.i382, %i.aft ; 2 uses
  %i.awt = icmp slt i64 %indvars.iv.next.i387, %i.afu
  br i1 %i.awt, label %bb.gs, label %._crit_edge.thread.i, !llvm.loop !337

._crit_edge.thread.i:                             ; preds = %bb.gw
  %i.awu = call i64 @fwrite(ptr nonnull @.str.96, i64 68, i64 1, ptr %i.cf) ; 0 uses
  br label %.lr.ph.i.i377

_ZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atoms.exit: ; preds = %_ZL9dump_dumpP8_IO_FILEiP10t_dr_stats.exit.i
  br i1 %i.dm, label %bb.gx, label %bb.hf

bb.gx:                                            ; preds = %_ZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atoms.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #22
  %i.awv = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.37, i32 noundef 12, ptr noundef nonnull %21)
          to label %bb.gy unwind label %bb.hc

bb.gy:                                            ; preds = %bb.gx
  store ptr %i.awv, ptr %i.v, align 8, !tbaa !25
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %52, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef zeroext 2)
          to label %bb.gz unwind label %bb.hc

bb.gz:                                            ; preds = %bb.gy
  %i.aww = load i32, ptr %i.fh, align 8, !tbaa !212
  invoke void @_Z14write_sto_confRKNSt10filesystem7__cxx114pathEPKcPK7t_atomsPA3_KfSB_7PbcTypeSB_(ptr noundef nonnull align 8 dereferenceable(40) %52, ptr noundef nonnull @.str.67, ptr noundef %i.aex, ptr noundef %.0, ptr noundef null, i32 noundef %i.aww, ptr noundef nonnull %i.j)
          to label %bb.ha unwind label %bb.hd

bb.ha:                                            ; preds = %bb.gz
  %i.awx = getelementptr inbounds nuw i8, ptr %52, i64 32 ; 2 uses
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i393 = icmp eq ptr %i.awy, null
  br i1 %.not.i.i.i393, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i394, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.awx, ptr noundef nonnull %i.awy) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i394

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i394: ; preds = %bb.hb, %bb.ha
  %i.awz = load ptr, ptr %52, align 8, !tbaa !28  ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.axb = icmp eq ptr %i.awz, %i.axa
  br i1 %i.axb, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i395: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i394
  %i.axc = load i64, ptr %i.axa, align 8, !tbaa !31
  %i.axd = add i64 %i.axc, 1
  call void @_ZdlPvm(ptr noundef %i.awz, i64 noundef %i.axd) #23
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit397

_ZNSt10filesystem7__cxx114pathD2Ev.exit397:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  br label %bb.hf

bb.hc:                                            ; preds = %bb.gy, %bb.gx
  %i.axe = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hd:                                            ; preds = %bb.gz
  %i.axf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %52) #22
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.pn177 = phi { ptr, i32 } [ %i.axf, %bb.hd ], [ %i.axe, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #22
  br label %.body

bb.hf:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit397, %_ZL10dump_statsP8_IO_FILEiRK12t_disresdataRK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEP11t_dr_resultiPiP7t_atoms.exit
  %i.axg = invoke noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef nonnull @.str.40, i32 noundef 12, ptr noundef nonnull %21)
          to label %bb.hg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.hg:                                            ; preds = %bb.hf
  %i.axh = load i32, ptr %i.jg, align 4, !tbaa !222 ; 6 uses
  %i.axi = load ptr, ptr %24, align 8, !tbaa !36  ; 4 uses
  %i.axj = load float, ptr @_ZZ9gmx_disreiPPcE6max_dr, align 4, !tbaa !101 ; 5 uses
  %i.axk = load i32, ptr @_ZZ9gmx_disreiPPcE7nlevels, align 4, !tbaa !9
  %i.axl = load i8, ptr @_ZZ9gmx_disreiPPcE6bThird, align 1, !tbaa !306, !range !256, !noundef !257
  %i.axm = trunc nuw i8 %i.axl to i1
  %.val = load ptr, ptr %i.ji, align 8
  %.val197 = load ptr, ptr %i.jo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.axg, ptr %i.b, align 8, !tbaa !25
  store i32 %i.axk, ptr %i.c, align 4, !tbaa !9
  %i.axn = icmp eq ptr %i.axg, null
  br i1 %i.axn, label %bb.il, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axi, i64 176
  %i.axp = load i32, ptr %i.axo, align 8, !tbaa !38
  %i.axq = sext i32 %i.axp to i64
  %i.axr = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.44, i32 noundef 585, i64 noundef range(i64 -2147483648, 2147483648) %i.axq, i64 noundef 4)
          to label %.noexc411 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc411:                                        ; preds = %bb.hh
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axi, i64 136
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !338 ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axi, i64 144
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !338 ; 2 uses
  %.not3652.i = icmp eq ptr %i.axt, %i.axv
  br i1 %.not3652.i, label %._crit_edge58.thread.i, label %.lr.ph57.i

._crit_edge58.thread.i:                           ; preds = %.noexc411
  %i.axw = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.44, i32 noundef 602, i64 noundef range(i64 -2147483648, 2147483648) 0, i64 noundef 4)
          to label %._crit_edge63.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph57.i:                                       ; preds = %.noexc411
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axi, i64 112
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !339
  br label %bb.hi

._crit_edge58.i:                                  ; preds = %._crit_edge48.i
  %i.axz = sext i32 %.1134.lcssa.i to i64         ; 4 uses
  %i.aya = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.44, i32 noundef 602, i64 noundef range(i64 -2147483648, 2147483648) %i.axz, i64 noundef 4)
          to label %.noexc413 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc413:                                        ; preds = %._crit_edge58.i
  %i.ayb = icmp sgt i32 %.1134.lcssa.i, 0
  br i1 %i.ayb, label %iter.check1054, label %._crit_edge63.thread.i

iter.check1054:                                   ; preds = %.noexc413
  %wide.trip.count.i = zext nneg i32 %.1134.lcssa.i to i64 ; 7 uses
  %min.iters.check1038 = icmp ult i32 %.1134.lcssa.i, 4
  br i1 %min.iters.check1038, label %.lr.ph62.i.preheader, label %vector.main.loop.iter.check1039

vector.main.loop.iter.check1039:                  ; preds = %iter.check1054
  %min.iters.check1040 = icmp ult i32 %.1134.lcssa.i, 32
  br i1 %min.iters.check1040, label %vec.epilog.ph1058, label %vector.ph1041

vector.ph1041:                                    ; preds = %vector.main.loop.iter.check1039
  %i.ayc = and i64 %wide.trip.count.i, 28
  %n.vec1042 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body1043

vector.body1043:                                  ; preds = %vector.body1043, %vector.ph1041
  %index1044 = phi i64 [ 0, %vector.ph1041 ], [ %index.next1049, %vector.body1043 ] ; 2 uses
  %vec.ind1045 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1041 ], [ %vec.ind.next1050, %vector.body1043 ] ; 5 uses
  %i.ayd = trunc <8 x i64> %vec.ind1045 to <8 x i32>
  %i.aye = add <8 x i32> %i.ayd, splat (i32 1)
  %i.ayf = trunc <8 x i64> %vec.ind1045 to <8 x i32>
  %i.ayg = add <8 x i32> %i.ayf, splat (i32 9)
  %i.ayh = trunc <8 x i64> %vec.ind1045 to <8 x i32>
  %i.ayi = add <8 x i32> %i.ayh, splat (i32 17)
  %i.ayj = trunc <8 x i64> %vec.ind1045 to <8 x i32>
  %i.ayk = add <8 x i32> %i.ayj, splat (i32 25)
  %i.ayl = uitofp nneg <8 x i32> %i.aye to <8 x float>
  %i.aym = uitofp nneg <8 x i32> %i.ayg to <8 x float>
  %i.ayn = uitofp nneg <8 x i32> %i.ayi to <8 x float>
  %i.ayo = uitofp nneg <8 x i32> %i.ayk to <8 x float>
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.aya, i64 %index1044 ; 4 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 32
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayp, i64 64
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayp, i64 96
  store <8 x float> %i.ayl, ptr %i.ayp, align 4, !tbaa !101
  store <8 x float> %i.aym, ptr %i.ayq, align 4, !tbaa !101
  store <8 x float> %i.ayn, ptr %i.ayr, align 4, !tbaa !101
  store <8 x float> %i.ayo, ptr %i.ays, align 4, !tbaa !101
  %index.next1049 = add nuw i64 %index1044, 32    ; 2 uses
  %vec.ind.next1050 = add nuw <8 x i64> %vec.ind1045, splat (i64 32)
  %i.ayt = icmp eq i64 %index.next1049, %n.vec1042
  br i1 %i.ayt, label %middle.block1051, label %vector.body1043, !llvm.loop !340

middle.block1051:                                 ; preds = %vector.body1043
  %cmp.n1052 = icmp eq i64 %n.vec1042, %wide.trip.count.i
  br i1 %cmp.n1052, label %.lr.ph66.preheader.i, label %vec.epilog.iter.check1056

vec.epilog.iter.check1056:                        ; preds = %middle.block1051
  %min.epilog.iters.check1057 = icmp eq i64 %i.ayc, 0
  br i1 %min.epilog.iters.check1057, label %.lr.ph62.i.preheader, label %vec.epilog.ph1058, !prof !106

vec.epilog.ph1058:                                ; preds = %vector.main.loop.iter.check1039, %vec.epilog.iter.check1056
  %vec.epilog.resume.val1053 = phi i64 [ %n.vec1042, %vec.epilog.iter.check1056 ], [ 0, %vector.main.loop.iter.check1039 ] ; 2 uses
  %n.vec1059 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert1060 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1053, i64 0
  %broadcast.splat1061 = shufflevector <4 x i64> %broadcast.splatinsert1060, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1062 = or disjoint <4 x i64> %broadcast.splat1061, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1063

vec.epilog.vector.body1063:                       ; preds = %vec.epilog.vector.body1063, %vec.epilog.ph1058
  %index1064 = phi i64 [ %vec.epilog.resume.val1053, %vec.epilog.ph1058 ], [ %index.next1066, %vec.epilog.vector.body1063 ] ; 2 uses
  %vec.ind1065 = phi <4 x i64> [ %induction1062, %vec.epilog.ph1058 ], [ %vec.ind.next1067, %vec.epilog.vector.body1063 ] ; 2 uses
  %i.ayu = trunc <4 x i64> %vec.ind1065 to <4 x i32>
  %i.ayv = add <4 x i32> %i.ayu, splat (i32 1)
  %i.ayw = uitofp nneg <4 x i32> %i.ayv to <4 x float>
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %i.aya, i64 %index1064
  store <4 x float> %i.ayw, ptr %i.ayx, align 4, !tbaa !101
  %index.next1066 = add nuw i64 %index1064, 4     ; 2 uses
  %vec.ind.next1067 = add nuw nsw <4 x i64> %vec.ind1065, splat (i64 4)
  %i.ayy = icmp eq i64 %index.next1066, %n.vec1059
  br i1 %i.ayy, label %vec.epilog.middle.block1068, label %vec.epilog.vector.body1063, !llvm.loop !341

vec.epilog.middle.block1068:                      ; preds = %vec.epilog.vector.body1063
  %cmp.n1069 = icmp eq i64 %n.vec1059, %wide.trip.count.i
  br i1 %cmp.n1069, label %.lr.ph66.preheader.i, label %.lr.ph62.i.preheader

.lr.ph62.i.preheader:                             ; preds = %iter.check1054, %vec.epilog.iter.check1056, %vec.epilog.middle.block1068
  %indvars.iv107.i.ph = phi i64 [ 0, %iter.check1054 ], [ %n.vec1042, %vec.epilog.iter.check1056 ], [ %n.vec1059, %vec.epilog.middle.block1068 ]
  br label %.lr.ph62.i

bb.hi:                                            ; preds = %._crit_edge48.i, %.lr.ph57.i
  %.013155.i = phi i32 [ 0, %.lr.ph57.i ], [ %.1132.lcssa.i, %._crit_edge48.i ] ; 3 uses
  %.013354.i = phi i32 [ 0, %.lr.ph57.i ], [ %.1134.lcssa.i, %._crit_edge48.i ] ; 3 uses
  %.sroa.05.053.i = phi ptr [ %i.axt, %.lr.ph57.i ], [ %i.bai, %._crit_edge48.i ] ; 3 uses
  %i.ayz = load i32, ptr %.sroa.05.053.i, align 8, !tbaa !342
  %i.aza = sext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds nuw [2408 x i8], ptr %i.axy, i64 %i.aza ; 3 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 8 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %.sroa.05.053.i, i64 4 ; 2 uses
  %i.aze = load i32, ptr %i.azd, align 4, !tbaa !344 ; 4 uses
  %i.azf = icmp sgt i32 %i.aze, 0
  br i1 %i.azf, label %.preheader.lr.ph.i, label %._crit_edge48.i

.preheader.lr.ph.i:                               ; preds = %bb.hi
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azb, i64 16
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azb, i64 48 ; 2 uses
  %i.azi = load i32, ptr %i.azc, align 8, !tbaa !115 ; 3 uses
  %i.azj = icmp sgt i32 %i.azi, 0
  br i1 %i.azj, label %.preheader.i, label %.preheader.lr.ph.split.us.i

end_hunk_1
begin_hunk_2_@_ZL10check_violP8_IO_FILERK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEPA3_fPA4_fP5t_pbcP11t_dr_resultiiPKiPfP12t_disresdata:bb.a
  %.not141 = icmp eq ptr %i.bs, null
  br i1 %.not141, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = trunc nuw nsw i64 %indvars.iv221 to i32
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bs, ptr noundef nonnull @.str.77, i32 noundef %i.bt, i32 noundef %i.br, i32 noundef %.1132188, i32 noundef 0) #22 ; 0 uses
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !286
  %.pre224 = load ptr, ptr %1, align 8, !tbaa !258
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bv = phi ptr [ %.pre224, %bb.g ], [ %i.bi, %bb.f ]
  %i.bw = phi ptr [ %.pre, %bb.g ], [ %i.bj, %bb.f ]
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  %sext = shl i64 %i.bz, 30
  %i.ca = ashr i64 %sext, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %bb.j ], [ 0, %bb.h ]
  %indvars.iv.next216 = add nsw i64 %indvars.iv215, %i.au ; 3 uses
  %i.cb = add nsw i64 %indvars.iv.next216, %i.bk  ; 3 uses
  %i.cc = icmp slt i64 %i.cb, %i.ca
  br i1 %i.cc, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.cb
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !9
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [48 x i8], ptr %2, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !31
  %i.cj = icmp eq i32 %i.ci, %i.bq
  br i1 %i.cj, label %bb.i, label %.critedge, !llvm.loop !374

.critedge:                                        ; preds = %bb.i, %bb.j
  %i.ck = trunc nsw i64 %i.cb to i32              ; 2 uses
  %i.cl = trunc nsw i64 %indvars.iv.next216 to i32 ; 2 uses
  call void @_Z15calc_disres_R_6PK12gmx_domdec_tPK14gmx_multisim_tiPKiPA3_KfPK5t_pbcP12t_disresdataPK9history_t(ptr noundef null, ptr noundef null, i32 noundef %i.cl, ptr noundef nonnull %i.bl, ptr noundef %3, ptr noundef %5, ptr noundef nonnull %11, ptr noundef null)
  %i.cm = load ptr, ptr %i.am, align 8, !tbaa !375
  %i.cn = sext i32 %i.br to i64                   ; 3 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !101 ; 2 uses
  %i.cq = fcmp ugt float %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.cr = trunc nuw nsw i64 %indvars.iv221 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(65) @.str.44, i8 noundef zeroext 2)
  %i.cs = load ptr, ptr %i.am, align 8, !tbaa !375
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cn
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !101
  %i.cv = fpext float %i.cu to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 249, ptr noundef nonnull @.str.78, i32 noundef %i.cr, double noundef %i.cv) #24
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.an

bb.n:                                             ; preds = %.critedge
  %i.cx = call noundef float @cbrtf(float noundef %i.cp) #26
  %i.cy = call noundef float @sqrtf(float noundef %i.cx) #22
  %i.cz = fdiv float 1.000000e+00, %i.cy          ; 4 uses
  %i.da = load ptr, ptr %i.ap, align 8, !tbaa !312
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv221 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !101
  %i.dd = fadd float %i.cz, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !101
  %i.de = fmul float %i.cz, %i.cz                 ; 2 uses
  %i.df = load ptr, ptr %i.aq, align 8, !tbaa !376
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv221 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !101
  %i.di = fadd float %i.de, %i.dh
  store float %i.di, ptr %i.dg, align 4, !tbaa !101
  %i.dj = fmul float %i.cz, %i.de
  %i.dk = fdiv float 1.000000e+00, %i.dj
  %i.dl = load ptr, ptr %i.ar, align 8, !tbaa !314
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv221 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !101
  %i.do = fadd float %i.dk, %i.dn
  store float %i.do, ptr %i.dm, align 4, !tbaa !101
  %i.dp = load float, ptr %i.co, align 4, !tbaa !101
  %i.dq = load ptr, ptr %i.as, align 8, !tbaa !315
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv221 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !101
  %i.dt = fadd float %i.dp, %i.ds
  store float %i.dt, ptr %i.dr, align 4, !tbaa !101
  %i.du = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.44, i32 noundef 259, i64 noundef 45, i64 noundef 12) ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.dv = call noundef float @_Z9ta_disresiPKiPK9t_iparamsPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS4_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi(i32 noundef %i.cl, ptr noundef nonnull %i.bl, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.du, ptr noundef %5, float noundef 0.000000e+00, ptr noundef nonnull %i.a, ptr noundef nonnull byval(%"class.gmx::ArrayRef.236") align 8 %14, ptr noundef null, ptr noundef nonnull %11, ptr noundef null, ptr noundef null) ; 0 uses
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.44, i32 noundef 261, ptr noundef %i.du)
  %i.dw = load float, ptr %i.at, align 8, !tbaa !377 ; 6 uses
  %i.dx = fcmp ogt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.dy = add nsw i32 %.0126189, 1                ; 2 uses
  %i.dz = load i32, ptr @_ZL4ntop, align 4, !tbaa !9 ; 4 uses
  %.not142 = icmp eq i32 %i.dz, 0
  br i1 %.not142, label %_ZL4add5if.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ea = load i32, ptr %i.bp, align 4, !tbaa !31
  %i.eb = icmp sgt i32 %i.dz, 1
  %.pre15.i = load ptr, ptr @_ZL3top, align 8, !tbaa !32 ; 11 uses
  br i1 %i.eb, label %.lr.ph.i144, label %._crit_edge.i

.lr.ph.i144:                                      ; preds = %bb.p
  %wide.trip.count.i145 = zext nneg i32 %i.dz to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre15.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !371 ; 2 uses
  %i.ec = add nsw i64 %wide.trip.count.i145, -1   ; 2 uses
  %xtraiter = and i64 %i.ec, 7                    ; 3 uses
  %i.ed = add nsw i32 %i.dz, -2
  %i.ee = icmp ult i32 %i.ed, 7
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.i144.new

.lr.ph.i144.new:                                  ; preds = %.lr.ph.i144
  %unroll_iter = and i64 %i.ec, -8
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i144.new
  %i.ef = phi float [ %.pre.i, %.lr.ph.i144.new ], [ %i.gb, %bb.q ] ; 2 uses
  %indvars.iv.i146 = phi i64 [ 1, %.lr.ph.i144.new ], [ %indvars.iv.next.i147.7, %bb.q ] ; 10 uses
  %.013.i = phi i32 [ 0, %.lr.ph.i144.new ], [ %.1.i.7, %bb.q ]
  %niter = phi i64 [ 0, %.lr.ph.i144.new ], [ %niter.next.7, %bb.q ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %indvars.iv.i146
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !371 ; 2 uses
  %i.ej = fcmp olt float %i.ei, %i.ef             ; 2 uses
  %i.ek = trunc nuw nsw i64 %indvars.iv.i146 to i32
  %.1.i = select i1 %i.ej, i32 %i.ek, i32 %.013.i
  %indvars.iv.next.i147 = add nuw nsw i64 %indvars.iv.i146, 1 ; 2 uses
  %i.el = select i1 %i.ej, float %i.ei, float %i.ef ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %indvars.iv.next.i147
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !371 ; 2 uses
  %i.ep = fcmp olt float %i.eo, %i.el             ; 2 uses
  %i.eq = trunc nuw nsw i64 %indvars.iv.next.i147 to i32
  %.1.i.1 = select i1 %i.ep, i32 %i.eq, i32 %.1.i
  %indvars.iv.next.i147.1 = add nuw nsw i64 %indvars.iv.i146, 2 ; 2 uses
  %i.er = select i1 %i.ep, float %i.eo, float %i.el ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %indvars.iv.next.i147.1
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !371 ; 2 uses
  %i.ev = fcmp olt float %i.eu, %i.er             ; 2 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv.next.i147.1 to i32
  %.1.i.2 = select i1 %i.ev, i32 %i.ew, i32 %.1.i.1
  %indvars.iv.next.i147.2 = add nuw nsw i64 %indvars.iv.i146, 3 ; 2 uses
  %i.ex = select i1 %i.ev, float %i.eu, float %i.er ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %indvars.iv.next.i147.2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !371 ; 2 uses
  %i.fb = fcmp olt float %i.fa, %i.ex             ; 2 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv.next.i147.2 to i32
  %.1.i.3 = select i1 %i.fb, i32 %i.fc, i32 %.1.i.2
  %indvars.iv.next.i147.3 = add nuw nsw i64 %indvars.iv.i146, 4 ; 2 uses
  %i.fd = select i1 %i.fb, float %i.fa, float %i.ex ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %indvars.iv.next.i147.3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !371 ; 2 uses
  %i.fh = fcmp olt float %i.fg, %i.fd             ; 2 uses
  %i.fi = trunc nuw nsw i64 %indvars.iv.next.i147.3 to i32
  %.1.i.4 = select i1 %i.fh, i32 %i.fi, i32 %.1.i.3
  %indvars.iv.next.i147.4 = add nuw nsw i64 %indvars.iv.i146, 5 ; 2 uses
  %i.fj = select i1 %i.fh, float %i.fg, float %i.fd ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %indvars.iv.next.i147.4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !371 ; 2 uses
  %i.fn = fcmp olt float %i.fm, %i.fj             ; 2 uses
  %i.fo = trunc nuw nsw i64 %indvars.iv.next.i147.4 to i32
  %.1.i.5 = select i1 %i.fn, i32 %i.fo, i32 %.1.i.4
  %indvars.iv.next.i147.5 = add nuw nsw i64 %indvars.iv.i146, 6 ; 2 uses
  %i.fp = select i1 %i.fn, float %i.fm, float %i.fj ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %indvars.iv.next.i147.5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !371 ; 2 uses
  %i.ft = fcmp olt float %i.fs, %i.fp             ; 2 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv.next.i147.5 to i32
  %.1.i.6 = select i1 %i.ft, i32 %i.fu, i32 %.1.i.5
  %indvars.iv.next.i147.6 = add nuw nsw i64 %indvars.iv.i146, 7 ; 2 uses
  %i.fv = select i1 %i.ft, float %i.fs, float %i.fp ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %indvars.iv.next.i147.6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !371 ; 2 uses
  %i.fz = fcmp olt float %i.fy, %i.fv             ; 2 uses
  %i.ga = trunc nuw nsw i64 %indvars.iv.next.i147.6 to i32
  %.1.i.7 = select i1 %i.fz, i32 %i.ga, i32 %.1.i.6 ; 3 uses
  %indvars.iv.next.i147.7 = add nuw nsw i64 %indvars.iv.i146, 8 ; 2 uses
  %i.gb = select i1 %i.fz, float %i.fy, float %i.fv ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.q, !llvm.loop !378

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i144
  %.epil.init = phi float [ %.pre.i, %.lr.ph.i144 ], [ %i.gb, %._crit_edge.loopexit.i.unr-lcssa ]
  %indvars.iv.i146.epil.init = phi i64 [ 1, %.lr.ph.i144 ], [ %indvars.iv.next.i147.7, %._crit_edge.loopexit.i.unr-lcssa ]
  %.013.i.epil.init = phi i32 [ 0, %.lr.ph.i144 ], [ %.1.i.7, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %i.gc = phi float [ %.epil.init, %.epil.preheader ], [ %i.gi, %bb.r ] ; 2 uses
  %indvars.iv.i146.epil = phi i64 [ %indvars.iv.i146.epil.init, %.epil.preheader ], [ %indvars.iv.next.i147.epil, %bb.r ] ; 3 uses
  %.013.i.epil = phi i32 [ %.013.i.epil.init, %.epil.preheader ], [ %.1.i.epil, %bb.r ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %indvars.iv.i146.epil
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !371 ; 2 uses
  %i.gg = fcmp olt float %i.gf, %i.gc             ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.i146.epil to i32
  %.1.i.epil = select i1 %i.gg, i32 %i.gh, i32 %.013.i.epil ; 2 uses
  %indvars.iv.next.i147.epil = add nuw nsw i64 %indvars.iv.i146.epil, 1
  %i.gi = select i1 %i.gg, float %i.gf, float %i.gc
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.r, !llvm.loop !379

._crit_edge.loopexit.i:                           ; preds = %bb.r, %._crit_edge.loopexit.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.7, %._crit_edge.loopexit.i.unr-lcssa ], [ %.1.i.epil, %bb.r ]
  %i.gj = zext nneg i32 %.1.i.lcssa to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.p
  %.0.lcssa.i = phi i64 [ 0, %bb.p ], [ %i.gj, %._crit_edge.loopexit.i ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.pre15.i, i64 %.0.lcssa.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4 ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !371
  %i.gn = fcmp ogt float %i.dw, %i.gm
  br i1 %i.gn, label %bb.s, label %_ZL4add5if.exit

bb.s:                                             ; preds = %._crit_edge.i
  store float %i.dw, ptr %i.gl, align 4, !tbaa !371
  store i32 %i.ea, ptr %i.gk, align 4, !tbaa !369
  br label %_ZL4add5if.exit

_ZL4add5if.exit:                                  ; preds = %bb.s, %._crit_edge.i, %bb.o
  %i.go = fcmp ogt float %i.dw, %.0123191
  %.1124 = select i1 %i.go, float %i.dw, float %.0123191 ; 2 uses
  %i.gp = fadd float %.0122192, %i.dw             ; 2 uses
  br i1 %i.x, label %.lr.ph187, label %.loopexit

.lr.ph187:                                        ; preds = %_ZL4add5if.exit, %bb.u
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %bb.u ], [ 0, %_ZL4add5if.exit ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv218
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !9
  %i.gs = load i32, ptr %i.bp, align 4, !tbaa !31
  %i.gt = icmp eq i32 %i.gr, %i.gs
  br i1 %i.gt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph187
  %i.gu = load ptr, ptr %i.am, align 8, !tbaa !375
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.cn
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !101
  %i.gx = call noundef float @cbrtf(float noundef %i.gw) #26
  %i.gy = call noundef float @sqrtf(float noundef %i.gx) #22
  %i.gz = fdiv float 1.000000e+00, %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv218
  store float %i.gz, ptr %i.ha, align 4, !tbaa !101
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph187, %bb.t
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph187, !llvm.loop !380

.loopexit:                                        ; preds = %bb.u, %_ZL4add5if.exit, %bb.n
  %.1127 = phi i32 [ %.0126189, %bb.n ], [ %i.dy, %_ZL4add5if.exit ], [ %i.dy, %bb.u ] ; 2 uses
  %.2 = phi float [ %.0123191, %bb.n ], [ %.1124, %_ZL4add5if.exit ], [ %.1124, %bb.u ] ; 2 uses
  %.1 = phi float [ %.0122192, %bb.n ], [ %i.gp, %_ZL4add5if.exit ], [ %i.gp, %bb.u ] ; 2 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.hb = load ptr, ptr %i.s, align 8, !tbaa !286 ; 2 uses
  %i.hc = load ptr, ptr %1, align 8, !tbaa !258   ; 2 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = lshr exact i64 %i.hf, 2
  %i.hh = trunc i64 %i.hg to i32                  ; 2 uses
  %i.hi = icmp slt i32 %i.ck, %i.hh
  br i1 %i.hi, label %bb.f, label %._crit_edge194.loopexit, !llvm.loop !381

._crit_edge194.loopexit:                          ; preds = %.loopexit
  %i.hj = trunc nuw i64 %indvars.iv.next222 to i32
  br label %._crit_edge194

._crit_edge194:                                   ; preds = %.preheader.._crit_edge194_crit_edge, %._crit_edge194.loopexit
  %.pre-phi = phi i64 [ %.pre225, %.preheader.._crit_edge194_crit_edge ], [ %i.an, %._crit_edge194.loopexit ]
  %.0126.lcssa = phi i32 [ 0, %.preheader.._crit_edge194_crit_edge ], [ %.1127, %._crit_edge194.loopexit ]
  %.0125.lcssa = phi i32 [ 0, %.preheader.._crit_edge194_crit_edge ], [ %i.hj, %._crit_edge194.loopexit ] ; 2 uses
  %.0123.lcssa = phi float [ 0.000000e+00, %.preheader.._crit_edge194_crit_edge ], [ %.2, %._crit_edge194.loopexit ]
  %.0122.lcssa = phi float [ 0.000000e+00, %.preheader.._crit_edge194_crit_edge ], [ %.1, %._crit_edge194.loopexit ] ; 2 uses
  %.lcssa169 = phi i32 [ %i.ai, %.preheader.._crit_edge194_crit_edge ], [ %i.hh, %._crit_edge194.loopexit ]
  %i.hk = getelementptr inbounds [56 x i8], ptr %6, i64 %.pre-phi ; 5 uses
  store i32 %.0126.lcssa, ptr %i.hk, align 8, !tbaa !281
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store float %.0123.lcssa, ptr %i.hl, align 8, !tbaa !280
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store float %.0122.lcssa, ptr %i.hm, align 8, !tbaa !277
  %i.hn = uitofp nneg i32 %.0125.lcssa to float
  %i.ho = fdiv float %.0122.lcssa, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store float %i.ho, ptr %i.hp, align 4, !tbaa !279
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !285
  %i.hs = add nsw i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !285
  %.b = load i1, ptr @_ZZL10check_violP8_IO_FILERK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEPA3_fPA4_fP5t_pbcP11t_dr_resultiiPKiPfP12t_disresdataE6bFirst, align 1
  br i1 %.b, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge194
  %i.ht = load ptr, ptr @stderr, align 8, !tbaa !358
  %i.hu = sdiv i32 %.lcssa169, %i.ab
  %i.hv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ht, ptr noundef nonnull @.str.80, i32 noundef %.0125.lcssa, i32 noundef %i.hu) #28 ; 0 uses
  store i1 true, ptr @_ZZL10check_violP8_IO_FILERK15InteractionListN3gmx8ArrayRefIK9t_iparamsEEPA3_fPA4_fP5t_pbcP11t_dr_resultiiPKiPfP12t_disresdataE6bFirst, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge194
  %i.hw = load i32, ptr @_ZL4ntop, align 4, !tbaa !9 ; 4 uses
  %.not140 = icmp eq i32 %i.hw, 0
  br i1 %.not140, label %bb.am, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hx = load ptr, ptr @_ZL3top, align 8, !tbaa !32 ; 20 uses
  %i.hy = sext i32 %i.hw to i64                   ; 2 uses
  %.idx.i = shl nsw i64 %i.hy, 3                  ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hx, i64 %.idx.i ; 3 uses
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hy, i1 true)
  %i.ic = shl nuw nsw i64 %i.ib, 1
  %i.id = xor i64 %i.ic, 126
  call fastcc void @"_ZSt16__introsort_loopIP8t_toppoplN9__gnu_cxx5__ops15_Iter_comp_iterIZL6print5P8_IO_FILEE3$_0EEEvT_S9_T0_T1_"(ptr noundef %i.hx, ptr noundef nonnull %i.hz, i64 noundef %i.id)
  %i.ie = icmp sgt i32 %i.hw, 16
  br i1 %i.ie, label %bb.y, label %.preheader.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.if = getelementptr i8, ptr %i.hx, i64 4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.hx, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %bb.y
  %.019.i.idx.i.i.i.i = phi i64 [ 8, %bb.y ], [ %.019.i.add.i.i.i.i, %bb.ae ] ; 4 uses
  %.pn18.i.i.i.i.i = phi ptr [ %i.hx, %bb.y ], [ %.019.i.ptr.i.i.i.i, %bb.ae ] ; 3 uses
  %.019.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.019.i.idx.i.i.i.i ; 5 uses
  %i.ig = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 12
  %.0.val.i.i.i.i.i = load float, ptr %i.ig, align 4 ; 4 uses
  %.val.i.i.i.i.i = load float, ptr %i.if, align 4, !tbaa !371
  %i.ih = fcmp ogt float %.0.val.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.ih, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ii = load i64, ptr %.019.i.ptr.i.i.i.i, align 4
  %i.ij = icmp samesign ugt i64 %.019.i.idx.i.i.i.i, 8
  br i1 %i.ij, label %bb.ab, label %bb.ac, !prof !323

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.hx, i64 %.019.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIP8t_toppopS1_ET0_T_S3_S2_.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ik = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i, i64 8
  %i.il = load i64, ptr %i.hx, align 4
  store i64 %i.il, ptr %i.ik, align 4
  br label %_ZSt13move_backwardIP8t_toppopS1_ET0_T_S3_S2_.exit.i.i.i.i.i

_ZSt13move_backwardIP8t_toppopS1_ET0_T_S3_S2_.exit.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  store i64 %i.ii, ptr %i.hx, align 4
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.im = load i32, ptr %.019.i.ptr.i.i.i.i, align 4
  %i.in = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 4
  %.0.val12.i.i.i.i.i.i = load float, ptr %i.in, align 4, !tbaa !371
  %i.io = fcmp olt float %.0.val12.i.i.i.i.i.i, %.0.val.i.i.i.i.i
  br i1 %i.io, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP8t_toppopN9__gnu_cxx5__ops14_Val_comp_iterIZL6print5P8_IO_FILEE3$_0EEEvT_T0_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i
  %.0913.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.019.i.ptr.i.i.i.i, %bb.ad ] ; 3 uses
  %.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0913.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ip = load i64, ptr %.0.i.i.i.i.i.i, align 4
  store i64 %i.ip, ptr %.0913.i.i.i.i.i.i, align 4
  %i.iq = getelementptr i8, ptr %.0913.i.i.i.i.i.i, i64 -12
  %.0.val.i.i.i.i.i.i = load float, ptr %i.iq, align 4, !tbaa !371
  %i.ir = fcmp olt float %.0.val.i.i.i.i.i.i, %.0.val.i.i.i.i.i
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP8t_toppopN9__gnu_cxx5__ops14_Val_comp_iterIZL6print5P8_IO_FILEE3$_0EEEvT_T0_.exit.i.i.i.i.i", !llvm.loop !382

"_ZSt25__unguarded_linear_insertIP8t_toppopN9__gnu_cxx5__ops14_Val_comp_iterIZL6print5P8_IO_FILEE3$_0EEEvT_T0_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ad
end_hunk_2
