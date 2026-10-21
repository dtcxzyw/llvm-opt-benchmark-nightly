Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/marching_tets?download=true
inline.NumInlined: 1255
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.Eigen::internal::scalar_sum_op" = type { i8 }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.Eigen::Matrix.50" = type { %"class.Eigen::PlainObjectBase.51" }
%"class.Eigen::PlainObjectBase.51" = type { %"class.Eigen::DenseStorage.58" }
%"class.Eigen::DenseStorage.58" = type { %"struct.Eigen::internal::plain_array.59" }
%"struct.Eigen::internal::plain_array.59" = type { [3 x double] }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.Eigen::internal::evaluator.170" = type { %"struct.Eigen::internal::block_evaluator.171" }
%"struct.Eigen::internal::block_evaluator.171" = type { %"struct.Eigen::internal::mapbase_evaluator.172" }
%"struct.Eigen::internal::mapbase_evaluator.172" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::internal::generic_dense_assignment_kernel.175" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Matrix.98" = type { %"class.Eigen::PlainObjectBase.22" }
%"class.Eigen::PlainObjectBase.22" = type { %"class.Eigen::DenseStorage.29" }
%"class.Eigen::DenseStorage.29" = type { ptr, i64, i64 }
%"class.Eigen::Block.159" = type { %"class.Eigen::BlockImpl.160" }
%"class.Eigen::BlockImpl.160" = type { %"class.Eigen::internal::BlockImpl_dense.161" }
%"class.Eigen::internal::BlockImpl_dense.161" = type { %"class.Eigen::MapBase.162", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.162" = type { %"class.Eigen::MapBase.163" }
%"class.Eigen::MapBase.163" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::SparseMatrix.176" = type { %"class.Eigen::SparseCompressedBase.177", i64, i64, ptr, ptr, %"class.Eigen::internal::CompressedStorage" }
%"class.Eigen::SparseCompressedBase.177" = type { %"class.Eigen::SparseMatrixBase.178" }
%"class.Eigen::SparseMatrixBase.178" = type { i8 }
%"class.Eigen::internal::CompressedStorage" = type { ptr, ptr, i64, i64 }
%"class.Eigen::Matrix.118" = type { %"class.Eigen::PlainObjectBase.32" }
%"class.Eigen::PlainObjectBase.32" = type { %"class.Eigen::DenseStorage.39" }
%"class.Eigen::DenseStorage.39" = type { ptr, i64 }
%"class.Eigen::SparseMatrix" = type { %"class.Eigen::SparseCompressedBase", i64, i64, ptr, ptr, %"class.Eigen::internal::CompressedStorage" }
%"class.Eigen::SparseCompressedBase" = type { %"class.Eigen::SparseMatrixBase" }
%"class.Eigen::SparseMatrixBase" = type { i8 }

$_ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll = comdat any

$_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE6rehashEm = comdat any

$_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE18conservativeResizeElll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEES8_NS0_9assign_opIddEELi0EEELi4ELi0EE3runERSB_ = comdat any

$_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiE18collapseDuplicatesINS_8internal13scalar_sum_opIddEEEEvT_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiED2Ev = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_ = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiED2Ev = comdat any

@__const._ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE.mt_cell_lookup = private unnamed_addr constant [16 x [4 x i32]] [[4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 2, i32 1, i32 -1], [4 x i32] [i32 0, i32 3, i32 4, i32 -1], [4 x i32] [i32 2, i32 1, i32 3, i32 4], [4 x i32] [i32 5, i32 3, i32 1, i32 -1], [4 x i32] [i32 0, i32 2, i32 5, i32 3], [4 x i32] [i32 0, i32 1, i32 5, i32 4], [4 x i32] [i32 2, i32 5, i32 4, i32 -1], [4 x i32] [i32 4, i32 5, i32 2, i32 -1], [4 x i32] [i32 0, i32 4, i32 5, i32 1], [4 x i32] [i32 0, i32 3, i32 5, i32 2], [4 x i32] [i32 1, i32 3, i32 5, i32 -1], [4 x i32] [i32 4, i32 3, i32 1, i32 2], [4 x i32] [i32 0, i32 4, i32 3, i32 -1], [4 x i32] [i32 0, i32 1, i32 2, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1]], align 16
@__const._ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE.mt_edge_lookup = private unnamed_addr constant [6 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 3], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 2, i32 3]], align 16
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(72) %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %9 = alloca %"class.std::unordered_map", align 8 ; 20 uses
  %10 = alloca %"class.Eigen::Matrix.50", align 8 ; 10 uses
  %11 = alloca %"class.Eigen::Matrix.50", align 8 ; 10 uses
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.preheader464, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

.preheader464:                                    ; preds = %bb.a, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ], [ 0, %bb.a ] ; 11 uses
  %i.d = phi i64 [ %i.jp, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ], [ %i.b, %bb.a ] ; 5 uses
  %.sroa.0404.0664 = phi ptr [ %.sroa.0404.2, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ], [ null, %bb.a ] ; 17 uses
  %.sroa.17.0663 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ], [ null, %bb.a ] ; 21 uses
  %.sroa.35.0662 = phi ptr [ %.sroa.35.2, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ], [ null, %bb.a ] ; 7 uses
  %.sroa.0388.0661 = phi ptr [ %.sroa.0388.1.lcssa836, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ], [ null, %bb.a ] ; 9 uses
  %.sroa.13.0660 = phi ptr [ %.sroa.13.1.lcssa835, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ], [ null, %bb.a ] ; 9 uses
  %.sroa.21.0659 = phi ptr [ %.sroa.21.1.lcssa834, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ], [ null, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !16
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv ; 6 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !141    ; 4 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !18
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !20
  %i.l = fcmp ogt double %i.k, %3
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr [4 x i8], ptr %i.f, i64 %i.d
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !20
  %i.s = fcmp ogt double %i.r, %3
  %i.t = select i1 %i.s, i64 2, i64 0
  %i.u = or disjoint i64 %i.t, %i.m
  %.idx = shl i64 %i.d, 3
  %i.v = getelementptr i8, ptr %i.f, i64 %.idx
  %i.w = load i32, ptr %i.v, align 4, !tbaa !18
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.g, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !20
  %i.aa = fcmp ogt double %i.z, %3
  %i.ab = select i1 %i.aa, i64 4, i64 0
  %i.ac = or disjoint i64 %i.u, %i.ab
  %.idx825 = mul i64 %i.d, 12
  %i.ad = getelementptr i8, ptr %i.f, i64 %.idx825
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr %i.g, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !20
  %i.ai = fcmp ogt double %i.ah, %3
  %i.aj = select i1 %i.ai, i64 8, i64 0
  %i.ak = or disjoint i64 %i.ac, %i.aj            ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr @__const._ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE.mt_cell_lookup, i64 %i.ak ; 4 uses
  %14 = load i32, ptr %i.al, align 16, !tbaa !18  ; 2 uses
  %.not = icmp eq i32 %14, -1
  br i1 %.not, label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129, label %bb.b

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129, %bb.a
  %.sroa.21.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.21.1.lcssa834, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ] ; 4 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.13.1.lcssa835, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ] ; 2 uses
  %.sroa.0388.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0388.1.lcssa836, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ] ; 8 uses
  %.sroa.35.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.35.2, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ] ; 4 uses
  %.sroa.17.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.17.1, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ] ; 2 uses
  %.sroa.0404.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0404.2, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129 ] ; 8 uses
  %i.am = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.an = ptrtoint ptr %.sroa.0388.0.lcssa to i64 ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 3                 ; 5 uses
  %i.aq = mul nsw i64 %i.ap, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.aq, i64 noundef %i.ap, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %.thread

