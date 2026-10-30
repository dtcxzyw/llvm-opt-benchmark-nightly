Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/bitvector_node?download=true
inline.NumInlined: 1613
inline.NumDeleted: 356
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

$_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv = comdat any

$_ZNSt6vectorIN4bzla9BitVectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE = comdat any

$_ZN4bzla2ls4NodeINS_9BitVectorEE20s_path_sel_essentialE = comdat any

$_ZN4bzla2ls4NodeINS_9BitVectorEE21s_prob_pick_ess_inputE = comdat any

$_ZTIN4bzla2ls4NodeINS_9BitVectorEEE = comdat any

$_ZTSN4bzla2ls4NodeINS_9BitVectorEEE = comdat any

@_ZTVN4bzla2ls13BitVectorNodeE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls13BitVectorNodeE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls13BitVectorNodeD0Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE13is_invertibleERKS2_mb, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE13is_consistentERKS2_m, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE13inverse_valueERKS2_m, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE16consistent_valueERKS2_m, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"      |- node[\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"]: \00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"           + bounds_u: \00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"           + bounds_s: \00", align 1
@_ZTVN4bzla2ls12BitVectorAddE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorAddE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls12BitVectorAddD0Ev, ptr @_ZNK4bzla2ls12BitVectorAdd4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorAdd8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls12BitVectorAdd13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorAdd13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorAdd13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorAdd16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls12BitVectorAndE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorAndE, ptr @_ZN4bzla2ls12BitVectorAndD2Ev, ptr @_ZN4bzla2ls12BitVectorAndD0Ev, ptr @_ZNK4bzla2ls12BitVectorAnd4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorAnd8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls12BitVectorAnd13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorAnd13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorAnd13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorAnd16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls12BitVectorAnd22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls15BitVectorConcatE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls15BitVectorConcatE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls15BitVectorConcatD0Ev, ptr @_ZNK4bzla2ls15BitVectorConcat4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls15BitVectorConcat8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls15BitVectorConcat13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls15BitVectorConcat13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls15BitVectorConcat13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls15BitVectorConcat16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls11BitVectorEqE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls11BitVectorEqE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls11BitVectorEqD0Ev, ptr @_ZNK4bzla2ls11BitVectorEq4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls11BitVectorEq8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls11BitVectorEq13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls11BitVectorEq13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls11BitVectorEq13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls11BitVectorEq16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls12BitVectorMulE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorMulE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls12BitVectorMulD0Ev, ptr @_ZNK4bzla2ls12BitVectorMul4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorMul8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls12BitVectorMul13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorMul13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorMul13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorMul16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls12BitVectorMul22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls12BitVectorShlE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorShlE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls12BitVectorShlD0Ev, ptr @_ZNK4bzla2ls12BitVectorShl4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorShl8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls12BitVectorShl13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorShl13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorShl13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorShl16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls12BitVectorShrE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorShrE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls12BitVectorShrD0Ev, ptr @_ZNK4bzla2ls12BitVectorShr4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorShr8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls12BitVectorShr13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorShr13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorShr13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorShr16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls13BitVectorAshrE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls13BitVectorAshrE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls13BitVectorAshrD0Ev, ptr @_ZNK4bzla2ls13BitVectorAshr4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls13BitVectorAshr8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls13BitVectorAshr13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls13BitVectorAshr13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls13BitVectorAshr13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls13BitVectorAshr16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls13BitVectorUdivE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls13BitVectorUdivE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls13BitVectorUdivD0Ev, ptr @_ZNK4bzla2ls13BitVectorUdiv4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls13BitVectorUdiv8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls13BitVectorUdiv13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls13BitVectorUdiv13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls13BitVectorUdiv13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls13BitVectorUdiv16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls12BitVectorUltE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorUltE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls12BitVectorUltD0Ev, ptr @_ZNK4bzla2ls12BitVectorUlt4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorUlt8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls12BitVectorUlt13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorUlt13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorUlt13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorUlt16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls12BitVectorUlt22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls12BitVectorSltE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorSltE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls12BitVectorSltD0Ev, ptr @_ZNK4bzla2ls12BitVectorSlt4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorSlt8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls12BitVectorSlt13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorSlt13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorSlt13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorSlt16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls12BitVectorSlt22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls13BitVectorUremE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls13BitVectorUremE, ptr @_ZN4bzla2ls13BitVectorUremD2Ev, ptr @_ZN4bzla2ls13BitVectorUremD0Ev, ptr @_ZNK4bzla2ls13BitVectorUrem4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls13BitVectorUrem8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls13BitVectorUrem13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls13BitVectorUrem13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls13BitVectorUrem13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls13BitVectorUrem16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls12BitVectorXorE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorXorE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls12BitVectorXorD0Ev, ptr @_ZNK4bzla2ls12BitVectorXor4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorXor8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE12is_essentialERKS2_m, ptr @_ZN4bzla2ls12BitVectorXor13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorXor13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorXor13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorXor16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls12BitVectorIteE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorIteE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls12BitVectorIteD0Ev, ptr @_ZNK4bzla2ls12BitVectorIte4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorIte8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls12BitVectorIte12is_essentialERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorIte13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorIte13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorIte13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorIte16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorIte11select_pathERKNS_9BitVectorERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls12BitVectorIte21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZN4bzla2ls4NodeINS_9BitVectorEE20s_path_sel_essentialE = linkonce_odr local_unnamed_addr global i8 1, comdat, align 1
@_ZN4bzla2ls4NodeINS_9BitVectorEE21s_prob_pick_ess_inputE = linkonce_odr local_unnamed_addr global i32 990, comdat, align 4
@_ZTVN4bzla2ls12BitVectorNotE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls12BitVectorNotE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls12BitVectorNotD0Ev, ptr @_ZNK4bzla2ls12BitVectorNot4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls12BitVectorNot8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls12BitVectorNot12is_essentialERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorNot13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls12BitVectorNot13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorNot13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls12BitVectorNot16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTVN4bzla2ls16BitVectorExtractE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls16BitVectorExtractE, ptr @_ZN4bzla2ls16BitVectorExtractD2Ev, ptr @_ZN4bzla2ls16BitVectorExtractD0Ev, ptr @_ZNK4bzla2ls16BitVectorExtract4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls16BitVectorExtract8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls16BitVectorExtract12is_essentialERKNS_9BitVectorEm, ptr @_ZN4bzla2ls16BitVectorExtract13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls16BitVectorExtract13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls16BitVectorExtract13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls16BitVectorExtract16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls16BitVectorExtract3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZTVN4bzla2ls19BitVectorSignExtendE = constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN4bzla2ls19BitVectorSignExtendE, ptr @_ZN4bzla2ls13BitVectorNodeD2Ev, ptr @_ZN4bzla2ls19BitVectorSignExtendD0Ev, ptr @_ZNK4bzla2ls19BitVectorSignExtend4kindEv, ptr @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv, ptr @_ZNK4bzla2ls13BitVectorNode6is_notEv, ptr @_ZN4bzla2ls19BitVectorSignExtend8evaluateEv, ptr @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv, ptr @_ZN4bzla2ls19BitVectorSignExtend12is_essentialERKNS_9BitVectorEm, ptr @_ZN4bzla2ls19BitVectorSignExtend13is_invertibleERKNS_9BitVectorEmb, ptr @_ZN4bzla2ls19BitVectorSignExtend13is_consistentERKNS_9BitVectorEm, ptr @_ZN4bzla2ls19BitVectorSignExtend13inverse_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls19BitVectorSignExtend16consistent_valueERKNS_9BitVectorEm, ptr @_ZN4bzla2ls4NodeINS_9BitVectorEE11select_pathERKS2_RSt6vectorImSaImEE, ptr @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE, ptr @_ZNK4bzla2ls19BitVectorSignExtend3strB5cxx11Ev, ptr @_ZNK4bzla2ls13BitVectorNode3logB5cxx11Ev, ptr @_ZNK4bzla2ls4NodeINS_9BitVectorEE21select_path_non_constERSt6vectorImSaImEE, ptr @_ZN4bzla2ls19BitVectorSignExtend16normalize_boundsERKNS_14BitVectorRangeES4_, ptr @_ZN4bzla2ls13BitVectorNode22compute_min_max_boundsERKNS_9BitVectorEm] }, align 8
@_ZTIN4bzla2ls13BitVectorNodeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls13BitVectorNodeE, ptr @_ZTIN4bzla2ls4NodeINS_9BitVectorEEE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4bzla2ls13BitVectorNodeE = constant [26 x i8] c"N4bzla2ls13BitVectorNodeE\00", align 1
@_ZTIN4bzla2ls4NodeINS_9BitVectorEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls4NodeINS_9BitVectorEEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4bzla2ls4NodeINS_9BitVectorEEE = linkonce_odr constant [32 x i8] c"N4bzla2ls4NodeINS_9BitVectorEEE\00", comdat, align 1
@_ZTIN4bzla2ls12BitVectorAddE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorAddE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorAddE = constant [25 x i8] c"N4bzla2ls12BitVectorAddE\00", align 1
@_ZTIN4bzla2ls12BitVectorAndE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorAndE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorAndE = constant [25 x i8] c"N4bzla2ls12BitVectorAndE\00", align 1
@_ZTIN4bzla2ls15BitVectorConcatE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls15BitVectorConcatE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls15BitVectorConcatE = constant [28 x i8] c"N4bzla2ls15BitVectorConcatE\00", align 1
@_ZTIN4bzla2ls11BitVectorEqE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls11BitVectorEqE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls11BitVectorEqE = constant [24 x i8] c"N4bzla2ls11BitVectorEqE\00", align 1
@_ZTIN4bzla2ls12BitVectorMulE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorMulE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorMulE = constant [25 x i8] c"N4bzla2ls12BitVectorMulE\00", align 1
@_ZTIN4bzla2ls12BitVectorShlE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorShlE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorShlE = constant [25 x i8] c"N4bzla2ls12BitVectorShlE\00", align 1
@_ZTIN4bzla2ls12BitVectorShrE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorShrE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorShrE = constant [25 x i8] c"N4bzla2ls12BitVectorShrE\00", align 1
@_ZTIN4bzla2ls13BitVectorAshrE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls13BitVectorAshrE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls13BitVectorAshrE = constant [26 x i8] c"N4bzla2ls13BitVectorAshrE\00", align 1
@_ZTIN4bzla2ls13BitVectorUdivE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls13BitVectorUdivE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls13BitVectorUdivE = constant [26 x i8] c"N4bzla2ls13BitVectorUdivE\00", align 1
@_ZTIN4bzla2ls12BitVectorUltE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorUltE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorUltE = constant [25 x i8] c"N4bzla2ls12BitVectorUltE\00", align 1
@_ZTIN4bzla2ls12BitVectorSltE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorSltE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorSltE = constant [25 x i8] c"N4bzla2ls12BitVectorSltE\00", align 1
@_ZTIN4bzla2ls13BitVectorUremE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls13BitVectorUremE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls13BitVectorUremE = constant [26 x i8] c"N4bzla2ls13BitVectorUremE\00", align 1
@_ZTIN4bzla2ls12BitVectorXorE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorXorE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorXorE = constant [25 x i8] c"N4bzla2ls12BitVectorXorE\00", align 1
@_ZTIN4bzla2ls12BitVectorIteE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorIteE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorIteE = constant [25 x i8] c"N4bzla2ls12BitVectorIteE\00", align 1
@_ZTIN4bzla2ls12BitVectorNotE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls12BitVectorNotE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls12BitVectorNotE = constant [25 x i8] c"N4bzla2ls12BitVectorNotE\00", align 1
@_ZTIN4bzla2ls16BitVectorExtractE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls16BitVectorExtractE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls16BitVectorExtractE = constant [29 x i8] c"N4bzla2ls16BitVectorExtractE\00", align 1
@_ZTIN4bzla2ls19BitVectorSignExtendE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4bzla2ls19BitVectorSignExtendE, ptr @_ZTIN4bzla2ls13BitVectorNodeE }, align 8
@_ZTSN4bzla2ls19BitVectorSignExtendE = constant [32 x i8] c"N4bzla2ls19BitVectorSignExtendE\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN4bzla2ls13BitVectorNodeC1EPNS_3RNGEm = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGEm
@_ZN4bzla2ls13BitVectorNodeC1EPNS_3RNGEmPS1_ = unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGEmPS1_
@_ZN4bzla2ls13BitVectorNodeC1EPNS_3RNGEmPS1_S4_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGEmPS1_S4_
@_ZN4bzla2ls13BitVectorNodeC1EPNS_3RNGEmPS1_S4_S4_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGEmPS1_S4_S4_
@_ZN4bzla2ls13BitVectorNodeC1EPNS_3RNGERKNS_9BitVectorERKNS_15BitVectorDomainE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_9BitVectorERKNS_15BitVectorDomainE
@_ZN4bzla2ls13BitVectorNodeC1EPNS_3RNGERKNS_15BitVectorDomainEPS1_ = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_15BitVectorDomainEPS1_
@_ZN4bzla2ls13BitVectorNodeC1EPNS_3RNGERKNS_15BitVectorDomainEPS1_S7_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_15BitVectorDomainEPS1_S7_
@_ZN4bzla2ls13BitVectorNodeC1EPNS_3RNGERKNS_15BitVectorDomainEPS1_S7_S7_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_15BitVectorDomainEPS1_S7_S7_
@_ZN4bzla2ls12BitVectorAddC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorAddC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls12BitVectorAddC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorAddC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls12BitVectorAndC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorAndC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls12BitVectorAndC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorAndC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls15BitVectorConcatC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls15BitVectorConcatC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls15BitVectorConcatC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls15BitVectorConcatC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls11BitVectorEqC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls11BitVectorEqC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls11BitVectorEqC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls11BitVectorEqC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls12BitVectorMulC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorMulC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls12BitVectorMulC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorMulC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls12BitVectorShlC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorShlC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls12BitVectorShlC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorShlC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls12BitVectorShrC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorShrC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls12BitVectorShrC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorShrC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls13BitVectorAshrC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorAshrC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls13BitVectorAshrC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorAshrC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls13BitVectorUdivC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorUdivC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls13BitVectorUdivC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorUdivC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls12BitVectorUltC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_b = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, i1), ptr @_ZN4bzla2ls12BitVectorUltC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_b
@_ZN4bzla2ls12BitVectorUltC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_b = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN4bzla2ls12BitVectorUltC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_b
@_ZN4bzla2ls12BitVectorSltC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_b = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, i1), ptr @_ZN4bzla2ls12BitVectorSltC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_b
@_ZN4bzla2ls12BitVectorSltC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_b = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN4bzla2ls12BitVectorSltC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_b
@_ZN4bzla2ls13BitVectorUremC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorUremC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls13BitVectorUremC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls13BitVectorUremC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls12BitVectorXorC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorXorC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_
@_ZN4bzla2ls12BitVectorXorC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorXorC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_
@_ZN4bzla2ls12BitVectorIteC1EPNS_3RNGEmPNS0_13BitVectorNodeES5_S5_ = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorIteC2EPNS_3RNGEmPNS0_13BitVectorNodeES5_S5_
@_ZN4bzla2ls12BitVectorIteC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_S8_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorIteC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeES8_S8_
@_ZN4bzla2ls12BitVectorNotC1EPNS_3RNGEmPNS0_13BitVectorNodeE = unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN4bzla2ls12BitVectorNotC2EPNS_3RNGEmPNS0_13BitVectorNodeE
@_ZN4bzla2ls12BitVectorNotC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN4bzla2ls12BitVectorNotC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeE
@_ZN4bzla2ls16BitVectorExtractC1EPNS_3RNGEmPNS0_13BitVectorNodeEmm = unnamed_addr alias void (ptr, ptr, i64, ptr, i64, i64), ptr @_ZN4bzla2ls16BitVectorExtractC2EPNS_3RNGEmPNS0_13BitVectorNodeEmm
@_ZN4bzla2ls16BitVectorExtractC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeEmm = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, i64), ptr @_ZN4bzla2ls16BitVectorExtractC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeEmm
@_ZN4bzla2ls19BitVectorSignExtendC1EPNS_3RNGEmPNS0_13BitVectorNodeEm = unnamed_addr alias void (ptr, ptr, i64, ptr, i64), ptr @_ZN4bzla2ls19BitVectorSignExtendC2EPNS_3RNGEmPNS0_13BitVectorNodeEm
@_ZN4bzla2ls19BitVectorSignExtendC1EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeEm = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64), ptr @_ZN4bzla2ls19BitVectorSignExtendC2EPNS_3RNGERKNS_15BitVectorDomainEPNS0_13BitVectorNodeEm

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGEm(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::BitVector", align 8   ; 7 uses
  %4 = alloca %"class.bzla::BitVectorDomain", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN4bzla9BitVector7mk_zeroEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %3, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN4bzla15BitVectorDomainC1Em(ptr noundef nonnull align 8 dereferenceable(49) %4, i64 noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_9BitVectorERKNS_15BitVectorDomainE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(49) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.d:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.a, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4bzla9BitVector7mk_zeroEm(ptr dead_on_unwind writable sret(%"class.bzla::BitVector") align 8, i64 noundef) local_unnamed_addr #2

declare void @_ZN4bzla15BitVectorDomainC1Em(ptr noundef nonnull align 8 dereferenceable(49), i64 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_9BitVectorERKNS_15BitVectorDomainE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(49) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional", align 8     ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4bzla15BitVectorDomain8is_fixedEv(ptr noundef nonnull align 8 dereferenceable(49) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store i8 0, ptr %i.b, align 8, !tbaa !13
  invoke void @_ZN4bzla2ls4NodeINS_9BitVectorEEC2EPNS_3RNGERKS2_bRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %i.a, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.e = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4bzla2ls13BitVectorNodeE, i64 16), ptr %0, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_ZN4bzla15BitVectorDomainC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(49) %3)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4bzla14BitVectorRangeC2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.k) #17
  br label %.body

