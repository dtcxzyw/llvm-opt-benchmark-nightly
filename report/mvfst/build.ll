Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/build?download=true
inline.NumInlined: 1798
inline.NumDeleted: 911
begin_hunk_0
%"class.std::set.175" = type { %"class.std::_Rb_tree.176" }
%"class.std::_Rb_tree.176" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%struct.DepfileParser = type <{ %"class.std::vector.181", %"class.std::vector.181", [8 x i8] }>
%"class.std::vector.181" = type { %"struct.std::_Vector_base.182" }
%"struct.std::_Vector_base.182" = type { %"struct.std::_Vector_base<StringPiece, std::allocator<StringPiece>>::_Vector_impl" }
%"struct.std::_Vector_base<StringPiece, std::allocator<StringPiece>>::_Vector_impl" = type { %"struct.std::_Vector_base<StringPiece, std::allocator<StringPiece>>::_Vector_impl_data" }
%"struct.std::_Vector_base<StringPiece, std::allocator<StringPiece>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNK4Node5dirtyEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE3popEv = comdat any

$_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE4pushERKS1_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZN17RealCommandRunnerD2Ev = comdat any

$_ZN17RealCommandRunnerD0Ev = comdat any

$_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRS1_EEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt8_Rb_treeIP4PoolS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt8_Rb_treeIPK4EdgeSt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZN13CommandRunner14GetActiveEdgesEv = comdat any

$_ZN13CommandRunner5AbortEv = comdat any

$_ZNSt5dequeIP4EdgeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_ = comdat any

$_ZNSt5dequeIP4EdgeSaIS1_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E = comdat any

$_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE17_M_emplace_uniqueIJS2_IS1_S5_EEEES2_ISt17_Rb_tree_iteratorIS6_EbEDpOT_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt15const_mem_fun_tIbS2_EEEET_SE_SE_T0_St26random_access_iterator_tag = comdat any

$_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE17_M_emplace_uniqueIJS3_IPS0_S6_EEEES3_ISt17_Rb_tree_iteratorIS7_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeIPK4EdgeSt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_emplace_uniqueIJS3_IPS0_lEEEES3_ISt17_Rb_tree_iteratorIS5_EbEDpOT_ = comdat any

@.str = private unnamed_addr constant [14 x i8] c", needed by '\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"',\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c" missing and no known rule to make it\00", align 1
@_ZZN4Plan19ComputeCriticalPathEvE16metrics_h_metric = internal unnamed_addr global ptr null, align 8
@_ZGVZN4Plan19ComputeCriticalPathEvE16metrics_h_metric = internal global i64 0, align 8
@g_metrics = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"ComputeCriticalPath\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"pending: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"want \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ready: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c".ninja_lock\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"unknown target: '\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"interrupted by user\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"subcommands failed\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"subcommand failed\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"cannot make progress due to previous errors\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"stuck [this is a bug]\00", align 1
@_ZZN7Builder9StartEdgeEP4EdgePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE16metrics_h_metric = internal unnamed_addr global ptr null, align 8
@_ZGVZN7Builder9StartEdgeEP4EdgePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE16metrics_h_metric = internal global i64 0, align 8
@.str.20 = private unnamed_addr constant [10 x i8] c"StartEdge\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"rspfile_content\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"command '\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"' failed.\00", align 1
@_ZZN7Builder13FinishCommandEPN13CommandRunner6ResultEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE16metrics_h_metric = internal unnamed_addr global ptr null, align 8
@_ZGVZN7Builder13FinishCommandEPN13CommandRunner6ResultEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE16metrics_h_metric = internal global i64 0, align 8
@.str.24 = private unnamed_addr constant [14 x i8] c"FinishCommand\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"msvc_deps_prefix\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"restat\00", align 1
@g_keep_rsp = external local_unnamed_addr global i8, align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Error writing to build log: \00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Error writing to deps log: \00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"edge with deps=gcc but no depfile makes no sense\00", align 1
@g_keep_depfile = external local_unnamed_addr global i8, align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"deleting depfile: \00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"unknown deps type '%s'\00", align 1
@_ZTV17RealCommandRunner = hidden unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZN17RealCommandRunnerD2Ev, ptr @_ZN17RealCommandRunnerD0Ev, ptr @_ZNK17RealCommandRunner10CanRunMoreEv, ptr @_ZN17RealCommandRunner12StartCommandEP4Edge, ptr @_ZN17RealCommandRunner14WaitForCommandEPN13CommandRunner6ResultE, ptr @_ZN17RealCommandRunner14GetActiveEdgesEv, ptr @_ZN17RealCommandRunner5AbortEv] }, align 8
@_ZTV17ImplicitDepLoader = external unnamed_addr constant { [3 x ptr] }, align 8
@_ZTVN12_GLOBAL__N_119DryRunCommandRunnerE = internal unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_119DryRunCommandRunnerD2Ev, ptr @_ZN12_GLOBAL__N_119DryRunCommandRunnerD0Ev, ptr @_ZNK12_GLOBAL__N_119DryRunCommandRunner10CanRunMoreEv, ptr @_ZN12_GLOBAL__N_119DryRunCommandRunner12StartCommandEP4Edge, ptr @_ZN12_GLOBAL__N_119DryRunCommandRunner14WaitForCommandEPN13CommandRunner6ResultE, ptr @_ZN13CommandRunner14GetActiveEdgesEv, ptr @_ZN13CommandRunner5AbortEv] }, align 8
@.str.36 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

@_ZN4PlanC1EP7Builder = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4PlanC2EP7Builder
@_ZN7BuilderC1EP5StateRK11BuildConfigP8BuildLogP7DepsLogP13DiskInterfaceP6Statusl = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64), ptr @_ZN7BuilderC2EP5StateRK11BuildConfigP8BuildLogP7DepsLogP13DiskInterfaceP6Statusl
@_ZN7BuilderD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7BuilderD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4PlanC2EP7Builder(ptr noundef nonnull align 8 dereferenceable(120) initializes((8, 12), (16, 24)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4Plan5ResetEv(ptr noundef nonnull align 8 dereferenceable(120) initializes((112, 120)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.b, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZN17EdgePriorityQueue5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !47
  br label %_ZN17EdgePriorityQueue5clearEv.exit

_ZN17EdgePriorityQueue5clearEv.exit:              ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !49
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !51
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #22
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !53
  store ptr %i.u, ptr %i.b, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !50
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPK4NodeSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.w = tail call noundef zeroext i1 @_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null)
  ret i1 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address) %3, ptr noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.std::pair.16", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 11 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i8, ptr %i.c, align 4, !tbaa !62, !range !63, !noundef !64
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.g = load i8, ptr %i.f, align 2, !tbaa !65, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !67
  store i8 0, ptr %i.i, align 8, !tbaa !68
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.k = load ptr, ptr %2, align 8, !tbaa !72, !noalias !69
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67, !noalias !69 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !66, !alias.scope !73
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !67, !alias.scope !73
  store i8 0, ptr %i.n, align 8, !tbaa !68, !alias.scope !73
  %i.p = add i64 %i.m, 13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.p) #23
  %i.q = load i64, ptr %i.o, align 8, !tbaa !67, !alias.scope !73
  %i.r = add i64 %i.q, -4611686018427387891
  %i.s = icmp ult i64 %i.r, 13
  br i1 %i.s, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.e
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str, i64 noundef 13) #23 ; 0 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !67, !alias.scope !73
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.m
  br i1 %i.w, label %bb.g, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.x = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.k, i64 noundef %i.m) #23 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.y = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !76
  %i.z = and i64 %i.y, -2
  %i.aa = icmp eq i64 %i.z, 4611686018427387902
  br i1 %i.aa, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20, !noalias !76
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.1, i64 noundef 2) #23, !noalias !76 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !66, !alias.scope !76
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !67 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ad, ptr %6, align 8, !tbaa !72, !alias.scope !76
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !68
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !68, !alias.scope !76
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = phi i64 [ %i.ah, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.al, ptr %i.an, align 8, !tbaa !67, !alias.scope !76
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !72
  store i64 0, ptr %i.am, align 8, !tbaa !67
  store i8 0, ptr %i.ae, align 8, !tbaa !68
  %i.ao = load ptr, ptr %5, align 8, !tbaa !72    ; 6 uses
  %i.ap = icmp eq ptr %i.ao, %i.i
  %i.aq = load ptr, ptr %6, align 8, !tbaa !72    ; 5 uses
  %i.ar = icmp eq ptr %i.aq, %i.ac                ; 2 uses
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  br i1 %i.ar, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  br i1 %i.ar, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.as = load i64, ptr %i.an, align 8, !tbaa !67 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  switch i64 %i.as, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !68
  store i8 %i.au, ptr %i.ao, align 1, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.av = load i64, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  store i64 %i.av, ptr %i.j, align 8, !tbaa !67
  %i.aw = load ptr, ptr %5, align 8, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !tbaa !68
  %.pre.i30 = load ptr, ptr %6, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aq, ptr %5, align 8, !tbaa !72
  %i.ay = load <2 x i64>, ptr %i.an, align 8, !tbaa !68
  store <2 x i64> %i.ay, ptr %i.j, align 8, !tbaa !68
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.az = load i64, ptr %i.i, align 8, !tbaa !68
  store ptr %i.aq, ptr %5, align 8, !tbaa !72
  %i.ba = load <2 x i64>, ptr %i.an, align 8, !tbaa !68
  store <2 x i64> %i.ba, ptr %i.j, align 8, !tbaa !68
end_hunk_0
begin_hunk_1_@_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE3popEv:bb.a
  %i.l = sub i64 %i.k, %i.e                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = sdiv i64 %i.n, 2
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i
  %.034.i.i.i = phi i64 [ %spec.select.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.q = shl i64 %.034.i.i.i, 1                   ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !145  ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !145  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.y = load i64, ptr %i.x, align 8, !tbaa !151  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = icmp slt i64 %i.y, %i.aa
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !152
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !152
  %i.ag = icmp ugt i64 %i.ad, %i.af
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi i1 [ %i.ab, %bb.c ], [ %i.ag, %bb.d ]
  %spec.select.i.i.i = select i1 %.0.i.i.i.i.i, i64 %i.t, i64 %i.r ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.a, i64 %spec.select.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !145
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.034.i.i.i
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !145
  %i.ak = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !153

._crit_edge.i.i.i:                                ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i.i ] ; 5 uses
  %i.al = and i64 %i.l, 8
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.an = add nsw i64 %i.m, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = shl nsw i64 %.0.lcssa.i.i.i, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !145
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !145
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.ar, %bb.f ], [ %.0.lcssa.i.i.i, %bb.e ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.av = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !151 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.019.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.0920.i.i78.i.i, %bb.i ] ; 4 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i78.i.i = lshr i64 %.0920.in.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0920.i.i78.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !145 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bc, %i.ax
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.h
  %i.bd = icmp slt i64 %i.bc, %i.ax
  br i1 %i.bd, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i: ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !152
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !152
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i, %.split.i.i.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.019.i.i.i.i
  store ptr %i.ba, ptr %i.bi, align 8, !tbaa !145
  %.not.i.i = icmp eq i64 %.0920.i.i78.i.i, 0
  br i1 %.not.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i, label %bb.h, !llvm.loop !154

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i, %.split.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.g ], [ %.019.i.i.i.i, %.split.i.i.i.i ], [ 0, %bb.i ], [ %.019.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i.i ]
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa.i.i.i.i
  store ptr %i.i, ptr %i.bj, align 8, !tbaa !145
  br label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit: ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI16EdgePriorityLessEEEvT_SD_SD_RT0_.exit.i
  %i.bk = getelementptr inbounds i8, ptr %i.c, i64 -8
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !155
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2, ptr %i.b, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157  ; 4 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !159
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Pool9DelayEdgeEP4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull %i.f) #23
  tail call void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull %i.k) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4Pool13EdgeScheduledERK4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(168) %i.f) #23
  call void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare void @_ZN4Pool9DelayEdgeEP4Edge(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #4

declare void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #4

declare void @_ZN4Pool13EdgeScheduledERK4Edge(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !145
  store ptr %i.e, ptr %i.b, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !47
  %.pre = load ptr, ptr %0, align 8, !tbaa !150
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !145
  store ptr %i.t, ptr %i.s, align 8, !tbaa !145
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #22
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !46
  store ptr %i.v, ptr %i.a, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !166
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.x = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !145 ; 3 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ag = icmp sgt i64 %i.ae, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !151 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.0920.i56.i, %bb.h ] ; 4 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i56.i = lshr i64 %.0920.in.i.i, 1        ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.0920.i56.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !145 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.an = load i64, ptr %i.am, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.an, %i.ai
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.g
  %i.ao = icmp slt i64 %i.an, %i.ai
  br i1 %i.ao, label %bb.h, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i: ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !152
  %i.ar = load i64, ptr %i.aj, align 8, !tbaa !152
  %i.as = icmp ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.h, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, %.split.i.i
  %i.at = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.019.i.i
  store ptr %i.al, ptr %i.at, align 8, !tbaa !145
  %.not.i3 = icmp eq i64 %.0920.i56.i, 0
  br i1 %.not.i3, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit, label %bb.g, !llvm.loop !154

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPP4EdgeSt6vectorIS3_SaIS3_EEEE16EdgePriorityLessEvT_SA_T0_.exit: ; preds = %.split.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, %bb.h, %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit
  %.0.lcssa.i.i = phi i64 [ %i.af, %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit ], [ %.019.i.i, %.split.i.i ], [ 0, %bb.h ], [ %.019.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI16EdgePriorityLessEclINS_17__normal_iteratorIPP4EdgeSt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i ]
  %i.au = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.0.lcssa.i.i
  store ptr %i.aa, ptr %i.au, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4Plan12EdgeFinishedEP4EdgeNS_10EdgeResultEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.f = icmp ult ptr %i.e, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !167

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145
  %i.j = icmp ult ptr %1, %i.i
  %spec.select.i.i = select i1 %i.j, ptr %i.c, ptr %.19.i.i.i
  br label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i ], [ %spec.select.i.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !155
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !158  ; 2 uses
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull %i.o) #23
  %.not8 = icmp eq i32 %2, 1
  br i1 %.not8, label %bb.e, label %.loopexit