.critedge:                                        ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit
  %.sroa.12.0 = phi i32 [ %i.fi, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3 ], [ -1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ], [ -1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1 ], [ -1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2 ] ; 4 uses
  %.sroa.9.0 = phi i32 [ %i.dz, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3 ], [ -1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ], [ -1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1 ], [ %i.dz, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2 ] ; 4 uses
  %.sroa.6.0 = phi i32 [ %i.cq, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3 ], [ -1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ], [ %i.cq, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1 ], [ %i.cq, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2 ] ; 6 uses
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.21.3.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3 ], [ %.sroa.21.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.21.3.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1 ], [ %.sroa.21.3.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2 ] ; 8 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.2.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3 ], [ %.sroa.13.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.13.2.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1 ], [ %.sroa.13.2.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2 ] ; 5 uses
  %.sroa.0388.1.lcssa = phi ptr [ %.sroa.0388.3.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3 ], [ %.sroa.0388.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0388.3.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1 ], [ %.sroa.0388.3.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2 ] ; 8 uses
  %.not107 = icmp eq i32 %i.bi, -1
  br i1 %.not107, label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129, label %bb.s

bb.b:                                             ; preds = %.preheader464
  %i.ar = sext i32 %14 to i64
  %i.as = getelementptr inbounds [8 x i8], ptr @__const._ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE.mt_edge_lookup, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !18
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.d, %i.au
  %i.aw = getelementptr [4 x i8], ptr %i.f, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.d, %i.ba
  %i.bc = getelementptr [4 x i8], ptr %i.f, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !18 ; 2 uses
  %i.be = ptrtoint ptr %.sroa.13.0660 to i64
  %i.bf = ptrtoint ptr %.sroa.0388.0661 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = ashr exact i64 %i.bg, 3                 ; 4 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 5 uses
  %.sroa.speculated372 = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.ax)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.bd)
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.speculated to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.sroa.speculated372 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0660, %.sroa.21.0659
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.13.0660, align 4
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.bj = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bj, label %bb.e, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.q, %bb.m, %bb.i, %bb.d
  %.sroa.0388.1657.lcssa741 = phi ptr [ %.sroa.0388.0661, %bb.d ], [ %.sroa.0388.3, %bb.i ], [ %.sroa.0388.3.1, %bb.m ], [ %.sroa.0388.3.2, %bb.q ]
  %.sroa.21.1655.lcssa739 = phi ptr [ %.sroa.13.0660, %bb.d ], [ %.sroa.21.3, %bb.i ], [ %.sroa.21.3.1, %bb.m ], [ %.sroa.21.3.2, %bb.q ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
          to label %.noexc unwind label %.loopexit.split-lp460.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bh
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #24
          to label %.noexc124 unwind label %.loopexit459 ; 5 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bg
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bq, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0388.0661, %.sroa.13.0660
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc124, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i ], [ %i.bp, %.noexc124 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0388.0661, %.noexc124 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !143
  store i64 %i.br, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !142
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bs, %.sroa.13.0660
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !90

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc124
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bp, %.noexc124 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0388.0661, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0388.0661, i64 noundef %i.bg) #25
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.c
  %.sroa.21.3 = phi ptr [ %i.bu, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.21.0659, %bb.c ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.0660, %bb.c ]
  %.sroa.0388.3 = phi ptr [ %i.bp, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0388.0661, %bb.c ] ; 9 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 5 uses
  %.sroa.13.2.a = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %15 = load i32, ptr %.sroa.13.2.a, align 4, !tbaa !18 ; 2 uses
  %i.bv = icmp eq i32 %15, -1
  br i1 %i.bv, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit
  %i.bw = sext i32 %15 to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr @__const._ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE.mt_edge_lookup, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !18
  %i.bz = sext i32 %i.by to i64
  %i.ca = load ptr, ptr %1, align 8, !tbaa !16
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.cc = mul nsw i64 %i.cb, %i.bz
  %i.cd = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !18 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !18
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i64 %i.cb, %i.ci
  %i.ck = getelementptr [4 x i8], ptr %i.cd, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !18 ; 2 uses
  %i.cm = ptrtoint ptr %.sroa.13.2 to i64
  %i.cn = ptrtoint ptr %.sroa.0388.3 to i64       ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = ashr exact i64 %i.co, 3                 ; 4 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 3 uses
  %.sroa.speculated372.1 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.cf)
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.cl)
  %.sroa.2.0.insert.ext.i.1 = zext i32 %.sroa.speculated.1 to i64
  %.sroa.2.0.insert.shift.i.1 = shl nuw i64 %.sroa.2.0.insert.ext.i.1, 32
  %.sroa.0.0.insert.ext.i.1 = zext i32 %.sroa.speculated372.1 to i64
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.2.0.insert.shift.i.1, %.sroa.0.0.insert.ext.i.1 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %.sroa.13.2, %.sroa.21.3
  br i1 %.not.i.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.sroa.0.0.insert.insert.i.1, ptr %.sroa.13.2, align 4
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1

bb.i:                                             ; preds = %bb.g
  %i.cr = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cr, label %bb.e, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.cp ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cp
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i.i.1 = icmp ne i64 %i.cv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #24
          to label %.noexc124.1 unwind label %.loopexit459 ; 5 uses