_ZN4bzla14BitVectorRangeC2Ev.exit:                ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4bzla14BitVectorRangeC2Ev.exit17 unwind label %bb.f

bb.f:                                             ; preds = %.noexc14
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.n) #17
  br label %.body15

_ZN4bzla14BitVectorRangeC2Ev.exit17:              ; preds = %.noexc14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.r = load i8, ptr %i.q, align 2, !tbaa !45, !range !14, !noundef !15
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit

bb.g:                                             ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN4bzla15BitVectorDomain3fixERKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc18 unwind label %bb.n

.noexc18:                                         ; preds = %bb.h
  store i8 1, ptr %i.t, align 1, !tbaa !46
  br label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit

_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit:    ; preds = %.noexc18, %bb.g, %_ZN4bzla14BitVectorRangeC2Ev.exit17
  ret void

bb.i:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.aa = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #18
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21: ; preds = %bb.j, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.p

bb.k:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body15

bb.n:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.n) #17
  br label %.body15

.body15:                                          ; preds = %bb.m, %bb.f, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.ah, %bb.m ], [ %i.p, %bb.f ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.k) #17
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e, %.body15
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body15 ], [ %i.ag, %bb.l ], [ %i.m, %bb.e ]
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.j) #17
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.af, %bb.k ]
  call void @_ZN4bzla2ls4NodeINS_9BitVectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.o ], [ %i.x, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGEmPS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.bzla::BitVectorDomain", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN4bzla15BitVectorDomainC1Em(ptr noundef nonnull align 8 dereferenceable(49) %4, i64 noundef %2)
  invoke void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_15BitVectorDomainEPS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %4, ptr noundef %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_15BitVectorDomainEPS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional", align 8     ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4bzla15BitVectorDomain8is_fixedEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store i8 0, ptr %i.b, align 8, !tbaa !13
  invoke void @_ZN4bzla2ls4NodeINS_9BitVectorEEC2EPNS_3RNGERKS2_PS3_bRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, i1 noundef zeroext %i.a, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.e = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4bzla2ls13BitVectorNodeE, i64 16), ptr %0, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_ZN4bzla15BitVectorDomainC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4bzla14BitVectorRangeC2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.k) #17
  br label %.body