.thread:                                          ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit
  tail call void @_ZN4Pool12EdgeFinishedERK4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(168) %1) #23
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !158
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull %i.q) #23
  %.not818 = icmp eq i32 %2, 1
  br i1 %.not818, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.u = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !48
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 1, ptr %i.y, align 8, !tbaa !95
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !148 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148
  %.not2021 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not2021, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !148
  %.not20 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not20, label %.loopexit, label %.lr.ph, !llvm.loop !168

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.09.022 = phi ptr [ %i.ad, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.09.022, align 8, !tbaa !51
  %i.ag = tail call noundef zeroext i1 @_ZN4Plan12NodeFinishedEP4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.af, ptr noundef %3) ; 3 uses
  br i1 %i.ag, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.e, %.thread, %bb.c
  %.1 = phi i1 [ true, %.thread ], [ true, %bb.c ], [ true, %bb.e ], [ %i.ag, %bb.f ], [ %i.ag, %.lr.ph ]
  ret i1 %.1
}

declare void @_ZN4Pool12EdgeFinishedERK4Edge(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4Plan12NodeFinishedEP4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.DyndepFile, align 8         ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.c = load i8, ptr %i.b, align 1, !tbaa !169, !range !63, !noundef !64
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #23, !call_target !170, !inline_history !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
end_hunk_1
begin_hunk_2_@_ZN4Plan9CleanNodeEP14DependencyScanP4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.033.073, i64 8 ; 2 uses
  %.not65 = icmp eq ptr %i.au, %i.ak
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !181

bb.i:                                             ; preds = %._crit_edge
  %i.av = load i8, ptr %i.a, align 1, !tbaa !179, !range !63, !noundef !64
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.thread60, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %.sroa.046.082, align 8, !tbaa !145 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !148 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !148
  %.not6676 = icmp eq ptr %i.az, %i.bb
  br i1 %.not6676, label %._crit_edge80, label %.lr.ph79

bb.k:                                             ; preds = %.lr.ph79
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.030.077, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %.sroa.046.082, align 8, !tbaa !145 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !148
  %.not66 = icmp eq ptr %i.bc, %i.bf
  br i1 %.not66, label %._crit_edge80, label %.lr.ph79, !llvm.loop !182

.lr.ph79:                                         ; preds = %bb.j, %bb.k
  %.sroa.030.077 = phi ptr [ %i.bc, %bb.k ], [ %i.az, %bb.j ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.030.077, align 8, !tbaa !51
  %i.bh = call noundef zeroext i1 @_ZN4Plan9CleanNodeEP14DependencyScanP4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %1, ptr noundef %i.bg, ptr noundef %3)
  br i1 %i.bh, label %bb.k, label %.critedge

._crit_edge80:                                    ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.ax, %bb.j ], [ %i.bd, %bb.k ]
  store i32 0, ptr %i.w, align 8, !tbaa !155
  %i.bj = load i32, ptr %i.i, align 4, !tbaa !45
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.i, align 4, !tbaa !45
  %i.bl = call noundef zeroext i1 @_ZNK4Edge8is_phonyEv(ptr noundef nonnull align 8 dereferenceable(168) %i.bi) #23
  br i1 %i.bl, label %.thread60, label %bb.l

bb.l:                                             ; preds = %._crit_edge80
  %i.bm = load i32, ptr %i.j, align 8, !tbaa !44
  %i.bn = add nsw i32 %i.bm, -1
  store i32 %i.bn, ptr %i.j, align 8, !tbaa !44
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !22  ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %.thread60, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !107 ; 2 uses
  %i.br = load ptr, ptr %.sroa.046.082, align 8, !tbaa !145
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !131
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef %i.br) #23, !call_target !183
  br label %.thread60

.thread60:                                        ; preds = %._crit_edge80, %bb.m, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread

.critedge:                                        ; preds = %._crit_edge, %.lr.ph79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.loopexit

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %.lr.ph86.split, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit, %bb.c, %bb.d, %.thread60, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.046.082, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !150
  %.not64 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not64, label %.loopexit, label %.lr.ph86.splitthread-pre-split, !llvm.loop !184

.loopexit:                                        ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread, %.lr.ph86, %bb.a, %.critedge
  %.not6470 = phi i1 [ false, %.critedge ], [ true, %bb.a ], [ true, %.lr.ph86 ], [ true, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread ]
  ret i1 %.not6470
}

declare noundef zeroext i1 @_ZN14DependencyScan21RecomputeOutputsDirtyEP4EdgeP4NodePbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4Plan13DyndepsLoadedEP14DependencyScanPK4NodeRK10DyndepFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %3, ptr noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::set", align 8          ; 15 uses
  %i.b = tail call noundef zeroext i1 @_ZN4Plan23RefreshDyndepDependentsEP14DependencyScanPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr noundef %4)
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not109 = icmp eq ptr %i.d, %i.e
  br i1 %.not109, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !48
  br label %.critedge25

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr null, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.m, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i64 0, ptr %i.q, align 8, !tbaa !48
  %.not100119 = icmp eq ptr %.sroa.088.2, %.sroa.7.2
  br i1 %.not100119, label %.critedge25, label %.lr.ph122