.noexc124.1:                                      ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.co
  store i64 %.sroa.0.0.insert.insert.i.1, ptr %i.cy, align 4
  %.not10.i.i.i.i.i.i.1 = icmp eq ptr %.sroa.0388.3, %.sroa.21.3
  br i1 %.not10.i.i.i.i.i.i.1, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.noexc124.1, %.lr.ph.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.1 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.cx, %.noexc124.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.1 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.1 ], [ %.sroa.0388.3, %.noexc124.1 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.cz = load i64, ptr %.0911.i.i.i.i.i.i.1, align 4, !alias.scope !145
  store i64 %i.cz, ptr %.012.i.i.i.i.i.i.1, align 4, !alias.scope !144
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.1, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.1, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.da, %.sroa.21.3
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !90

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %.noexc124.1
  %.0.lcssa.i.i.i.i.i.i.1 = phi ptr [ %i.cx, %.noexc124.1 ], [ %i.db, %.lr.ph.i.i.i.i.i.i.1 ]
  %.not.i23.i.i.i.1 = icmp eq ptr %.sroa.0388.3, null
  br i1 %.not.i23.i.i.i.1, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.1
  %i.dc = ptrtoint ptr %.sroa.21.3 to i64
  %i.dd = sub i64 %i.dc, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0388.3, i64 noundef %i.dd) #25
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1: ; preds = %bb.j, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, %bb.h
  %.sroa.21.3.1 = phi ptr [ %i.de, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1 ], [ %.sroa.21.3, %bb.h ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i.pn.1 = phi ptr [ %.0.lcssa.i.i.i.i.i.i.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1 ], [ %.sroa.13.2, %bb.h ]
  %.sroa.0388.3.1 = phi ptr [ %i.cx, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1 ], [ %.sroa.0388.3, %bb.h ] ; 9 uses
  %.sroa.13.2.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.1, i64 8 ; 5 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !18     ; 2 uses
  %.not.2 = icmp eq i32 %17, -1
  br i1 %.not.2, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.1
  %i.df = sext i32 %17 to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr @__const._ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE.mt_edge_lookup, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !18
  %i.di = sext i32 %i.dh to i64
  %i.dj = load ptr, ptr %1, align 8, !tbaa !16
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.dl = mul nsw i64 %i.dk, %i.di
  %i.dm = getelementptr [4 x i8], ptr %i.dj, i64 %indvars.iv ; 2 uses
  %i.dn = getelementptr [4 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !18 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.dk, %i.dr
  %i.dt = getelementptr [4 x i8], ptr %i.dm, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !18 ; 2 uses
  %i.dv = ptrtoint ptr %.sroa.13.2.1 to i64
  %i.dw = ptrtoint ptr %.sroa.0388.3.1 to i64     ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = ashr exact i64 %i.dx, 3                 ; 4 uses
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %.sroa.speculated372.2 = tail call i32 @llvm.smin.i32(i32 %i.du, i32 %i.do)
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %i.do, i32 %i.du)
  %.sroa.2.0.insert.ext.i.2 = zext i32 %.sroa.speculated.2 to i64
  %.sroa.2.0.insert.shift.i.2 = shl nuw i64 %.sroa.2.0.insert.ext.i.2, 32
  %.sroa.0.0.insert.ext.i.2 = zext i32 %.sroa.speculated372.2 to i64
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.2.0.insert.shift.i.2, %.sroa.0.0.insert.ext.i.2 ; 2 uses
  %.not.i.i.2 = icmp eq ptr %.sroa.13.2.1, %.sroa.21.3.1
  br i1 %.not.i.i.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %.sroa.0.0.insert.insert.i.2, ptr %.sroa.13.2.1, align 4
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2

bb.m:                                             ; preds = %bb.k
  %i.ea = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.ea, label %bb.e, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.2 = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i.i.2, %i.dy ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.dy
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 3 uses
  %.not.i.i.i.i.2 = icmp ne i64 %i.ee, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.2)
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #24
          to label %.noexc124.2 unwind label %.loopexit459 ; 5 uses

.noexc124.2:                                      ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dx
  store i64 %.sroa.0.0.insert.insert.i.2, ptr %i.eh, align 4
  %.not10.i.i.i.i.i.i.2 = icmp eq ptr %.sroa.0388.3.1, %.sroa.21.3.1
  br i1 %.not10.i.i.i.i.i.i.2, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.2, label %.lr.ph.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %.noexc124.2, %.lr.ph.i.i.i.i.i.i.2
  %.012.i.i.i.i.i.i.2 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i.2 ], [ %i.eg, %.noexc124.2 ] ; 2 uses
  %.0911.i.i.i.i.i.i.2 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.2 ], [ %.sroa.0388.3.1, %.noexc124.2 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.ei = load i64, ptr %.0911.i.i.i.i.i.i.2, align 4, !alias.scope !147
  store i64 %i.ei, ptr %.012.i.i.i.i.i.i.2, align 4, !alias.scope !146
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.2, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.2, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.2 = icmp eq ptr %i.ej, %.sroa.21.3.1
  br i1 %.not.i.i.i.i.i.i.2, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.2, label %.lr.ph.i.i.i.i.i.i.2, !llvm.loop !90

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.i.2, %.noexc124.2
  %.0.lcssa.i.i.i.i.i.i.2 = phi ptr [ %i.eg, %.noexc124.2 ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.2 ]
  %.not.i23.i.i.i.2 = icmp eq ptr %.sroa.0388.3.1, null
  br i1 %.not.i23.i.i.i.2, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.2, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.2
  %i.el = ptrtoint ptr %.sroa.21.3.1 to i64
  %i.em = sub i64 %i.el, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0388.3.1, i64 noundef %i.em) #25
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.2

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.2: ; preds = %bb.n, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.2
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.2, %bb.l
  %.sroa.21.3.2 = phi ptr [ %i.en, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.2 ], [ %.sroa.21.3.1, %bb.l ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i.pn.2 = phi ptr [ %.0.lcssa.i.i.i.i.i.i.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.2 ], [ %.sroa.13.2.1, %bb.l ]
  %.sroa.0388.3.2 = phi ptr [ %i.eg, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.2 ], [ %.sroa.0388.3.1, %bb.l ] ; 9 uses
  %.sroa.13.2.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.2, i64 8 ; 5 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %19 = load i32, ptr %18, align 4, !tbaa !18     ; 2 uses
  %.not.3.not = icmp eq i32 %19, -1
  br i1 %.not.3.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.2
  %i.eo = sext i32 %19 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr @__const._ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE.mt_edge_lookup, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !18
  %i.er = sext i32 %i.eq to i64
  %i.es = load ptr, ptr %1, align 8, !tbaa !16
  %i.et = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.eu = mul nsw i64 %i.et, %i.er
  %i.ev = getelementptr [4 x i8], ptr %i.es, i64 %indvars.iv ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %i.ev, i64 %i.eu
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !18 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !18
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul nsw i64 %i.et, %i.fa
  %i.fc = getelementptr [4 x i8], ptr %i.ev, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !18 ; 2 uses
  %i.fe = ptrtoint ptr %.sroa.13.2.2 to i64
  %i.ff = ptrtoint ptr %.sroa.0388.3.2 to i64     ; 2 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = ashr exact i64 %i.fg, 3                 ; 4 uses
  %i.fi = trunc i64 %i.fh to i32
  %.sroa.speculated372.3 = tail call i32 @llvm.smin.i32(i32 %i.fd, i32 %i.ex)
  %.sroa.speculated.3 = tail call i32 @llvm.smax.i32(i32 %i.ex, i32 %i.fd)
  %.sroa.2.0.insert.ext.i.3 = zext i32 %.sroa.speculated.3 to i64
  %.sroa.2.0.insert.shift.i.3 = shl nuw i64 %.sroa.2.0.insert.ext.i.3, 32
  %.sroa.0.0.insert.ext.i.3 = zext i32 %.sroa.speculated372.3 to i64
  %.sroa.0.0.insert.insert.i.3 = or disjoint i64 %.sroa.2.0.insert.shift.i.3, %.sroa.0.0.insert.ext.i.3 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %.sroa.13.2.2, %.sroa.21.3.2
  br i1 %.not.i.i.3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.0.0.insert.insert.i.3, ptr %.sroa.13.2.2, align 4
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3

bb.q:                                             ; preds = %bb.o
  %i.fj = icmp eq i64 %i.fg, 9223372036854775800
  br i1 %i.fj, label %bb.e, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.3

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.3: ; preds = %bb.q
  %.sroa.speculated.i.i.i.i.3 = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i.i.3, %i.fh ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fh
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 1152921504606846975)
  %i.fn = select i1 %i.fl, i64 1152921504606846975, i64 %i.fm ; 3 uses
  %.not.i.i.i.i.3 = icmp ne i64 %i.fn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.3)
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #24
          to label %.noexc124.3 unwind label %.loopexit459 ; 5 uses

