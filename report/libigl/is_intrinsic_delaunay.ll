Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/is_intrinsic_delaunay?download=true
inline.NumInlined: 307
inline.NumDeleted: 197
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix.28" = type { %"class.Eigen::PlainObjectBase.29" }
%"class.Eigen::PlainObjectBase.29" = type { %"class.Eigen::DenseStorage.36" }
%"class.Eigen::DenseStorage.36" = type { ptr, i64 }
%"class.Eigen::Matrix.37" = type { %"class.Eigen::PlainObjectBase.38" }
%"class.Eigen::PlainObjectBase.38" = type { %"class.Eigen::DenseStorage.45" }
%"class.Eigen::DenseStorage.45" = type { ptr, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEEiiEEbRKNS1_10MatrixBaseIT_EERKSt6vectorIS9_IT0_SaISA_EESaISC_EET1_SH_ = comdat any

$_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiEEbRKNS1_10MatrixBaseIT_EERKSt6vectorIS9_IT0_SaISA_EESaISC_EET1_SH_ = comdat any

$_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiNS2_IbLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKSt6vectorISF_IT1_SaISG_EESaISI_EERNS1_15PlainObjectBaseIT2_EE = comdat any

$_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IbLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE = comdat any

$_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiNS2_IbLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKSt6vectorISF_IT1_SaISG_EESaISI_EERNS1_15PlainObjectBaseIT2_EE = comdat any

$_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev = comdat any

$_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IbLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEEiiEEbRKNS1_10MatrixBaseIT_EERKSt6vectorIS9_IT0_SaISA_EESaISC_EET1_SH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = sext i32 %3 to i64
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.n, 8
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %4, align 4, !tbaa !18     ; 2 uses
  %5 = load i32, ptr %i.k, align 4, !tbaa !18     ; 2 uses
  %i.s = sdiv i32 %5, %2                          ; 2 uses
  %i.t = sdiv i32 %i.r, %2                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %6 = insertelement <4 x i32> poison, i32 %5, i64 0
  %7 = insertelement <4 x i32> %6, i32 %i.r, i64 1
  %8 = insertelement <4 x i32> %7, i32 %i.s, i64 2
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %10 = add nsw <4 x i32> %9, <i32 0, i32 0, i32 1, i32 2>
  %11 = insertelement <4 x i32> <i32 poison, i32 poison, i32 3, i32 3>, i32 %2, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %13 = srem <4 x i32> %10, %12                   ; 4 uses
  %14 = extractelement <4 x i32> %13, i64 0
  %i.u = sext i32 %14 to i64
  %i.v = sext i32 %i.s to i64
  %i.w = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.x = load i64, ptr %i.q, align 8, !tbaa !41   ; 5 uses
  %i.y = mul nsw i64 %i.x, %i.v
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %i.u ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !22
  store double %i.ab, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %15 = extractelement <4 x i32> %13, i64 2
  %i.ac = sext i32 %15 to i64
  %i.ad = mul nsw i64 %i.x, %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !22
  store double %i.af, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %16 = extractelement <4 x i32> %13, i64 3
  %i.ag = sext i32 %16 to i64
  %i.ah = mul nsw i64 %i.x, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.z, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !22
  store double %i.aj, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %17 = extractelement <4 x i32> %13, i64 1
  %i.ak = sext i32 %17 to i64
  %i.al = add nsw i32 %i.t, 1
  %i.am = srem i32 %i.al, 3
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.x, %i.an
  %i.ap = getelementptr [8 x i8], ptr %i.w, i64 %i.ak ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  store double %i.ar, ptr %i.d, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.as = add nsw i32 %i.t, 2
  %i.at = srem i32 %i.as, 3
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.x, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.ap, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !22
  store double %i.ax, ptr %i.e, align 8, !tbaa !22
  %i.ay = call noundef double @_ZN3igl14tan_half_angleIdEET_RKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.az = call noundef double @_ZN3igl14tan_half_angleIdEET_RKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1 ; 3 uses
  %i.bc = fneg <2 x double> %i.bb
  %i.bd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bb, <2 x double> splat (double 1.000000e+00))
  %i.be = fmul <2 x double> %i.bb, splat (double 2.000000e+00)
  %i.bf = fdiv <2 x double> %i.bd, %i.be
  %i.bg = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bf)
  %i.bh = fcmp oge double %i.bg, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.bh, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiEEbRKNS1_10MatrixBaseIT_EERKSt6vectorIS9_IT0_SaISA_EESaISC_EET1_SH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = sext i32 %3 to i64
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.n, 8
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %4, align 4, !tbaa !18     ; 2 uses
  %5 = load i32, ptr %i.k, align 4, !tbaa !18     ; 2 uses
  %i.s = sdiv i32 %5, %2                          ; 2 uses
  %i.t = sdiv i32 %i.r, %2                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %6 = insertelement <4 x i32> poison, i32 %5, i64 0
  %7 = insertelement <4 x i32> %6, i32 %i.r, i64 1
  %8 = insertelement <4 x i32> %7, i32 %i.s, i64 2
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %10 = add nsw <4 x i32> %9, <i32 0, i32 0, i32 1, i32 2>
  %11 = insertelement <4 x i32> <i32 poison, i32 poison, i32 3, i32 3>, i32 %2, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %13 = srem <4 x i32> %10, %12                   ; 4 uses
  %14 = extractelement <4 x i32> %13, i64 0
  %i.u = sext i32 %14 to i64
  %i.v = sext i32 %i.s to i64
  %i.w = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.x = load i64, ptr %i.q, align 8, !tbaa !44   ; 5 uses
  %i.y = mul nsw i64 %i.x, %i.v
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %i.u ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !22
  store double %i.ab, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %15 = extractelement <4 x i32> %13, i64 2
  %i.ac = sext i32 %15 to i64
  %i.ad = mul nsw i64 %i.x, %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !22
  store double %i.af, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %16 = extractelement <4 x i32> %13, i64 3
  %i.ag = sext i32 %16 to i64
  %i.ah = mul nsw i64 %i.x, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.z, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !22
  store double %i.aj, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %17 = extractelement <4 x i32> %13, i64 1
  %i.ak = sext i32 %17 to i64
  %i.al = add nsw i32 %i.t, 1
  %i.am = srem i32 %i.al, 3
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.x, %i.an
  %i.ap = getelementptr [8 x i8], ptr %i.w, i64 %i.ak ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  store double %i.ar, ptr %i.d, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.as = add nsw i32 %i.t, 2
  %i.at = srem i32 %i.as, 3
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.x, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.ap, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !22
  store double %i.ax, ptr %i.e, align 8, !tbaa !22
  %i.ay = call noundef double @_ZN3igl14tan_half_angleIdEET_RKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.az = call noundef double @_ZN3igl14tan_half_angleIdEET_RKS1_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1 ; 3 uses
  %i.bc = fneg <2 x double> %i.bb
  %i.bd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bb, <2 x double> splat (double 1.000000e+00))
  %i.be = fmul <2 x double> %i.bb, splat (double 2.000000e+00)
  %i.bf = fdiv <2 x double> %i.bd, %i.be
  %i.bg = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bf)
  %i.bh = fcmp oge double %i.bg, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.bh, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiNS2_IbLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKSt6vectorISF_IT1_SaISG_EESaISI_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 7 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = icmp eq i64 %i.b, 0
  %i.g = icmp eq i64 %i.e, 0
  %or.cond.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv i64 9223372036854775807, %i.e
  %i.i = icmp sgt i64 %i.b, %i.h
  br i1 %i.i, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.k = mul nsw i64 %i.e, %i.b                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = mul nsw i64 %i.m, 3
  %.not.i.i.i = icmp eq i64 %i.k, %i.n
  br i1 %.not.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  %i.o = load ptr, ptr %3, align 8, !tbaa !49
  tail call void @free(ptr noundef %i.o) #12
  %i.p = icmp sgt i64 %i.k, 0
  br i1 %i.p, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.k) #14 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %.sink.split.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  store ptr %.sink.i.i.i, ptr %3, align 8, !tbaa !49
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit.i: ; preds = %.sink.split.i.i.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  store i64 %i.b, ptr %i.l, align 8, !tbaa !48
  %i.t = icmp slt i64 %i.b, 1
  br i1 %i.t, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE11setConstantEllRKb.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit.i
  %i.u = mul nuw nsw i64 %i.b, 3
  %i.v = load ptr, ptr %3, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.u, i1 false), !tbaa !30
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE11setConstantEllRKb.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE11setConstantEllRKb.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE6resizeEll.exit.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = load ptr, ptr %2, align 8, !tbaa !13
  %.not = icmp eq ptr %i.x, %i.y
  br i1 %.not, label %._crit_edge30, label %.lr.ph29

