Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/arap_linear_block?download=true
inline.NumInlined: 939
inline.NumDeleted: 359
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Eigen::internal::scalar_sum_op" = type { i8 }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase.11" }
%"class.Eigen::PlainObjectBase.11" = type { %"class.Eigen::DenseStorage.12" }
%"class.Eigen::DenseStorage.12" = type { ptr, i64, i64 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.Eigen::SparseMatrix.33" = type { %"class.Eigen::SparseCompressedBase.34", i64, i64, ptr, ptr, %"class.Eigen::internal::CompressedStorage" }
%"class.Eigen::SparseCompressedBase.34" = type { %"class.Eigen::SparseMatrixBase.35" }
%"class.Eigen::SparseMatrixBase.35" = type { i8 }
%"class.Eigen::internal::CompressedStorage" = type { ptr, ptr, i64, i64 }
%"class.Eigen::Matrix.37" = type { %"class.Eigen::PlainObjectBase.38" }
%"class.Eigen::PlainObjectBase.38" = type { %"class.Eigen::DenseStorage.45" }
%"class.Eigen::DenseStorage.45" = type { ptr, i64 }
%"class.Eigen::SparseMatrix" = type { %"class.Eigen::SparseCompressedBase", i64, i64, ptr, ptr, %"class.Eigen::internal::CompressedStorage" }
%"class.Eigen::SparseCompressedBase" = type { %"class.Eigen::SparseMatrixBase" }
%"class.Eigen::SparseMatrixBase" = type { i8 }

$_ZN3igl17arap_linear_blockIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iNS_14ARAPEnergyTypeERT1_ = comdat any

$_ZN3igl24arap_linear_block_spokesIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_ = comdat any

$_ZN3igl33arap_linear_block_spokes_and_rimsIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_ = comdat any

$_ZN3igl26arap_linear_block_elementsIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_ = comdat any

$_ZN3igl17arap_linear_blockIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iNS_14ARAPEnergyTypeERT1_ = comdat any

$_ZN3igl24arap_linear_block_spokesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_ = comdat any

$_ZN3igl33arap_linear_block_spokes_and_rimsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_ = comdat any

$_ZN3igl26arap_linear_block_elementsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiE14makeCompressedEv = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl = comdat any

$_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiE18collapseDuplicatesINS_8internal13scalar_sum_opIddEEEEvT_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiED2Ev = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_ = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE7squeezeEv = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl17arap_linear_blockIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iNS_14ARAPEnergyTypeERT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 %4) local_unnamed_addr #0 comdat {
bb.a:
  switch i32 %3, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl24arap_linear_block_spokesIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %4)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN3igl33arap_linear_block_spokes_and_rimsIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %4)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN3igl26arap_linear_block_elementsIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl24arap_linear_block_spokesIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.g, i64 noundef %i.g)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.b to i32
  switch i32 %i.h, label %bb.m [
    i32 3, label %bb.c
    i32 4, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8, !tbaa !15
  %i.j = mul nsw i64 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.j)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit unwind label %bb.h

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.c
  %i.l = load i64, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.m = mul nsw i64 %i.l, 7                      ; 2 uses
  %i.n = icmp ugt i64 %i.m, 576460752303423487
  br i1 %i.n, label %.invoke, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %.not447 = icmp eq i64 %i.l, 0
  br i1 %.not447, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.o = mul i64 %i.l, 112
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.h ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.0357.8 = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.d ] ; 2 uses
  %.sroa.44.8 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.d ] ; 2 uses
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc88 unwind label %bb.h

.noexc88:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store i32 0, ptr %i.u, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 2, i32 0, i32 2>, ptr %i.r, align 4, !tbaa !20
  %i.v = getelementptr i8, ptr %i.r, i64 20
  store i32 1, ptr %i.v, align 4, !tbaa !20
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit221

bb.h:                                             ; preds = %.invoke, %bb.k, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107, %bb.i, %bb.e, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %bb.c
  %.sroa.0357.0 = phi ptr [ null, %bb.i ], [ %.sroa.0357.8, %bb.e ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.c ], [ null, %.invoke ], [ %.sroa.0357.9, %bb.k ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107 ]
  %.sroa.44.0 = phi ptr [ null, %bb.i ], [ %.sroa.44.8, %bb.e ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.c ], [ null, %.invoke ], [ %.sroa.44.9, %bb.k ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107 ]
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.i:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.f, align 8, !tbaa !15
  %i.z = mul nsw i64 %i.y, 17
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %i.z)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit106 unwind label %bb.h

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit106: ; preds = %bb.i
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !15  ; 3 uses
  %i.ac = mul nsw i64 %i.ab, 17                   ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %.invoke, label %bb.j

.invoke:                                          ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit106
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit106
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107: ; preds = %bb.j
  %i.ae = mul i64 %i.ab, 272
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115 unwind label %bb.h ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ac
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118: ; preds = %bb.j, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115
  %.sroa.0357.9 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115 ], [ null, %bb.j ] ; 2 uses
  %.sroa.44.9 = phi ptr [ %i.ag, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115 ], [ null, %bb.j ] ; 2 uses
  %i.ah = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #19 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aj, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc121 unwind label %bb.h

.noexc121:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118
  %i.ak = getelementptr i8, ptr %i.ah, i64 32
  store <4 x i32> <i32 1, i32 2, i32 0, i32 3>, ptr %i.ah, align 4, !tbaa !20
  %i.al = getelementptr i8, ptr %i.ah, i64 16
  store <4 x i32> <i32 3, i32 3, i32 2, i32 0>, ptr %i.al, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 0, i32 1, i32 2>, ptr %i.ak, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.r, %bb.f ], [ %i.ah, %bb.l ] ; 3 uses
  %i.am = phi i1 [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.l ]
  %.sroa.30.0 = phi i64 [ 0, %bb.b ], [ 3, %bb.f ], [ 6, %bb.l ] ; 2 uses
  %.sroa.0357.1 = phi ptr [ null, %bb.b ], [ %.sroa.0357.8, %bb.f ], [ %.sroa.0357.9, %bb.l ] ; 7 uses
  %.sroa.44.1 = phi ptr [ null, %bb.b ], [ %.sroa.44.8, %bb.f ], [ %.sroa.44.9, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader463 unwind label %bb.aa

.preheader463:                                    ; preds = %bb.m
  %i.an = icmp sgt i32 %i.e, 0
  br i1 %i.an, label %.preheader.lr.ph, label %._crit_edge551

.preheader.lr.ph:                                 ; preds = %.preheader463
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = sext i32 %2 to i64
  br i1 %i.am, label %.preheader.us.preheader, label %._crit_edge551

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.30.0, i64 1)
  %wide.trip.count = and i64 %i.d, 2147483647
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv628 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next629, %._crit_edge.us ] ; 3 uses
  %.sroa.44.2549.us = phi ptr [ %.sroa.44.1, %.preheader.us.preheader ], [ %.sroa.44.13.us, %._crit_edge.us ]
  %.sroa.21.1548.us = phi ptr [ %.sroa.0357.1, %.preheader.us.preheader ], [ %.sroa.21.8.us, %._crit_edge.us ]
  %.sroa.0357.2547.us = phi ptr [ %.sroa.0357.1, %.preheader.us.preheader ], [ %.sroa.0357.13.us, %._crit_edge.us ]
  br label %bb.n

bb.n:                                             ; preds = %.preheader.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us ] ; 3 uses
  %.sroa.44.4543.us = phi ptr [ %.sroa.44.2549.us, %.preheader.us ], [ %.sroa.44.13.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us ] ; 7 uses
  %.sroa.21.2542.us = phi ptr [ %.sroa.21.1548.us, %.preheader.us ], [ %.sroa.21.8.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us ] ; 5 uses
  %.sroa.0357.4541.us = phi ptr [ %.sroa.0357.2547.us, %.preheader.us ], [ %.sroa.0357.13.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us ] ; 8 uses
  %i.aq = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !20
  %i.as = sext i32 %i.ar to i64
  %i.at = load ptr, ptr %1, align 8, !tbaa !21
  %i.au = load i64, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %i.av = mul nsw i64 %i.au, %i.as
  %i.aw = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv628 ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !20 ; 9 uses
  %i.az = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.30.0
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !20
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.au, %i.bb
  %i.bd = getelementptr [4 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !20 ; 9 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !22
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.bh = mul nsw i64 %i.bg, %indvars.iv
  %i.bi = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv628
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !23
  %i.bl = fmul double %i.bk, 5.000000e-01
  %i.bm = sext i32 %i.ay to i64
  %i.bn = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !15
  %i.bp = mul nsw i64 %i.bo, %i.ap                ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bn, i64 %i.bm
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load double, ptr %i.br, align 8, !tbaa !23
  %i.bt = sext i32 %i.be to i64
  %i.bu = getelementptr [8 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.bp
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !23
  %i.bx = fsub double %i.bs, %i.bw
  %i.by = fmul double %i.bl, %i.bx                ; 5 uses
  %.not.i.i168.us = icmp eq ptr %.sroa.21.2542.us, %.sroa.44.4543.us
  br i1 %.not.i.i168.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.ay, ptr %.sroa.21.2542.us, align 8, !tbaa !20
  %.sroa.6246.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.21.2542.us, i64 4
  store i32 %i.be, ptr %.sroa.6246.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7249.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.21.2542.us, i64 8
  store double %i.by, ptr %.sroa.7249.0..sroa_idx.us, align 8, !tbaa !23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us

bb.p:                                             ; preds = %bb.n
  %i.bz = ptrtoint ptr %.sroa.44.4543.us to i64
  %i.ca = ptrtoint ptr %.sroa.0357.4541.us to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775792
  br i1 %i.cc, label %.split.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.p
  %i.cd = ashr exact i64 %i.cb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 576460752303423487)
  %i.ch = select i1 %i.cf, i64 576460752303423487, i64 %i.cg ; 3 uses
  %.not.i.i.i.i169.us = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i.i169.us)
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #18
          to label %.noexc171.us unwind label %.loopexit.split.us ; 5 uses