.noexc124.3:                                      ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fg
  store i64 %.sroa.0.0.insert.insert.i.3, ptr %i.fq, align 4
  %.not10.i.i.i.i.i.i.3 = icmp eq ptr %.sroa.0388.3.2, %.sroa.21.3.2
  br i1 %.not10.i.i.i.i.i.i.3, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.3, label %.lr.ph.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.3:                             ; preds = %.noexc124.3, %.lr.ph.i.i.i.i.i.i.3
  %.012.i.i.i.i.i.i.3 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i.3 ], [ %i.fp, %.noexc124.3 ] ; 2 uses
  %.0911.i.i.i.i.i.i.3 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.3 ], [ %.sroa.0388.3.2, %.noexc124.3 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.fr = load i64, ptr %.0911.i.i.i.i.i.i.3, align 4, !alias.scope !149
  store i64 %i.fr, ptr %.012.i.i.i.i.i.i.3, align 4, !alias.scope !148
  %i.fs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.3, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.3, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.fs, %.sroa.21.3.2
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.3, label %.lr.ph.i.i.i.i.i.i.3, !llvm.loop !90

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.i.3, %.noexc124.3
  %.0.lcssa.i.i.i.i.i.i.3 = phi ptr [ %i.fp, %.noexc124.3 ], [ %i.ft, %.lr.ph.i.i.i.i.i.i.3 ]
  %.not.i23.i.i.i.3 = icmp eq ptr %.sroa.0388.3.2, null
  br i1 %.not.i23.i.i.i.3, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.3, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.3
  %i.fu = ptrtoint ptr %.sroa.21.3.2 to i64
  %i.fv = sub i64 %i.fu, %i.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0388.3.2, i64 noundef %i.fv) #25
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.3

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.3: ; preds = %bb.r, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.3
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fn
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.3: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.3, %bb.p
  %.sroa.21.3.3 = phi ptr [ %i.fw, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.3 ], [ %.sroa.21.3.2, %bb.p ]
  %.0.lcssa.i.i.i.i.i.i.pn.3 = phi ptr [ %.0.lcssa.i.i.i.i.i.i.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.3 ], [ %.sroa.13.2.2, %bb.p ]
  %.sroa.0388.3.3 = phi ptr [ %i.fp, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.3 ], [ %.sroa.0388.3.2, %bb.p ]
  %.sroa.13.2.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.3, i64 8
  br label %.critedge

bb.s:                                             ; preds = %.critedge
  %i.fx = shl nuw nsw i64 1, %i.ak
  %i.fy = and i64 %i.fx, 59799
  %.not108.not = icmp eq i64 %i.fy, 0
  %.not.i.i125 = icmp eq ptr %.sroa.17.0663, %.sroa.35.0662 ; 2 uses
  br i1 %.not108.not, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i.i125, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.bi, ptr %.sroa.17.0663, align 4
  %.sroa.0347.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.0663, i64 4
  store i32 %.sroa.6.0, ptr %.sroa.0347.sroa.6.0..sroa_idx, align 4
  %.sroa.0347.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.0663, i64 8
  store i32 %.sroa.12.0, ptr %.sroa.0347.sroa.7.0..sroa_idx, align 4, !tbaa !22
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.17.0663, i64 12
  %i.ga = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !155
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.gb = ptrtoint ptr %.sroa.17.0663 to i64
  %i.gc = ptrtoint ptr %.sroa.0404.0664 to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 4 uses
  %i.ge = icmp eq i64 %i.gd, 9223372036854775792
  br i1 %i.ge, label %.invoke, label %_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.v
  %i.gf = ashr exact i64 %i.gd, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.gf, i64 1)
  %i.gg = add nsw i64 %.sroa.speculated.i.i, %i.gf ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.gf
  %i.gi = tail call i64 @llvm.umin.i64(i64 %i.gg, i64 576460752303423487)
  %i.gj = select i1 %i.gh, i64 576460752303423487, i64 %i.gi ; 3 uses
  %.not.i.i187 = icmp ne i64 %i.gj, 0
  tail call void @llvm.assume(i1 %.not.i.i187)
  %i.gk = shl nuw nsw i64 %i.gj, 4
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #24
          to label %.noexc194 unwind label %.loopexit.split-lp460.loopexit ; 5 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gd ; 4 uses
  store i32 %i.bi, ptr %i.gm, align 4
  %.sroa.0347.sroa.6.0..sroa_idx362 = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store i32 %.sroa.6.0, ptr %.sroa.0347.sroa.6.0..sroa_idx362, align 4
  %.sroa.0347.sroa.7.0..sroa_idx364 = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i32 %.sroa.12.0, ptr %.sroa.0347.sroa.7.0..sroa_idx364, align 4, !tbaa !22
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %i.go = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !155
  %.not10.i.i.i.i188 = icmp eq ptr %.sroa.0404.0664, %.sroa.17.0663
  br i1 %.not10.i.i.i.i188, label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i189