.lr.ph122:                                        ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit
  %.sroa.088.0113 = phi ptr [ null, %.lr.ph ], [ %.sroa.088.2, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit ] ; 12 uses
  %.sroa.7.0112 = phi ptr [ null, %.lr.ph ], [ %.sroa.7.2, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit ] ; 10 uses
  %.sroa.11.0111 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.2, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit ] ; 6 uses
  %.sroa.084.0110 = phi ptr [ %i.d, %.lr.ph ], [ %i.bm, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.084.0110, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = load i8, ptr %i.u, align 8, !tbaa !95, !range !63, !noundef !64
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.d ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !145
  %i.aa = icmp ult ptr %i.z, %i.t                 ; 2 uses
  %.19.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !167

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.ab, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !145
  %i.ae = icmp ult ptr %i.t, %i.ad
  br i1 %i.ae, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit
  %.not.i = icmp eq ptr %.sroa.7.0112, %.sroa.11.0111
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ptrtoint ptr %.sroa.084.0110 to i64
  store i64 %i.af, ptr %.sroa.7.0112, align 8, !tbaa !144
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0112, i64 8
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %.sroa.7.0112 to i64       ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.088.0113 to i64     ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i26 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i26)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #21 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  %i.at = ptrtoint ptr %.sroa.084.0110 to i64
  store i64 %i.at, ptr %i.as, align 8, !tbaa !144
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.088.0113, %.sroa.7.0112
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.au = ptrtoaddr ptr %i.ar to i64
  %i.av = add i64 %i.ah, -8
  %i.aw = sub i64 %i.av, %i.ai                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 24
  %i.az = sub i64 %i.ai, %i.au
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ar, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.088.0113, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %next.gep172 = getelementptr i8, ptr %.sroa.088.0113, i64 %i.bd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.be = getelementptr i8, ptr %next.gep172, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep172, align 8, !tbaa !144, !alias.scope !191, !noalias !188
  %wide.load173 = load <2 x i64>, ptr %i.be, align 8, !tbaa !144, !alias.scope !191, !noalias !188
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !144, !alias.scope !188, !noalias !191
  store <2 x i64> %wide.load173, ptr %i.bf, align 8, !tbaa !144, !alias.scope !188, !noalias !191
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader177

.lr.ph.i.i.i.i.i.i.preheader177:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.088.0113, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader177, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader177 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader177 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.bh = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !144, !alias.scope !191, !noalias !188
  store i64 %i.bh, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !144, !alias.scope !188, !noalias !191
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, %.sroa.7.0112
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !196

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bb, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %.sroa.088.0113, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.088.0113) #22
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.d, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit, %bb.f, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.c
  %.sroa.11.2 = phi ptr [ %.sroa.11.0111, %bb.c ], [ %.sroa.11.0111, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit ], [ %.sroa.11.0111, %bb.f ], [ %i.bl, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.11.0111, %bb.d ], [ %.sroa.11.0111, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i ]
  %.sroa.7.2 = phi ptr [ %.sroa.7.0112, %bb.c ], [ %.sroa.7.0112, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit ], [ %i.ag, %bb.f ], [ %i.bk, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.7.0112, %bb.d ], [ %.sroa.7.0112, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i ] ; 3 uses
  %.sroa.088.2 = phi ptr [ %.sroa.088.0113, %bb.c ], [ %.sroa.088.0113, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit ], [ %.sroa.088.0113, %bb.f ], [ %i.ar, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.088.0113, %bb.d ], [ %.sroa.088.0113, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i ] ; 6 uses
  %i.bm = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.084.0110) #24 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.e
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !197

bb.j:                                             ; preds = %.lr.ph122, %.critedge
  %.sroa.078.0120 = phi ptr [ %.sroa.088.2, %.lr.ph122 ], [ %i.ce, %.critedge ] ; 2 uses
  %i.bn = load i64, ptr %.sroa.078.0120, align 8, !tbaa !144
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !148 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !148
  %.not103115 = icmp eq ptr %i.br, %i.bt
  br i1 %.not103115, label %.critedge, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.j, %bb.l
  %.sroa.071.0116 = phi ptr [ %i.cc, %bb.l ], [ %i.br, %bb.j ] ; 2 uses
  %i.bu = load ptr, ptr %.sroa.071.0116, align 8, !tbaa !51
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !185
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !198
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51
  %i.bz = call noundef zeroext i1 @_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.bu, ptr noundef %i.by, ptr noundef %4, ptr noundef nonnull %5)
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph118
  %i.ca = load i64, ptr %i.r, align 8, !tbaa !67
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.l, label %_ZN4Plan14EdgeMaybeReadyESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %.lr.ph118, %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.071.0116, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !148
  %.not103 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not103, label %.critedge, label %.lr.ph118, !llvm.loop !199

.critedge:                                        ; preds = %bb.l, %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.078.0120, i64 8 ; 2 uses
  %.not100.a = icmp eq ptr %i.ce, %.sroa.7.2
  br i1 %.not100.a, label %.critedge25, label %bb.j, !llvm.loop !200

.critedge25:                                      ; preds = %.critedge, %._crit_edge.thread, %._crit_edge
  %i.cf = phi ptr [ %i.j, %._crit_edge.thread ], [ %i.q, %._crit_edge ], [ %i.q, %.critedge ] ; 2 uses
  %i.cg = phi ptr [ %i.h, %._crit_edge.thread ], [ %i.o, %._crit_edge ], [ %i.o, %.critedge ] ; 2 uses
  %i.ch = phi ptr [ %i.g, %._crit_edge.thread ], [ %i.n, %._crit_edge ], [ %i.n, %.critedge ] ; 5 uses
  %i.ci = phi ptr [ %i.f, %._crit_edge.thread ], [ %i.m, %._crit_edge ], [ %i.m, %.critedge ] ; 5 uses
  %.sroa.088.0.lcssa164 = phi ptr [ null, %._crit_edge.thread ], [ %.sroa.088.2, %._crit_edge ], [ %.sroa.088.2, %.critedge ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !150 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !150 ; 2 uses
  %.not101123 = icmp eq ptr %i.ck, %i.cm
  br i1 %.not101123, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %.critedge25
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !19 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %._crit_edge126, label %.lr.ph125.split

._crit_edge126:                                   ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit39.thread, %.lr.ph125, %.critedge25
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !20 ; 2 uses
  %.not102127 = icmp eq ptr %i.cr, %i.ci
  br i1 %.not102127, label %_ZN4Plan14EdgeMaybeReadyESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph131

.lr.ph131:                                        ; preds = %._crit_edge126
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !19 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN4Plan14EdgeMaybeReadyESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph131.split

.lr.ph125.splitthread-pre-split:                  ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit39.thread
  %.pr = load ptr, ptr %i.cn, align 8, !tbaa !19
  br label %.lr.ph125.split

.lr.ph125.split:                                  ; preds = %.lr.ph125, %.lr.ph125.splitthread-pre-split
  %i.cx = phi ptr [ %.pr, %.lr.ph125.splitthread-pre-split ], [ %i.cp, %.lr.ph125 ] ; 2 uses
  %i.cy = phi ptr [ %i.dz, %.lr.ph125.splitthread-pre-split ], [ %i.cm, %.lr.ph125 ] ; 4 uses
  %.sroa.067.0124 = phi ptr [ %i.ea, %.lr.ph125.splitthread-pre-split ], [ %i.ck, %.lr.ph125 ] ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %i.cx, null
  br i1 %.not10.i.i.i27, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit39.thread, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph125.split
  %i.cz = load ptr, ptr %.sroa.067.0124, align 8, !tbaa !145 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.cx, %.lr.ph.i.i.i28 ], [ %.1.i.i.i34, %bb.m ] ; 3 uses
  %.0811.i.i.i30 = phi ptr [ %i.co, %.lr.ph.i.i.i28 ], [ %.19.i.i.i31, %bb.m ]
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !145
  %i.dc = icmp ult ptr %i.db, %i.cz               ; 2 uses
  %.19.i.i.i31 = select i1 %i.dc, ptr %.0811.i.i.i30, ptr %.012.i.i.i29 ; 3 uses
  %.1.in.v.i.i.i32 = select i1 %i.dc, i64 24, i64 16
  %.1.in.i.i.i33 = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 %.1.in.v.i.i.i32
  %.1.i.i.i34 = load ptr, ptr %.1.in.i.i.i33, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %.1.i.i.i34, null
  br i1 %.not.i.i.i35, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i36, label %bb.m, !llvm.loop !167

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i36: ; preds = %bb.m
  %i.dd = icmp eq ptr %.19.i.i.i31, %i.co
  br i1 %i.dd, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit39.thread, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit39

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit39: ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i36
  %i.de = getelementptr inbounds nuw i8, ptr %.19.i.i.i31, i64 32 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !145 ; 4 uses
  %i.dg = icmp ult ptr %i.cz, %i.df
  br i1 %i.dg, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit39.thread, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit39
  %.02022.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !144 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i40
end_hunk_2
begin_hunk_3_@_ZN4Plan13DyndepsLoadedEP14DependencyScanPK4NodeRK10DyndepFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph131.splitthread-pre-split:                  ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread
  %.pr165 = load ptr, ptr %i.cs, align 8, !tbaa !19
  br label %.lr.ph131.split

.lr.ph131.split:                                  ; preds = %.lr.ph131, %.lr.ph131.splitthread-pre-split
  %i.eb = phi ptr [ %.pr165, %.lr.ph131.splitthread-pre-split ], [ %i.cv, %.lr.ph131 ] ; 2 uses
  %.sroa.060.0128 = phi ptr [ %i.ew, %.lr.ph131.splitthread-pre-split ], [ %i.cr, %.lr.ph131 ] ; 2 uses
  %.not10.i.i.i42 = icmp eq ptr %i.eb, null
  br i1 %.not10.i.i.i42, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread, label %.lr.ph.i.i.i43