.noexc171.us:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb ; 3 uses
  store i32 %i.ay, ptr %i.ck, align 8, !tbaa !20
  %.sroa.6246.0..sroa_idx247.us = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %i.be, ptr %.sroa.6246.0..sroa_idx247.us, align 4, !tbaa !20
  %.sroa.7249.0..sroa_idx250.us = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store double %i.by, ptr %.sroa.7249.0..sroa_idx250.us, align 8, !tbaa !23
  %.not10.i.i.i.i.i.i.us = icmp eq ptr %.sroa.0357.4541.us, %.sroa.44.4543.us
  br i1 %.not10.i.i.i.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.noexc171.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.us ], [ %i.cj, %.noexc171.us ] ; 2 uses
  %.0911.i.i.i.i.i.i.us = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.us ], [ %.sroa.0357.4541.us, %.noexc171.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.us, i64 16, i1 false), !tbaa.struct !25, !alias.scope !26
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.cl, %.sroa.44.4543.us
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !30

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.us, %.noexc171.us
  %.0.lcssa.i.i.i.i.i.i.us = phi ptr [ %i.cj, %.noexc171.us ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.us ]
  %.not.i23.i.i.i.us = icmp eq ptr %.sroa.0357.4541.us, null
  br i1 %.not.i23.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.4541.us, i64 noundef %i.cb) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us: ; preds = %bb.q, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ch
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us, %bb.o
  %.sroa.0357.10.us = phi ptr [ %i.cj, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.0357.4541.us, %bb.o ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn.us = phi ptr [ %.0.lcssa.i.i.i.i.i.i.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.21.2542.us, %bb.o ] ; 6 uses
  %.sroa.44.10.us = phi ptr [ %i.cn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.44.4543.us, %bb.o ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i.pn.us771 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn.us to i64
  %.sroa.21.5.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 16 ; 2 uses
  %i.co = fneg double %i.by                       ; 4 uses
  %.not.i.i172.us = icmp eq ptr %.sroa.21.5.us, %.sroa.44.10.us
  br i1 %.not.i.i172.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us
  store i32 %i.be, ptr %.sroa.21.5.us, align 8, !tbaa !20
  %.sroa.6238.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 20
  store i32 %i.ay, ptr %.sroa.6238.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7241.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 24
  store double %i.co, ptr %.sroa.7241.0..sroa_idx.us, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit187.us

bb.s:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us
  %i.cq = ptrtoint ptr %.sroa.44.10.us to i64
  %i.cr = ptrtoint ptr %.sroa.0357.10.us to i64   ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 4 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775792
  br i1 %i.ct, label %.split560.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i173.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i173.us: ; preds = %bb.s
  %i.cu = ashr exact i64 %i.cs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i174.us = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i174.us, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 576460752303423487)
  %i.cy = select i1 %i.cw, i64 576460752303423487, i64 %i.cx ; 3 uses
  %.not.i.i.i.i175.us = icmp ne i64 %i.cy, 0
end_hunk_0
begin_hunk_1_@_ZN3igl24arap_linear_block_spokesIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_:bb.a
  %.sroa.21.8.us = phi ptr [ %i.fi, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i216.us ], [ %i.eh, %bb.x ] ; 3 uses
  %.sroa.44.13.us = phi ptr [ %i.fj, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i216.us ], [ %.sroa.44.12.us, %bb.x ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.n, !llvm.loop !47

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond631.not = icmp eq i64 %indvars.iv.next629, %wide.trip.count
  br i1 %exitcond631.not, label %._crit_edge551, label %.preheader.us, !llvm.loop !48

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit448.split.us:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i173.us
  %lpad.loopexit450.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit453.split.us:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i189.us
  %lpad.loopexit455.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit458.split.us:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i205.us
  %lpad.loopexit460.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge551:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %.preheader463
  %.sroa.0357.2.lcssa = phi ptr [ %.sroa.0357.1, %.preheader463 ], [ %.sroa.0357.1, %.preheader.lr.ph ], [ %.sroa.0357.13.us, %._crit_edge.us ] ; 6 uses
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.0357.1, %.preheader463 ], [ %.sroa.0357.1, %.preheader.lr.ph ], [ %.sroa.21.8.us, %._crit_edge.us ]
  %.sroa.44.2.lcssa = phi ptr [ %.sroa.44.1, %.preheader463 ], [ %.sroa.44.1, %.preheader.lr.ph ], [ %.sroa.44.13.us, %._crit_edge.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %.sroa.0357.2.lcssa, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %.sroa.21.1.lcssa, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dead_on_return %4)
          to label %bb.ab unwind label %bb.ae

bb.aa:                                            ; preds = %bb.ab, %bb.m
  %.sroa.0357.3 = phi ptr [ %.sroa.0357.2.lcssa, %bb.ab ], [ %.sroa.0357.1, %bb.m ]
  %.sroa.44.3 = phi ptr [ %.sroa.44.2.lcssa, %bb.ab ], [ %.sroa.44.1, %bb.m ]
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.split.us:                                        ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc170 unwind label %.loopexit.split-lp

.noexc170:                                        ; preds = %.split.us
  unreachable

.split560.us:                                     ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc185 unwind label %.loopexit.split-lp449

.noexc185:                                        ; preds = %.split560.us
  unreachable

.split567.us:                                     ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc201 unwind label %.loopexit.split-lp454

.noexc201:                                        ; preds = %.split567.us
  unreachable

.split574.us:                                     ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc217 unwind label %.loopexit.split-lp459

.noexc217:                                        ; preds = %.split574.us
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp449:                            ; preds = %.split560.us
  %lpad.loopexit.split-lp451 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp454:                            ; preds = %.split567.us
  %lpad.loopexit.split-lp456 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp459:                            ; preds = %.split574.us
  %lpad.loopexit.split-lp461 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ab:                                            ; preds = %._crit_edge551
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE14makeCompressedEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  %i.fl = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.fl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i = icmp eq ptr %.sroa.0357.2.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fm = ptrtoint ptr %.sroa.44.2.lcssa to i64
  %i.fn = ptrtoint ptr %.sroa.0357.2.lcssa to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.2.lcssa, i64 noundef %i.fo) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.ac, %bb.ad
  call void @free(ptr noundef %.sroa.0.0) #20
  ret void

bb.ae:                                            ; preds = %._crit_edge551
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.af

bb.af:                                            ; preds = %.loopexit458.split.us, %.loopexit.split-lp459, %.loopexit453.split.us, %.loopexit.split-lp454, %.loopexit448.split.us, %.loopexit.split-lp449, %.loopexit.split.us, %.loopexit.split-lp, %bb.ae, %bb.aa
  %.sroa.0357.6 = phi ptr [ %.sroa.0357.2.lcssa, %bb.ae ], [ %.sroa.0357.3, %bb.aa ], [ %.sroa.0357.11.us, %.loopexit.split-lp454 ], [ %.sroa.0357.4541.us, %.loopexit.split-lp ], [ %.sroa.0357.10.us, %.loopexit.split-lp449 ], [ %.sroa.0357.4541.us, %.loopexit.split.us ], [ %.sroa.0357.10.us, %.loopexit448.split.us ], [ %.sroa.0357.11.us, %.loopexit453.split.us ], [ %.sroa.0357.12.us, %.loopexit458.split.us ], [ %.sroa.0357.12.us, %.loopexit.split-lp459 ]
  %.sroa.44.6 = phi ptr [ %.sroa.44.2.lcssa, %bb.ae ], [ %.sroa.44.3, %bb.aa ], [ %.sroa.21.6.us, %.loopexit.split-lp454 ], [ %.sroa.44.4543.us, %.loopexit.split-lp ], [ %.sroa.44.10.us, %.loopexit.split-lp449 ], [ %.sroa.44.4543.us, %.loopexit.split.us ], [ %.sroa.44.10.us, %.loopexit448.split.us ], [ %.sroa.21.6.us, %.loopexit453.split.us ], [ %.sroa.44.12.us, %.loopexit458.split.us ], [ %.sroa.44.12.us, %.loopexit.split-lp459 ]
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.ae ], [ %i.fk, %bb.aa ], [ %lpad.loopexit.split-lp456, %.loopexit.split-lp454 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp451, %.loopexit.split-lp449 ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit450.us, %.loopexit448.split.us ], [ %lpad.loopexit455.us, %.loopexit453.split.us ], [ %lpad.loopexit460.us, %.loopexit458.split.us ], [ %lpad.loopexit.split-lp461, %.loopexit.split-lp459 ]
  %i.fq = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.fq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.h
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.af ], [ null, %bb.h ] ; 2 uses
  %.sroa.0357.7 = phi ptr [ %.sroa.0357.6, %bb.af ], [ %.sroa.0357.0, %bb.h ] ; 3 uses
  %.sroa.44.7 = phi ptr [ %.sroa.44.6, %bb.af ], [ %.sroa.44.0, %bb.h ]
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn79.pn.pn.pn, %bb.af ], [ %i.x, %bb.h ] ; 2 uses
  %.not.i.i.i220 = icmp eq ptr %.sroa.0357.7, null
  br i1 %.not.i.i.i220, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit221, label %.thread

.thread:                                          ; preds = %bb.ag
  %i.fr = ptrtoint ptr %.sroa.44.7 to i64
  %i.fs = ptrtoint ptr %.sroa.0357.7 to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.7, i64 noundef %i.ft) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit221

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit221: ; preds = %.thread, %bb.ag, %bb.g
  %.sroa.0.2 = phi ptr [ null, %bb.g ], [ %.sroa.0.1, %bb.ag ], [ %.sroa.0.1, %.thread ]
  %.pn79.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.g ], [ %.pn79.pn.pn.pn.pn.pn, %bb.ag ], [ %.pn79.pn.pn.pn.pn.pn, %.thread ]
  call void @free(ptr noundef %.sroa.0.2) #20
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl33arap_linear_block_spokes_and_rimsIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.h, i64 noundef %i.h)
  switch i32 %i.c, label %bb.k [
    i32 3, label %bb.b
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = mul nsw i64 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.j)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit unwind label %bb.f

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %i.m = mul nsw i64 %i.l, 7                      ; 2 uses
  %i.n = icmp ugt i64 %i.m, 576460752303423487
  br i1 %i.n, label %.invoke, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %.not529 = icmp eq i64 %i.l, 0
  br i1 %.not529, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = mul i64 %i.l, 112
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.0434.11 = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %.sroa.56.11 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc103 unwind label %bb.f

.noexc103:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store i32 0, ptr %i.u, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 2, i32 0, i32 2>, ptr %i.r, align 4, !tbaa !20
  %i.v = getelementptr i8, ptr %i.r, i64 20
  store i32 1, ptr %i.v, align 4, !tbaa !20
  br label %bb.k

bb.f:                                             ; preds = %.invoke, %bb.i, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122, %bb.g, %bb.d, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %bb.b
  %.sroa.0434.0 = phi ptr [ null, %bb.g ], [ %.sroa.0434.11, %bb.d ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.invoke ], [ %.sroa.0434.12, %bb.i ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122 ]
  %.sroa.56.0 = phi ptr [ null, %bb.g ], [ %.sroa.56.11, %bb.d ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.invoke ], [ %.sroa.56.12, %bb.i ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122 ]
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.g:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.g, align 8, !tbaa !15
  %i.y = mul nsw i64 %i.x, 17
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.y)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit121 unwind label %bb.f

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit121: ; preds = %bb.g
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %i.ab = mul nsw i64 %i.aa, 17                   ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 576460752303423487
  br i1 %i.ac, label %.invoke, label %bb.h

.invoke:                                          ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit121
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit121
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122: ; preds = %bb.h
  %i.ad = mul i64 %i.aa, 272
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130 unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ab
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133: ; preds = %bb.h, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130
  %.sroa.0434.12 = phi ptr [ %i.ae, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130 ], [ null, %bb.h ] ; 2 uses
  %.sroa.56.12 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130 ], [ null, %bb.h ] ; 2 uses
  %i.ag = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #19 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc136 unwind label %bb.f