_ZN4bzla14BitVectorRangeC2Ev.exit:                ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.noexc15 unwind label %bb.m

.noexc15:                                         ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4bzla14BitVectorRangeC2Ev.exit18 unwind label %bb.f

bb.f:                                             ; preds = %.noexc15
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.n) #17
  br label %.body16

_ZN4bzla14BitVectorRangeC2Ev.exit18:              ; preds = %.noexc15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.r = load i8, ptr %i.q, align 2, !tbaa !45, !range !14, !noundef !15
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit

bb.g:                                             ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN4bzla15BitVectorDomain3fixERKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc19 unwind label %bb.n

.noexc19:                                         ; preds = %bb.h
  store i8 1, ptr %i.t, align 1, !tbaa !46
  br label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit

_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit:    ; preds = %.noexc19, %bb.g, %_ZN4bzla14BitVectorRangeC2Ev.exit18
  ret void

bb.i:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit22

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.aa = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #18
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit22

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit22: ; preds = %bb.j, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.p

bb.k:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.n:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.n) #17
  br label %.body16

.body16:                                          ; preds = %bb.m, %bb.f, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.ah, %bb.m ], [ %i.p, %bb.f ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.k) #17
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e, %.body16
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body16 ], [ %i.ag, %bb.l ], [ %i.m, %bb.e ]
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.j) #17
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.af, %bb.k ]
  call void @_ZN4bzla2ls4NodeINS_9BitVectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit22
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.o ], [ %i.x, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit22 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGEmPS1_S4_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.bzla::BitVectorDomain", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN4bzla15BitVectorDomainC1Em(ptr noundef nonnull align 8 dereferenceable(49) %5, i64 noundef %2)
  invoke void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_15BitVectorDomainEPS1_S7_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef %3, ptr noundef %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_15BitVectorDomainEPS1_S7_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::optional", align 8     ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4bzla15BitVectorDomain8is_fixedEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store i8 0, ptr %i.b, align 8, !tbaa !13
  invoke void @_ZN4bzla2ls4NodeINS_9BitVectorEEC2EPNS_3RNGERKS2_PS3_S8_bRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %i.a, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.e = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4bzla2ls13BitVectorNodeE, i64 16), ptr %0, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_ZN4bzla15BitVectorDomainC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4bzla14BitVectorRangeC2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.k) #17
  br label %.body

