Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/collapse_least_cost_edge?download=true
inline.NumInlined: 771
inline.NumDeleted: 356
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Tuple_impl.1", %"struct.std::_Head_base.4" }
%"struct.std::_Tuple_impl.1" = type { %"struct.std::_Tuple_impl.2", %"struct.std::_Head_base.3" }
%"struct.std::_Tuple_impl.2" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { i32 }
%"struct.std::_Head_base.3" = type { i32 }
%"struct.std::_Head_base.4" = type { double }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Eigen::Block" = type { %"class.Eigen::BlockImpl" }
%"class.Eigen::BlockImpl" = type { %"class.Eigen::internal::BlockImpl_dense" }
%"class.Eigen::internal::BlockImpl_dense" = type { %"class.Eigen::MapBase", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase" = type { %"class.Eigen::MapBase.30" }
%"class.Eigen::MapBase.30" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::Matrix.40" = type { %"class.Eigen::PlainObjectBase.41" }
%"class.Eigen::PlainObjectBase.41" = type { %"class.Eigen::DenseStorage.48" }
%"class.Eigen::DenseStorage.48" = type { ptr, i64 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZNSt14priority_queueISt5tupleIJdiiEESt6vectorIS1_SaIS1_EESt7greaterIS1_EE7emplaceIJRdRiSA_EEEvDpOT_ = comdat any

$_ZNSt14priority_queueISt5tupleIJdiiEESt6vectorIS1_SaIS1_EESt7greaterIS1_EE7emplaceIJdRiS9_EEEvDpOT_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJdiiEESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_ = comdat any

$_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZNSt6vectorISt5tupleIJdiiEESaIS1_EE17_M_realloc_insertIJRdRiS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorISt5tupleIJdiiEESaIS1_EE17_M_realloc_insertIJdRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl24collapse_least_cost_edgeERKSt8functionIFviRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEES8_RKNS2_IiLin1ELi1ELi0ELin1ELi1EEES8_S8_RdRNS2_IdLi1ELin1ELi1ELi1ELin1EEEEERKS0_IFbS5_S8_S8_SB_S8_S8_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISL_SaISL_EESt7greaterISL_EESB_S5_iEERKS0_IFvS5_S8_S8_SB_S8_S8_ST_SB_S5_iiiiibEERS3_RS6_S13_RS9_S13_S13_RSR_S14_S12_RiS16_S16_S16_S16_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(4) initializes((0, 4)) %12, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %16) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.std::tuple", align 8       ; 5 uses
  %18 = alloca %"class.std::vector.7", align 8    ; 13 uses
  %19 = alloca %"class.std::vector.7", align 8    ; 10 uses
  %20 = alloca %"class.std::vector.7", align 8    ; 13 uses
  %21 = alloca %"class.std::vector.7", align 8    ; 10 uses
  %22 = alloca %"class.Eigen::Block", align 8     ; 10 uses
  %23 = alloca %"class.std::vector.7", align 8    ; 18 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %24 = alloca %"class.Eigen::Matrix.40", align 8 ; 7 uses
  %i.j = alloca double, align 8                   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt14priority_queueISt5tupleIJdiiEESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit, %bb.a
  %i.m = phi ptr [ %i.aj, %_ZNSt14priority_queueISt5tupleIJdiiEESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit ], [ %.pre, %bb.a ] ; 6 uses
  %i.n = load ptr, ptr %9, align 8, !tbaa !15     ; 7 uses
  %i.o = icmp eq ptr %i.n, %i.m
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %12, align 4, !tbaa !16
  br label %bb.cb

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 3 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !16
  %i.u = fcmp oeq double %i.q, +inf
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %12, align 4, !tbaa !16
  br label %bb.cb

bb.f:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp sgt i64 %i.x, 16
  br i1 %i.y, label %bb.g, label %_ZNSt14priority_queueISt5tupleIJdiiEESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ad = load double, ptr %i.p, align 8, !tbaa !18
  store double %i.ad, ptr %i.ab, align 8, !tbaa !18
  %i.ae = load i32, ptr %i.r, align 4, !tbaa !16
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %i.af, %i.w
  %i.ah = ashr exact i64 %i.ag, 4
  %25 = load <2 x i32>, ptr %i.z, align 8, !tbaa !16
  store i32 %i.ae, ptr %i.aa, align 4, !tbaa !16
  %26 = load i32, ptr %i.n, align 8, !tbaa !16
  store i32 %26, ptr %i.z, align 8, !tbaa !16
  store <2 x i32> %25, ptr %17, align 8, !tbaa !16
  store i64 %i.ac, ptr %i.l, align 8, !tbaa !18
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJdiiEESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_(ptr nonnull %i.n, i64 noundef 0, i64 noundef %i.ah, ptr noundef nonnull align 8 dead_on_return %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %_ZNSt14priority_queueISt5tupleIJdiiEESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit

_ZNSt14priority_queueISt5tupleIJdiiEESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit: ; preds = %bb.f, %bb.g
  %i.ai = phi ptr [ %i.m, %bb.f ], [ %.pre.i, %bb.g ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16 ; 2 uses
  store ptr %i.aj, ptr %i.k, align 8, !tbaa !20
  store i32 %i.s, ptr %12, align 4, !tbaa !16
  %i.ak = sext i32 %i.s to i64
  %i.al = load ptr, ptr %10, align 8, !tbaa !51
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ak
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16
  %i.ao = icmp eq i32 %i.t, %i.an
  br i1 %i.ao, label %bb.h, label %bb.b, !llvm.loop !36

bb.h:                                             ; preds = %_ZNSt14priority_queueISt5tupleIJdiiEESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_iEEvibRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERSt6vectorIT3_SaISN_EESQ_(i32 noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.ap = load i32, ptr %12, align 4, !tbaa !16
  invoke void @_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_iEEvibRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERSt6vectorIT3_SaISN_EESQ_(i32 noundef %i.ap, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %12, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %i.aq, ptr %i.h, align 4, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.l unwind label %bb.p, !inline_history !37

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.av, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %12, align 4, !tbaa !16   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #12
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.ay = load ptr, ptr %11, align 8, !tbaa !59, !noalias !56
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !60, !noalias !56
  store ptr %i.az, ptr %22, align 8, !tbaa !64, !alias.scope !56
  %i.bc = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !65, !alias.scope !56
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %11, ptr %i.bd, align 8, !tbaa !67, !alias.scope !56
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i64 %i.ax, ptr %i.be, align 8, !tbaa !65, !alias.scope !56
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 0, ptr %i.bf, align 8, !tbaa !65, !alias.scope !56
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 48
  store i64 1, ptr %i.bg, align 8, !tbaa !70, !alias.scope !56
  %i.bh = invoke noundef zeroext i1 @_ZN3igl13collapse_edgeIN5Eigen5BlockINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES4_NS3_IiLin1ELin1ELi0ELin1ELin1EEES6_NS3_IiLin1ELi1ELi0ELin1ELi1EEES6_S6_EEbiRKNS1_10MatrixBaseIT_EERSt6vectorIiSaIiEERKSF_SG_SI_RNS8_IT0_EERNS8_IT1_EERNS8_IT2_EERNS8_IT3_EERNS8_IT4_EERNS8_IT5_EERiS11_S11_S11_(i32 noundef %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %16)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  br label %bb.r

bb.o:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.p:                                             ; preds = %.invoke, %bb.s, %bb.k, %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.q:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  br label %bb.bv

bb.r:                                             ; preds = %bb.l, %bb.n
  %.0132 = phi i1 [ %i.bh, %bb.n ], [ false, %bb.l ] ; 3 uses
  %i.bl = load i32, ptr %12, align 4, !tbaa !16
  %i.bm = load i32, ptr %13, align 4, !tbaa !16
  %i.bn = load i32, ptr %14, align 4, !tbaa !16
  %i.bo = load i32, ptr %15, align 4, !tbaa !16
  %i.bp = load i32, ptr %16, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !16
  store i32 %i.bm, ptr %i.c, align 4, !tbaa !16
  store i32 %i.bn, ptr %i.d, align 4, !tbaa !16
  store i32 %i.bo, ptr %i.e, align 4, !tbaa !16
  store i32 %i.bp, ptr %i.f, align 4, !tbaa !16
  %i.bq = zext i1 %.0132 to i8
  store i8 %i.bq, ptr %i.g, align 1, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  %.not.i.i150 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i150, label %.invoke, label %bb.s

.invoke:                                          ; preds = %bb.j, %bb.r
  invoke void @_ZSt25__throw_bad_function_callv() #13
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !74
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %bb.t unwind label %bb.p, !inline_history !40

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bv = load i32, ptr %12, align 4, !tbaa !16
  %i.bw = sext i32 %i.bv to i64
  %i.bx = load ptr, ptr %10, align 8, !tbaa !51   ; 4 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bw ; 3 uses
  br i1 %.0132, label %bb.u, label %bb.bn

bb.u:                                             ; preds = %bb.t
  store i32 -1, ptr %i.by, align 4, !tbaa !16
  %i.bz = load i32, ptr %13, align 4, !tbaa !16
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ca
  store i32 -1, ptr %i.cb, align 4, !tbaa !16
  %i.cc = load i32, ptr %14, align 4, !tbaa !16
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cd
  store i32 -1, ptr %i.ce, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !24 ; 2 uses
  %i.ch = load ptr, ptr %18, align 8, !tbaa !25   ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !24
  %i.co = load ptr, ptr %20, align 8, !tbaa !25
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 2
  %i.ct = add nsw i64 %i.cs, %i.cl                ; 4 uses
  %i.cu = icmp ugt i64 %i.ct, 2305843009213693951
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
          to label %.noexc153 unwind label %bb.ai

.noexc153:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %.not386 = icmp eq i64 %i.ct, 0
  br i1 %.not386, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.cx = shl nuw nsw i64 %i.ct, 2
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #14
          to label %.noexc154 unwind label %bb.ai ; 5 uses

.noexc154:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cz = load ptr, ptr %23, align 8, !tbaa !25   ; 4 uses
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !24
  %i.db = ptrtoint ptr %i.da to i64
end_hunk_0
