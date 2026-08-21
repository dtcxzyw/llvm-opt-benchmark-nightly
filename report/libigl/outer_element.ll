Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/outer_element?download=true
inline.NumInlined: 1247
inline.NumDeleted: 684
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64 }
%"class.Eigen::Matrix.51" = type { %"class.Eigen::PlainObjectBase.52" }
%"class.Eigen::PlainObjectBase.52" = type { %"class.Eigen::DenseStorage.59" }
%"class.Eigen::DenseStorage.59" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [3 x double] }
%class.anon.67 = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.anon.69 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.182 = type { i8 }
%class.anon.184 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.231 = type { i8 }
%class.anon.233 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

$_ZN3igl11outer_facetIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERT3_Rb = comdat any

$_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IlLin1ELi1ELi0ELin1ELi1EEElS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl11outer_facetIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES3_S4_mEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERT3_Rb = comdat any

$_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES4_lNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl11outer_facetIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERT3_Rb = comdat any

$_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEElNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERT2_SL_RNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZN3igl11outer_facetIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERT3_Rb = comdat any

$_ZN3igl12outer_vertexIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IlLin1ELi1ELi0ELin1ELi1EEElS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_RNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IlLin1ELi1ELi0ELin1ELi1EEElS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EEENKUlllE_clEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN3igl12outer_vertexIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES4_lNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_RNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES4_lNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EEENKUlllE_clEll = comdat any

$_ZN3igl12outer_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEElNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERT2_RNS1_15PlainObjectBaseIT3_EE = comdat any

$_ZZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEElNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERT2_SL_RNS1_15PlainObjectBaseIT3_EEENKUlllE_clEll = comdat any