.lr.ph.i.i.i43:                                   ; preds = %.lr.ph131.split
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.060.0128, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !145 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i43
  %.012.i.i.i44 = phi ptr [ %i.eb, %.lr.ph.i.i.i43 ], [ %.1.i.i.i49, %bb.r ] ; 3 uses
  %.0811.i.i.i45 = phi ptr [ %i.ct, %.lr.ph.i.i.i43 ], [ %.19.i.i.i46, %bb.r ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i.i44, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !145
  %i.eg = icmp ult ptr %i.ef, %i.ed               ; 2 uses
  %.19.i.i.i46 = select i1 %i.eg, ptr %.0811.i.i.i45, ptr %.012.i.i.i44 ; 5 uses
  %.1.in.v.i.i.i47 = select i1 %i.eg, i64 24, i64 16
  %.1.in.i.i.i48 = getelementptr inbounds nuw i8, ptr %.012.i.i.i44, i64 %.1.in.v.i.i.i47
  %.1.i.i.i49 = load ptr, ptr %.1.in.i.i.i48, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %.1.i.i.i49, null
  br i1 %.not.i.i.i50, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i51, label %bb.r, !llvm.loop !167

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i51: ; preds = %bb.r
  %i.eh = icmp eq ptr %.19.i.i.i46, %i.ct
  br i1 %i.eh, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54: ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i51
  %i.ei = getelementptr inbounds nuw i8, ptr %.19.i.i.i46, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !145
  %i.ek = icmp ult ptr %i.ed, %i.ej
  br i1 %i.ek, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread, label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54
  %i.el = getelementptr inbounds nuw i8, ptr %.19.i.i.i46, i64 32 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !157 ; 2 uses
  %i.en = call noundef zeroext i1 @_ZNK4Edge14AllInputsReadyEv(ptr noundef nonnull align 8 dereferenceable(168) %i.em) #23, !inline_history !174
  br i1 %i.en, label %bb.t, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread

bb.t:                                             ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %.19.i.i.i46, i64 40 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !155
  switch i32 %i.ep, label %bb.u [
    i32 0, label %bb.y
    i32 2, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread
  ]

bb.u:                                             ; preds = %bb.t
  store i32 2, ptr %i.eo, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !157 ; 4 uses
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !145
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !158 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 36
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !159
  %.not.i57 = icmp eq i32 %i.eu, 0
  br i1 %.not.i57, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN4Pool9DelayEdgeEP4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.es, ptr noundef nonnull %i.eq) #23
  call void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88) %i.es, ptr noundef nonnull %i.cu) #23
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @_ZN4Pool13EdgeScheduledERK4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.es, ptr noundef nonnull align 8 dereferenceable(168) %i.eq) #23
  call void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread

bb.y:                                             ; preds = %bb.t
  %i.ev = call noundef zeroext i1 @_ZN4Plan12EdgeFinishedEP4EdgeNS_10EdgeResultEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.em, i32 noundef 1, ptr noundef %4), !inline_history !174
  br i1 %i.ev, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread, label %_ZN4Plan14EdgeMaybeReadyESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread: ; preds = %bb.t, %bb.x, %bb.y, %bb.s, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i51, %.lr.ph131.split, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54
  %i.ew = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.060.0128) #24 ; 2 uses
  %.not102 = icmp eq ptr %i.ew, %i.ci
  br i1 %.not102, label %_ZN4Plan14EdgeMaybeReadyESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph131.splitthread-pre-split, !llvm.loop !202

_ZN4Plan14EdgeMaybeReadyESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.k, %bb.y, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread, %.lr.ph131, %._crit_edge126
  %i.ex = phi ptr [ %i.ch, %.lr.ph131 ], [ %i.ch, %._crit_edge126 ], [ %i.ch, %bb.y ], [ %i.ch, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread ], [ %i.n, %bb.k ]
  %.sroa.088.0.lcssa163 = phi ptr [ %.sroa.088.0.lcssa164, %.lr.ph131 ], [ %.sroa.088.0.lcssa164, %._crit_edge126 ], [ %.sroa.088.0.lcssa164, %bb.y ], [ %.sroa.088.0.lcssa164, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread ], [ %.sroa.088.2, %bb.k ] ; 2 uses
  %.6 = phi i1 [ true, %.lr.ph131 ], [ true, %._crit_edge126 ], [ false, %bb.y ], [ true, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit54.thread ], [ false, %bb.k ] ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !19
  call void @_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i.i56 = icmp eq ptr %.sroa.088.0.lcssa163, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4Plan14EdgeMaybeReadyESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.088.0.lcssa163) #22
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EED2Ev.exit

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKP4Edge7DyndepsEESaIS7_EED2Ev.exit: ; preds = %bb.z, %_ZN4Plan14EdgeMaybeReadyESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.a
  %.7 = phi i1 [ false, %bb.a ], [ %.6, %_ZN4Plan14EdgeMaybeReadyESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.6, %bb.z ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4Plan23RefreshDyndepDependentsEP14DependencyScanPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.std::set.56", align 8       ; 9 uses
  %5 = alloca %"class.std::vector.11", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !48
  call void @_ZN4Plan16UnmarkDependentsEPK4NodePSt3setIPS0_St4lessIS4_ESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %2, ptr noundef nonnull %4)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %.not3641 = icmp eq ptr %i.f, %i.a
  br i1 %.not3641, label %.critedge22, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph45, %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt4
  %.sroa.032.042 = phi ptr [ %i.f, %.lr.ph45 ], [ %i.bz, %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt4 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.042, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.r = call noundef zeroext i1 @_ZN14DependencyScan14RecomputeDirtyEP4NodePSt6vectorIS1_SaIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %i.q, ptr noundef nonnull %5, ptr noundef %3) #23
  br i1 %i.r, label %bb.c, label %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt1

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %5, align 8, !tbaa !148    ; 2 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !148  ; 2 uses
  %.not3739 = icmp eq ptr %i.s, %i.t
  br i1 %.not3739, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.critedge
  %i.u = phi ptr [ %i.av, %.critedge ], [ %i.t, %bb.c ] ; 2 uses
  %.sroa.027.040 = phi ptr [ %i.aw, %.critedge ], [ %i.s, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.027.040, align 8, !tbaa !51 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = load i8, ptr %i.y, align 8, !tbaa !95, !range !63, !noundef !64
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !49  ; 4 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.ab, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !49
  br label %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !53  ; 4 uses
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #21 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %i.v, ptr %i.aq, align 8, !tbaa !51
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ae) #22
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !53
  store ptr %i.as, ptr %i.i, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.j, align 8, !tbaa !50
  br label %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.au = call noundef zeroext i1 @_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.v, ptr noundef null, ptr noundef %3, ptr noundef null)
  br i1 %i.au, label %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit..critedge_crit_edge, label %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt1

_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit..critedge_crit_edge: ; preds = %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !148
  br label %.critedge

.critedge:                                        ; preds = %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit..critedge_crit_edge, %bb.d, %.lr.ph
  %i.av = phi ptr [ %.pre, %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit..critedge_crit_edge ], [ %i.u, %bb.d ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.027.040, i64 8 ; 2 uses
  %.not37 = icmp eq ptr %i.aw, %i.av
  br i1 %.not37, label %._crit_edge, label %.lr.ph, !llvm.loop !203

._crit_edge:                                      ; preds = %.critedge, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !62, !range !63, !noundef !64
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt4

bb.k:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !54 ; 4 uses
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !19  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bc, %bb.k ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !145
  %i.bf = icmp ult ptr %i.be, %i.bb               ; 2 uses
  %.19.i.i.i = select i1 %i.bf, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !167

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.bg, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !145
  %i.bj = icmp ult ptr %i.bb, %i.bi
  %spec.select.i.i = select i1 %i.bj, ptr %i.l, ptr %.19.i.i.i
  br label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit: ; preds = %bb.k, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.l
  %.sroa.0.0.i.i = phi ptr [ %i.l, %bb.k ], [ %i.l, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i ], [ %spec.select.i.i, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !155
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt4

bb.m:                                             ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit
  store i32 1, ptr %i.bk, align 8, !tbaa !155
  %i.bn = load i32, ptr %i.m, align 4, !tbaa !45
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.m, align 4, !tbaa !45
  %i.bp = call noundef zeroext i1 @_ZNK4Edge8is_phonyEv(ptr noundef nonnull align 8 dereferenceable(168) %i.bb) #23
  br i1 %i.bp, label %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt4, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load i32, ptr %i.n, align 8, !tbaa !44
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.n, align 8, !tbaa !44
  %i.bs = load ptr, ptr %i.o, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt4, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !107 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !131
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.bb) #23, !call_target !133, !inline_history !143
  br label %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt4

_ZN4Plan10EdgeWantedEPK4Edge.exit.jt1:            ; preds = %bb.b, %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bx = load ptr, ptr %5, align 8, !tbaa !198   ; 2 uses
  %.not.i.i.i23.jt1 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i23.jt1, label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt1, label %bb.p

_ZN4Plan10EdgeWantedEPK4Edge.exit.jt4:            ; preds = %bb.m, %bb.n, %bb.o, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit, %._crit_edge
  %i.by = load ptr, ptr %5, align 8, !tbaa !198   ; 2 uses
  %.not.i.i.i23.jt4 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i23.jt4, label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt4, label %bb.q

bb.p:                                             ; preds = %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt1
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #22
  br label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt1

bb.q:                                             ; preds = %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt4
  call void @_ZdlPv(ptr noundef nonnull %i.by) #22
  br label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt4

_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt1:         ; preds = %bb.p, %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.critedge22

_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt4:         ; preds = %bb.q, %_ZN4Plan10EdgeWantedEPK4Edge.exit.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.032.042) #24 ; 2 uses
  %.not36 = icmp eq ptr %i.bz, %i.a
  br i1 %.not36, label %.critedge22, label %bb.b, !llvm.loop !204

.critedge22:                                      ; preds = %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt4, %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt1, %bb.a
  %.not36.lcssa = phi i1 [ true, %bb.a ], [ false, %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt1 ], [ true, %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit.jt4 ]
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.not36.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4Plan16UnmarkDependentsEPK4NodePSt3setIPS0_St4lessIS4_ESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 2 uses
  %.not2631 = icmp eq ptr %i.b, %i.d
  br i1 %.not2631, label %._crit_edge, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %._crit_edge, label %.lr.ph33.split

._crit_edge:                                      ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread, %.lr.ph33, %bb.a
  ret void

.lr.ph33.splitthread-pre-split:                   ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !19
  br label %.lr.ph33.split