.noexc136:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133
  %i.aj = getelementptr i8, ptr %i.ag, i64 32
  store <4 x i32> <i32 1, i32 2, i32 0, i32 3>, ptr %i.ag, align 4, !tbaa !20
  %i.ak = getelementptr i8, ptr %i.ag, i64 16
  store <4 x i32> <i32 3, i32 3, i32 2, i32 0>, ptr %i.ak, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 0, i32 1, i32 2>, ptr %i.aj, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.r, %bb.e ], [ %i.ag, %bb.j ] ; 4 uses
  %i.al = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ true, %bb.j ]
  %.sroa.32.0 = phi i64 [ 0, %bb.a ], [ 3, %bb.e ], [ 6, %bb.j ] ; 3 uses
  %.sroa.0434.1 = phi ptr [ null, %bb.a ], [ %.sroa.0434.11, %bb.e ], [ %.sroa.0434.12, %bb.j ] ; 7 uses
  %.sroa.56.1 = phi ptr [ null, %bb.a ], [ %.sroa.56.11, %bb.e ], [ %.sroa.56.12, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader555 unwind label %bb.al

.preheader555:                                    ; preds = %bb.k
  %i.am = icmp sgt i32 %i.f, 0
  br i1 %i.am, label %.preheader.lr.ph, label %._crit_edge693

.preheader.lr.ph:                                 ; preds = %.preheader555
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = sext i32 %2 to i64
  br i1 %i.al, label %.preheader.us.preheader, label %._crit_edge693

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.32.0, i64 1) ; 2 uses
  %wide.trip.count = and i64 %i.e, 2147483647
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv781 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next782, %._crit_edge.us ] ; 4 uses
  %.sroa.56.2691.us = phi ptr [ %.sroa.56.1, %.preheader.us.preheader ], [ %.sroa.56.18.us, %._crit_edge.us ]
  %.sroa.25447.1690.us = phi ptr [ %.sroa.0434.1, %.preheader.us.preheader ], [ %.sroa.25447.12.us, %._crit_edge.us ]
  %.sroa.0434.2689.us = phi ptr [ %.sroa.0434.1, %.preheader.us.preheader ], [ %.sroa.0434.18.us, %._crit_edge.us ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us
  %indvars.iv777 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next778, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us ] ; 3 uses
  %.sroa.56.4685.us = phi ptr [ %.sroa.56.2691.us, %.preheader.us ], [ %.sroa.56.18.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us ]
  %.sroa.25447.2684.us = phi ptr [ %.sroa.25447.1690.us, %.preheader.us ], [ %.sroa.25447.12.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us ]
  %.sroa.0434.4683.us = phi ptr [ %.sroa.0434.2689.us, %.preheader.us ], [ %.sroa.0434.18.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us ]
  %i.ap = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv777 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20
  %i.ar = sext i32 %i.aq to i64
  %i.as = load ptr, ptr %1, align 8, !tbaa !21
  %i.at = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.au = mul nsw i64 %i.at, %i.ar
  %i.av = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv781 ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !20 ; 13 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ap, i64 %.sroa.32.0
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !20
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.at, %i.ba
  %i.bc = getelementptr [4 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !20 ; 13 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !22
  %i.bf = load i64, ptr %i.an, align 8, !tbaa !15
  %i.bg = mul nsw i64 %i.bf, %indvars.iv777
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv781
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !23
  %i.bk = sext i32 %i.ax to i64
  %i.bl = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bm = load i64, ptr %i.g, align 8, !tbaa !15
  %i.bn = mul nsw i64 %i.bm, %i.ao                ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !23
  %i.br = sext i32 %i.bd to i64
  %i.bs = getelementptr [8 x i8], ptr %i.bl, i64 %i.br
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bn
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !23
  %i.bv = fsub double %i.bq, %i.bu
  %i.bw = fmul double %i.bj, %i.bv
  %i.bx = fdiv double %i.bw, 3.000000e+00         ; 7 uses
  %i.by = fneg double %i.bx                       ; 6 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us ], [ 0, %bb.l ] ; 2 uses
  %.sroa.56.5681.us = phi ptr [ %.sroa.56.6.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us ], [ %.sroa.56.4685.us, %bb.l ] ; 22 uses
  %.sroa.25447.3680.us = phi ptr [ %.sroa.25447.4.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us ], [ %.sroa.25447.2684.us, %bb.l ] ; 16 uses
  %.sroa.0434.5679.us = phi ptr [ %.sroa.0434.6.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us ], [ %.sroa.0434.4683.us, %bb.l ] ; 25 uses
  %i.bz = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !20
  %i.cb = sext i32 %i.ca to i64
  %i.cc = load ptr, ptr %1, align 8, !tbaa !21
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.ce = mul nsw i64 %i.cd, %i.cb
  %i.cf = getelementptr [4 x i8], ptr %i.cc, i64 %indvars.iv781 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !20 ; 4 uses
  %i.ci = getelementptr [4 x i8], ptr %i.bz, i64 %.sroa.32.0
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.cd, %i.ck
  %i.cm = getelementptr [4 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !20 ; 4 uses
  %i.co = icmp eq i32 %i.ch, %i.ax
  %i.cp = icmp eq i32 %i.cn, %i.bd
  %or.cond.us = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.us, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = icmp eq i32 %i.cn, %i.ax
  br i1 %i.cq, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = icmp eq i32 %i.ch, %i.bd
  br i1 %i.cr, label %bb.p, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us

bb.p:                                             ; preds = %bb.o
  %.not.i.i235.us = icmp eq ptr %.sroa.25447.3680.us, %.sroa.56.5681.us
  br i1 %.not.i.i235.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.bd, ptr %.sroa.25447.3680.us, align 8, !tbaa !20
  %.sroa.6285.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.25447.3680.us, i64 4
  store i32 %i.cn, ptr %.sroa.6285.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7288.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.25447.3680.us, i64 8
  store double %i.by, ptr %.sroa.7288.0..sroa_idx.us, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.25447.3680.us, i64 16
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us

bb.r:                                             ; preds = %bb.p
  %i.ct = ptrtoint ptr %.sroa.56.5681.us to i64
  %i.cu = ptrtoint ptr %.sroa.0434.5679.us to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775792
  br i1 %i.cw, label %.split.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i236.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i236.us: ; preds = %bb.r
  %i.cx = ashr exact i64 %i.cv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i237.us = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i237.us, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 576460752303423487)
  %i.db = select i1 %i.cz, i64 576460752303423487, i64 %i.da ; 3 uses
  %.not.i.i.i.i238.us = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i.i238.us)
  %i.dc = shl nuw nsw i64 %i.db, 4
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #18
          to label %.noexc249.us unwind label %.loopexit.split.us ; 5 uses

.noexc249.us:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i236.us
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv ; 3 uses
  store i32 %i.bd, ptr %i.de, align 8, !tbaa !20
  %.sroa.6285.0..sroa_idx286.us = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.cn, ptr %.sroa.6285.0..sroa_idx286.us, align 4, !tbaa !20
  %.sroa.7288.0..sroa_idx289.us = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store double %i.by, ptr %.sroa.7288.0..sroa_idx289.us, align 8, !tbaa !23
  %.not10.i.i.i.i.i.i239.us = icmp eq ptr %.sroa.0434.5679.us, %.sroa.56.5681.us
  br i1 %.not10.i.i.i.i.i.i239.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i244.us, label %.lr.ph.i.i.i.i.i.i240.us

.lr.ph.i.i.i.i.i.i240.us:                         ; preds = %.noexc249.us, %.lr.ph.i.i.i.i.i.i240.us
  %.012.i.i.i.i.i.i241.us = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i240.us ], [ %i.dd, %.noexc249.us ] ; 2 uses
  %.0911.i.i.i.i.i.i242.us = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i240.us ], [ %.sroa.0434.5679.us, %.noexc249.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i241.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i242.us, i64 16, i1 false), !tbaa.struct !25, !alias.scope !49
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i242.us, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i241.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i243.us = icmp eq ptr %i.df, %.sroa.56.5681.us
  br i1 %.not.i.i.i.i.i.i243.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i244.us, label %.lr.ph.i.i.i.i.i.i240.us, !llvm.loop !30

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i244.us: ; preds = %.lr.ph.i.i.i.i.i.i240.us, %.noexc249.us
  %.0.lcssa.i.i.i.i.i.i245.us = phi ptr [ %i.dd, %.noexc249.us ], [ %i.dg, %.lr.ph.i.i.i.i.i.i240.us ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i245.us, i64 16
  %.not.i23.i.i.i246.us = icmp eq ptr %.sroa.0434.5679.us, null
  br i1 %.not.i23.i.i.i246.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i247.us, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i244.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0434.5679.us, i64 noundef %i.cv) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i247.us
end_hunk_1
begin_hunk_2_@_ZN3igl33arap_linear_block_spokes_and_rimsIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_:bb.a
  %lpad.loopexit547.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit550.split.us:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i252.us
  %lpad.loopexit552.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge693:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %.preheader555
  %.sroa.0434.2.lcssa = phi ptr [ %.sroa.0434.1, %.preheader555 ], [ %.sroa.0434.1, %.preheader.lr.ph ], [ %.sroa.0434.18.us, %._crit_edge.us ] ; 6 uses
  %.sroa.25447.1.lcssa = phi ptr [ %.sroa.0434.1, %.preheader555 ], [ %.sroa.0434.1, %.preheader.lr.ph ], [ %.sroa.25447.12.us, %._crit_edge.us ]
  %.sroa.56.2.lcssa = phi ptr [ %.sroa.56.1, %.preheader555 ], [ %.sroa.56.1, %.preheader.lr.ph ], [ %.sroa.56.18.us, %._crit_edge.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %.sroa.0434.2.lcssa, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %.sroa.25447.1.lcssa, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dead_on_return %4)
          to label %bb.am unwind label %bb.ap

bb.al:                                            ; preds = %bb.am, %bb.k
  %.sroa.0434.3 = phi ptr [ %.sroa.0434.2.lcssa, %bb.am ], [ %.sroa.0434.1, %bb.k ]
  %.sroa.56.3 = phi ptr [ %.sroa.56.2.lcssa, %bb.am ], [ %.sroa.56.1, %bb.k ]
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split723.us:                                     ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc185 unwind label %.loopexit.split-lp546

.noexc185:                                        ; preds = %.split723.us
  unreachable

.split709.us:                                     ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc200 unwind label %.loopexit.split-lp536

.noexc200:                                        ; preds = %.split709.us
  unreachable

.split716.us:                                     ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc216 unwind label %.loopexit.split-lp541

.noexc216:                                        ; preds = %.split716.us
  unreachable

.loopexit.split-lp536:                            ; preds = %.split709.us
  %lpad.loopexit.split-lp538 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp541:                            ; preds = %.split716.us
  %lpad.loopexit.split-lp543 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split702.us:                                     ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc232 unwind label %.loopexit.split-lp531

.noexc232:                                        ; preds = %.split702.us
  unreachable

.loopexit.split-lp531:                            ; preds = %.split702.us
  %lpad.loopexit.split-lp533 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split.us:                                        ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc248 unwind label %.loopexit.split-lp

.noexc248:                                        ; preds = %.split.us
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split730.us:                                     ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc264 unwind label %.loopexit.split-lp551

.noexc264:                                        ; preds = %.split730.us
  unreachable

.loopexit.split-lp546:                            ; preds = %.split723.us
  %lpad.loopexit.split-lp548 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp551:                            ; preds = %.split730.us
  %lpad.loopexit.split-lp553 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge693
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE14makeCompressedEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.hl = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.hl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @free(ptr noundef %.sroa.0.0) #20
  %.not.i.i.i = icmp eq ptr %.sroa.0434.2.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hm = ptrtoint ptr %.sroa.56.2.lcssa to i64
  %i.hn = ptrtoint ptr %.sroa.0434.2.lcssa to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0434.2.lcssa, i64 noundef %i.ho) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.an, %bb.ao
  ret void

bb.ap:                                            ; preds = %._crit_edge693
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit550.split.us, %.loopexit.split-lp551, %.loopexit545.split.us, %.loopexit.split-lp546, %.loopexit.split.us, %.loopexit.split-lp, %.loopexit530.split.us, %.loopexit.split-lp531, %.loopexit540.split.us, %.loopexit.split-lp541, %.loopexit535.split.us, %.loopexit.split-lp536, %bb.ap, %bb.al
  %.sroa.0434.9 = phi ptr [ %.sroa.0434.2.lcssa, %bb.ap ], [ %.sroa.0434.3, %bb.al ], [ %.sroa.0434.6.us, %.loopexit.split-lp546 ], [ %.sroa.0434.5679.us, %.loopexit.split-lp ], [ %.sroa.0434.5679.us, %.loopexit.split-lp531 ], [ %.sroa.0434.5679.us, %.loopexit.split-lp536 ], [ %.sroa.0434.14.us, %.loopexit.split-lp541 ], [ %.sroa.0434.5679.us, %.loopexit535.split.us ], [ %.sroa.0434.14.us, %.loopexit540.split.us ], [ %.sroa.0434.5679.us, %.loopexit530.split.us ], [ %.sroa.0434.5679.us, %.loopexit.split.us ], [ %.sroa.0434.6.us, %.loopexit545.split.us ], [ %.sroa.0434.13.us, %.loopexit550.split.us ], [ %.sroa.0434.13.us, %.loopexit.split-lp551 ]
  %.sroa.56.9 = phi ptr [ %.sroa.56.2.lcssa, %bb.ap ], [ %.sroa.56.3, %bb.al ], [ %.sroa.25447.4.us, %.loopexit.split-lp546 ], [ %.sroa.56.5681.us, %.loopexit.split-lp ], [ %.sroa.56.5681.us, %.loopexit.split-lp531 ], [ %.sroa.56.5681.us, %.loopexit.split-lp536 ], [ %.sroa.56.14.us, %.loopexit.split-lp541 ], [ %.sroa.56.5681.us, %.loopexit535.split.us ], [ %.sroa.56.14.us, %.loopexit540.split.us ], [ %.sroa.56.5681.us, %.loopexit530.split.us ], [ %.sroa.56.5681.us, %.loopexit.split.us ], [ %.sroa.25447.4.us, %.loopexit545.split.us ], [ %.sroa.56.13.us, %.loopexit550.split.us ], [ %.sroa.56.13.us, %.loopexit.split-lp551 ]
  %.pn91.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hp, %bb.ap ], [ %i.hk, %bb.al ], [ %lpad.loopexit.split-lp548, %.loopexit.split-lp546 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp533, %.loopexit.split-lp531 ], [ %lpad.loopexit.split-lp538, %.loopexit.split-lp536 ], [ %lpad.loopexit.split-lp543, %.loopexit.split-lp541 ], [ %lpad.loopexit537.us, %.loopexit535.split.us ], [ %lpad.loopexit542.us, %.loopexit540.split.us ], [ %lpad.loopexit532.us, %.loopexit530.split.us ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit547.us, %.loopexit545.split.us ], [ %lpad.loopexit552.us, %.loopexit550.split.us ], [ %lpad.loopexit.split-lp553, %.loopexit.split-lp551 ]
  %i.hq = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.hq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.f
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.aq ], [ null, %bb.f ]
  %.sroa.0434.10 = phi ptr [ %.sroa.0434.9, %bb.aq ], [ %.sroa.0434.0, %bb.f ] ; 3 uses
  %.sroa.56.10 = phi ptr [ %.sroa.56.9, %bb.aq ], [ %.sroa.56.0, %bb.f ]
  %.pn91.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn, %bb.aq ], [ %i.w, %bb.f ]
  call void @free(ptr noundef %.sroa.0.1) #20
  %.not.i.i.i267 = icmp eq ptr %.sroa.0434.10, null
  br i1 %.not.i.i.i267, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit268, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hr = ptrtoint ptr %.sroa.56.10 to i64
  %i.hs = ptrtoint ptr %.sroa.0434.10 to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0434.10, i64 noundef %i.ht) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit268

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit268: ; preds = %bb.ar, %bb.as
  resume { ptr, i32 } %.pn91.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl26arap_linear_block_elementsIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.h, i64 noundef %i.e)
  switch i32 %i.c, label %bb.k [
    i32 3, label %bb.b
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = mul nsw i64 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.j)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit unwind label %bb.f

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %i.m = mul nsw i64 %i.l, 7                      ; 2 uses
  %i.n = icmp ugt i64 %i.m, 576460752303423487
  br i1 %i.n, label %.invoke, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %.not369 = icmp eq i64 %i.l, 0
  br i1 %.not369, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = mul i64 %i.l, 112
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.0300.8 = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %.sroa.32.8 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc82 unwind label %bb.f