@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl11outer_facetIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_NS2_IlLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERT3_Rb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IlLin1ELi1ELi0ELin1ELi1EEElS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !15
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.f = trunc i64 %.1 to i32
  %i.g = fcmp olt double %.141, 0.000000e+00
  %i.h = zext i1 %i.g to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.040.lcssa = phi i8 [ 0, %bb.b ], [ %i.h, %._crit_edge.loopexit ]
  %.023.lcssa = phi i32 [ -1, %bb.b ], [ %i.f, %._crit_edge.loopexit ]
  store i32 %.023.lcssa, ptr %4, align 4, !tbaa !18
  store i8 %.040.lcssa, ptr %5, align 1, !tbaa !19
  call void @free(ptr noundef %.pre) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.i

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.046 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.k ] ; 2 uses
  %.02345 = phi i64 [ -1, %.lr.ph ], [ %.1, %bb.k ] ; 5 uses
  %.04044 = phi double [ 0.000000e+00, %.lr.ph ], [ %.141, %bb.k ] ; 7 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.046
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21   ; 7 uses
  %i.m = getelementptr [8 x i8], ptr %i.e, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !22 ; 8 uses
  %i.o = icmp eq i64 %.02345, -1
  br i1 %i.o, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.i = call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp oge double %.04044, 0.000000e+00
  %.0.i32 = call double @llvm.fabs.f64(double %.04044)
  %i.q = fcmp ogt double %.0.i, %.0.i32
  br i1 %i.q, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fneg double %.04044
  %i.s = fcmp oeq double %i.n, %i.r
  %i.t = fcmp ogt double %i.n, 0.000000e+00
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = fcmp oeq double %i.n, %.04044
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ult i64 %.02345, %i.l
  %or.cond42 = and i1 %i.p, %i.v
  br i1 %or.cond42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = fcmp olt double %.04044, 0.000000e+00
  %i.x = icmp ugt i64 %.02345, %i.l
  %or.cond43 = and i1 %i.w, %i.x
  br i1 %or.cond43, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.j, %bb.i
  %.141 = phi double [ %.04044, %bb.g ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.j ], [ %i.n, %bb.f ], [ %.04044, %bb.i ] ; 2 uses
  %.1 = phi i64 [ %.02345, %bb.g ], [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.j ], [ %i.l, %bb.f ], [ %.02345, %bb.i ] ; 2 uses
  %i.y = add nuw i64 %.046, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !24
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IlLin1ELi1ELi0ELin1ELi1EEElS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %7 = alloca %"class.Eigen::Matrix.51", align 8  ; 7 uses
  %8 = alloca %class.anon.67, align 1             ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %class.anon.69, align 8            ; 13 uses
  %.sroa.046 = alloca [3 x i32], align 4          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl12outer_vertexIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IlLin1ELi1ELi0ELin1ELi1EEElS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !15, !noalias !26
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.f ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = load double, ptr %i.h, align 8, !tbaa !22
  store double %i.k, ptr %7, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.j
  %i.n = load double, ptr %i.m, align 8, !tbaa !22
  store double %i.n, ptr %i.l, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.j, 4
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.q = load double, ptr %i.p, align 8, !tbaa !22
  store double %i.q, ptr %i.o, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i64 9223372036854775807, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i8 0, ptr %i.e, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %i.d, ptr %10, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %0, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.e, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %7, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %8, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.b, ptr %i.w, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %i.c, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 8
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !21
  %.pre57 = load i64, ptr %i.d, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre58 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41
  %.pre59 = load ptr, ptr %9, align 8, !tbaa !43
  %i.ad = ptrtoint ptr %.pre58 to i64
  %i.ae = ptrtoint ptr %.pre59 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ah = phi i64 [ %.pre57, %._crit_edge.loopexit ], [ 9223372036854775807, %bb.b ]
  %i.ai = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ]
  %i.aj = phi i64 [ %i.ag, %._crit_edge.loopexit ], [ 0, %bb.b ]
  store i64 %i.ai, ptr %3, align 8, !tbaa !21
  store i64 %i.ah, ptr %4, align 8, !tbaa !21
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.aj, i64 noundef 1)
          to label %bb.k unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.02756 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %bb.i ] ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !14
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.02756
  %i.an = load i64, ptr %i.am, align 8, !tbaa !21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.046)
  %i.ao = load ptr, ptr %1, align 8, !tbaa !44, !noalias !47
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.an ; 3 uses
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !18 ; 2 uses
  store i32 %i.ar, ptr %.sroa.046, align 4, !tbaa !18
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18 ; 2 uses
  store i32 %i.at, ptr %i.ab, align 4, !tbaa !18
  %.idx.i.i.i.i.i.i.i.i.i.i42 = shl nsw i64 %i.aq, 3
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i.i.i.i.i42
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18 ; 2 uses
  store i32 %i.av, ptr %i.ac, align 4, !tbaa !18
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.ax = sext i32 %i.ar to i64
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = sext i32 %i.at to i64
  %i.ba = icmp eq i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = sext i32 %i.av to i64
  %i.bc = icmp eq i64 %i.aw, %i.bb
  %.fr = freeze i1 %i.bc
  %..i = select i1 %.fr, i64 2, i64 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ], [ %..i, %bb.f ] ; 4 uses
  %.cmp.inv = icmp sgt i64 %.0.i, 1
  %.v = select i1 %.cmp.inv, i64 4611686018427387902, i64 1
  %11 = add nsw i64 %.0.i, %.v
  %.sroa.046.0..sroa_stride = shl i64 %11, 2
  %.v.sroa.sel = getelementptr inbounds i8, ptr %.sroa.046, i64 %.sroa.046.0..sroa_stride
  %i.bd = load i32, ptr %.v.sroa.sel, align 4, !tbaa !18
  %.cmp55 = icmp slt i64 %.0.i, 1
  %.v73 = select i1 %.cmp55, i64 2, i64 4611686018427387903
  %12 = add nsw i64 %.0.i, %.v73
  %13 = sext i32 %i.bd to i64
  %.sroa.046.0..sroa_stride47 = shl i64 %12, 2
  %.sroa.046.0..sroa_idx49 = getelementptr inbounds i8, ptr %.sroa.046, i64 %.sroa.046.0..sroa_stride47
  %i.be = load i32, ptr %.sroa.046.0..sroa_idx49, align 4, !tbaa !18
  invoke void @_ZZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IlLin1ELi1ELi0ELin1ELi1EEElS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EEENKUlllE_clEll(ptr noundef nonnull align 8 dereferenceable(64) %10, i64 noundef %13, i64 noundef %i.an)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bf = sext i32 %i.be to i64
  invoke void @_ZZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IlLin1ELi1ELi0ELin1ELi1EEElS5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EEENKUlllE_clEll(ptr noundef nonnull align 8 dereferenceable(64) %10, i64 noundef %i.bf, i64 noundef %i.an)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.046)
  %i.bg = add nuw i64 %.02756, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.z
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !51

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.046)
  br label %bb.q