._crit_edge30:                                    ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE11setConstantEllRKb.exit
  ret void

.lr.ph29:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE11setConstantEllRKb.exit, %._crit_edge
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %._crit_edge ], [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIbLin1ELi3ELi0ELin1ELi3EEEE11setConstantEllRKb.exit ] ; 3 uses
  %i.z = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.aa = tail call noundef zeroext i1 @_ZN3igl21is_intrinsic_delaunayIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiiEEbRKNS1_10MatrixBaseIT_EERKSt6vectorIS9_IT0_SaISA_EESaISC_EET1_SH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.c, i32 noundef %i.z)
  %i.ab = zext i1 %i.aa to i8                     ; 3 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 5 uses
  %.not31 = icmp eq ptr %i.af, %i.ag
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph29
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !49    ; 3 uses
  %i.am = load i64, ptr %i.l, align 8, !tbaa !48  ; 3 uses
  %i.an = icmp eq i64 %i.aj, 4
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ak, -2
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %i.ao = and i64 %i.aj, 4
  %lcmp.mod.not = icmp eq i64 %i.ao, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.epil.init
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18 ; 2 uses
  %i.ar = srem i32 %i.aq, %i.c
  %i.as = sext i32 %i.ar to i64
  %i.at = sdiv i32 %i.aq, %i.c
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.am, %i.au
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.as
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.av
  store i8 %i.ab, ptr %i.ax, align 1, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph29
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ac to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 24
  %i.bd = icmp ugt i64 %i.bc, %indvars.iv.next34
  br i1 %i.bd, label %.lr.ph29, label %._crit_edge30, !llvm.loop !45

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18 ; 2 uses
  %i.bg = srem i32 %i.bf, %i.c
  %i.bh = sext i32 %i.bg to i64
  %i.bi = sdiv i32 %i.bf, %i.c
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.am, %i.bj
  %i.bl = getelementptr i8, ptr %i.al, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk
  store i8 %i.ab, ptr %i.bm, align 1, !tbaa !30
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !18 ; 2 uses
  %i.bq = srem i32 %i.bp, %i.c
  %i.br = sext i32 %i.bq to i64
  %i.bs = sdiv i32 %i.bp, %i.c
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.am, %i.bt
  %i.bv = getelementptr i8, ptr %i.al, i64 %i.br
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bu
  store i8 %i.ab, ptr %i.bw, align 1, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !46
}
end_hunk_0