.noexc82:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store i32 0, ptr %i.u, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 2, i32 0, i32 2>, ptr %i.r, align 4, !tbaa !20
  %i.v = getelementptr i8, ptr %i.r, i64 20
  store i32 1, ptr %i.v, align 4, !tbaa !20
  br label %bb.k

bb.f:                                             ; preds = %.invoke, %bb.i, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101, %bb.g, %bb.d, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %bb.b
  %.sroa.0300.0 = phi ptr [ null, %bb.g ], [ %.sroa.0300.8, %bb.d ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.invoke ], [ %.sroa.0300.9, %bb.i ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101 ]
  %.sroa.32.0 = phi ptr [ null, %bb.g ], [ %.sroa.32.8, %bb.d ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.invoke ], [ %.sroa.32.9, %bb.i ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101 ]
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.g, align 8, !tbaa !15
  %i.y = mul nsw i64 %i.x, 17
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.y)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit100 unwind label %bb.f

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit100: ; preds = %bb.g
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %i.ab = mul nsw i64 %i.aa, 17                   ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 576460752303423487
  br i1 %i.ac, label %.invoke, label %bb.h

.invoke:                                          ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit100
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit100
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101: ; preds = %bb.h
  %i.ad = mul i64 %i.aa, 272
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109 unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ab
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112: ; preds = %bb.h, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109
  %.sroa.0300.9 = phi ptr [ %i.ae, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109 ], [ null, %bb.h ] ; 2 uses
  %.sroa.32.9 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109 ], [ null, %bb.h ] ; 2 uses
  %i.ag = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #19 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc115 unwind label %bb.f

.noexc115:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112
  %i.aj = getelementptr i8, ptr %i.ag, i64 32
  store <4 x i32> <i32 1, i32 2, i32 0, i32 3>, ptr %i.ag, align 4, !tbaa !20
  %i.ak = getelementptr i8, ptr %i.ag, i64 16
  store <4 x i32> <i32 3, i32 3, i32 2, i32 0>, ptr %i.ak, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 0, i32 1, i32 2>, ptr %i.aj, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.r, %bb.e ], [ %i.ag, %bb.j ] ; 3 uses
  %i.al = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ true, %bb.j ]
  %.sroa.30.0 = phi i64 [ 0, %bb.a ], [ 3, %bb.e ], [ 6, %bb.j ] ; 2 uses
  %.sroa.0300.1 = phi ptr [ null, %bb.a ], [ %.sroa.0300.8, %bb.e ], [ %.sroa.0300.9, %bb.j ] ; 7 uses
  %.sroa.32.1 = phi ptr [ null, %bb.a ], [ %.sroa.32.8, %bb.e ], [ %.sroa.32.9, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader375 unwind label %bb.s

.preheader375:                                    ; preds = %bb.k
  %i.am = icmp sgt i32 %i.f, 0
  br i1 %i.am, label %.preheader.lr.ph, label %._crit_edge417

.preheader.lr.ph:                                 ; preds = %.preheader375
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = sext i32 %2 to i64
  br i1 %i.al, label %.preheader.us.preheader, label %._crit_edge417

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.30.0, i64 1)
  %wide.trip.count = and i64 %i.e, 2147483647
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv450 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next451, %._crit_edge.us ] ; 7 uses
  %.sroa.32.2415.us = phi ptr [ %.sroa.32.1, %.preheader.us.preheader ], [ %.sroa.32.11.us, %._crit_edge.us ]
  %.sroa.17.1414.us = phi ptr [ %.sroa.0300.1, %.preheader.us.preheader ], [ %.sroa.17.6.us, %._crit_edge.us ]
  %.sroa.0300.2413.us = phi ptr [ %.sroa.0300.1, %.preheader.us.preheader ], [ %.sroa.0300.11.us, %._crit_edge.us ]
  %i.ap = trunc nuw nsw i64 %indvars.iv450 to i32
  %i.aq = trunc nuw nsw i64 %indvars.iv450 to i32
  %i.ar = trunc nuw nsw i64 %indvars.iv450 to i32
  %i.as = trunc nuw nsw i64 %indvars.iv450 to i32
  br label %bb.l

bb.l:                                             ; preds = %.preheader.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us ] ; 3 uses
  %.sroa.32.4409.us = phi ptr [ %.sroa.32.2415.us, %.preheader.us ], [ %.sroa.32.11.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us ] ; 7 uses
  %.sroa.17.2408.us = phi ptr [ %.sroa.17.1414.us, %.preheader.us ], [ %.sroa.17.6.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us ] ; 5 uses
  %.sroa.0300.4407.us = phi ptr [ %.sroa.0300.2413.us, %.preheader.us ], [ %.sroa.0300.11.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us ] ; 8 uses
  %i.at = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !20
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %1, align 8, !tbaa !21
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = getelementptr [4 x i8], ptr %i.aw, i64 %indvars.iv450 ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !20 ; 3 uses
  %i.bc = getelementptr [4 x i8], ptr %i.at, i64 %.sroa.30.0
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !20
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.ax, %i.be
  %i.bg = getelementptr [4 x i8], ptr %i.az, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !20 ; 3 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !22
  %i.bj = load i64, ptr %i.an, align 8, !tbaa !15
  %i.bk = mul nsw i64 %i.bj, %indvars.iv
  %i.bl = getelementptr [8 x i8], ptr %i.bi, i64 %indvars.iv450
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !23
  %i.bo = sext i32 %i.bb to i64
  %i.bp = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bq = load i64, ptr %i.g, align 8, !tbaa !15
  %i.br = mul nsw i64 %i.bq, %i.ao                ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !23
  %i.bv = sext i32 %i.bh to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bp, i64 %i.bv
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.br
  %i.by = load double, ptr %i.bx, align 8, !tbaa !23
  %i.bz = fsub double %i.bu, %i.by
  %i.ca = fmul double %i.bn, %i.bz                ; 3 uses
  %.not.i.i162.us = icmp eq ptr %.sroa.17.2408.us, %.sroa.32.4409.us
  br i1 %.not.i.i162.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.bb, ptr %.sroa.17.2408.us, align 8, !tbaa !20
  %.sroa.6191.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.17.2408.us, i64 4
  store i32 %i.ap, ptr %.sroa.6191.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7194.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.17.2408.us, i64 8
  store double %i.ca, ptr %.sroa.7194.0..sroa_idx.us, align 8, !tbaa !23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us

bb.n:                                             ; preds = %bb.l
  %i.cb = ptrtoint ptr %.sroa.32.4409.us to i64
  %i.cc = ptrtoint ptr %.sroa.0300.4407.us to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775792
  br i1 %i.ce, label %.split.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.n
  %i.cf = ashr exact i64 %i.cd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 576460752303423487)
  %i.cj = select i1 %i.ch, i64 576460752303423487, i64 %i.ci ; 3 uses
  %.not.i.i.i.i163.us = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i163.us)
  %i.ck = shl nuw nsw i64 %i.cj, 4
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #18
          to label %.noexc165.us unwind label %.loopexit.split.us ; 5 uses

.noexc165.us:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd ; 3 uses
  store i32 %i.bb, ptr %i.cm, align 8, !tbaa !20
  %.sroa.6191.0..sroa_idx192.us = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.aq, ptr %.sroa.6191.0..sroa_idx192.us, align 4, !tbaa !20
  %.sroa.7194.0..sroa_idx195.us = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store double %i.ca, ptr %.sroa.7194.0..sroa_idx195.us, align 8, !tbaa !23
  %.not10.i.i.i.i.i.i.us = icmp eq ptr %.sroa.0300.4407.us, %.sroa.32.4409.us
  br i1 %.not10.i.i.i.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.noexc165.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.us ], [ %i.cl, %.noexc165.us ] ; 2 uses
  %.0911.i.i.i.i.i.i.us = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.us ], [ %.sroa.0300.4407.us, %.noexc165.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.us, i64 16, i1 false), !tbaa.struct !25, !alias.scope !78
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.cn, %.sroa.32.4409.us
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !30

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.us, %.noexc165.us
  %.0.lcssa.i.i.i.i.i.i.us = phi ptr [ %i.cl, %.noexc165.us ], [ %i.co, %.lr.ph.i.i.i.i.i.i.us ]
  %.not.i23.i.i.i.us = icmp eq ptr %.sroa.0300.4407.us, null
  br i1 %.not.i23.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0300.4407.us, i64 noundef %i.cd) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us: ; preds = %bb.o, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cj
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us, %bb.m
  %.sroa.0300.10.us = phi ptr [ %i.cl, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.0300.4407.us, %bb.m ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn.us = phi ptr [ %.0.lcssa.i.i.i.i.i.i.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.17.2408.us, %bb.m ] ; 6 uses
  %.sroa.32.10.us = phi ptr [ %i.cp, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.32.4409.us, %bb.m ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i.pn.us501 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn.us to i64
  %.sroa.17.5.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 16 ; 2 uses
  %i.cq = fneg double %i.ca                       ; 2 uses
  %.not.i.i166.us = icmp eq ptr %.sroa.17.5.us, %.sroa.32.10.us
  br i1 %.not.i.i166.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us
  store i32 %i.bh, ptr %.sroa.17.5.us, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 20
  store i32 %i.ar, ptr %.sroa.6.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 24
  store double %i.cq, ptr %.sroa.7.0..sroa_idx.us, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us

bb.q:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us
  %i.cs = ptrtoint ptr %.sroa.32.10.us to i64
  %i.ct = ptrtoint ptr %.sroa.0300.10.us to i64   ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775792
  br i1 %i.cv, label %.split426.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i167.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i167.us: ; preds = %bb.q
  %i.cw = ashr exact i64 %i.cu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i168.us = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i.i168.us, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
end_hunk_2
begin_hunk_3_@_ZN3igl26arap_linear_block_elementsIN5Eigen10MatrixBaseINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS3_IiLin1ELin1ELi0ELin1ELin1EEEEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_:bb.a
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i178.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i178.us: ; preds = %bb.r, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i175.us
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.da
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i178.us, %bb.p
  %.sroa.0300.11.us = phi ptr [ %i.dc, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i178.us ], [ %.sroa.0300.10.us, %bb.p ] ; 3 uses
  %.sroa.17.6.us = phi ptr [ %i.ds, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i178.us ], [ %i.cr, %bb.p ] ; 3 uses
  %.sroa.32.11.us = phi ptr [ %i.dt, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i178.us ], [ %.sroa.32.10.us, %bb.p ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.l, !llvm.loop !87

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next451, %wide.trip.count
  br i1 %exitcond453.not, label %._crit_edge417, label %.preheader.us, !llvm.loop !88

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit370.split.us:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i167.us
  %lpad.loopexit372.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

._crit_edge417:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %.preheader375
  %.sroa.0300.2.lcssa = phi ptr [ %.sroa.0300.1, %.preheader375 ], [ %.sroa.0300.1, %.preheader.lr.ph ], [ %.sroa.0300.11.us, %._crit_edge.us ] ; 6 uses
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.0300.1, %.preheader375 ], [ %.sroa.0300.1, %.preheader.lr.ph ], [ %.sroa.17.6.us, %._crit_edge.us ]
  %.sroa.32.2.lcssa = phi ptr [ %.sroa.32.1, %.preheader375 ], [ %.sroa.32.1, %.preheader.lr.ph ], [ %.sroa.32.11.us, %._crit_edge.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %.sroa.0300.2.lcssa, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %.sroa.17.1.lcssa, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dead_on_return %4)
          to label %bb.t unwind label %bb.w

bb.s:                                             ; preds = %bb.t, %bb.k
  %.sroa.0300.3 = phi ptr [ %.sroa.0300.2.lcssa, %bb.t ], [ %.sroa.0300.1, %bb.k ]
  %.sroa.32.3 = phi ptr [ %.sroa.32.2.lcssa, %bb.t ], [ %.sroa.32.1, %bb.k ]
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.split.us:                                        ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc164 unwind label %.loopexit.split-lp

.noexc164:                                        ; preds = %.split.us
  unreachable

.split426.us:                                     ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc179 unwind label %.loopexit.split-lp371

.noexc179:                                        ; preds = %.split426.us
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp371:                            ; preds = %.split426.us
  %lpad.loopexit.split-lp373 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.t:                                             ; preds = %._crit_edge417
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE14makeCompressedEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.dv = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.dv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @free(ptr noundef %.sroa.0.0) #20
  %.not.i.i.i = icmp eq ptr %.sroa.0300.2.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = ptrtoint ptr %.sroa.32.2.lcssa to i64
  %i.dx = ptrtoint ptr %.sroa.0300.2.lcssa to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0300.2.lcssa, i64 noundef %i.dy) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.u, %bb.v
  ret void

bb.w:                                             ; preds = %._crit_edge417
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.x

bb.x:                                             ; preds = %.loopexit370.split.us, %.loopexit.split-lp371, %.loopexit.split.us, %.loopexit.split-lp, %bb.w, %bb.s
  %.sroa.0300.6 = phi ptr [ %.sroa.0300.2.lcssa, %bb.w ], [ %.sroa.0300.3, %bb.s ], [ %.sroa.0300.4407.us, %.loopexit.split-lp ], [ %.sroa.0300.4407.us, %.loopexit.split.us ], [ %.sroa.0300.10.us, %.loopexit370.split.us ], [ %.sroa.0300.10.us, %.loopexit.split-lp371 ]
  %.sroa.32.6 = phi ptr [ %.sroa.32.2.lcssa, %bb.w ], [ %.sroa.32.3, %bb.s ], [ %.sroa.32.4409.us, %.loopexit.split-lp ], [ %.sroa.32.4409.us, %.loopexit.split.us ], [ %.sroa.32.10.us, %.loopexit370.split.us ], [ %.sroa.32.10.us, %.loopexit.split-lp371 ]
  %.pn73.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.w ], [ %i.du, %bb.s ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit372.us, %.loopexit370.split.us ], [ %lpad.loopexit.split-lp373, %.loopexit.split-lp371 ]
  %i.ea = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.ea) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.f
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.x ], [ null, %bb.f ]
  %.sroa.0300.7 = phi ptr [ %.sroa.0300.6, %bb.x ], [ %.sroa.0300.0, %bb.f ] ; 3 uses
  %.sroa.32.7 = phi ptr [ %.sroa.32.6, %bb.x ], [ %.sroa.32.0, %bb.f ]
  %.pn73.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn, %bb.x ], [ %i.w, %bb.f ]
  call void @free(ptr noundef %.sroa.0.1) #20
  %.not.i.i.i182 = icmp eq ptr %.sroa.0300.7, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit183, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = ptrtoint ptr %.sroa.32.7 to i64
  %i.ec = ptrtoint ptr %.sroa.0300.7 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0300.7, i64 noundef %i.ed) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit183

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit183: ; preds = %bb.y, %bb.z
  resume { ptr, i32 } %.pn73.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl17arap_linear_blockIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iNS_14ARAPEnergyTypeERT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 %4) local_unnamed_addr #0 comdat {