.lr.ph.i.i.i.i189:                                ; preds = %.noexc194, %.lr.ph.i.i.i.i189
  %.012.i.i.i.i190 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i189 ], [ %i.gl, %.noexc194 ] ; 3 uses
  %.0911.i.i.i.i191 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i189 ], [ %.sroa.0404.0664, %.noexc194 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i190, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i191, i64 12, i1 false), !tbaa.struct !158, !alias.scope !159
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i190, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i191, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !155, !alias.scope !157
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !155, !alias.scope !156
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i191, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i190, i64 16 ; 2 uses
  %.not.i.i.i.i192 = icmp eq ptr %i.gs, %.sroa.17.0663
  br i1 %.not.i.i.i.i192, label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i189, !llvm.loop !103

_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i189, %.noexc194
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gl, %.noexc194 ], [ %i.gt, %.lr.ph.i.i.i.i189 ]
  %.not.i23.i = icmp eq ptr %.sroa.0404.0664, null
  br i1 %.not.i23.i, label %.noexc126, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0404.0664, i64 noundef %i.gd) #25
  br label %.noexc126

.noexc126:                                        ; preds = %bb.w, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gj
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %.noexc126
  %.sroa.35.5 = phi ptr [ %i.gu, %.noexc126 ], [ %.sroa.35.0662, %bb.u ] ; 5 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc126 ], [ %.sroa.17.0663, %bb.u ] ; 7 uses
  %.sroa.0404.5 = phi ptr [ %i.gl, %.noexc126 ], [ %.sroa.0404.0664, %bb.u ] ; 8 uses
  %.0.lcssa.i.i.i.i.pn1141 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.pn to i64
  %.sroa.17.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 16 ; 2 uses
  %.not.i.i127 = icmp eq ptr %.sroa.17.2, %.sroa.35.5
  br i1 %.not.i.i127, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %.sroa.6.0, ptr %.sroa.17.2, align 4
  %.sroa.0344.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 20
  store i32 %.sroa.9.0, ptr %.sroa.0344.sroa.6.0..sroa_idx, align 4
  %.sroa.0344.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 24
  store i32 %.sroa.12.0, ptr %.sroa.0344.sroa.7.0..sroa_idx, align 4, !tbaa !22
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 28
  %i.gw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !155
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 32
  br label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129

bb.z:                                             ; preds = %bb.x
  %i.gy = ptrtoint ptr %.sroa.35.5 to i64
  %i.gz = ptrtoint ptr %.sroa.0404.5 to i64       ; 2 uses
  %i.ha = sub i64 %i.gy, %i.gz                    ; 4 uses
  %i.hb = icmp eq i64 %i.ha, 9223372036854775792
  br i1 %i.hb, label %bb.aa, label %_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i195

bb.aa:                                            ; preds = %bb.z
end_hunk_0
begin_hunk_1_@_ZN3igl13marching_tetsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S4_NS2_IiLin1ELi1ELi0ELin1ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENSG_6ScalarERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EERNS1_12SparseMatrixIT5_Li0EiEE:bb.a
  %.not10.i.i.i.i198 = icmp eq ptr %.sroa.0404.5, %.sroa.35.5
  br i1 %.not10.i.i.i.i198, label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i210, label %.lr.ph.i.i.i.i199.preheader

.lr.ph.i.i.i.i199.preheader:                      ; preds = %.noexc214
  %i.hm = sub i64 %.0.lcssa.i.i.i.i.pn1141, %i.gz ; 2 uses
  %i.hn = lshr i64 %i.hm, 4
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter = and i64 %i.ho, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i199.prol.loopexit, label %.lr.ph.i.i.i.i199.prol

.lr.ph.i.i.i.i199.prol:                           ; preds = %.lr.ph.i.i.i.i199.preheader, %.lr.ph.i.i.i.i199.prol
  %.012.i.i.i.i200.prol = phi ptr [ %i.ht, %.lr.ph.i.i.i.i199.prol ], [ %i.hi, %.lr.ph.i.i.i.i199.preheader ] ; 3 uses
  %.0911.i.i.i.i201.prol = phi ptr [ %i.hs, %.lr.ph.i.i.i.i199.prol ], [ %.sroa.0404.5, %.lr.ph.i.i.i.i199.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i199.prol ], [ 0, %.lr.ph.i.i.i.i199.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i200.prol, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i201.prol, i64 12, i1 false), !tbaa.struct !158, !alias.scope !162
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200.prol, i64 12
  %i.hq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201.prol, i64 12
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !155, !alias.scope !161
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !155, !alias.scope !160
  %i.hs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201.prol, i64 16 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i199.prol.loopexit, label %.lr.ph.i.i.i.i199.prol, !llvm.loop !107

.lr.ph.i.i.i.i199.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i199.prol, %.lr.ph.i.i.i.i199.preheader
  %.lcssa1109.unr = phi ptr [ poison, %.lr.ph.i.i.i.i199.preheader ], [ %i.ht, %.lr.ph.i.i.i.i199.prol ]
  %.012.i.i.i.i200.unr = phi ptr [ %i.hi, %.lr.ph.i.i.i.i199.preheader ], [ %i.ht, %.lr.ph.i.i.i.i199.prol ]
  %.0911.i.i.i.i201.unr = phi ptr [ %.sroa.0404.5, %.lr.ph.i.i.i.i199.preheader ], [ %i.hs, %.lr.ph.i.i.i.i199.prol ]
  %i.hu = icmp ult i64 %i.hm, 48
  br i1 %i.hu, label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i210, label %.lr.ph.i.i.i.i199