_ZN4bzla14BitVectorRangeC2Ev.exit:                ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.noexc16 unwind label %bb.m

.noexc16:                                         ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4bzla14BitVectorRangeC2Ev.exit19 unwind label %bb.f

bb.f:                                             ; preds = %.noexc16
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.n) #17
  br label %.body17

_ZN4bzla14BitVectorRangeC2Ev.exit19:              ; preds = %.noexc16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.r = load i8, ptr %i.q, align 2, !tbaa !45, !range !14, !noundef !15
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit

bb.g:                                             ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN4bzla15BitVectorDomain3fixERKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc20 unwind label %bb.n

.noexc20:                                         ; preds = %bb.h
  store i8 1, ptr %i.t, align 1, !tbaa !46
  br label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit

_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit:    ; preds = %.noexc20, %bb.g, %_ZN4bzla14BitVectorRangeC2Ev.exit19
  ret void

bb.i:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit23

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.aa = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #18
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit23

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit23: ; preds = %bb.j, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.p

bb.k:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body17

bb.n:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.n) #17
  br label %.body17

.body17:                                          ; preds = %bb.m, %bb.f, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.ah, %bb.m ], [ %i.p, %bb.f ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.k) #17
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e, %.body17
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body17 ], [ %i.ag, %bb.l ], [ %i.m, %bb.e ]
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.j) #17
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.af, %bb.k ]
  call void @_ZN4bzla2ls4NodeINS_9BitVectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit23
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.o ], [ %i.x, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit23 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGEmPS1_S4_S4_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.bzla::BitVectorDomain", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN4bzla15BitVectorDomainC1Em(ptr noundef nonnull align 8 dereferenceable(49) %6, i64 noundef %2)
  invoke void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_15BitVectorDomainEPS1_S7_S7_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %6, ptr noundef %3, ptr noundef %4, ptr noundef %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNodeC2EPNS_3RNGERKNS_15BitVectorDomainEPS1_S7_S7_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::optional", align 8     ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4bzla15BitVectorDomain8is_fixedEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store i8 0, ptr %i.b, align 8, !tbaa !13
  invoke void @_ZN4bzla2ls4NodeINS_9BitVectorEEC2EPNS_3RNGERKS2_PS3_S8_S8_bRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %i.a, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.e = load ptr, ptr %6, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4bzla2ls13BitVectorNodeE, i64 16), ptr %0, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_ZN4bzla15BitVectorDomainC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4bzla14BitVectorRangeC2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.k) #17
  br label %.body