bb.a:
  switch i32 %3, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3igl24arap_linear_block_spokesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %4)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN3igl33arap_linear_block_spokes_and_rimsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %4)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN3igl26arap_linear_block_elementsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl24arap_linear_block_spokesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.g, i64 noundef %i.g)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.b to i32
  switch i32 %i.h, label %bb.m [
    i32 3, label %bb.c
    i32 4, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8, !tbaa !15
  %i.j = mul nsw i64 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.j)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit unwind label %bb.h

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.c
  %i.l = load i64, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.m = mul nsw i64 %i.l, 7                      ; 2 uses
  %i.n = icmp ugt i64 %i.m, 576460752303423487
  br i1 %i.n, label %.invoke, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %.not447 = icmp eq i64 %i.l, 0
  br i1 %.not447, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.o = mul i64 %i.l, 112
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.h ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.0357.8 = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.d ] ; 2 uses
  %.sroa.44.8 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.d ] ; 2 uses
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc88 unwind label %bb.h

.noexc88:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store i32 0, ptr %i.u, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 2, i32 0, i32 2>, ptr %i.r, align 4, !tbaa !20
  %i.v = getelementptr i8, ptr %i.r, i64 20
  store i32 1, ptr %i.v, align 4, !tbaa !20
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit221

bb.h:                                             ; preds = %.invoke, %bb.k, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107, %bb.i, %bb.e, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %bb.c
  %.sroa.0357.0 = phi ptr [ null, %bb.i ], [ %.sroa.0357.8, %bb.e ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.c ], [ null, %.invoke ], [ %.sroa.0357.9, %bb.k ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107 ]
  %.sroa.44.0 = phi ptr [ null, %bb.i ], [ %.sroa.44.8, %bb.e ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.c ], [ null, %.invoke ], [ %.sroa.44.9, %bb.k ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107 ]
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.i:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.f, align 8, !tbaa !15
  %i.z = mul nsw i64 %i.y, 17
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %i.z)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit106 unwind label %bb.h

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit106: ; preds = %bb.i
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !15  ; 3 uses
  %i.ac = mul nsw i64 %i.ab, 17                   ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %.invoke, label %bb.j

.invoke:                                          ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit106
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit106
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107: ; preds = %bb.j
  %i.ae = mul i64 %i.ab, 272
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115 unwind label %bb.h ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i107
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ac
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118: ; preds = %bb.j, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115
  %.sroa.0357.9 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115 ], [ null, %bb.j ] ; 2 uses
  %.sroa.44.9 = phi ptr [ %i.ag, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i115 ], [ null, %bb.j ] ; 2 uses
  %i.ah = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #19 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aj, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc121 unwind label %bb.h

.noexc121:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit118
  %i.ak = getelementptr i8, ptr %i.ah, i64 32
  store <4 x i32> <i32 1, i32 2, i32 0, i32 3>, ptr %i.ah, align 4, !tbaa !20
  %i.al = getelementptr i8, ptr %i.ah, i64 16
  store <4 x i32> <i32 3, i32 3, i32 2, i32 0>, ptr %i.al, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 0, i32 1, i32 2>, ptr %i.ak, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.r, %bb.f ], [ %i.ah, %bb.l ] ; 3 uses
  %i.am = phi i1 [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.l ]
  %.sroa.30.0 = phi i64 [ 0, %bb.b ], [ 3, %bb.f ], [ 6, %bb.l ] ; 2 uses
  %.sroa.0357.1 = phi ptr [ null, %bb.b ], [ %.sroa.0357.8, %bb.f ], [ %.sroa.0357.9, %bb.l ] ; 7 uses
  %.sroa.44.1 = phi ptr [ null, %bb.b ], [ %.sroa.44.8, %bb.f ], [ %.sroa.44.9, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader463 unwind label %bb.aa

.preheader463:                                    ; preds = %bb.m
  %i.an = icmp sgt i32 %i.e, 0
  br i1 %i.an, label %.preheader.lr.ph, label %._crit_edge551

.preheader.lr.ph:                                 ; preds = %.preheader463
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = sext i32 %2 to i64
  br i1 %i.am, label %.preheader.us.preheader, label %._crit_edge551

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.30.0, i64 1)
  %wide.trip.count = and i64 %i.d, 2147483647
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv628 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next629, %._crit_edge.us ] ; 3 uses
  %.sroa.44.2549.us = phi ptr [ %.sroa.44.1, %.preheader.us.preheader ], [ %.sroa.44.13.us, %._crit_edge.us ]
  %.sroa.21.1548.us = phi ptr [ %.sroa.0357.1, %.preheader.us.preheader ], [ %.sroa.21.8.us, %._crit_edge.us ]
  %.sroa.0357.2547.us = phi ptr [ %.sroa.0357.1, %.preheader.us.preheader ], [ %.sroa.0357.13.us, %._crit_edge.us ]
  br label %bb.n

bb.n:                                             ; preds = %.preheader.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us ] ; 3 uses
  %.sroa.44.4543.us = phi ptr [ %.sroa.44.2549.us, %.preheader.us ], [ %.sroa.44.13.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us ] ; 7 uses
  %.sroa.21.2542.us = phi ptr [ %.sroa.21.1548.us, %.preheader.us ], [ %.sroa.21.8.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us ] ; 5 uses
  %.sroa.0357.4541.us = phi ptr [ %.sroa.0357.2547.us, %.preheader.us ], [ %.sroa.0357.13.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us ] ; 8 uses
  %i.aq = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !20
  %i.as = sext i32 %i.ar to i64
  %i.at = load ptr, ptr %1, align 8, !tbaa !21
  %i.au = load i64, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %i.av = mul nsw i64 %i.au, %i.as
  %i.aw = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv628 ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !20 ; 9 uses
  %i.az = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.30.0
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !20
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.au, %i.bb
  %i.bd = getelementptr [4 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !20 ; 9 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !22
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.bh = mul nsw i64 %i.bg, %indvars.iv
  %i.bi = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv628
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !23
  %i.bl = fmul double %i.bk, 5.000000e-01
  %i.bm = sext i32 %i.ay to i64
  %i.bn = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !15
  %i.bp = mul nsw i64 %i.bo, %i.ap                ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bn, i64 %i.bm
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load double, ptr %i.br, align 8, !tbaa !23
  %i.bt = sext i32 %i.be to i64
  %i.bu = getelementptr [8 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %i.bp
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !23
  %i.bx = fsub double %i.bs, %i.bw
  %i.by = fmul double %i.bl, %i.bx                ; 5 uses
  %.not.i.i168.us = icmp eq ptr %.sroa.21.2542.us, %.sroa.44.4543.us
  br i1 %.not.i.i168.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.ay, ptr %.sroa.21.2542.us, align 8, !tbaa !20
  %.sroa.6246.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.21.2542.us, i64 4
  store i32 %i.be, ptr %.sroa.6246.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7249.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.21.2542.us, i64 8
  store double %i.by, ptr %.sroa.7249.0..sroa_idx.us, align 8, !tbaa !23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us

bb.p:                                             ; preds = %bb.n
  %i.bz = ptrtoint ptr %.sroa.44.4543.us to i64
  %i.ca = ptrtoint ptr %.sroa.0357.4541.us to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775792
  br i1 %i.cc, label %.split.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.p
  %i.cd = ashr exact i64 %i.cb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 576460752303423487)
  %i.ch = select i1 %i.cf, i64 576460752303423487, i64 %i.cg ; 3 uses
  %.not.i.i.i.i169.us = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i.i169.us)
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #18
          to label %.noexc171.us unwind label %.loopexit.split.us ; 5 uses