.lr.ph.i.i.i.i199:                                ; preds = %.lr.ph.i.i.i.i199.prol.loopexit, %.lr.ph.i.i.i.i199
  %.012.i.i.i.i200 = phi ptr [ %i.io, %.lr.ph.i.i.i.i199 ], [ %.012.i.i.i.i200.unr, %.lr.ph.i.i.i.i199.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i201 = phi ptr [ %i.in, %.lr.ph.i.i.i.i199 ], [ %.0911.i.i.i.i201.unr, %.lr.ph.i.i.i.i199.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i200, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i201, i64 12, i1 false), !tbaa.struct !158, !alias.scope !162
  %i.hv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 12
  %i.hw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !155, !alias.scope !161
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !155, !alias.scope !160
  %i.hy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hz, ptr noundef nonnull align 4 dereferenceable(16) %i.hy, i64 12, i1 false), !tbaa.struct !158, !alias.scope !165
  %i.ia = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 28
  %i.ib = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201, i64 28
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !155, !alias.scope !164
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !155, !alias.scope !163
  %i.id = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ie, ptr noundef nonnull align 4 dereferenceable(16) %i.id, i64 12, i1 false), !tbaa.struct !158, !alias.scope !168
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 44
  %i.ig = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201, i64 44
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !155, !alias.scope !167
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !155, !alias.scope !166
  %i.ii = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201, i64 48 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ij, ptr noundef nonnull align 4 dereferenceable(16) %i.ii, i64 12, i1 false), !tbaa.struct !158, !alias.scope !171
  %i.ik = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 60
  %i.il = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201, i64 60
  %i.im = load i32, ptr %i.il, align 4, !tbaa !155, !alias.scope !170
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !155, !alias.scope !169
  %i.in = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i201, i64 64
  %i.io = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 64 ; 2 uses
  %.not.i.i.i.i202.3 = icmp eq ptr %i.ii, %.0.lcssa.i.i.i.i.pn
  br i1 %.not.i.i.i.i202.3, label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i210, label %.lr.ph.i.i.i.i199, !llvm.loop !103

_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i210: ; preds = %.lr.ph.i.i.i.i199.prol.loopexit, %.lr.ph.i.i.i.i199, %.noexc214
  %.0.lcssa.i.i.i.i204 = phi ptr [ %i.hi, %.noexc214 ], [ %.lcssa1109.unr, %.lr.ph.i.i.i.i199.prol.loopexit ], [ %i.io, %.lr.ph.i.i.i.i199 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i204, i64 16
  %.not.i23.i212 = icmp eq ptr %.sroa.0404.5, null
  br i1 %.not.i23.i212, label %.noexc128, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i210
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0404.5, i64 noundef %i.ha) #25
  br label %.noexc128

.noexc128:                                        ; preds = %bb.ab, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i210
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.hg
  br label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129

.loopexit459:                                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.3, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.0388.1657.lcssa742 = phi ptr [ %.sroa.0388.0661, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0388.3, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ], [ %.sroa.0388.3.1, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2 ], [ %.sroa.0388.3.2, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.3 ]
  %.sroa.21.1655.lcssa740 = phi ptr [ %.sroa.13.0660, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.21.3, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ], [ %.sroa.21.3.1, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.2 ], [ %.sroa.21.3.2, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.3 ]
  %lpad.loopexit461 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit182

.loopexit.split-lp460.loopexit:                   ; preds = %_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i216, %_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit465 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit182

.loopexit.split-lp460.loopexit.split-lp:          ; preds = %.invoke, %bb.e
  %.sroa.35.0662755 = phi ptr [ %.sroa.17.0663, %.invoke ], [ %.sroa.35.0662, %bb.e ]
  %.sroa.21.1592 = phi ptr [ %.sroa.21.1.lcssa, %.invoke ], [ %.sroa.21.1655.lcssa739, %bb.e ]
  %.sroa.0388.1579 = phi ptr [ %.sroa.0388.1.lcssa, %.invoke ], [ %.sroa.0388.1657.lcssa741, %bb.e ]
  %lpad.loopexit.split-lp466 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit182

.loopexit.split-lp469.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i195, %bb.aa
  %lpad.loopexit.split-lp1101 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit182

bb.ac:                                            ; preds = %bb.s
  br i1 %.not.i.i125, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.bi, ptr %.sroa.17.0663, align 4
  %.sroa.0333.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.0663, i64 4
  store i32 %.sroa.6.0, ptr %.sroa.0333.sroa.6.0..sroa_idx, align 4
  %.sroa.0333.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.0663, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.0333.sroa.7.0..sroa_idx, align 4, !tbaa !22
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.17.0663, i64 12
  %i.is = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !155
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.17.0663, i64 16
  br label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129

bb.ae:                                            ; preds = %bb.ac
  %i.iu = ptrtoint ptr %.sroa.17.0663 to i64
  %i.iv = ptrtoint ptr %.sroa.0404.0664 to i64
  %i.iw = sub i64 %i.iu, %i.iv                    ; 4 uses
  %i.ix = icmp eq i64 %i.iw, 9223372036854775792
  br i1 %i.ix, label %.invoke, label %_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i216

.invoke:                                          ; preds = %bb.v, %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
          to label %.cont unwind label %.loopexit.split-lp460.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i216: ; preds = %bb.ae
  %i.iy = ashr exact i64 %i.iw, 4                 ; 3 uses
  %.sroa.speculated.i.i217 = tail call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.iz = add nsw i64 %.sroa.speculated.i.i217, %i.iy ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.iy
  %i.jb = tail call i64 @llvm.umin.i64(i64 %i.iz, i64 576460752303423487)
  %i.jc = select i1 %i.ja, i64 576460752303423487, i64 %i.jb ; 3 uses
  %.not.i.i218 = icmp ne i64 %i.jc, 0
  tail call void @llvm.assume(i1 %.not.i.i218)
  %i.jd = shl nuw nsw i64 %i.jc, 4
  %i.je = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #24
          to label %.noexc235 unwind label %.loopexit.split-lp460.loopexit ; 5 uses

.noexc235:                                        ; preds = %_ZNKSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE12_M_check_lenEmPKc.exit.i216
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.iw ; 4 uses
  store i32 %i.bi, ptr %i.jf, align 4
  %.sroa.0333.sroa.6.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store i32 %.sroa.6.0, ptr %.sroa.0333.sroa.6.0..sroa_idx340, align 4
  %.sroa.0333.sroa.7.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.0333.sroa.7.0..sroa_idx342, align 4, !tbaa !22
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  %i.jh = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !155
  %.not10.i.i.i.i219 = icmp eq ptr %.sroa.0404.0664, %.sroa.17.0663
  br i1 %.not10.i.i.i.i219, label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i231, label %.lr.ph.i.i.i.i220