.lr.ph33.split:                                   ; preds = %.lr.ph33, %.lr.ph33.splitthread-pre-split
  %i.m = phi ptr [ %.pr, %.lr.ph33.splitthread-pre-split ], [ %i.k, %.lr.ph33 ] ; 2 uses
  %i.n = phi ptr [ %i.bb, %.lr.ph33.splitthread-pre-split ], [ %i.d, %.lr.ph33 ] ; 5 uses
  %.sroa.018.032 = phi ptr [ %i.bc, %.lr.ph33.splitthread-pre-split ], [ %i.b, %.lr.ph33 ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.018.032, align 8, !tbaa !145 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph33.split, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %.lr.ph33.split ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %.lr.ph33.split ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !145
  %i.r = icmp ult ptr %i.q, %i.o                  ; 2 uses
  %.19.i.i.i = select i1 %i.r, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !167

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.s = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.s, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
end_hunk_3
begin_hunk_4_@_ZN4Plan20ScheduleInitialEdgesEv:bb.a

bb.f:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.aa = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #24
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !233
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %i.ab = phi ptr [ %.pre.i.i, %bb.f ], [ %i.w, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.f ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ac = icmp ult ptr %i.ab, %i.s
  br i1 %i.ac, label %select.unfold.i.i, label %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit

select.unfold.i.i:                                ; preds = %bb.g, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.g ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.b
  br i1 %i.ad, label %_ZNSt8_Rb_treeIP4PoolS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %select.unfold.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !233
  %i.ag = icmp ult ptr %i.s, %i.af
  br label %_ZNSt8_Rb_treeIP4PoolS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIP4PoolS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.h, %select.unfold.i.i
  %i.ah = phi i1 [ %i.ag, %bb.h ], [ true, %select.unfold.i.i ]
  %i.ai = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.s, ptr %i.aj, align 8, !tbaa !233
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #23
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !48
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.f, align 8, !tbaa !48
  br label %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit

bb.i:                                             ; preds = %bb.d
  %i.am = load i32, ptr %i.n, align 8, !tbaa !155
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.n, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !157 ; 4 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !145
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !158 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !159
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN4Pool9DelayEdgeEP4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull %i.ao) #23
  call void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull %i.j) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @_ZN4Pool13EdgeScheduledERK4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull align 8 dereferenceable(168) %i.ao) #23
  call void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit

_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit: ; preds = %_ZNSt8_Rb_treeIP4PoolS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %bb.g, %bb.i, %bb.m, %bb.b, %bb.c
  %i.at = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.012.020) #24 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !235

._crit_edge25:                                    ; preds = %bb.n, %bb.a, %._crit_edge
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !19
  call void @_ZNSt8_Rb_treeIP4PoolS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.n:                                             ; preds = %.lr.ph24, %bb.n
  %.sroa.05.022 = phi ptr [ %.pre, %.lr.ph24 ], [ %i.ax, %bb.n ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.05.022, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !233
  call void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88) %i.aw, ptr noundef nonnull %i.k) #23
  %i.ax = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.05.022) #24 ; 2 uses
  %.not16 = icmp eq ptr %i.ax, %i.b
  br i1 %.not16, label %._crit_edge25, label %bb.n, !llvm.loop !236
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4Plan12PrepareQueueEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4Plan19ComputeCriticalPathEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  tail call void @_ZN4Plan20ScheduleInitialEdgesEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4Plan4DumpEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(120) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = trunc i64 %i.b to i32
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.f, %i.g
  br i1 %.not56, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = trunc i64 %i.o to i32
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.p) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.01.07 = phi ptr [ %i.w, %bb.c ], [ %i.f, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.07, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.07, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !155
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !157
  tail call void @_ZNK4Edge4DumpEPKc(ptr noundef nonnull align 8 dereferenceable(168) %i.v, ptr noundef nonnull @.str.7) #23
  %i.w = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.07) #24 ; 2 uses
  %.not5 = icmp eq ptr %i.w, %i.g
  br i1 %.not5, label %._crit_edge, label %.lr.ph, !llvm.loop !237
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare void @_ZNK4Edge4DumpEPKc(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN17RealCommandRunner14GetActiveEdgesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(752) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %.not6 = icmp eq ptr %i.b, %i.c
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.ad, %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.02.07 = phi ptr [ %i.b, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !145
  store ptr %i.j, ptr %i.g, align 8, !tbaa !145
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !47
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #21 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !145
  store ptr %i.x, ptr %i.w, align 8, !tbaa !145
  %i.y = icmp sgt i64 %i.n, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.h, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #22
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.z, ptr %i.d, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !166
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ab = phi ptr [ %i.f, %bb.c ], [ %i.aa, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ac = phi ptr [ %i.k, %bb.c ], [ %i.z, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ad = phi ptr [ %i.h, %bb.c ], [ %i.v, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ae = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.07) #24 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !238
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN17RealCommandRunner5AbortEv(ptr noundef nonnull align 8 dereferenceable(752) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN13SubprocessSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(688) %i.a) #23
  ret void
}

declare void @_ZN13SubprocessSet5ClearEv(ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_ZNK17RealCommandRunner10CanRunMoreEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(752) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !242
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !243
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 3
  %i.s = icmp ne ptr %i.l, null
  %.neg.i.i.i.neg = zext i1 %i.s to i64
  %.neg17 = sub nsw i64 %.neg.i.i.i.neg, %i.r
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !248
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !249
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !247
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !250, !nonnull !64, !align !269 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !270
  %i.al = sext i32 %i.ak to i64
  %.neg11 = shl i64 %.neg17, 6
  %i.am = add nsw i64 %i.z, %i.h
  %i.an = add nsw i64 %i.am, %i.ag
  %.neg16 = sub i64 %.neg11, %i.an
  %i.ao = add i64 %.neg16, %i.al                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !275 ; 2 uses
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = tail call noundef double @_Z14GetLoadAveragev() #23
  %i.at = fsub double %i.aq, %i.as
  %i.au = fptosi double %i.at to i32
  %i.av = sext i32 %i.au to i64
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.ao, i64 %i.av)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %spec.select, %bb.b ], [ %i.ao, %bb.a ] ; 2 uses
  %i.aw = icmp slt i64 %.1, 1
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !276
  %i.az = icmp eq ptr %i.ax, %i.ay
  %spec.select10 = zext i1 %i.az to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i64 [ %.1, %bb.c ], [ %spec.select10, %bb.d ]
  ret i64 %.2
}

declare noundef double @_Z14GetLoadAveragev() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN17RealCommandRunner12StartCommandEP4Edge(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.std::pair.106", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK4Edge15EvaluateCommandB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(168) %1, i1 noundef zeroext false) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = call noundef zeroext i1 @_ZNK4Edge11use_consoleEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #23
  %i.c = call noundef ptr @_ZN13SubprocessSet3AddERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(688) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %i.b) #23 ; 2 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.e, align 8
  %i.f = call { ptr, i8 } @_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE17_M_emplace_uniqueIJS3_IPS0_S6_EEEES3_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.not
}

declare void @_ZNK4Edge15EvaluateCommandB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(168), i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZN13SubprocessSet3AddERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4Edge11use_consoleEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN17RealCommandRunner14WaitForCommandEPN13CommandRunner6ResultE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = tail call noundef ptr @_ZN13SubprocessSet12NextFinishedEv(ptr noundef nonnull align 8 dereferenceable(688) %i.a) #23 ; 7 uses
  %.not.not.not.not.not = icmp ne ptr %i.b, null  ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN13SubprocessSet6DoWorkEv(ptr noundef nonnull align 8 dereferenceable(688) %i.a) #23
  br i1 %i.c, label %.loopexit, label %bb.b, !llvm.loop !277

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZN10Subprocess6FinishEv(ptr noundef nonnull align 8 dereferenceable(41) %i.b) #23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.d, ptr %i.e, align 8, !tbaa !278
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10Subprocess9GetOutputB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(41) %i.b) #23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %bb.f, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN7Builder9AddTargetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.u = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i64 noundef 1) #23, !noalias !7101 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !66, !alias.scope !7101
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !72   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !67  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.w, ptr %3, align 8, !tbaa !72, !alias.scope !7101
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !68
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !68, !alias.scope !7101
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ae = phi ptr [ %i.v, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.af = phi i64 [ %i.aa, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !67, !alias.scope !7101
  store ptr %i.x, ptr %i.u, align 8, !tbaa !72
  store i64 0, ptr %i.ag, align 8, !tbaa !67
  store i8 0, ptr %i.x, align 8, !tbaa !68
  %i.ai = load ptr, ptr %2, align 8, !tbaa !72    ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  %i.al = icmp eq ptr %i.ae, %i.v                 ; 2 uses
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  br i1 %i.al, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  br i1 %i.al, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.am)
  %.not21.i = icmp eq ptr %3, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !94

bb.h:                                             ; preds = %bb.g
  switch i64 %i.af, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = load i8, ptr %i.ae, align 1, !tbaa !68
  store i8 %i.an, ptr %i.ai, align 1, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ae, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !67 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !67
  %i.aq = load ptr, ptr %2, align 8, !tbaa !72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !68
  %.pre.i10 = load ptr, ptr %3, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ae, ptr %2, align 8, !tbaa !72
  store i64 %i.af, ptr %i.as, align 8, !tbaa !67
  %i.at = load i64, ptr %i.v, align 8, !tbaa !68
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !68
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.au = load i64, ptr %i.aj, align 8, !tbaa !68
  store ptr %i.ae, ptr %2, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.af, ptr %i.av, align 8, !tbaa !67
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !68
  store i64 %i.aw, ptr %i.aj, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ai, ptr %3, align 8, !tbaa !72
  store i64 %i.au, ptr %i.v, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.v, ptr %3, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ax = phi ptr [ %i.ai, %bb.k ], [ %i.v, %bb.l ], [ %i.ae, %bb.g ], [ %.pre.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ah, align 8, !tbaa !67
  store i8 0, ptr %i.ax, align 1, !tbaa !68
  %i.ay = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.v
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ay) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.ba = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.h
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.bc = tail call noundef zeroext i1 @_ZN7Builder9AddTargetEP4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull %i.e, ptr noundef %2)
  %. = select i1 %i.bc, ptr %i.e, ptr null
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.0 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %., %bb.m ]
  ret ptr %.0
}