.noexc171.us:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb ; 3 uses
  store i32 %i.ay, ptr %i.ck, align 8, !tbaa !20
  %.sroa.6246.0..sroa_idx247.us = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %i.be, ptr %.sroa.6246.0..sroa_idx247.us, align 4, !tbaa !20
  %.sroa.7249.0..sroa_idx250.us = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store double %i.by, ptr %.sroa.7249.0..sroa_idx250.us, align 8, !tbaa !23
  %.not10.i.i.i.i.i.i.us = icmp eq ptr %.sroa.0357.4541.us, %.sroa.44.4543.us
  br i1 %.not10.i.i.i.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.noexc171.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.us ], [ %i.cj, %.noexc171.us ] ; 2 uses
  %.0911.i.i.i.i.i.i.us = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.us ], [ %.sroa.0357.4541.us, %.noexc171.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.us, i64 16, i1 false), !tbaa.struct !25, !alias.scope !89
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.cl, %.sroa.44.4543.us
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !30

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.us, %.noexc171.us
  %.0.lcssa.i.i.i.i.i.i.us = phi ptr [ %i.cj, %.noexc171.us ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.us ]
  %.not.i23.i.i.i.us = icmp eq ptr %.sroa.0357.4541.us, null
  br i1 %.not.i23.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.4541.us, i64 noundef %i.cb) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us: ; preds = %bb.q, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ch
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us, %bb.o
  %.sroa.0357.10.us = phi ptr [ %i.cj, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.0357.4541.us, %bb.o ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn.us = phi ptr [ %.0.lcssa.i.i.i.i.i.i.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.21.2542.us, %bb.o ] ; 6 uses
  %.sroa.44.10.us = phi ptr [ %i.cn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.44.4543.us, %bb.o ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i.pn.us771 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn.us to i64
  %.sroa.21.5.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 16 ; 2 uses
  %i.co = fneg double %i.by                       ; 4 uses
  %.not.i.i172.us = icmp eq ptr %.sroa.21.5.us, %.sroa.44.10.us
  br i1 %.not.i.i172.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us
  store i32 %i.be, ptr %.sroa.21.5.us, align 8, !tbaa !20
  %.sroa.6238.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 20
  store i32 %i.ay, ptr %.sroa.6238.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7241.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 24
  store double %i.co, ptr %.sroa.7241.0..sroa_idx.us, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit187.us

bb.s:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us
  %i.cq = ptrtoint ptr %.sroa.44.10.us to i64
  %i.cr = ptrtoint ptr %.sroa.0357.10.us to i64   ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 4 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775792
  br i1 %i.ct, label %.split560.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i173.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i173.us: ; preds = %bb.s
  %i.cu = ashr exact i64 %i.cs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i174.us = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i174.us, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 576460752303423487)
  %i.cy = select i1 %i.cw, i64 576460752303423487, i64 %i.cx ; 3 uses
  %.not.i.i.i.i175.us = icmp ne i64 %i.cy, 0
end_hunk_3
begin_hunk_4_@_ZN3igl24arap_linear_block_spokesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_:bb.a
  %.sroa.21.8.us = phi ptr [ %i.fi, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i216.us ], [ %i.eh, %bb.x ] ; 3 uses
  %.sroa.44.13.us = phi ptr [ %i.fj, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i216.us ], [ %.sroa.44.12.us, %bb.x ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.n, !llvm.loop !107

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit219.us
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond631.not = icmp eq i64 %indvars.iv.next629, %wide.trip.count
  br i1 %exitcond631.not, label %._crit_edge551, label %.preheader.us, !llvm.loop !108

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit448.split.us:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i173.us
  %lpad.loopexit450.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit453.split.us:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i189.us
  %lpad.loopexit455.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit458.split.us:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i205.us
  %lpad.loopexit460.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

._crit_edge551:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %.preheader463
  %.sroa.0357.2.lcssa = phi ptr [ %.sroa.0357.1, %.preheader463 ], [ %.sroa.0357.1, %.preheader.lr.ph ], [ %.sroa.0357.13.us, %._crit_edge.us ] ; 6 uses
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.0357.1, %.preheader463 ], [ %.sroa.0357.1, %.preheader.lr.ph ], [ %.sroa.21.8.us, %._crit_edge.us ]
  %.sroa.44.2.lcssa = phi ptr [ %.sroa.44.1, %.preheader463 ], [ %.sroa.44.1, %.preheader.lr.ph ], [ %.sroa.44.13.us, %._crit_edge.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %.sroa.0357.2.lcssa, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %.sroa.21.1.lcssa, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dead_on_return %4)
          to label %bb.ab unwind label %bb.ae

bb.aa:                                            ; preds = %bb.ab, %bb.m
  %.sroa.0357.3 = phi ptr [ %.sroa.0357.2.lcssa, %bb.ab ], [ %.sroa.0357.1, %bb.m ]
  %.sroa.44.3 = phi ptr [ %.sroa.44.2.lcssa, %bb.ab ], [ %.sroa.44.1, %bb.m ]
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.split.us:                                        ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc170 unwind label %.loopexit.split-lp

.noexc170:                                        ; preds = %.split.us
  unreachable

.split560.us:                                     ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc185 unwind label %.loopexit.split-lp449

.noexc185:                                        ; preds = %.split560.us
  unreachable

.split567.us:                                     ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc201 unwind label %.loopexit.split-lp454

.noexc201:                                        ; preds = %.split567.us
  unreachable

.split574.us:                                     ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc217 unwind label %.loopexit.split-lp459

.noexc217:                                        ; preds = %.split574.us
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp449:                            ; preds = %.split560.us
  %lpad.loopexit.split-lp451 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp454:                            ; preds = %.split567.us
  %lpad.loopexit.split-lp456 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp459:                            ; preds = %.split574.us
  %lpad.loopexit.split-lp461 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ab:                                            ; preds = %._crit_edge551
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE14makeCompressedEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  %i.fl = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.fl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i = icmp eq ptr %.sroa.0357.2.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fm = ptrtoint ptr %.sroa.44.2.lcssa to i64
  %i.fn = ptrtoint ptr %.sroa.0357.2.lcssa to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.2.lcssa, i64 noundef %i.fo) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.ac, %bb.ad
  call void @free(ptr noundef %.sroa.0.0) #20
  ret void

bb.ae:                                            ; preds = %._crit_edge551
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.af

bb.af:                                            ; preds = %.loopexit458.split.us, %.loopexit.split-lp459, %.loopexit453.split.us, %.loopexit.split-lp454, %.loopexit448.split.us, %.loopexit.split-lp449, %.loopexit.split.us, %.loopexit.split-lp, %bb.ae, %bb.aa
  %.sroa.0357.6 = phi ptr [ %.sroa.0357.2.lcssa, %bb.ae ], [ %.sroa.0357.3, %bb.aa ], [ %.sroa.0357.11.us, %.loopexit.split-lp454 ], [ %.sroa.0357.4541.us, %.loopexit.split-lp ], [ %.sroa.0357.10.us, %.loopexit.split-lp449 ], [ %.sroa.0357.4541.us, %.loopexit.split.us ], [ %.sroa.0357.10.us, %.loopexit448.split.us ], [ %.sroa.0357.11.us, %.loopexit453.split.us ], [ %.sroa.0357.12.us, %.loopexit458.split.us ], [ %.sroa.0357.12.us, %.loopexit.split-lp459 ]
  %.sroa.44.6 = phi ptr [ %.sroa.44.2.lcssa, %bb.ae ], [ %.sroa.44.3, %bb.aa ], [ %.sroa.21.6.us, %.loopexit.split-lp454 ], [ %.sroa.44.4543.us, %.loopexit.split-lp ], [ %.sroa.44.10.us, %.loopexit.split-lp449 ], [ %.sroa.44.4543.us, %.loopexit.split.us ], [ %.sroa.44.10.us, %.loopexit448.split.us ], [ %.sroa.21.6.us, %.loopexit453.split.us ], [ %.sroa.44.12.us, %.loopexit458.split.us ], [ %.sroa.44.12.us, %.loopexit.split-lp459 ]
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.ae ], [ %i.fk, %bb.aa ], [ %lpad.loopexit.split-lp456, %.loopexit.split-lp454 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp451, %.loopexit.split-lp449 ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit450.us, %.loopexit448.split.us ], [ %lpad.loopexit455.us, %.loopexit453.split.us ], [ %lpad.loopexit460.us, %.loopexit458.split.us ], [ %lpad.loopexit.split-lp461, %.loopexit.split-lp459 ]
  %i.fq = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.fq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.h
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.af ], [ null, %bb.h ] ; 2 uses
  %.sroa.0357.7 = phi ptr [ %.sroa.0357.6, %bb.af ], [ %.sroa.0357.0, %bb.h ] ; 3 uses
  %.sroa.44.7 = phi ptr [ %.sroa.44.6, %bb.af ], [ %.sroa.44.0, %bb.h ]
  %.pn79.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn79.pn.pn.pn, %bb.af ], [ %i.x, %bb.h ] ; 2 uses
  %.not.i.i.i220 = icmp eq ptr %.sroa.0357.7, null
  br i1 %.not.i.i.i220, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit221, label %.thread

.thread:                                          ; preds = %bb.ag
  %i.fr = ptrtoint ptr %.sroa.44.7 to i64
  %i.fs = ptrtoint ptr %.sroa.0357.7 to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.7, i64 noundef %i.ft) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit221

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit221: ; preds = %.thread, %bb.ag, %bb.g
  %.sroa.0.2 = phi ptr [ null, %bb.g ], [ %.sroa.0.1, %bb.ag ], [ %.sroa.0.1, %.thread ]
  %.pn79.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.g ], [ %.pn79.pn.pn.pn.pn.pn, %bb.ag ], [ %.pn79.pn.pn.pn.pn.pn, %.thread ]
  call void @free(ptr noundef %.sroa.0.2) #20
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl33arap_linear_block_spokes_and_rimsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.h, i64 noundef %i.h)
  switch i32 %i.c, label %bb.k [
    i32 3, label %bb.b
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = mul nsw i64 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.j)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit unwind label %bb.f

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %i.m = mul nsw i64 %i.l, 7                      ; 2 uses
  %i.n = icmp ugt i64 %i.m, 576460752303423487
  br i1 %i.n, label %.invoke, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %.not529 = icmp eq i64 %i.l, 0
  br i1 %.not529, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = mul i64 %i.l, 112
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.0434.11 = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %.sroa.56.11 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc103 unwind label %bb.f

.noexc103:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store i32 0, ptr %i.u, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 2, i32 0, i32 2>, ptr %i.r, align 4, !tbaa !20
  %i.v = getelementptr i8, ptr %i.r, i64 20
  store i32 1, ptr %i.v, align 4, !tbaa !20
  br label %bb.k

bb.f:                                             ; preds = %.invoke, %bb.i, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122, %bb.g, %bb.d, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %bb.b
  %.sroa.0434.0 = phi ptr [ null, %bb.g ], [ %.sroa.0434.11, %bb.d ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.invoke ], [ %.sroa.0434.12, %bb.i ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122 ]
  %.sroa.56.0 = phi ptr [ null, %bb.g ], [ %.sroa.56.11, %bb.d ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.invoke ], [ %.sroa.56.12, %bb.i ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122 ]
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.g:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.g, align 8, !tbaa !15
  %i.y = mul nsw i64 %i.x, 17
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.y)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit121 unwind label %bb.f

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit121: ; preds = %bb.g
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %i.ab = mul nsw i64 %i.aa, 17                   ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 576460752303423487
  br i1 %i.ac, label %.invoke, label %bb.h

.invoke:                                          ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit121
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit121
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122: ; preds = %bb.h
  %i.ad = mul i64 %i.aa, 272
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130 unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i122
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ab
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133: ; preds = %bb.h, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130
  %.sroa.0434.12 = phi ptr [ %i.ae, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130 ], [ null, %bb.h ] ; 2 uses
  %.sroa.56.12 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i130 ], [ null, %bb.h ] ; 2 uses
  %i.ag = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #19 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc136 unwind label %bb.f