bb.k:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load ptr, ptr %9, align 8, !tbaa !30    ; 3 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !30
  %i.bl = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, 8
  br i1 %i.bp, label %bb.l, label %bb.m, !prof !52

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bl, ptr align 8 %i.bj, i64 %i.bo, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.k
  %i.bq = icmp eq i64 %i.bo, 8
  br i1 %i.bq, label %bb.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.m
  %i.br = load i64, ptr %i.bj, align 8, !tbaa !21
  store i64 %i.br, ptr %i.bl, align 8, !tbaa !21
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.bs = load ptr, ptr %9, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !53
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #16
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.by = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.by) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.p:                                             ; preds = %._crit_edge
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.p ], [ %i.bh, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.ca = load ptr, ptr %9, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIlSaIlEED2Ev.exit44, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #16
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit44

_ZNSt6vectorIlSaIlEED2Ev.exit44:                  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit44, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.c ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit44 ]
  %i.cg = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.cg) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl11outer_facetIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES3_S4_mEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERT3_Rb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES4_lNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !56
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.h = fcmp olt double %.141, 0.000000e+00
  %i.i = zext i1 %i.h to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.040.lcssa = phi i8 [ 0, %bb.b ], [ %i.i, %._crit_edge.loopexit ]
  %.023.lcssa = phi i64 [ -1, %bb.b ], [ %.1, %._crit_edge.loopexit ]
  store i64 %.023.lcssa, ptr %4, align 8, !tbaa !21
  store i8 %.040.lcssa, ptr %5, align 1, !tbaa !19
  call void @free(ptr noundef %.pre) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.046 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.k ] ; 2 uses
  %.02345 = phi i64 [ -1, %.lr.ph ], [ %.1, %bb.k ] ; 5 uses
  %.04044 = phi double [ 0.000000e+00, %.lr.ph ], [ %.141, %bb.k ] ; 7 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.046
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21   ; 7 uses
  %i.n = mul nsw i64 %i.g, %i.m
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !22 ; 8 uses
  %i.q = icmp eq i64 %.02345, -1
  br i1 %i.q, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.i = call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp oge double %.04044, 0.000000e+00
  %.0.i32 = call double @llvm.fabs.f64(double %.04044)
  %i.s = fcmp ogt double %.0.i, %.0.i32
  br i1 %i.s, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = fneg double %.04044
  %i.u = fcmp oeq double %i.p, %i.t
  %i.v = fcmp ogt double %i.p, 0.000000e+00
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = fcmp oeq double %i.p, %.04044
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ult i64 %.02345, %i.m
  %or.cond42 = and i1 %i.r, %i.x
  br i1 %or.cond42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = fcmp olt double %.04044, 0.000000e+00
  %i.z = icmp ugt i64 %.02345, %i.m
  %or.cond43 = and i1 %i.y, %i.z
  br i1 %or.cond43, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.j, %bb.i
  %.141 = phi double [ %.04044, %bb.g ], [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.j ], [ %i.p, %bb.f ], [ %.04044, %bb.i ] ; 2 uses
  %.1 = phi i64 [ %.02345, %bb.g ], [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.m, %bb.j ], [ %i.m, %bb.f ], [ %.02345, %bb.i ] ; 2 uses
  %i.aa = add nuw i64 %.046, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !57
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES4_lNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %7 = alloca %"class.Eigen::Matrix.51", align 16 ; 6 uses
  %8 = alloca %class.anon.182, align 1            ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %class.anon.184, align 8           ; 13 uses
  %.sroa.045 = alloca [3 x i32], align 4          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl12outer_vertexIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES4_lNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !54, !noalias !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !56, !noalias !58
  %i.j = mul nsw i64 %i.i, %i.f
  %i.k = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load <2 x double>, ptr %i.k, align 1, !tbaa !61
  store <2 x double> %i.l, ptr %7, align 16, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = getelementptr i8, ptr %i.k, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !22
  store double %i.o, ptr %i.m, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i64 9223372036854775807, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i8 0, ptr %i.e, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %i.d, ptr %10, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %0, ptr %i.q, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.e, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %7, ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %8, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.b, ptr %i.u, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %i.c, ptr %i.v, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.045, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.045, i64 8
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !21
  %.pre57 = load i64, ptr %i.d, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre58 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41
  %.pre59 = load ptr, ptr %9, align 8, !tbaa !43
  %i.ab = ptrtoint ptr %.pre58 to i64
  %i.ac = ptrtoint ptr %.pre59 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.af = phi i64 [ %.pre57, %._crit_edge.loopexit ], [ 9223372036854775807, %bb.b ]
  %i.ag = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ]
  %i.ah = phi i64 [ %i.ae, %._crit_edge.loopexit ], [ 0, %bb.b ]
  store i64 %i.ag, ptr %3, align 8, !tbaa !21
  store i64 %i.af, ptr %4, align 8, !tbaa !21
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.ah, i64 noundef 1)
          to label %bb.k unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.02756 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %bb.i ] ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !14
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.02756
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.045)
  %i.am = load ptr, ptr %1, align 8, !tbaa !64, !noalias !66
  %i.an = load i64, ptr %i.y, align 8, !tbaa !69, !noalias !66
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18 ; 2 uses
  store i32 %i.aq, ptr %.sroa.045, align 4, !tbaa !18
  %i.ar = getelementptr i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18 ; 2 uses
  store i32 %i.as, ptr %i.z, align 4, !tbaa !18
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !18 ; 2 uses
  store i32 %i.au, ptr %i.aa, align 4, !tbaa !18
  %i.av = load i64, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.aw = sext i32 %i.aq to i64
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = sext i32 %i.as to i64
  %i.az = icmp eq i64 %i.av, %i.ay
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = sext i32 %i.au to i64
  %i.bb = icmp eq i64 %i.av, %i.ba
  %.fr = freeze i1 %i.bb
  %..i = select i1 %.fr, i64 2, i64 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ], [ %..i, %bb.f ] ; 4 uses
  %.cmp.inv = icmp sgt i64 %.0.i, 1
  %.v = select i1 %.cmp.inv, i64 4611686018427387902, i64 1
  %11 = add nsw i64 %.0.i, %.v
  %.sroa.045.0..sroa_stride = shl i64 %11, 2
  %.v.sroa.sel = getelementptr inbounds i8, ptr %.sroa.045, i64 %.sroa.045.0..sroa_stride
  %i.bc = load i32, ptr %.v.sroa.sel, align 4, !tbaa !18
  %.cmp55 = icmp slt i64 %.0.i, 1
  %.v73 = select i1 %.cmp55, i64 2, i64 4611686018427387903
  %12 = add nsw i64 %.0.i, %.v73
  %13 = sext i32 %i.bc to i64
  %.sroa.045.0..sroa_stride46 = shl i64 %12, 2
  %.sroa.045.0..sroa_idx48 = getelementptr inbounds i8, ptr %.sroa.045, i64 %.sroa.045.0..sroa_stride46
  %i.bd = load i32, ptr %.sroa.045.0..sroa_idx48, align 4, !tbaa !18
  invoke void @_ZZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES4_lNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EEENKUlllE_clEll(ptr noundef nonnull align 8 dereferenceable(64) %10, i64 noundef %13, i64 noundef %i.al)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.be = sext i32 %i.bd to i64
  invoke void @_ZZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi1ELin1ELin1EEES4_lNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERT2_SK_RNS1_15PlainObjectBaseIT3_EEENKUlllE_clEll(ptr noundef nonnull align 8 dereferenceable(64) %10, i64 noundef %i.be, i64 noundef %i.al)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045)
  %i.bf = add nuw i64 %.02756, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.x
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !70

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045)
  br label %bb.q