.lr.ph.i.i.i.i220:                                ; preds = %.noexc235, %.lr.ph.i.i.i.i220
  %.012.i.i.i.i221 = phi ptr [ %i.jm, %.lr.ph.i.i.i.i220 ], [ %i.je, %.noexc235 ] ; 3 uses
  %.0911.i.i.i.i222 = phi ptr [ %i.jl, %.lr.ph.i.i.i.i220 ], [ %.sroa.0404.0664, %.noexc235 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i221, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i222, i64 12, i1 false), !tbaa.struct !158, !alias.scope !174
  %i.ji = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i221, i64 12
  %i.jj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i222, i64 12
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !155, !alias.scope !173
  store i32 %i.jk, ptr %i.ji, align 4, !tbaa !155, !alias.scope !172
  %i.jl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i222, i64 16 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i221, i64 16 ; 2 uses
  %.not.i.i.i.i223 = icmp eq ptr %i.jl, %.sroa.17.0663
  br i1 %.not.i.i.i.i223, label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i231, label %.lr.ph.i.i.i.i220, !llvm.loop !103

_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i231: ; preds = %.lr.ph.i.i.i.i220, %.noexc235
  %.0.lcssa.i.i.i.i225 = phi ptr [ %i.je, %.noexc235 ], [ %i.jm, %.lr.ph.i.i.i.i220 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i225, i64 16
  %.not.i23.i233 = icmp eq ptr %.sroa.0404.0664, null
  br i1 %.not.i23.i233, label %.noexc131, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i231
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0404.0664, i64 noundef %i.iw) #25
  br label %.noexc131

.noexc131:                                        ; preds = %bb.af, %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i231
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.jc
  br label %_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129

_ZNSt6vectorISt4pairIN5Eigen6MatrixIiLi1ELi3ELi1ELi1ELi3EEEiESaIS4_EE9push_backEOS4_.exit129: ; preds = %.preheader464, %bb.ad, %.noexc131, %bb.y, %.noexc128, %.critedge
  %.sroa.0388.1.lcssa836 = phi ptr [ %.sroa.0388.1.lcssa, %.critedge ], [ %.sroa.0388.1.lcssa, %bb.y ], [ %.sroa.0388.1.lcssa, %.noexc128 ], [ %.sroa.0388.1.lcssa, %.noexc131 ], [ %.sroa.0388.1.lcssa, %bb.ad ], [ %.sroa.0388.0661, %.preheader464 ] ; 2 uses
  %.sroa.13.1.lcssa835 = phi ptr [ %.sroa.13.1.lcssa, %.critedge ], [ %.sroa.13.1.lcssa, %bb.y ], [ %.sroa.13.1.lcssa, %.noexc128 ], [ %.sroa.13.1.lcssa, %.noexc131 ], [ %.sroa.13.1.lcssa, %bb.ad ], [ %.sroa.13.0660, %.preheader464 ] ; 2 uses
  %.sroa.21.1.lcssa834 = phi ptr [ %.sroa.21.1.lcssa, %.critedge ], [ %.sroa.21.1.lcssa, %bb.y ], [ %.sroa.21.1.lcssa, %.noexc128 ], [ %.sroa.21.1.lcssa, %.noexc131 ], [ %.sroa.21.1.lcssa, %bb.ad ], [ %.sroa.21.0659, %.preheader464 ] ; 2 uses
  %.sroa.35.2 = phi ptr [ %.sroa.35.0662, %.critedge ], [ %.sroa.35.5, %bb.y ], [ %i.iq, %.noexc128 ], [ %i.jo, %.noexc131 ], [ %.sroa.35.0662, %bb.ad ], [ %.sroa.35.0662, %.preheader464 ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.0663, %.critedge ], [ %i.gx, %bb.y ], [ %i.ip, %.noexc128 ], [ %i.jn, %.noexc131 ], [ %i.it, %bb.ad ], [ %.sroa.17.0663, %.preheader464 ] ; 2 uses
  %.sroa.0404.2 = phi ptr [ %.sroa.0404.0664, %.critedge ], [ %.sroa.0404.5, %bb.y ], [ %i.hi, %.noexc128 ], [ %i.je, %.noexc131 ], [ %.sroa.0404.0664, %bb.ad ], [ %.sroa.0404.0664, %.preheader464 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jp = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.jq = icmp sgt i64 %i.jp, %indvars.iv.next
  br i1 %i.jq, label %.preheader464, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, !llvm.loop !120

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.jr = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.js = ptrtoint ptr %.sroa.0404.0.lcssa to i64 ; 2 uses
  %i.jt = sub i64 %i.jr, %i.js                    ; 2 uses
  %i.ju = ashr exact i64 %i.jt, 4                 ; 6 uses
  %i.jv = mul nsw i64 %i.ju, 3
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.jv, i64 noundef %i.ju, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit unwind label %.thread

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !25
  %.not.i.i135 = icmp eq i64 %i.ju, %i.jx
  br i1 %.not.i.i135, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.jy = load ptr, ptr %6, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.jy) #26
  %i.jz = icmp sgt i64 %i.ju, 0
  br i1 %i.jz, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.ag
  %i.ka = lshr exact i64 %i.jt, 2
  %i.kb = tail call noalias ptr @malloc(i64 noundef %i.ka) #27 ; 2 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.ah, label %.sink.split.i.i

bb.ah:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.kd = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.kd, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.kd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc137 unwind label %.thread