.noexc136:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit133
  %i.aj = getelementptr i8, ptr %i.ag, i64 32
  store <4 x i32> <i32 1, i32 2, i32 0, i32 3>, ptr %i.ag, align 4, !tbaa !20
  %i.ak = getelementptr i8, ptr %i.ag, i64 16
  store <4 x i32> <i32 3, i32 3, i32 2, i32 0>, ptr %i.ak, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 0, i32 1, i32 2>, ptr %i.aj, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.r, %bb.e ], [ %i.ag, %bb.j ] ; 4 uses
  %i.al = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ true, %bb.j ]
  %.sroa.32.0 = phi i64 [ 0, %bb.a ], [ 3, %bb.e ], [ 6, %bb.j ] ; 3 uses
  %.sroa.0434.1 = phi ptr [ null, %bb.a ], [ %.sroa.0434.11, %bb.e ], [ %.sroa.0434.12, %bb.j ] ; 7 uses
  %.sroa.56.1 = phi ptr [ null, %bb.a ], [ %.sroa.56.11, %bb.e ], [ %.sroa.56.12, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader555 unwind label %bb.al

.preheader555:                                    ; preds = %bb.k
  %i.am = icmp sgt i32 %i.f, 0
  br i1 %i.am, label %.preheader.lr.ph, label %._crit_edge693

.preheader.lr.ph:                                 ; preds = %.preheader555
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = sext i32 %2 to i64
  br i1 %i.al, label %.preheader.us.preheader, label %._crit_edge693

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.32.0, i64 1) ; 2 uses
  %wide.trip.count = and i64 %i.e, 2147483647
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv781 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next782, %._crit_edge.us ] ; 4 uses
  %.sroa.56.2691.us = phi ptr [ %.sroa.56.1, %.preheader.us.preheader ], [ %.sroa.56.18.us, %._crit_edge.us ]
  %.sroa.25447.1690.us = phi ptr [ %.sroa.0434.1, %.preheader.us.preheader ], [ %.sroa.25447.12.us, %._crit_edge.us ]
  %.sroa.0434.2689.us = phi ptr [ %.sroa.0434.1, %.preheader.us.preheader ], [ %.sroa.0434.18.us, %._crit_edge.us ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us
  %indvars.iv777 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next778, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us ] ; 3 uses
  %.sroa.56.4685.us = phi ptr [ %.sroa.56.2691.us, %.preheader.us ], [ %.sroa.56.18.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us ]
  %.sroa.25447.2684.us = phi ptr [ %.sroa.25447.1690.us, %.preheader.us ], [ %.sroa.25447.12.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us ]
  %.sroa.0434.4683.us = phi ptr [ %.sroa.0434.2689.us, %.preheader.us ], [ %.sroa.0434.18.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit266.us ]
  %i.ap = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv777 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20
  %i.ar = sext i32 %i.aq to i64
  %i.as = load ptr, ptr %1, align 8, !tbaa !21
  %i.at = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.au = mul nsw i64 %i.at, %i.ar
  %i.av = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv781 ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !20 ; 13 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ap, i64 %.sroa.32.0
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !20
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.at, %i.ba
  %i.bc = getelementptr [4 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !20 ; 13 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !22
  %i.bf = load i64, ptr %i.an, align 8, !tbaa !15
  %i.bg = mul nsw i64 %i.bf, %indvars.iv777
  %i.bh = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv781
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !23
  %i.bk = sext i32 %i.ax to i64
  %i.bl = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bm = load i64, ptr %i.g, align 8, !tbaa !15
  %i.bn = mul nsw i64 %i.bm, %i.ao                ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !23
  %i.br = sext i32 %i.bd to i64
  %i.bs = getelementptr [8 x i8], ptr %i.bl, i64 %i.br
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bn
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !23
  %i.bv = fsub double %i.bq, %i.bu
  %i.bw = fmul double %i.bj, %i.bv
  %i.bx = fdiv double %i.bw, 3.000000e+00         ; 7 uses
  %i.by = fneg double %i.bx                       ; 6 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us ], [ 0, %bb.l ] ; 2 uses
  %.sroa.56.5681.us = phi ptr [ %.sroa.56.6.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us ], [ %.sroa.56.4685.us, %bb.l ] ; 22 uses
  %.sroa.25447.3680.us = phi ptr [ %.sroa.25447.4.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us ], [ %.sroa.25447.2684.us, %bb.l ] ; 16 uses
  %.sroa.0434.5679.us = phi ptr [ %.sroa.0434.6.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us ], [ %.sroa.0434.4683.us, %bb.l ] ; 25 uses
  %i.bz = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !20
  %i.cb = sext i32 %i.ca to i64
  %i.cc = load ptr, ptr %1, align 8, !tbaa !21
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.ce = mul nsw i64 %i.cd, %i.cb
  %i.cf = getelementptr [4 x i8], ptr %i.cc, i64 %indvars.iv781 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !20 ; 4 uses
  %i.ci = getelementptr [4 x i8], ptr %i.bz, i64 %.sroa.32.0
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.cd, %i.ck
  %i.cm = getelementptr [4 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !20 ; 4 uses
  %i.co = icmp eq i32 %i.ch, %i.ax
  %i.cp = icmp eq i32 %i.cn, %i.bd
  %or.cond.us = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.us, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = icmp eq i32 %i.cn, %i.ax
  br i1 %i.cq, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = icmp eq i32 %i.ch, %i.bd
  br i1 %i.cr, label %bb.p, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us

bb.p:                                             ; preds = %bb.o
  %.not.i.i235.us = icmp eq ptr %.sroa.25447.3680.us, %.sroa.56.5681.us
  br i1 %.not.i.i235.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.bd, ptr %.sroa.25447.3680.us, align 8, !tbaa !20
  %.sroa.6285.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.25447.3680.us, i64 4
  store i32 %i.cn, ptr %.sroa.6285.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7288.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.25447.3680.us, i64 8
  store double %i.by, ptr %.sroa.7288.0..sroa_idx.us, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.25447.3680.us, i64 16
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit218.us

bb.r:                                             ; preds = %bb.p
  %i.ct = ptrtoint ptr %.sroa.56.5681.us to i64
  %i.cu = ptrtoint ptr %.sroa.0434.5679.us to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775792
  br i1 %i.cw, label %.split.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i236.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i236.us: ; preds = %bb.r
  %i.cx = ashr exact i64 %i.cv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i237.us = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i237.us, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 576460752303423487)
  %i.db = select i1 %i.cz, i64 576460752303423487, i64 %i.da ; 3 uses
  %.not.i.i.i.i238.us = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i.i238.us)
  %i.dc = shl nuw nsw i64 %i.db, 4
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #18
          to label %.noexc249.us unwind label %.loopexit.split.us ; 5 uses

.noexc249.us:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i236.us
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv ; 3 uses
  store i32 %i.bd, ptr %i.de, align 8, !tbaa !20
  %.sroa.6285.0..sroa_idx286.us = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.cn, ptr %.sroa.6285.0..sroa_idx286.us, align 4, !tbaa !20
  %.sroa.7288.0..sroa_idx289.us = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store double %i.by, ptr %.sroa.7288.0..sroa_idx289.us, align 8, !tbaa !23
  %.not10.i.i.i.i.i.i239.us = icmp eq ptr %.sroa.0434.5679.us, %.sroa.56.5681.us
  br i1 %.not10.i.i.i.i.i.i239.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i244.us, label %.lr.ph.i.i.i.i.i.i240.us

.lr.ph.i.i.i.i.i.i240.us:                         ; preds = %.noexc249.us, %.lr.ph.i.i.i.i.i.i240.us
  %.012.i.i.i.i.i.i241.us = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i240.us ], [ %i.dd, %.noexc249.us ] ; 2 uses
  %.0911.i.i.i.i.i.i242.us = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i240.us ], [ %.sroa.0434.5679.us, %.noexc249.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i241.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i242.us, i64 16, i1 false), !tbaa.struct !25, !alias.scope !109
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i242.us, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i241.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i243.us = icmp eq ptr %i.df, %.sroa.56.5681.us
  br i1 %.not.i.i.i.i.i.i243.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i244.us, label %.lr.ph.i.i.i.i.i.i240.us, !llvm.loop !30

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i244.us: ; preds = %.lr.ph.i.i.i.i.i.i240.us, %.noexc249.us
  %.0.lcssa.i.i.i.i.i.i245.us = phi ptr [ %i.dd, %.noexc249.us ], [ %i.dg, %.lr.ph.i.i.i.i.i.i240.us ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i245.us, i64 16
  %.not.i23.i.i.i246.us = icmp eq ptr %.sroa.0434.5679.us, null
  br i1 %.not.i23.i.i.i246.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i247.us, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i244.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0434.5679.us, i64 noundef %i.cv) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i247.us
end_hunk_4
begin_hunk_5_@_ZN3igl33arap_linear_block_spokes_and_rimsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_:bb.a
  %lpad.loopexit547.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit550.split.us:                            ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i252.us
  %lpad.loopexit552.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge693:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %.preheader555
  %.sroa.0434.2.lcssa = phi ptr [ %.sroa.0434.1, %.preheader555 ], [ %.sroa.0434.1, %.preheader.lr.ph ], [ %.sroa.0434.18.us, %._crit_edge.us ] ; 6 uses
  %.sroa.25447.1.lcssa = phi ptr [ %.sroa.0434.1, %.preheader555 ], [ %.sroa.0434.1, %.preheader.lr.ph ], [ %.sroa.25447.12.us, %._crit_edge.us ]
  %.sroa.56.2.lcssa = phi ptr [ %.sroa.56.1, %.preheader555 ], [ %.sroa.56.1, %.preheader.lr.ph ], [ %.sroa.56.18.us, %._crit_edge.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %.sroa.0434.2.lcssa, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %.sroa.25447.1.lcssa, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dead_on_return %4)
          to label %bb.am unwind label %bb.ap

bb.al:                                            ; preds = %bb.am, %bb.k
  %.sroa.0434.3 = phi ptr [ %.sroa.0434.2.lcssa, %bb.am ], [ %.sroa.0434.1, %bb.k ]
  %.sroa.56.3 = phi ptr [ %.sroa.56.2.lcssa, %bb.am ], [ %.sroa.56.1, %bb.k ]
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split723.us:                                     ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc185 unwind label %.loopexit.split-lp546

.noexc185:                                        ; preds = %.split723.us
  unreachable

.split709.us:                                     ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc200 unwind label %.loopexit.split-lp536

.noexc200:                                        ; preds = %.split709.us
  unreachable

.split716.us:                                     ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc216 unwind label %.loopexit.split-lp541

.noexc216:                                        ; preds = %.split716.us
  unreachable

.loopexit.split-lp536:                            ; preds = %.split709.us
  %lpad.loopexit.split-lp538 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp541:                            ; preds = %.split716.us
  %lpad.loopexit.split-lp543 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split702.us:                                     ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc232 unwind label %.loopexit.split-lp531

.noexc232:                                        ; preds = %.split702.us
  unreachable

.loopexit.split-lp531:                            ; preds = %.split702.us
  %lpad.loopexit.split-lp533 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split.us:                                        ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc248 unwind label %.loopexit.split-lp

.noexc248:                                        ; preds = %.split.us
  unreachable

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split730.us:                                     ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc264 unwind label %.loopexit.split-lp551

.noexc264:                                        ; preds = %.split730.us
  unreachable

.loopexit.split-lp546:                            ; preds = %.split723.us
  %lpad.loopexit.split-lp548 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp551:                            ; preds = %.split730.us
  %lpad.loopexit.split-lp553 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge693
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE14makeCompressedEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.hl = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.hl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @free(ptr noundef %.sroa.0.0) #20
  %.not.i.i.i = icmp eq ptr %.sroa.0434.2.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hm = ptrtoint ptr %.sroa.56.2.lcssa to i64
  %i.hn = ptrtoint ptr %.sroa.0434.2.lcssa to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0434.2.lcssa, i64 noundef %i.ho) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.an, %bb.ao
  ret void

bb.ap:                                            ; preds = %._crit_edge693
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit550.split.us, %.loopexit.split-lp551, %.loopexit545.split.us, %.loopexit.split-lp546, %.loopexit.split.us, %.loopexit.split-lp, %.loopexit530.split.us, %.loopexit.split-lp531, %.loopexit540.split.us, %.loopexit.split-lp541, %.loopexit535.split.us, %.loopexit.split-lp536, %bb.ap, %bb.al
  %.sroa.0434.9 = phi ptr [ %.sroa.0434.2.lcssa, %bb.ap ], [ %.sroa.0434.3, %bb.al ], [ %.sroa.0434.6.us, %.loopexit.split-lp546 ], [ %.sroa.0434.5679.us, %.loopexit.split-lp ], [ %.sroa.0434.5679.us, %.loopexit.split-lp531 ], [ %.sroa.0434.5679.us, %.loopexit.split-lp536 ], [ %.sroa.0434.14.us, %.loopexit.split-lp541 ], [ %.sroa.0434.5679.us, %.loopexit535.split.us ], [ %.sroa.0434.14.us, %.loopexit540.split.us ], [ %.sroa.0434.5679.us, %.loopexit530.split.us ], [ %.sroa.0434.5679.us, %.loopexit.split.us ], [ %.sroa.0434.6.us, %.loopexit545.split.us ], [ %.sroa.0434.13.us, %.loopexit550.split.us ], [ %.sroa.0434.13.us, %.loopexit.split-lp551 ]
  %.sroa.56.9 = phi ptr [ %.sroa.56.2.lcssa, %bb.ap ], [ %.sroa.56.3, %bb.al ], [ %.sroa.25447.4.us, %.loopexit.split-lp546 ], [ %.sroa.56.5681.us, %.loopexit.split-lp ], [ %.sroa.56.5681.us, %.loopexit.split-lp531 ], [ %.sroa.56.5681.us, %.loopexit.split-lp536 ], [ %.sroa.56.14.us, %.loopexit.split-lp541 ], [ %.sroa.56.5681.us, %.loopexit535.split.us ], [ %.sroa.56.14.us, %.loopexit540.split.us ], [ %.sroa.56.5681.us, %.loopexit530.split.us ], [ %.sroa.56.5681.us, %.loopexit.split.us ], [ %.sroa.25447.4.us, %.loopexit545.split.us ], [ %.sroa.56.13.us, %.loopexit550.split.us ], [ %.sroa.56.13.us, %.loopexit.split-lp551 ]
  %.pn91.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hp, %bb.ap ], [ %i.hk, %bb.al ], [ %lpad.loopexit.split-lp548, %.loopexit.split-lp546 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp533, %.loopexit.split-lp531 ], [ %lpad.loopexit.split-lp538, %.loopexit.split-lp536 ], [ %lpad.loopexit.split-lp543, %.loopexit.split-lp541 ], [ %lpad.loopexit537.us, %.loopexit535.split.us ], [ %lpad.loopexit542.us, %.loopexit540.split.us ], [ %lpad.loopexit532.us, %.loopexit530.split.us ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit547.us, %.loopexit545.split.us ], [ %lpad.loopexit552.us, %.loopexit550.split.us ], [ %lpad.loopexit.split-lp553, %.loopexit.split-lp551 ]
  %i.hq = load ptr, ptr %5, align 8, !tbaa !22
  call void @free(ptr noundef %i.hq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.f
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.aq ], [ null, %bb.f ]
  %.sroa.0434.10 = phi ptr [ %.sroa.0434.9, %bb.aq ], [ %.sroa.0434.0, %bb.f ] ; 3 uses
  %.sroa.56.10 = phi ptr [ %.sroa.56.9, %bb.aq ], [ %.sroa.56.0, %bb.f ]
  %.pn91.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn, %bb.aq ], [ %i.w, %bb.f ]
  call void @free(ptr noundef %.sroa.0.1) #20
  %.not.i.i.i267 = icmp eq ptr %.sroa.0434.10, null
  br i1 %.not.i.i.i267, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit268, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hr = ptrtoint ptr %.sroa.56.10 to i64
  %i.hs = ptrtoint ptr %.sroa.0434.10 to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0434.10, i64 noundef %i.ht) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit268

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit268: ; preds = %bb.ar, %bb.as
  resume { ptr, i32 } %.pn91.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl26arap_linear_block_elementsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_12SparseMatrixIdLi0EiEEEEvRKT_RKT0_iRT1_(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.h, i64 noundef %i.e)
  switch i32 %i.c, label %bb.k [
    i32 3, label %bb.b
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = mul nsw i64 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.j)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit unwind label %bb.f

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %i.m = mul nsw i64 %i.l, 7                      ; 2 uses
  %i.n = icmp ugt i64 %i.m, 576460752303423487
  br i1 %i.n, label %.invoke, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %.not369 = icmp eq i64 %i.l, 0
  br i1 %.not369, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = mul i64 %i.l, 112
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.0300.8 = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %.sroa.32.8 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.r = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc82 unwind label %bb.f