declare noundef ptr @_ZNK5State10LookupNodeE11StringPiece(ptr noundef nonnull align 8 dereferenceable(264), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN7Builder9AddTargetEP4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.std::vector.11", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = call noundef zeroext i1 @_ZN14DependencyScan14RecomputeDirtyEP4NodePSt6vectorIS1_SaIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %2) #23
  br i1 %i.b, label %bb.b, label %.loopexitthread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load i8, ptr %i.e, align 8, !tbaa !95, !range !63, !noundef !64
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %i.k, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !49
  br label %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !53   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #21 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %1, ptr %i.aa, align 8, !tbaa !51
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #22
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !53
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !50
  br label %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ae = call noundef zeroext i1 @_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef null)
  br i1 %i.ae, label %bb.j, label %.loopexitthread-pre-split

bb.j:                                             ; preds = %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.c
  %i.af = load ptr, ptr %3, align 8, !tbaa !148   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !148 ; 2 uses
  %.not3133 = icmp eq ptr %i.af, %i.ah
  br i1 %.not3133, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %i.am = phi ptr [ %i.ah, %.lr.ph ], [ %i.bn, %.critedge ] ; 2 uses
  %.sroa.027.034 = phi ptr [ %i.af, %.lr.ph ], [ %i.bo, %.critedge ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.027.034, align 8, !tbaa !51 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54 ; 2 uses
  %.not18 = icmp eq ptr %i.ap, null
  br i1 %.not18, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !95, !range !63, !noundef !64
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !49 ; 4 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !50
  %.not.i.i19 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i19, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.an, ptr %i.at, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.ak, align 8, !tbaa !49
  br label %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26

bb.o:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !53 ; 4 uses
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.p, label %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i20

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i20: ; preds = %bb.o
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i21 = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i21, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i.i22 = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i22)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #21 ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store ptr %i.an, ptr %i.bi, align 8, !tbaa !51
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.q, label %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i23

bb.q:                                             ; preds = %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i20
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i23

_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i23: ; preds = %bb.q, %_ZNKSt6vectorIPK4NodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.not.i17.i.i.i24 = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i24, label %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i25, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i23
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #22
  br label %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i25

_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i25: ; preds = %bb.r, %_ZNSt6vectorIPK4NodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i23
  store ptr %i.bh, ptr %i.aj, align 8, !tbaa !53
  store ptr %i.bk, ptr %i.ak, align 8, !tbaa !49
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bl, ptr %i.al, align 8, !tbaa !50
  br label %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26

_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26: ; preds = %bb.n, %_ZNSt6vectorIPK4NodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i25
  %i.bm = call noundef zeroext i1 @_ZN4Plan12AddSubTargetEPK4NodeS2_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIP4EdgeSt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull %i.an, ptr noundef null, ptr noundef %2, ptr noundef null)
  br i1 %i.bm, label %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26..critedge_crit_edge, label %.loopexitthread-pre-split

_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26..critedge_crit_edge: ; preds = %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !148
  br label %.critedge

.critedge:                                        ; preds = %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26..critedge_crit_edge, %bb.l, %bb.k
  %i.bn = phi ptr [ %.pre, %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26..critedge_crit_edge ], [ %i.am, %bb.l ], [ %i.am, %bb.k ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.027.034, i64 8 ; 2 uses
  %.not31 = icmp eq ptr %i.bo, %i.bn
  br i1 %.not31, label %.loopexitthread-pre-split, label %bb.k, !llvm.loop !7104

.loopexitthread-pre-split:                        ; preds = %.critedge, %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26, %bb.a, %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.4.ph = phi i1 [ false, %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %bb.a ], [ true, %.critedge ], [ false, %_ZN4Plan9AddTargetEPK4NodePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit26 ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !198
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.j
  %i.bp = phi ptr [ %.pr, %.loopexitthread-pre-split ], [ %i.af, %bb.j ] ; 2 uses
  %.4 = phi i1 [ %.4.ph, %.loopexitthread-pre-split ], [ true, %bb.j ]
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #22
  br label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit:             ; preds = %.loopexit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7Builder15AlreadyUpToDateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = icmp slt i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp slt i32 %i.e, 1
  %.not2 = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %.not2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN7Builder5BuildEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"struct.CommandRunner::Result", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZN4Plan19ComputeCriticalPathEv(ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  tail call void @_ZN4Plan20ScheduleInitialEdgesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7105, !nonnull !64, !align !269 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7106
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !308
  %.not57 = icmp eq ptr %i.g, null
  br i1 %.not57, label %bb.b, label %_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !7107, !range !63, !noundef !64
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #21 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_119DryRunCommandRunnerE, i64 16), ptr %i.k, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i8 0, i64 64, i1 false)
  store i64 8, ptr %i.m, align 8, !tbaa !7108
  %i.o = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 2 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !7112
  %i.p = load i64, ptr %i.m, align 8, !tbaa !7108
  %i.q = add i64 %i.p, -1
  %i.r = lshr i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r ; 3 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21 ; 6 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !150
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.s, ptr %i.v, align 8, !tbaa !7113
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.t, ptr %i.w, align 8, !tbaa !7114
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 512 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !7115
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.s, ptr %i.aa, align 8, !tbaa !7113
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.t, ptr %i.ab, align 8, !tbaa !7114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !7115
  store ptr %i.t, ptr %i.u, align 8, !tbaa !7116
  store ptr %i.t, ptr %i.z, align 8, !tbaa !7117
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !308 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !308
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit, label %_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.ae = tail call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #21 ; 9 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !7105, !nonnull !64, !align !269
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17RealCommandRunner, i64 16), ptr %i.ae, align 8, !tbaa !131
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !288
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  tail call void @_ZN13SubprocessSetC1Ev(ptr noundef nonnull align 8 dereferenceable(688) %i.ah) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 712 ; 3 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 720
  store ptr null, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 728
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 736
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 744
  store i64 0, ptr %i.am, align 8, !tbaa !48
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !308 ; 2 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !308
  %.not.i.i63 = icmp eq ptr %i.an, null
  br i1 %.not.i.i63, label %_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit, label %_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit.sink.split

_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit.sink.split: ; preds = %bb.d, %bb.c
  %.sink171 = phi ptr [ %i.ad, %bb.c ], [ %i.an, %bb.d ] ; 2 uses
  %i.ao = load ptr, ptr %.sink171, align 8, !tbaa !131
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %.sink171) #23
  br label %_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit

_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit.sink.split, %bb.d, %bb.c, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !107 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !131
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #23, !call_target !7118
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.az = icmp sgt i32 %i.ay, 0
  %i.ba = load i32, ptr %i.ax, align 8
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %i.bc, label %.lr.ph134, label %.loopexit

.lr.ph134:                                        ; preds = %_ZNSt10unique_ptrI13CommandRunnerSt14default_deleteIS0_EE5resetEPS0_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 25
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph134, %_ZN13CommandRunner6ResultD2Ev.exit
  %.039133 = phi i32 [ %i.e, %.lr.ph134 ], [ %spec.select62, %_ZN13CommandRunner6ResultD2Ev.exit ] ; 3 uses
  %.042132 = phi i32 [ 0, %.lr.ph134 ], [ %i.dn, %_ZN13CommandRunner6ResultD2Ev.exit ] ; 4 uses
  %i.bn = icmp ne i32 %.039133, 0                 ; 3 uses
  br i1 %i.bn, label %bb.f, label %.thread82
end_hunk_5
begin_hunk_6_@_ZN7Builder13FinishCommandEPN13CommandRunner6ResultEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %19)
  %i.ic = tail call ptr @__errno_location() #25
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !7143
  %i.ie = call ptr @strerror(i32 noundef %i.id) #23
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %i.ie)
  %i.if = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %17) #23 ; 0 uses
  %i.ig = load ptr, ptr %17, align 8, !tbaa !72   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.ig) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  %i.ij = load ptr, ptr %18, align 8, !tbaa !72   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  call void @_ZdlPv(ptr noundef %i.ij) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.critedge89

.critedge89:                                      ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %.9 = phi i1 [ true, %bb.ah ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ true, %bb.ag ], [ true, %bb.ai ], [ %.not257.not, %bb.aj ], [ %.not257.not, %bb.ak ]
  %i.im = load ptr, ptr %14, align 8, !tbaa !72   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %.critedge89
  call void @_ZdlPv(ptr noundef %i.im) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %.critedge89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.critedge87

.critedge87:                                      ; preds = %.lr.ph.split.us, %bb.s, %.lr.ph.split, %.thread.i, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %.thread187
  %.11 = phi i1 [ true, %.thread.i ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ false, %.thread187 ], [ true, %bb.o ], [ false, %bb.s ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ]
  %i.ip = load ptr, ptr %9, align 8, !tbaa !72    ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %.critedge87
  call void @_ZdlPv(ptr noundef %i.ip) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %.critedge87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.is = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  call void @_ZdlPv(ptr noundef %i.is) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.iv = load ptr, ptr %6, align 8, !tbaa !198   ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  call void @_ZdlPv(ptr noundef nonnull %i.iv) #22
  br label %_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP4NodeSaIS1_EED2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN12ScopedMetricD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %.11
}

declare noundef i64 @_Z13GetTimeMillisv() local_unnamed_addr #4

declare noundef zeroext i1 @_ZN13DiskInterface8MakeDirsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZNK4Edge19GetUnescapedRspfileB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