.noexc137:                                        ; preds = %bb.ah
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.ag
  %.sink.i.i = phi ptr [ %i.kb, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.ag ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !26
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  store i64 %i.ju, ptr %i.jw, align 8, !tbaa !25
  %i.ke = icmp ugt i64 %i.ap, 576460752303423487
  br i1 %i.ke, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc139 unwind label %.thread

.noexc139:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %.not440 = icmp eq ptr %.sroa.13.0.lcssa, %.sroa.0388.0.lcssa
  br i1 %.not440, label %bb.al, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.ak
  %i.kf = shl nuw nsw i64 %i.ao, 1
  %i.kg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #24
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.kg, i64 %i.ap
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.0305.7 = phi ptr [ %i.kg, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.ak ] ; 5 uses
  %.sroa.26.7 = phi ptr [ %i.kh, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.ak ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ki = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  store ptr %i.ki, ptr %9, align 8, !tbaa !36
  %i.kj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  store i64 1, ptr %i.kj, align 8, !tbaa !37
  %i.kk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 13 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i8 0, i64 16, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 0, ptr %i.kn, align 8
  store float 5.000000e-01, ptr %i.kl, align 8, !tbaa !175
  store i64 0, ptr %i.km, align 8, !tbaa !38
  %i.ko = uitofp nneg i64 %i.ap to double
  %i.kp = fmul nnan double %i.ko, 2.000000e+00
  %i.kq = call double @llvm.ceil.f64(double %i.kp)
  %i.kr = fptoui double %i.kq to i64
  invoke void @_ZNSt10_HashtableIlSt4pairIKliESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(56) %9, i64 noundef %i.kr)
          to label %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit.preheader unwind label %bb.bz

_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit.preheader: ; preds = %bb.al
  %.not685 = icmp eq ptr %.sroa.17.0.lcssa, %.sroa.0404.0.lcssa
  br i1 %.not685, label %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit.preheader
  %i.ks = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.am

_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge.loopexit: ; preds = %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit
  %i.lb = sext i32 %.2 to i64
  br label %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge

_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge: ; preds = %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge.loopexit, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit.preheader
  %.0433.lcssa = phi i64 [ 0, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit.preheader ], [ %i.lb, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge.loopexit ] ; 2 uses
  %.sroa.0305.0.lcssa = phi ptr [ %.sroa.0305.7, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit.preheader ], [ %.sroa.0305.4, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge.loopexit ] ; 7 uses
  %.sroa.14.0.lcssa = phi ptr [ %.sroa.0305.7, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit.preheader ], [ %.sroa.14.2, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge.loopexit ]
  %.sroa.26.0.lcssa = phi ptr [ %.sroa.26.7, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit.preheader ], [ %.sroa.26.4, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge.loopexit ] ; 4 uses
  invoke void @_ZN5Eigen8internal29conservative_resize_like_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Lb0EE3runERNS_9DenseBaseIS3_EEll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.0433.lcssa, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE18conservativeResizeEll.exit unwind label %bb.bz

.thread:                                          ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.ah, %bb.aj, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit182

bb.am:                                            ; preds = %.lr.ph, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit
  %indvars.iv784 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next785, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit ] ; 5 uses
  %.sroa.26.0679 = phi ptr [ %.sroa.26.7, %.lr.ph ], [ %.sroa.26.4, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit ]
  %.sroa.14.0678 = phi ptr [ %.sroa.0305.7, %.lr.ph ], [ %.sroa.14.2, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit ]
  %.sroa.0305.0677 = phi ptr [ %.sroa.0305.7, %.lr.ph ], [ %.sroa.0305.4, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit ]
  %.0433676 = phi i32 [ 0, %.lr.ph ], [ %.2, %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit ]
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0404.0.lcssa, i64 %indvars.iv784 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !155
  %i.lg = load ptr, ptr %6, align 8, !tbaa !26
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv784
  store i32 %i.lf, ptr %i.lh, align 4, !tbaa !18
  br label %bb.an

_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit: ; preds = %bb.cb
  %indvars.iv.next785 = add nuw i64 %indvars.iv784, 1 ; 2 uses
  %exitcond787.not = icmp eq i64 %indvars.iv.next785, %i.ju
  br i1 %exitcond787.not, label %_ZNSt13unordered_mapIliSt4hashIlESt8equal_toIlESaISt4pairIKliEEE7reserveEm.exit._crit_edge.loopexit, label %bb.am, !llvm.loop !121

bb.an:                                            ; preds = %bb.am, %bb.cb
  %indvars.iv781 = phi i64 [ 0, %bb.am ], [ %indvars.iv.next782, %bb.cb ] ; 4 uses
  %.sroa.26.1674 = phi ptr [ %.sroa.26.0679, %bb.am ], [ %.sroa.26.4, %bb.cb ] ; 7 uses
  %.sroa.14.1673 = phi ptr [ %.sroa.14.0678, %bb.am ], [ %.sroa.14.2, %bb.cb ] ; 6 uses
  %.sroa.0305.1672 = phi ptr [ %.sroa.0305.0677, %bb.am ], [ %.sroa.0305.4, %bb.cb ] ; 8 uses
  %.1671 = phi i32 [ %.0433676, %bb.am ], [ %.2, %bb.cb ] ; 9 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv781
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !18
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0388.0.lcssa, i64 %i.lk
  %i.lm = load i64, ptr %i.ll, align 4            ; 5 uses
  %.sroa.0297.0.extract.trunc = trunc i64 %i.lm to i32 ; 2 uses
  %.sroa.8301.0.extract.shift = lshr i64 %i.lm, 32
  %.sroa.8301.0.extract.trunc = trunc nuw i64 %.sroa.8301.0.extract.shift to i32 ; 2 uses
  %sext = shl i64 %i.lm, 32
  %i.ln = ashr exact i64 %sext, 32                ; 3 uses
  %i.lo = ashr i64 %i.lm, 32                      ; 2 uses
  %i.lp = and i64 %i.lm, -4294967296
  %i.lq = or i64 %i.ln, %i.lp                     ; 11 uses
  %i.lr = load i64, ptr %i.ks, align 8, !tbaa !39
  %.not.not.i.i = icmp eq i64 %i.lr, 0
  br i1 %.not.not.i.i, label %.preheader443, label %bb.ap

.preheader443:                                    ; preds = %bb.an, %bb.ao
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ao ], [ %i.kk, %bb.an ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !40 ; 4 uses
  %.not.i.i145 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i145, label %.loopexit444, label %bb.ao

bb.ao:                                            ; preds = %.preheader443
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !38
  %i.lu = icmp eq i64 %i.lq, %i.lt
  br i1 %i.lu, label %.loopexit445, label %.preheader443, !llvm.loop !122

bb.ap:                                            ; preds = %bb.an
  %i.lv = load i64, ptr %i.kj, align 8, !tbaa !37 ; 2 uses
  %i.lw = urem i64 %i.lq, %i.lv                   ; 2 uses
  %i.lx = load ptr, ptr %9, align 8, !tbaa !36
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.lw
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i.i143, label %.loopexit444, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !40 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !38
  %i.md = icmp eq i64 %i.lq, %i.mc
  br i1 %i.md, label %.loopexit445, label %.lr.ph.i.i.i.i144

bb.ar:                                            ; preds = %bb.as
  %i.me = icmp eq i64 %i.lq, %i.mh
  br i1 %i.me, label %.loopexit445, label %.lr.ph.i.i.i.i144, !llvm.loop !123
end_hunk_1