_ZN4bzla14BitVectorRangeC2Ev.exit:                ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.noexc17 unwind label %bb.m

.noexc17:                                         ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4bzla14BitVectorRangeC2Ev.exit20 unwind label %bb.f

bb.f:                                             ; preds = %.noexc17
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.n) #17
  br label %.body18

_ZN4bzla14BitVectorRangeC2Ev.exit20:              ; preds = %.noexc17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.r = load i8, ptr %i.q, align 2, !tbaa !45, !range !14, !noundef !15
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit

bb.g:                                             ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN4bzla15BitVectorDomain3fixERKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc21 unwind label %bb.n

.noexc21:                                         ; preds = %bb.h
  store i8 1, ptr %i.t, align 1, !tbaa !46
  br label %_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit

_ZN4bzla2ls13BitVectorNode10fix_domainEv.exit:    ; preds = %.noexc21, %bb.g, %_ZN4bzla14BitVectorRangeC2Ev.exit20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load i8, ptr %i.b, align 8, !tbaa !13, !range !14, !noundef !15
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit24

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.b, align 8, !tbaa !13
  %i.aa = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #18
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit24

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit24: ; preds = %bb.j, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.p

bb.k:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_ZN4bzla14BitVectorRangeC2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.n:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.n) #17
  br label %.body18