bb.k:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bi = load ptr, ptr %9, align 8, !tbaa !30    ; 3 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !30
  %i.bk = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, 8
  br i1 %i.bo, label %bb.l, label %bb.m, !prof !52

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.bi, i64 %i.bn, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = icmp eq i64 %i.bn, 8
  br i1 %i.bp, label %bb.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.m
  %i.bq = load i64, ptr %i.bi, align 8, !tbaa !21
  store i64 %i.bq, ptr %i.bk, align 8, !tbaa !21
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.br = load ptr, ptr %9, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #16
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.bx = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.bx) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.p:                                             ; preds = %._crit_edge
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.by, %bb.p ], [ %i.bg, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.bz = load ptr, ptr %9, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIlSaIlEED2Ev.exit43, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !53
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #16
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit43

_ZNSt6vectorIlSaIlEED2Ev.exit43:                  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit43, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.c ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit43 ]
  %i.cf = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.cf) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl11outer_facetIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERT3_Rb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEElNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERT2_SL_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !15
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.f = trunc i64 %.1 to i32
  %i.g = fcmp olt double %.141, 0.000000e+00
  %i.h = zext i1 %i.g to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.040.lcssa = phi i8 [ 0, %bb.b ], [ %i.h, %._crit_edge.loopexit ]
  %.023.lcssa = phi i32 [ -1, %bb.b ], [ %i.f, %._crit_edge.loopexit ]
  store i32 %.023.lcssa, ptr %4, align 4, !tbaa !18
  store i8 %.040.lcssa, ptr %5, align 1, !tbaa !19
  call void @free(ptr noundef %.pre) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.i

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.046 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.k ] ; 2 uses
  %.02345 = phi i64 [ -1, %.lr.ph ], [ %.1, %bb.k ] ; 5 uses
  %.04044 = phi double [ 0.000000e+00, %.lr.ph ], [ %.141, %bb.k ] ; 7 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.046
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21   ; 7 uses
  %i.m = getelementptr [8 x i8], ptr %i.e, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !22 ; 8 uses
  %i.o = icmp eq i64 %.02345, -1
  br i1 %i.o, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.i = call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp oge double %.04044, 0.000000e+00
  %.0.i32 = call double @llvm.fabs.f64(double %.04044)
  %i.q = fcmp ogt double %.0.i, %.0.i32
  br i1 %i.q, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fneg double %.04044
  %i.s = fcmp oeq double %i.n, %i.r
  %i.t = fcmp ogt double %i.n, 0.000000e+00
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = fcmp oeq double %i.n, %.04044
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ult i64 %.02345, %i.l
  %or.cond42 = and i1 %i.p, %i.v
  br i1 %or.cond42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = fcmp olt double %.04044, 0.000000e+00
  %i.x = icmp ugt i64 %.02345, %i.l
  %or.cond43 = and i1 %i.w, %i.x
  br i1 %or.cond43, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.j, %bb.i
  %.141 = phi double [ %.04044, %bb.g ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.j ], [ %i.n, %bb.f ], [ %.04044, %bb.i ] ; 2 uses
  %.1 = phi i64 [ %.02345, %bb.g ], [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.j ], [ %i.l, %bb.f ], [ %.02345, %bb.i ] ; 2 uses
  %i.y = add nuw i64 %.046, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !71
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEElNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERT2_SL_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %7 = alloca %"class.Eigen::Matrix.51", align 8  ; 7 uses
  %8 = alloca %class.anon.231, align 1            ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %class.anon.233, align 8           ; 13 uses
  %.sroa.046 = alloca [3 x i32], align 4          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl12outer_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEElNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERT2_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !72, !noalias !74
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.f ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77   ; 2 uses
  %i.k = load double, ptr %i.h, align 8, !tbaa !22
  store double %i.k, ptr %7, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.j
  %i.n = load double, ptr %i.m, align 8, !tbaa !22
  store double %i.n, ptr %i.l, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.j, 4
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.q = load double, ptr %i.p, align 8, !tbaa !22
  store double %i.q, ptr %i.o, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i64 9223372036854775807, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i8 0, ptr %i.e, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %i.d, ptr %10, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %0, ptr %i.s, align 8, !tbaa !78
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.e, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %7, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %8, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.b, ptr %i.w, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %i.c, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 8
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !21
  %.pre58 = load i64, ptr %i.d, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre59 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41
  %.pre60 = load ptr, ptr %9, align 8, !tbaa !43
  %i.ad = ptrtoint ptr %.pre59 to i64
  %i.ae = ptrtoint ptr %.pre60 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ah = phi i64 [ %.pre58, %._crit_edge.loopexit ], [ 9223372036854775807, %bb.b ]
  %i.ai = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ]
  %i.aj = phi i64 [ %i.ag, %._crit_edge.loopexit ], [ 0, %bb.b ]
  store i64 %i.ai, ptr %3, align 8, !tbaa !21
  store i64 %i.ah, ptr %4, align 8, !tbaa !21
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.aj, i64 noundef 1)
          to label %bb.k unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.02757 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %bb.i ] ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !14
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.02757
  %i.an = load i64, ptr %i.am, align 8, !tbaa !21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.046)
  %i.ao = load ptr, ptr %1, align 8, !tbaa !80, !noalias !82
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.an ; 3 uses
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !85 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !18 ; 2 uses
  store i32 %i.ar, ptr %.sroa.046, align 4, !tbaa !18
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18 ; 2 uses
  store i32 %i.at, ptr %i.ab, align 4, !tbaa !18
  %.idx.i.i.i.i.i.i.i.i.i.i42 = shl nsw i64 %i.aq, 3
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i.i.i.i.i42
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18 ; 2 uses
  store i32 %i.av, ptr %i.ac, align 4, !tbaa !18
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.ax = sext i32 %i.ar to i64
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = sext i32 %i.at to i64
  %i.ba = icmp eq i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = sext i32 %i.av to i64
  %i.bc = icmp eq i64 %i.aw, %i.bb
  %.fr = freeze i1 %i.bc
  %..i = select i1 %.fr, i64 2, i64 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ], [ %..i, %bb.f ] ; 4 uses
  %.cmp.inv = icmp sgt i64 %.0.i, 1
  %.v = select i1 %.cmp.inv, i64 4611686018427387902, i64 1
  %11 = add nsw i64 %.0.i, %.v
  %.sroa.046.0..sroa_stride = shl i64 %11, 2
  %.v.sroa.sel = getelementptr inbounds i8, ptr %.sroa.046, i64 %.sroa.046.0..sroa_stride
  %i.bd = load i32, ptr %.v.sroa.sel, align 4, !tbaa !18
  %.cmp56 = icmp slt i64 %.0.i, 1
  %.v74 = select i1 %.cmp56, i64 2, i64 4611686018427387903
  %12 = add nsw i64 %.0.i, %.v74
  %13 = sext i32 %i.bd to i64
  %.sroa.046.0..sroa_stride47 = shl i64 %12, 2
  %.sroa.046.0..sroa_idx49 = getelementptr inbounds i8, ptr %.sroa.046, i64 %.sroa.046.0..sroa_stride47
  %i.be = load i32, ptr %.sroa.046.0..sroa_idx49, align 4, !tbaa !18
  invoke void @_ZZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEElNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERT2_SL_RNS1_15PlainObjectBaseIT3_EEENKUlllE_clEll(ptr noundef nonnull align 8 dereferenceable(64) %10, i64 noundef %13, i64 noundef %i.an)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bf = sext i32 %i.be to i64
  invoke void @_ZZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEElNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERT2_SL_RNS1_15PlainObjectBaseIT3_EEENKUlllE_clEll(ptr noundef nonnull align 8 dereferenceable(64) %10, i64 noundef %i.bf, i64 noundef %i.an)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.046)
  %i.bg = add nuw i64 %.02757, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.z
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !86

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.046)
  br label %bb.q