.noexc82:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store i32 0, ptr %i.u, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 2, i32 0, i32 2>, ptr %i.r, align 4, !tbaa !20
  %i.v = getelementptr i8, ptr %i.r, i64 20
  store i32 1, ptr %i.v, align 4, !tbaa !20
  br label %bb.k

bb.f:                                             ; preds = %.invoke, %bb.i, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101, %bb.g, %bb.d, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %bb.b
  %.sroa.0300.0 = phi ptr [ null, %bb.g ], [ %.sroa.0300.8, %bb.d ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.invoke ], [ %.sroa.0300.9, %bb.i ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101 ]
  %.sroa.32.0 = phi ptr [ null, %bb.g ], [ %.sroa.32.8, %bb.d ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ null, %.invoke ], [ %.sroa.32.9, %bb.i ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101 ]
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.g, align 8, !tbaa !15
  %i.y = mul nsw i64 %i.x, 17
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.y)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit100 unwind label %bb.f

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit100: ; preds = %bb.g
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !15  ; 3 uses
  %i.ab = mul nsw i64 %i.aa, 17                   ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 576460752303423487
  br i1 %i.ac, label %.invoke, label %bb.h

.invoke:                                          ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit100
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit100
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101: ; preds = %bb.h
  %i.ad = mul i64 %i.aa, 272
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #18
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109 unwind label %bb.f ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i101
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ab
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112: ; preds = %bb.h, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109
  %.sroa.0300.9 = phi ptr [ %i.ae, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109 ], [ null, %bb.h ] ; 2 uses
  %.sroa.32.9 = phi ptr [ %i.af, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i109 ], [ null, %bb.h ] ; 2 uses
  %i.ag = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #19 ; 5 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc115 unwind label %bb.f

.noexc115:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit112
  %i.aj = getelementptr i8, ptr %i.ag, i64 32
  store <4 x i32> <i32 1, i32 2, i32 0, i32 3>, ptr %i.ag, align 4, !tbaa !20
  %i.ak = getelementptr i8, ptr %i.ag, i64 16
  store <4 x i32> <i32 3, i32 3, i32 2, i32 0>, ptr %i.ak, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 0, i32 1, i32 2>, ptr %i.aj, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.r, %bb.e ], [ %i.ag, %bb.j ] ; 3 uses
  %i.al = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ true, %bb.j ]
  %.sroa.30.0 = phi i64 [ 0, %bb.a ], [ 3, %bb.e ], [ 6, %bb.j ] ; 2 uses
  %.sroa.0300.1 = phi ptr [ null, %bb.a ], [ %.sroa.0300.8, %bb.e ], [ %.sroa.0300.9, %bb.j ] ; 7 uses
  %.sroa.32.1 = phi ptr [ null, %bb.a ], [ %.sroa.32.8, %bb.e ], [ %.sroa.32.9, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.preheader375 unwind label %bb.s

.preheader375:                                    ; preds = %bb.k
  %i.am = icmp sgt i32 %i.f, 0
  br i1 %i.am, label %.preheader.lr.ph, label %._crit_edge417

.preheader.lr.ph:                                 ; preds = %.preheader375
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = sext i32 %2 to i64
  br i1 %i.al, label %.preheader.us.preheader, label %._crit_edge417

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.30.0, i64 1)
  %wide.trip.count = and i64 %i.e, 2147483647
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv450 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next451, %._crit_edge.us ] ; 7 uses
  %.sroa.32.2415.us = phi ptr [ %.sroa.32.1, %.preheader.us.preheader ], [ %.sroa.32.11.us, %._crit_edge.us ]
  %.sroa.17.1414.us = phi ptr [ %.sroa.0300.1, %.preheader.us.preheader ], [ %.sroa.17.6.us, %._crit_edge.us ]
  %.sroa.0300.2413.us = phi ptr [ %.sroa.0300.1, %.preheader.us.preheader ], [ %.sroa.0300.11.us, %._crit_edge.us ]
  %i.ap = trunc nuw nsw i64 %indvars.iv450 to i32
  %i.aq = trunc nuw nsw i64 %indvars.iv450 to i32
  %i.ar = trunc nuw nsw i64 %indvars.iv450 to i32
  %i.as = trunc nuw nsw i64 %indvars.iv450 to i32
  br label %bb.l

bb.l:                                             ; preds = %.preheader.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us ] ; 3 uses
  %.sroa.32.4409.us = phi ptr [ %.sroa.32.2415.us, %.preheader.us ], [ %.sroa.32.11.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us ] ; 7 uses
  %.sroa.17.2408.us = phi ptr [ %.sroa.17.1414.us, %.preheader.us ], [ %.sroa.17.6.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us ] ; 5 uses
  %.sroa.0300.4407.us = phi ptr [ %.sroa.0300.2413.us, %.preheader.us ], [ %.sroa.0300.11.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us ] ; 8 uses
  %i.at = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !20
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %1, align 8, !tbaa !21
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = getelementptr [4 x i8], ptr %i.aw, i64 %indvars.iv450 ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !20 ; 3 uses
  %i.bc = getelementptr [4 x i8], ptr %i.at, i64 %.sroa.30.0
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !20
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.ax, %i.be
  %i.bg = getelementptr [4 x i8], ptr %i.az, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !20 ; 3 uses
  %i.bi = load ptr, ptr %5, align 8, !tbaa !22
  %i.bj = load i64, ptr %i.an, align 8, !tbaa !15
  %i.bk = mul nsw i64 %i.bj, %indvars.iv
  %i.bl = getelementptr [8 x i8], ptr %i.bi, i64 %indvars.iv450
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !23
  %i.bo = sext i32 %i.bb to i64
  %i.bp = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bq = load i64, ptr %i.g, align 8, !tbaa !15
  %i.br = mul nsw i64 %i.bq, %i.ao                ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.bp, i64 %i.bo
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !23
  %i.bv = sext i32 %i.bh to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bp, i64 %i.bv
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.br
  %i.by = load double, ptr %i.bx, align 8, !tbaa !23
  %i.bz = fsub double %i.bu, %i.by
  %i.ca = fmul double %i.bn, %i.bz                ; 3 uses
  %.not.i.i162.us = icmp eq ptr %.sroa.17.2408.us, %.sroa.32.4409.us
  br i1 %.not.i.i162.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.bb, ptr %.sroa.17.2408.us, align 8, !tbaa !20
  %.sroa.6191.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.17.2408.us, i64 4
  store i32 %i.ap, ptr %.sroa.6191.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7194.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.17.2408.us, i64 8
  store double %i.ca, ptr %.sroa.7194.0..sroa_idx.us, align 8, !tbaa !23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us

bb.n:                                             ; preds = %bb.l
  %i.cb = ptrtoint ptr %.sroa.32.4409.us to i64
  %i.cc = ptrtoint ptr %.sroa.0300.4407.us to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775792
  br i1 %i.ce, label %.split.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.n
  %i.cf = ashr exact i64 %i.cd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 576460752303423487)
  %i.cj = select i1 %i.ch, i64 576460752303423487, i64 %i.ci ; 3 uses
  %.not.i.i.i.i163.us = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i163.us)
  %i.ck = shl nuw nsw i64 %i.cj, 4
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #18
          to label %.noexc165.us unwind label %.loopexit.split.us ; 5 uses

.noexc165.us:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd ; 3 uses
  store i32 %i.bb, ptr %i.cm, align 8, !tbaa !20
  %.sroa.6191.0..sroa_idx192.us = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.aq, ptr %.sroa.6191.0..sroa_idx192.us, align 4, !tbaa !20
  %.sroa.7194.0..sroa_idx195.us = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store double %i.ca, ptr %.sroa.7194.0..sroa_idx195.us, align 8, !tbaa !23
  %.not10.i.i.i.i.i.i.us = icmp eq ptr %.sroa.0300.4407.us, %.sroa.32.4409.us
  br i1 %.not10.i.i.i.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.noexc165.us, %.lr.ph.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.us = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.us ], [ %i.cl, %.noexc165.us ] ; 2 uses
  %.0911.i.i.i.i.i.i.us = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.us ], [ %.sroa.0300.4407.us, %.noexc165.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.us, i64 16, i1 false), !tbaa.struct !25, !alias.scope !138
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.cn, %.sroa.32.4409.us
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !30

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.us, %.noexc165.us
  %.0.lcssa.i.i.i.i.i.i.us = phi ptr [ %i.cl, %.noexc165.us ], [ %i.co, %.lr.ph.i.i.i.i.i.i.us ]
  %.not.i23.i.i.i.us = icmp eq ptr %.sroa.0300.4407.us, null
  br i1 %.not.i23.i.i.i.us, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0300.4407.us, i64 noundef %i.cd) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us: ; preds = %bb.o, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.us
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cj
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us, %bb.m
  %.sroa.0300.10.us = phi ptr [ %i.cl, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.0300.4407.us, %bb.m ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn.us = phi ptr [ %.0.lcssa.i.i.i.i.i.i.us, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.17.2408.us, %bb.m ] ; 6 uses
  %.sroa.32.10.us = phi ptr [ %i.cp, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.us ], [ %.sroa.32.4409.us, %bb.m ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i.pn.us501 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn.us to i64
  %.sroa.17.5.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 16 ; 2 uses
  %i.cq = fneg double %i.ca                       ; 2 uses
  %.not.i.i166.us = icmp eq ptr %.sroa.17.5.us, %.sroa.32.10.us
  br i1 %.not.i.i166.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us
  store i32 %i.bh, ptr %.sroa.17.5.us, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 20
  store i32 %i.ar, ptr %.sroa.6.0..sroa_idx.us, align 4, !tbaa !20
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 24
  store double %i.cq, ptr %.sroa.7.0..sroa_idx.us, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.us, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit181.us

bb.q:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit.us
  %i.cs = ptrtoint ptr %.sroa.32.10.us to i64
  %i.ct = ptrtoint ptr %.sroa.0300.10.us to i64   ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775792
  br i1 %i.cv, label %.split426.us, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i167.us

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i167.us: ; preds = %bb.q
  %i.cw = ashr exact i64 %i.cu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i168.us = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i.i168.us, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
end_hunk_5