declare void @_ZNK4Edge10GetBindingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN7Builder11ExtractDepsEPN13CommandRunner6ResultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_PSt6vectorIP4NodeSaISD_EEPS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef captures(none) %4, ptr noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.CLParser, align 8           ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %struct.DepfileParser, align 8     ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67
  %.pre79 = load ptr, ptr %2, align 8, !tbaa !72  ; 4 uses
  switch i64 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread70 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load i32, ptr %.pre79, align 1
  %i.f = icmp ne i32 %i.e, 1668707181
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread70

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.i, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !67
  store i8 0, ptr %i.n, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = call noundef zeroext i1 @_ZN8CLParser5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PS5_S8_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %7, ptr noundef %5) #23 ; 2 uses
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %7) #23
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %.not7174 = icmp eq ptr %i.r, %i.i
  br i1 %.not7174, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph77, %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit
  %.sroa.066.075 = phi ptr [ %i.r, %.lr.ph77 ], [ %i.at, %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !287
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.066.075, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.066.075, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !67
  %i.z = call noundef ptr @_ZN5State7GetNodeE11StringPiecem(ptr noundef nonnull align 8 dereferenceable(264) %i.u, ptr %i.w, i64 %i.y, i64 noundef 4294967295) #23 ; 2 uses
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !7148 ; 4 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !7149
  %.not.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !7148
  br label %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %4, align 8, !tbaa !198   ; 4 uses
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.f, label %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #21 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store ptr %i.z, ptr %i.ap, align 8, !tbaa !51
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #22
  br label %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ao, ptr %4, align 8, !tbaa !198
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !7148
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.as, ptr %i.t, align 8, !tbaa !7149
  br label %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit:  ; preds = %bb.d, %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.at = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.066.075) #24 ; 2 uses
  %.not71 = icmp eq ptr %i.at, %i.i
  br i1 %.not71, label %.loopexit, label %bb.c, !llvm.loop !7150

.loopexit:                                        ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.au = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.n
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.au) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !19
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.q, label %bb.ak, label %bb.al

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24: ; preds = %bb.a
  %i.ax = load i16, ptr %.pre79, align 1
  %i.ay = xor i16 %i.ax, 25447
  %i.az = getelementptr i8, ptr %.pre79, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i16
  %i.bc = xor i16 %i.bb, 99
  %i.bd = or i16 %i.ay, %i.bc
  %i.be = icmp ne i16 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread70

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bh = load ptr, ptr %1, align 8, !tbaa !286
  call void @_ZNK4Edge19GetUnescapedDepfileB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(168) %i.bh) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !67
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %._crit_edge.i.i, label %bb.o

._crit_edge.i.i:                                  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.bl, ptr %9, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 48, ptr %i.a, align 8, !tbaa !7134
  %i.bm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 3 uses
  store ptr %i.bm, ptr %9, align 8, !tbaa !72
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !7134 ; 3 uses
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.bm, ptr noundef nonnull align 1 dereferenceable(48) @.str.33, i64 48, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bq = load ptr, ptr %5, align 8, !tbaa !72    ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  %i.bt = load ptr, ptr %9, align 8, !tbaa !72    ; 6 uses
  %i.bu = icmp eq ptr %i.bt, %i.bl                ; 2 uses
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %._crit_edge.i.i
  br i1 %i.bu, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %._crit_edge.i.i
  br i1 %i.bu, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !67 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %.not21.i = icmp eq ptr %9, %5
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !94

bb.j:                                             ; preds = %bb.i
  switch i64 %i.bv, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !68
  store i8 %i.bx, ptr %i.bq, align 1, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bt, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.by = load i64, ptr %i.bo, align 8, !tbaa !67 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !67
  %i.ca = load ptr, ptr %5, align 8, !tbaa !72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !68
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bt, ptr %5, align 8, !tbaa !72
  %i.cd = load <2 x i64>, ptr %i.bo, align 8, !tbaa !68
  store <2 x i64> %i.cd, ptr %i.cc, align 8, !tbaa !68
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ce = load i64, ptr %i.br, align 8, !tbaa !68
  store ptr %i.bt, ptr %5, align 8, !tbaa !72
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cg = load <2 x i64>, ptr %i.bo, align 8, !tbaa !68
  store <2 x i64> %i.cg, ptr %i.cf, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bq, ptr %9, align 8, !tbaa !72
  store i64 %i.ce, ptr %i.bl, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bl, ptr %9, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.ch = phi ptr [ %i.bq, %bb.m ], [ %i.bl, %bb.n ], [ %i.bt, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bo, align 8, !tbaa !67
  store i8 0, ptr %i.ch, align 1, !tbaa !68
  %i.ci = load ptr, ptr %9, align 8, !tbaa !72    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bl
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ci) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aj

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ck, ptr %10, align 8, !tbaa !66
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.cl, align 8, !tbaa !67
  store i8 0, ptr %i.ck, align 8, !tbaa !68
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !290 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !131
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %10, ptr noundef %5) #23, !call_target !7151
  switch i32 %i.cr, label %bb.q [
    i32 2, label %bb.ai
    i32 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !67
  %i.ct = load ptr, ptr %5, align 8, !tbaa !72
  store i8 0, ptr %i.ct, align 1, !tbaa !68
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cu = load i64, ptr %i.cl, align 8, !tbaa !67
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZN13DepfileParserC1E20DepfileParserOptions(ptr noundef nonnull align 8 dereferenceable(49) %11) #23
  %i.cw = call noundef zeroext i1 @_ZN13DepfileParser5ParseEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(49) %11, ptr noundef nonnull %10, ptr noundef %5) #23
  br i1 %i.cw, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !7161 ; 2 uses
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !7164 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = ashr exact i64 %i.dd, 4                 ; 3 uses
  %i.df = icmp ugt i64 %i.de, 1152921504606846975
  br i1 %i.df, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #20
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !7149
  %i.di = load ptr, ptr %4, align 8, !tbaa !198
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %i.dn = icmp ult i64 %i.dm, %i.de
  br i1 %i.dn, label %_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP4NodeSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !7148
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.dk
  %i.ds = ashr exact i64 %i.dd, 1
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #21 ; 4 uses
  %i.du = load ptr, ptr %4, align 8, !tbaa !198   ; 4 uses
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !7148
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 0
  br i1 %i.dz, label %bb.v, label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.v:                                             ; preds = %_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr align 8 %i.du, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.v, %_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.du, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.du) #22
  br label %_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.w, %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.dt, ptr %4, align 8, !tbaa !198
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  store ptr %i.ea, ptr %i.do, align 8, !tbaa !7148
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.de
  store ptr %i.eb, ptr %i.dg, align 8, !tbaa !7149
  %.pre = load ptr, ptr %i.cx, align 8, !tbaa !7165
  %.pre78 = load ptr, ptr %i.cy, align 8, !tbaa !7165
  br label %_ZNSt6vectorIP4NodeSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP4NodeSaIS1_EE7reserveEm.exit:       ; preds = %bb.u, %_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ec = phi ptr [ %i.cz, %bb.u ], [ %.pre78, %_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.ed = phi ptr [ %i.da, %bb.u ], [ %.pre, %_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %.not72 = icmp eq ptr %i.ed, %i.ec
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE7reserveEm.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit35, %_ZNSt6vectorIP4NodeSaIS1_EE7reserveEm.exit
  %i.ef = load i8, ptr @g_keep_depfile, align 1, !tbaa !179, !range !63, !noundef !64
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.af, label %bb.ad

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit35
  %.sroa.056.073 = phi ptr [ %i.ed, %.lr.ph ], [ %i.ff, %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit35 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.eh = load ptr, ptr %.sroa.056.073, align 8, !tbaa !7166
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.056.073, i64 8 ; 2 uses
  call void @_Z16CanonicalizePathPcPmS0_(ptr noundef %i.eh, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.b) #23
  %i.ej = load ptr, ptr %0, align 8, !tbaa !287
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.056.073, align 8, !tbaa !7168
  %.sroa.2.0.copyload = load i64, ptr %i.ei, align 8, !tbaa !7134
  %i.ek = load i64, ptr %i.b, align 8, !tbaa !7134
  %i.el = call noundef ptr @_ZN5State7GetNodeE11StringPiecem(ptr noundef nonnull align 8 dereferenceable(264) %i.ej, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i64 noundef %i.ek) #23 ; 2 uses
  %i.em = load ptr, ptr %i.ee, align 8, !tbaa !7148 ; 4 uses
  %i.en = load ptr, ptr %i.dg, align 8, !tbaa !7149
  %.not.i.i28 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i.i28, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.el, ptr %i.em, align 8, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.eo, ptr %i.ee, align 8, !tbaa !7148
  br label %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit35

bb.z:                                             ; preds = %bb.x
  %i.ep = load ptr, ptr %4, align 8, !tbaa !198   ; 4 uses
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 5 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.aa, label %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i29

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i29: ; preds = %bb.z
  %i.eu = ashr exact i64 %i.es, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i30 = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i.i30, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975)
  %i.ey = select i1 %i.ew, i64 1152921504606846975, i64 %i.ex ; 3 uses
  %.not.i.i.i.i31 = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i.i31)
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #21 ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 2 uses
  store ptr %i.el, ptr %i.fb, align 8, !tbaa !51
  %i.fc = icmp sgt i64 %i.es, 0
  br i1 %i.fc, label %bb.ab, label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i32

bb.ab:                                            ; preds = %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i29
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr align 8 %i.ep, i64 %i.es, i1 false)
  br label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i32

_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i32: ; preds = %bb.ab, %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i29
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.not.i17.i.i.i33 = icmp eq ptr %i.ep, null
  br i1 %.not.i17.i.i.i33, label %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i34, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i32
  call void @_ZdlPv(ptr noundef nonnull %i.ep) #22
  br label %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i34

_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i34: ; preds = %bb.ac, %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i32
  store ptr %i.fa, ptr %4, align 8, !tbaa !198
  store ptr %i.fd, ptr %i.ee, align 8, !tbaa !7148
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ey
  store ptr %i.fe, ptr %i.dg, align 8, !tbaa !7149
  br label %_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit35

_ZNSt6vectorIP4NodeSaIS1_EE9push_backEOS1_.exit35: ; preds = %bb.y, %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.056.073, i64 16 ; 2 uses
  %i.fg = load ptr, ptr %i.cy, align 8, !tbaa !7165
  %.not = icmp eq ptr %i.ff, %i.fg
  br i1 %.not, label %._crit_edge, label %bb.x, !llvm.loop !7169