bb.k:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load ptr, ptr %9, align 8, !tbaa !30    ; 3 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !30
  %i.bl = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, 8
  br i1 %i.bp, label %bb.l, label %bb.m, !prof !52

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bl, ptr align 8 %i.bj, i64 %i.bo, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.k
  %i.bq = icmp eq i64 %i.bo, 8
  br i1 %i.bq, label %bb.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.m
  %i.br = load i64, ptr %i.bj, align 8, !tbaa !21
  store i64 %i.br, ptr %i.bl, align 8, !tbaa !21
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.bs = load ptr, ptr %9, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !53
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #16
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_ET0_T_S8_S7_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.by = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.by) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.p:                                             ; preds = %._crit_edge
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.p ], [ %i.bh, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.ca = load ptr, ptr %9, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIlSaIlEED2Ev.exit44, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #16
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit44

_ZNSt6vectorIlSaIlEED2Ev.exit44:                  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit44, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.c ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit44 ]
  %i.cg = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.cg) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl11outer_facetIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERT3_Rb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10outer_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEElNS2_IlLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERT2_SL_RNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !72
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.f = trunc i64 %.1 to i32
  %i.g = fcmp olt double %.141, 0.000000e+00
  %i.h = zext i1 %i.g to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.040.lcssa = phi i8 [ 0, %bb.b ], [ %i.h, %._crit_edge.loopexit ]
  %.023.lcssa = phi i32 [ -1, %bb.b ], [ %i.f, %._crit_edge.loopexit ]
  store i32 %.023.lcssa, ptr %4, align 4, !tbaa !18
  store i8 %.040.lcssa, ptr %5, align 1, !tbaa !19
  call void @free(ptr noundef %.pre) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %6, align 8, !tbaa !14
  call void @free(ptr noundef %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.i

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.046 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.k ] ; 2 uses
  %.02345 = phi i64 [ -1, %.lr.ph ], [ %.1, %bb.k ] ; 5 uses
  %.04044 = phi double [ 0.000000e+00, %.lr.ph ], [ %.141, %bb.k ] ; 7 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.pre, i64 %.046
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21   ; 7 uses
  %i.m = getelementptr [8 x i8], ptr %i.e, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !22 ; 8 uses
  %i.o = icmp eq i64 %.02345, -1
  br i1 %i.o, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.i = call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp oge double %.04044, 0.000000e+00
  %.0.i32 = call double @llvm.fabs.f64(double %.04044)
  %i.q = fcmp ogt double %.0.i, %.0.i32
  br i1 %i.q, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fneg double %.04044
  %i.s = fcmp oeq double %i.n, %i.r
  %i.t = fcmp ogt double %i.n, 0.000000e+00
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = fcmp oeq double %i.n, %.04044
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ult i64 %.02345, %i.l
  %or.cond42 = and i1 %i.p, %i.v
  br i1 %or.cond42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = fcmp olt double %.04044, 0.000000e+00
  %i.x = icmp ugt i64 %.02345, %i.l
  %or.cond43 = and i1 %i.w, %i.x
  br i1 %or.cond43, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.j, %bb.i
  %.141 = phi double [ %.04044, %bb.g ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.j ], [ %i.n, %bb.f ], [ %.04044, %bb.i ] ; 2 uses
  %.1 = phi i64 [ %.02345, %bb.g ], [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.j ], [ %i.l, %bb.f ], [ %.02345, %bb.i ] ; 2 uses
  %i.y = add nuw i64 %.046, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !87
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

end_hunk_0
