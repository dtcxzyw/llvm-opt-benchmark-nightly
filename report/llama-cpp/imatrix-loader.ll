Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/imatrix-loader?download=true
inline.NumInlined: 687
inline.NumDeleted: 338
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"class.std::_Rb_tree.7" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::pair<ggml_tensor *, ggml_tensor *>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::pair<ggml_tensor *, ggml_tensor *>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::pair<ggml_tensor *, ggml_tensor *>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::pair<ggml_tensor *, ggml_tensor *>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.29" = type { i8 }
%"class.std::tuple.38" = type { %"struct.std::_Tuple_impl.39" }
%"struct.std::_Tuple_impl.39" = type { %"struct.std::_Head_base.40" }
%"struct.std::_Head_base.40" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, common_imatrix_entry>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, common_imatrix_entry>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::pair<ggml_tensor *, ggml_tensor *>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::pair<ggml_tensor *, ggml_tensor *>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIP11ggml_tensorS8_ESt4lessIS5_ESaIS6_IKS5_S9_EEEixEOS5_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE20common_imatrix_entrySt4lessIS5_ESaISt4pairIKS5_S6_EEEixERSA_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIP11ggml_tensorS8_ESt4lessIS5_ESaIS6_IKS5_S9_EEED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE20common_imatrix_entrySt4lessIS5_ESaISt4pairIKS5_S6_EEEixEOS5_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_20common_imatrix_entryESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_20common_imatrix_entryESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_20common_imatrix_entryESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_20common_imatrix_entryESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IP11ggml_tensorS9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt6vectorIfSaIfEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIlSaIlEE17_M_default_appendEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IP11ggml_tensorS9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IP11ggml_tensorS9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IP11ggml_tensorS9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IP11ggml_tensorS9_EESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_20common_imatrix_entryESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_20common_imatrix_entryESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [24 x i8] c"%s: no data in file %s\0A\00", align 1
@__func__._Z19common_imatrix_loadRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14common_imatrix = private unnamed_addr constant [20 x i8] c"common_imatrix_load\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"imatrix.datasets\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"imatrix.chunk_count\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"imatrix.chunk_size\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".counts\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: mismatched sums and counts for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%s: sums and counts for %s must be F32\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"%s: failed to open %s\0A\00", align 1
@__func__._ZL26common_imatrix_load_legacyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14common_imatrix = private unnamed_addr constant [27 x i8] c"common_imatrix_load_legacy\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"%s: failed reading name for entry %d from %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"%s: failed reading number of values for entry %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%s: failed reading data for entry %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z19common_imatrix_loadRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14common_imatrix(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(82) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::basic_ifstream", align 8 ; 32 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.j = alloca ptr, align 8                      ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::map.6", align 8        ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  store ptr null, ptr %i.j, align 8, !tbaa !65
  %i.k = load ptr, ptr %0, align 8, !tbaa !15
  %i.l = call ptr @gguf_init_from_file(ptr noundef %i.k, i8 0, ptr nonnull %i.j) ; 14 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %bb.bz

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4)
  %i.m = load ptr, ptr %2, align 8, !tbaa !67
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !76
  %i.s = and i32 %i.r, 5
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %_ZL26common_imatrix_load_legacyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14common_imatrix.exit

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !15
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.v, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__._ZL26common_imatrix_load_legacyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14common_imatrix, ptr noundef %i.w)
          to label %_ZL26common_imatrix_load_legacyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14common_imatrix.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %bb.i unwind label %bb.n       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %2, align 8, !tbaa !67
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !76
  %i.af = and i32 %i.ae, 5
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = load i32, ptr %i.d, align 4
  %i.ai = icmp slt i32 %i.ah, 1
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %or.cond.i, label %bb.j, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.al = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %.loopexit145.i

bb.l:                                             ; preds = %bb.k
  %i.an = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %0, align 8, !tbaa !15
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.an, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZL26common_imatrix_load_legacyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14common_imatrix, ptr noundef %i.ao)
          to label %.loopexit145.i unwind label %bb.n

bb.n:                                             ; preds = %.critedge74.i, %bb.m, %bb.l, %bb.j, %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.o:                                             ; preds = %bb.az, %.lr.ph.i
  %.0186.i = phi i32 [ 0, %.lr.ph.i ], [ %i.eo, %bb.az ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i32 0, ptr %i.e, align 4, !tbaa !77
  %i.aq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.e, i64 noundef 4)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !77  ; 3 uses
  %i.as = add nsw i32 %i.ar, 1                    ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = icmp slt i32 %i.ar, -1
  br i1 %i.au, label %bb.q, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.q
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.p
  %.not.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #19
          to label %.noexc77.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc77.i:                                       ; preds = %bb.r
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.at  ; 2 uses
  store i8 0, ptr %i.av, align 1, !tbaa !16
  %i.ax = add nsw i64 %i.at, -1                   ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit.i, label %bb.s