bb.ad:                                            ; preds = %._crit_edge
  %i.fh = load ptr, ptr %i.cm, align 8, !tbaa !290 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !131
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = call noundef i32 %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %8) #23, !call_target !7089
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %i.fn = tail call ptr @__errno_location() #25
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !7143
  %i.fp = call ptr @strerror(i32 noundef %i.fo) #23
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.fp)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %17)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %16)
  %i.fq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %12) #23 ; 0 uses
  %i.fr = load ptr, ptr %12, align 8, !tbaa !72   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.fr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  %i.fu = load ptr, ptr %16, align 8, !tbaa !72   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  call void @_ZdlPv(ptr noundef %i.fu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.fx = load ptr, ptr %13, align 8, !tbaa !72   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  call void @_ZdlPv(ptr noundef %i.fx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.ga = load ptr, ptr %14, align 8, !tbaa !72   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @_ZdlPv(ptr noundef %i.ga) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge, %bb.ad, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.gd = phi i1 [ false, %bb.r ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ true, %bb.ad ], [ true, %._crit_edge ]
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !7164 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorI11StringPieceSaIS0_EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef nonnull %i.gf) #22
  br label %_ZNSt6vectorI11StringPieceSaIS0_EED2Ev.exit.i

_ZNSt6vectorI11StringPieceSaIS0_EED2Ev.exit.i:    ; preds = %bb.ag, %bb.af
  %i.gg = load ptr, ptr %11, align 8, !tbaa !7164 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i1.i, label %_ZN13DepfileParserD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI11StringPieceSaIS0_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.gg) #22
  br label %_ZN13DepfileParserD2Ev.exit

_ZN13DepfileParserD2Ev.exit:                      ; preds = %_ZNSt6vectorI11StringPieceSaIS0_EED2Ev.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.q, %bb.o, %_ZN13DepfileParserD2Ev.exit
  %.221 = phi i1 [ false, %bb.o ], [ %i.gd, %_ZN13DepfileParserD2Ev.exit ], [ false, %bb.q ]
  %.2 = phi i1 [ false, %bb.o ], [ false, %_ZN13DepfileParserD2Ev.exit ], [ true, %bb.q ]
  %i.gh = load ptr, ptr %10, align 8, !tbaa !72   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ck
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.gh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.322 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  %i.gj = load ptr, ptr %8, align 8, !tbaa !72    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.gj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.322, label %bb.ak, label %bb.al

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread70: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  tail call void (ptr, ...) @_Z5FatalPKcz(ptr noundef nonnull @.str.35, ptr noundef %.pre79) #20
  unreachable

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ak
  %.4 = phi i1 [ true, %bb.ak ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  ret i1 %.4
}

declare noundef zeroext i1 @_ZN8BuildLog13RecordCommandEP4Edgeiil(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

declare noundef zeroext i1 @_ZN7DepsLog10RecordDepsEP4NodelRKSt6vectorIS1_SaIS1_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN8CLParser5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PS5_S8_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN5State7GetNodeE11StringPiecem(ptr noundef nonnull align 8 dereferenceable(264), ptr, i64, i64 noundef) local_unnamed_addr #4

declare void @_ZN13DepfileParserC1E20DepfileParserOptions(ptr noundef nonnull align 8 dereferenceable(49)) unnamed_addr #4

declare noundef zeroext i1 @_ZN13DepfileParser5ParseEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z16CanonicalizePathPcPmS0_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67   ; 4 uses
end_hunk_6
begin_hunk_7_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !72
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !68
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !67
  store ptr %i.v, ptr %i.s, align 8, !tbaa !72
  store i64 0, ptr %i.ac, align 8, !tbaa !67
  store i8 0, ptr %i.v, align 8, !tbaa !68
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !72
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) #23 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !66
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !72
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !68
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !67
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !72
  store i64 0, ptr %i.as, align 8, !tbaa !67
  store i8 0, ptr %i.al, align 8, !tbaa !68
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: noreturn
declare void @_Z5FatalPKcz(ptr noundef, ...) local_unnamed_addr #12

declare noundef zeroext i1 @_ZNK14DependencyScan11LoadDyndepsEP4NodeP10DyndepFilePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17RealCommandRunnerD2Ev(ptr noundef nonnull align 8 dead_on_return(752) dereferenceable(752) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17RealCommandRunner, i64 16), ptr %0, align 8, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN13SubprocessSetD1Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %i.d) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17RealCommandRunnerD0Ev(ptr noundef nonnull align 8 dereferenceable(752) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17RealCommandRunner, i64 16), ptr %0, align 8, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @_ZNSt8_Rb_treeIPK10SubprocessSt4pairIKS2_P4EdgeESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c), !inline_history !7170
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN13SubprocessSetD1Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %i.d) #23, !inline_history !7170
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7171
  tail call void @_ZNSt8_Rb_treeIP4EdgeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7172 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7173

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7171
  tail call void @_ZNSt8_Rb_treeIP4NodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7172 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7174

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZZN4Plan19ComputeCriticalPathEvEN8TopoSort5VisitEP4Edge(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !145
  %i.b = call { ptr, i8 } @_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRS1_EEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.b, 1
  %i.c = trunc i8 %.fca.1.extract to i1
  br i1 %i.c, label %bb.b, label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !148  ; 2 uses
  %.not1011 = icmp eq ptr %i.f, %i.h
  br i1 %.not1011, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !166
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !145
  store ptr %i.n, ptr %i.k, align 8, !tbaa !145
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !47
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %._crit_edge
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !46   ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #20
  unreachable

_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #21 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !145
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !145
  %i.ad = icmp sgt i64 %i.s, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.p) #22
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !46
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.af, ptr %i.l, align 8, !tbaa !166
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %.sroa.07.012 = phi ptr [ %i.aj, %bb.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.07.012, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  call fastcc void @_ZZN4Plan19ComputeCriticalPathEvEN8TopoSort5VisitEP4Edge(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ai)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 8 ; 2 uses
  %.not10 = icmp eq ptr %i.aj, %i.h
  br i1 %.not10, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIP4EdgeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRS1_EEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %1, align 8, !tbaa !145    ; 6 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !145
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7175 ; 2 uses
  %.not.not = icmp eq i64 %i.e, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !221  ; 5 uses
  %i.i = urem i64 %i.f, %i.h                      ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.critedge17, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.024.0.in = phi ptr [ %i.m, %bb.b ], [ %.sroa.024.0, %bb.d ]
  %.sroa.024.0 = load ptr, ptr %.sroa.024.0.in, align 8, !tbaa !231 ; 4 uses
  %.not = icmp eq ptr %.sroa.024.0, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.p = icmp eq ptr %i.c, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m.exit, label %bb.c, !llvm.loop !7177

.critedge:                                        ; preds = %bb.c
  %i.q = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !221  ; 2 uses
  %i.t = urem i64 %i.q, %i.s
  br label %.critedge17

bb.e:                                             ; preds = %.critedge.thread
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !231  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !145
  %i.x = icmp eq ptr %i.c, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.g
  %i.y = icmp eq ptr %i.c, %i.ab
  br i1 %i.y, label %_ZNKSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m.exit, label %.lr.ph.i.i, !llvm.loop !7178

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %bb.e ]
  %i.z = load ptr, ptr %.020.i.i, align 8, !tbaa !231 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i, label %.critedge17, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !145 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.h
  %.not19.i.i = icmp eq i64 %i.ad, %i.i
  br i1 %.not19.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i, !llvm.loop !7178

..loopexit_crit_edge21.i.i:                       ; preds = %bb.g
  br label %.critedge17, !llvm.loop !7178

.critedge17:                                      ; preds = %.lr.ph.i.i, %.critedge, %..loopexit_crit_edge21.i.i, %.critedge.thread
  %i.ae = phi i64 [ %i.t, %.critedge ], [ %i.i, %.critedge.thread ], [ %i.i, %..loopexit_crit_edge21.i.i ], [ %i.i, %.lr.ph.i.i ]
  %i.af = phi i64 [ %i.s, %.critedge ], [ %i.h, %.critedge.thread ], [ %i.h, %..loopexit_crit_edge21.i.i ], [ %i.h, %.lr.ph.i.i ]
  %i.ag = phi ptr [ %i.r, %.critedge ], [ %i.g, %.critedge.thread ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ] ; 2 uses
  %i.ah = phi i64 [ %i.q, %.critedge ], [ %i.f, %.critedge.thread ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 noundef %i.af, i64 noundef %i.e, i64 noundef 1) #23 ; 2 uses
  %i.ak = extractvalue { i8, i64 } %i.aj, 0
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge17
  %i.am = extractvalue { i8, i64 } %i.aj, 1
  tail call void @_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.am)
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !221
  %i.ao = urem i64 %i.ah, %i.an
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge17
  %.0.i18 = phi i64 [ %i.ao, %bb.h ], [ %i.ae, %.critedge17 ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !214   ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i18 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7176 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !231
  store ptr %i.as, ptr %i.a, align 8, !tbaa !231
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !7176
  store ptr %i.a, ptr %i.at, align 8, !tbaa !231
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !230 ; 3 uses
  store ptr %i.av, ptr %i.a, align 8, !tbaa !231
  store ptr %i.a, ptr %i.au, align 8, !tbaa !230
  %.not11.i.i = icmp eq ptr %i.av, null
  br i1 %.not11.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !221
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !145
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = urem i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ba
  store ptr %i.a, ptr %i.bb, align 8, !tbaa !7176
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !7176
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !7175
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !7175
  br label %_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNKSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m.exit: ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.031.0.ph = phi ptr [ %.sroa.024.0, %bb.d ], [ %i.u, %bb.e ], [ %i.z, %bb.f ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  br label %_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %_ZNKSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m.exit
  %.sroa.4.042 = phi i8 [ 1, %bb.n ], [ 0, %_ZNKSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m.exit ]
  %.sroa.031.040 = phi ptr [ %i.a, %bb.n ], [ %.sroa.031.0.ph, %_ZNKSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_M_find_nodeEmRKS1_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.040, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.042, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12
end_hunk_7