.body18:                                          ; preds = %bb.m, %bb.f, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.ah, %bb.m ], [ %i.p, %bb.f ]
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #17
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(48) %i.k) #17
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e, %.body18
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body18 ], [ %i.ag, %bb.l ], [ %i.m, %bb.e ]
  call void @_ZN4bzla15BitVectorDomainD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.j) #17
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.af, %bb.k ]
  call void @_ZN4bzla2ls4NodeINS_9BitVectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit24
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.o ], [ %i.x, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit24 ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK4bzla15BitVectorDomain8is_fixedEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #2

declare void @_ZN4bzla2ls4NodeINS_9BitVectorEEC2EPNS_3RNGERKS2_bRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare void @_ZN4bzla15BitVectorDomainC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(49)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4bzla14BitVectorRangeC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #17
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNode10fix_domainEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.b = load i8, ptr %i.a, align 2, !tbaa !45, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !46, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4bzla15BitVectorDomain3fixERKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  store i8 1, ptr %i.d, align 1, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4bzla2ls4NodeINS_9BitVectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136)) unnamed_addr #3

declare void @_ZN4bzla2ls4NodeINS_9BitVectorEEC2EPNS_3RNGERKS2_PS3_bRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare void @_ZN4bzla2ls4NodeINS_9BitVectorEEC2EPNS_3RNGERKS2_PS3_S8_bRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare void @_ZN4bzla2ls4NodeINS_9BitVectorEEC2EPNS_3RNGERKS2_PS3_S8_S8_bRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare void @_ZN4bzla15BitVectorDomain3fixERKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4bzla2ls13BitVectorNode13is_inequalityEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.e = icmp eq i32 %i.d, 16
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.j = icmp eq i32 %i.i, 18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ true, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4bzla2ls13BitVectorNode6is_notEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.e = icmp eq i32 %i.d, 12
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4bzla2ls13BitVectorNode14is_value_falseEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.b = load i8, ptr %i.a, align 1, !tbaa !46, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = tail call noundef zeroext i1 @_ZNK4bzla9BitVector8is_falseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

declare noundef zeroext i1 @_ZNK4bzla9BitVector8is_falseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2ls13BitVectorNode14set_assignmentERKNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4bzla9BitVector4isetERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

declare void @_ZN4bzla9BitVector4isetERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK4bzla2ls13BitVectorNode3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
end_hunk_0