bb.s:                                             ; preds = %.noexc77.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit.i

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit.i:             ; preds = %bb.s, %.noexc77.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.16.0.i = phi ptr [ %i.aw, %bb.s ], [ %i.aw, %.noexc77.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %.sroa.0117.0.i = phi ptr [ %i.av, %bb.s ], [ %i.av, %.noexc77.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 15 uses
  %i.ba = sext i32 %i.ar to i64
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %.sroa.0117.0.i, i64 noundef %i.ba)
          to label %bb.t unwind label %.loopexit.split-lp136.i.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.t:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit.i
  %i.bc = load ptr, ptr %2, align 8, !tbaa !67
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !76
  %i.bi = and i32 %i.bh, 5
  %.not133.i.a = icmp eq i32 %i.bi, 0
  br i1 %.not133.i.a, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.v unwind label %.loopexit.split-lp136.i.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %i.bl = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.x unwind label %.loopexit.split-lp136.i.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.bm = add nuw nsw i32 %.0186.i, 1
  %i.bn = load ptr, ptr %0, align 8, !tbaa !15
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.bl, i32 noundef 4, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__._ZL26common_imatrix_load_legacyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14common_imatrix, i32 noundef %i.bm, ptr noundef %i.bn)
          to label %.critedge.i unwind label %.loopexit.split-lp136.i.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.o, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit87.i

bb.y:                                             ; preds = %bb.t
  %i.bo = load i32, ptr %i.e, align 4, !tbaa !77
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0117.0.i, i64 %i.bp
  store i8 0, ptr %i.bq, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.aj, ptr %3, align 8, !tbaa !17
  %i.br = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0117.0.i) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.br, ptr %i.c, align 8, !tbaa !18
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.y
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc79.i unwind label %bb.ai ; 2 uses

.noexc79.i:                                       ; preds = %.noexc.i.i
  store ptr %i.bt, ptr %3, align 8, !tbaa !15
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.bu, ptr %i.aj, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc79.i, %bb.y
  %i.bv = phi ptr [ %i.bt, %.noexc79.i ], [ %i.aj, %bb.y ] ; 2 uses
  switch i64 %i.br, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = load i8, ptr %.sroa.0117.0.i, align 1, !tbaa !16
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !16
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %.sroa.0117.0.i, i64 %i.br, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  store i64 %i.bx, ptr %i.ak, align 8, !tbaa !19
  %i.by = load ptr, ptr %3, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 0, ptr %i.bz, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 0, ptr %i.f, align 4, !tbaa !77
  %i.ca = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.f, i64 noundef 4)
          to label %bb.ac unwind label %bb.aj     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i32 0, ptr %i.g, align 4, !tbaa !77
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.g, i64 noundef 4)
          to label %bb.ad unwind label %.loopexit.split-lp141.i.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr %2, align 8, !tbaa !67
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !76
  %i.ci = and i32 %i.ch, 5
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = load i32, ptr %i.g, align 4
  %i.cl = icmp slt i32 %i.ck, 1
  %or.cond4.i = select i1 %i.cj, i1 true, i1 %i.cl
  br i1 %or.cond4.i, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.cm = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.af unwind label %.loopexit.split-lp141.i.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.ag, label %.critedge76.i

bb.ag:                                            ; preds = %bb.af
  %i.co = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.ah unwind label %.loopexit.split-lp141.i.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.co, i32 noundef 4, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__._ZL26common_imatrix_load_legacyRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER14common_imatrix, i32 noundef %.0186.i)
          to label %.critedge76.i unwind label %.loopexit.split-lp141.i.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %.noexc.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.aj:                                            ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ak:                                            ; preds = %bb.ad
  %i.cr = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE20common_imatrix_entrySt4lessIS5_ESaISt4pairIKS5_S6_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(82) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.al unwind label %.loopexit.split-lp141.i.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.al:                                            ; preds = %bb.ak
  %i.cs = load i32, ptr %i.g, align 4, !tbaa !77
  %i.ct = sext i32 %i.cs to i64                   ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !22 ; 2 uses
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !23 ; 5 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 2                 ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.ct
  br i1 %i.db, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dc = sub nuw nsw i64 %i.ct, %i.da
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 noundef %i.dc)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge.i unwind label %.loopexit.split-lp141.i.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge.i:  ; preds = %bb.am
  %.pre.i = load ptr, ptr %i.cr, align 8, !tbaa !23
  %.pre221.i = load i32, ptr %i.g, align 4, !tbaa !77
  %.pre223.i = sext i32 %.pre221.i to i64
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.an:                                            ; preds = %bb.al
  %i.dd = icmp ugt i64 %i.da, %i.ct
  br i1 %i.dd, label %bb.ao, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ct ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cv, %i.de
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.ao
  store ptr %i.de, ptr %i.cu, align 8, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %bb.ao, %bb.an, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre223.i, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge.i ], [ %i.ct, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.ct, %bb.ao ], [ %i.ct, %bb.an ]
  %i.df = phi ptr [ %.pre.i, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge.i ], [ %i.cw, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.cw, %bb.ao ], [ %i.cw, %bb.an ]
  %i.dg = shl nsw i64 %.pre-phi.i, 2
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.df, i64 noundef %i.dg)
          to label %bb.ap unwind label %.loopexit.split-lp141.i.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ap:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.di = load ptr, ptr %2, align 8, !tbaa !67
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds i8, ptr %2, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !76
  %i.do = and i32 %i.dn, 5
  %.not134.i = icmp eq i32 %i.do, 0               ; 2 uses
  br i1 %.not134.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dp = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ar unwind label %.loopexit.split-lp141.i.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.dq = icmp sgt i32 %i.dp, 0
end_hunk_0
