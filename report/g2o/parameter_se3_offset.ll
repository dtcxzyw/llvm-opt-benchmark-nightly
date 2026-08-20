inline.NumInlined: 2016
inline.NumDeleted: 1254
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::Matrix.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { %"struct.Eigen::internal::plain_array.12" }
%"struct.Eigen::internal::plain_array.12" = type { [7 x double] }
%"class.Eigen::Transform" = type { %"class.Eigen::Matrix" }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [16 x double] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<g2o::Parameter *, std::allocator<g2o::Parameter *>>::_Vector_impl" }
%"struct.std::_Vector_base<g2o::Parameter *, std::allocator<g2o::Parameter *>>::_Vector_impl" = type { %"struct.std::_Vector_base<g2o::Parameter *, std::allocator<g2o::Parameter *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<g2o::Parameter *, std::allocator<g2o::Parameter *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE = comdat any

$_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE = comdat any

$_ZN3g2o10HyperGraph17HyperGraphElementD2Ev = comdat any

$_ZN3g2o18ParameterSE3OffsetD0Ev = comdat any

$_ZNK3g2o9Parameter11elementTypeEv = comdat any

$_ZN3g2o5CacheD2Ev = comdat any

$_ZN3g2o14CacheSE3OffsetD0Ev = comdat any

$_ZNK3g2o5Cache11elementTypeEv = comdat any

$_ZTIN3g2o9ParameterE = comdat any

$_ZTSN3g2o9ParameterE = comdat any

$_ZTIN3g2o10HyperGraph17HyperGraphElementE = comdat any

$_ZTSN3g2o10HyperGraph17HyperGraphElementE = comdat any

@_ZTVN3g2o18ParameterSE3OffsetE = constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN3g2o18ParameterSE3OffsetE, ptr @_ZN3g2o10HyperGraph17HyperGraphElementD2Ev, ptr @_ZN3g2o18ParameterSE3OffsetD0Ev, ptr @_ZNK3g2o9Parameter11elementTypeEv, ptr @_ZN3g2o18ParameterSE3Offset4readERSi, ptr @_ZNK3g2o18ParameterSE3Offset5writeERSo] }, align 8
@_ZTVN3g2o14CacheSE3OffsetE = constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN3g2o14CacheSE3OffsetE, ptr @_ZN3g2o5CacheD2Ev, ptr @_ZN3g2o14CacheSE3OffsetD0Ev, ptr @_ZNK3g2o5Cache11elementTypeEv, ptr @_ZN3g2o14CacheSE3Offset10updateImplEv, ptr @_ZN3g2o14CacheSE3Offset19resolveDependenciesEv] }, align 8
@_ZTIN3g2o9ParameterE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o9ParameterE, ptr @_ZTIN3g2o10HyperGraph17HyperGraphElementE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3g2o9ParameterE = linkonce_odr constant [17 x i8] c"N3g2o9ParameterE\00", comdat, align 1
@_ZTIN3g2o10HyperGraph17HyperGraphElementE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3g2o10HyperGraph17HyperGraphElementE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3g2o10HyperGraph17HyperGraphElementE = linkonce_odr constant [38 x i8] c"N3g2o10HyperGraph17HyperGraphElementE\00", comdat, align 1
@_ZTIN3g2o18ParameterSE3OffsetE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o18ParameterSE3OffsetE, ptr @_ZTIN3g2o9ParameterE }, align 8
@_ZTSN3g2o18ParameterSE3OffsetE = constant [27 x i8] c"N3g2o18ParameterSE3OffsetE\00", align 1
@_ZTIN3g2o14CacheSE3OffsetE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3g2o14CacheSE3OffsetE, ptr @_ZTIN3g2o5CacheE }, align 8
@_ZTSN3g2o14CacheSE3OffsetE = constant [23 x i8] c"N3g2o14CacheSE3OffsetE\00", align 1
@_ZTIN3g2o5CacheE = external constant ptr
@_ZTVN3g2o5CacheE = external constant { [7 x ptr] }, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN3g2o18ParameterSE3OffsetC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o18ParameterSE3OffsetC2Ev
@_ZN3g2o14CacheSE3OffsetC1Ev = unnamed_addr alias void (ptr), ptr @_ZN3g2o14CacheSE3OffsetC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o18ParameterSE3OffsetC2Ev(ptr noundef nonnull align 16 dereferenceable(272) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3g2o9ParameterC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3g2o18ParameterSE3OffsetE, i64 16), ptr %0, align 16, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.a, align 16, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> zeroinitializer, ptr %i.c, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.d, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> zeroinitializer, ptr %i.g, align 16, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.h, align 16, !tbaa !10
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.b, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %.sroa.9.0..sroa_idx.i, align 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.12.0..sroa_idx.i, i8 0, i64 32, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.sroa.18.0..sroa_idx.i, align 16
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x double> splat (double -0.000000e+00), ptr %.sroa.21.0..sroa_idx.i, align 16
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x double> <double -0.000000e+00, double 1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i, align 16
  ret void
}

declare void @_ZN3g2o9ParameterC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3g2o18ParameterSE3Offset9setOffsetERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(272) initializes((16, 272)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x double>, ptr %1, align 16, !tbaa !10 ; 3 uses
  store <2 x double> %i.b, ptr %i.a, align 16, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !10 ; 2 uses
  store <2 x double> %i.e, ptr %i.c, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !10 ; 3 uses
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load <2 x double>, ptr %i.j, align 16, !tbaa !10 ; 2 uses
  store <2 x double> %i.k, ptr %i.i, align 16, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load <2 x double>, ptr %i.m, align 16, !tbaa !10 ; 5 uses
  store <2 x double> %i.n, ptr %i.l, align 16, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !10 ; 2 uses
  store <2 x double> %i.q, ptr %i.o, align 16, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = load <2 x double>, ptr %i.s, align 16, !tbaa !10 ; 5 uses
  store <2 x double> %i.t, ptr %i.r, align 16, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !10 ; 3 uses
  store <2 x double> %i.w, ptr %i.u, align 16, !tbaa !10
  %.sroa.0.8.vec.insert = shufflevector <2 x double> %i.b, <2 x double> %i.h, <2 x i32> <i32 0, i32 2> ; 2 uses
  %2 = extractelement <2 x double> %i.n, i64 0
  %.sroa.9.40.vec.insert = shufflevector <2 x double> %i.b, <2 x double> %i.h, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.x = extractelement <2 x double> %i.n, i64 1
  %.sroa.15.72.vec.insert = shufflevector <2 x double> %i.e, <2 x double> %i.k, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = extractelement <2 x double> %i.q, i64 0  ; 2 uses
  %i.z = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.aa = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.aa, %i.z
  %i.ac = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x double> %.sroa.9.40.vec.insert, %i.ac
  %i.ae = fsub <2 x double> %i.ab, %i.ad
  %i.af = extractelement <2 x double> %i.w, i64 0
  %i.ag = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %.sroa.15.72.vec.insert, %i.ag
  %i.ai = fsub <2 x double> %i.ae, %i.ah
  %i.aj = fneg double %i.y
  %i.ak = fmul double %i.af, %i.aj
  %foldExtExtBinop = fmul <2 x double> %i.n, %i.t
  %i.al = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.am = fsub double %i.ak, %i.al
  %foldExtExtBinop19 = fmul <2 x double> %i.n, %i.t
  %i.an = extractelement <2 x double> %foldExtExtBinop19, i64 0
  %i.ao = fsub double %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x double> %.sroa.0.8.vec.insert, ptr %i.ap, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %2, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %.sroa.9.40.vec.insert, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.x, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double 0.000000e+00, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> %.sroa.15.72.vec.insert, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double %i.y, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double 0.000000e+00, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x double> %i.ai, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.ao, ptr %.sroa.22.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double 1.000000e+00, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o18ParameterSE3Offset4readERSi(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(272) initializes((16, 272)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.3", align 8   ; 6 uses
  %3 = alloca %"class.Eigen::Transform", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = call noundef zeroext i1 @_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !10 ; 3 uses
  %i.d = fmul <2 x double> %i.c, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !10 ; 3 uses
  %i.g = fmul <2 x double> %i.f, %i.f
  %i.h = fadd <2 x double> %i.d, %i.g             ; 2 uses
  %shift = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.h, %shift
  %i.i = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.j = fcmp ogt double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE9normalizeEv.exit

bb.b:                                             ; preds = %bb.a
  %.scalar.i = call double @llvm.sqrt.f64(double %i.i)
  %i.k = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.m = fdiv <2 x double> %i.c, %i.l
  store <2 x double> %i.m, ptr %i.b, align 8, !tbaa !10
  %i.n = fdiv <2 x double> %i.f, %i.l
  store <2 x double> %i.n, ptr %i.e, align 8, !tbaa !10
  br label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE9normalizeEv.exit

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE9normalizeEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %3, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load <2 x double>, ptr %3, align 16, !tbaa !10 ; 3 uses
  store <2 x double> %i.p, ptr %i.o, align 16, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load <2 x double>, ptr %i.r, align 16, !tbaa !10 ; 2 uses
  store <2 x double> %i.s, ptr %i.q, align 16, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !10 ; 3 uses
  store <2 x double> %i.v, ptr %i.t, align 16, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.y = load <2 x double>, ptr %i.x, align 16, !tbaa !10 ; 2 uses
  store <2 x double> %i.y, ptr %i.w, align 16, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ab = load <2 x double>, ptr %i.aa, align 16, !tbaa !10 ; 5 uses
  store <2 x double> %i.ab, ptr %i.z, align 16, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ae = load <2 x double>, ptr %i.ad, align 16, !tbaa !10 ; 2 uses
  store <2 x double> %i.ae, ptr %i.ac, align 16, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ah = load <2 x double>, ptr %i.ag, align 16, !tbaa !10 ; 5 uses
  store <2 x double> %i.ah, ptr %i.af, align 16, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ak = load <2 x double>, ptr %i.aj, align 16, !tbaa !10 ; 3 uses
  store <2 x double> %i.ak, ptr %i.ai, align 16, !tbaa !10
  %.sroa.0.8.vec.insert.i = shufflevector <2 x double> %i.p, <2 x double> %i.v, <2 x i32> <i32 0, i32 2> ; 2 uses
  %4 = extractelement <2 x double> %i.ab, i64 0
  %.sroa.9.40.vec.insert.i = shufflevector <2 x double> %i.p, <2 x double> %i.v, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.al = extractelement <2 x double> %i.ab, i64 1
  %.sroa.15.72.vec.insert.i = shufflevector <2 x double> %i.s, <2 x double> %i.y, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.am = extractelement <2 x double> %i.ae, i64 0 ; 2 uses
  %i.an = fneg <2 x double> %.sroa.0.8.vec.insert.i
  %i.ao = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.an
  %i.aq = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x double> %.sroa.9.40.vec.insert.i, %i.aq
  %i.as = fsub <2 x double> %i.ap, %i.ar
  %i.at = extractelement <2 x double> %i.ak, i64 0
  %i.au = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x double> %.sroa.15.72.vec.insert.i, %i.au
  %i.aw = fsub <2 x double> %i.as, %i.av
  %i.ax = fneg double %i.am
  %i.ay = fmul double %i.at, %i.ax
  %foldExtExtBinop4 = fmul <2 x double> %i.ab, %i.ah
  %i.az = extractelement <2 x double> %foldExtExtBinop4, i64 1
  %i.ba = fsub double %i.ay, %i.az
  %foldExtExtBinop6 = fmul <2 x double> %i.ab, %i.ah
  %i.bb = extractelement <2 x double> %foldExtExtBinop6, i64 0
  %i.bc = fsub double %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x double> %.sroa.0.8.vec.insert.i, ptr %i.bd, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %4, ptr %.sroa.6.0..sroa_idx.i, align 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 0.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %.sroa.9.40.vec.insert.i, ptr %.sroa.9.0..sroa_idx.i, align 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.al, ptr %.sroa.12.0..sroa_idx.i, align 16
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double 0.000000e+00, ptr %.sroa.13.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> %.sroa.15.72.vec.insert.i, ptr %.sroa.15.0..sroa_idx.i, align 16
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double %i.am, ptr %.sroa.18.0..sroa_idx.i, align 16
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double 0.000000e+00, ptr %.sroa.19.0..sroa_idx.i, align 8
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x double> %i.aw, ptr %.sroa.21.0..sroa_idx.i, align 16
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.bc, ptr %.sroa.22.0..sroa_idx.i, align 16
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double 1.000000e+00, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = phi i32 [ %.pre14, %bb.h ], [ %i.bl, %bb.g ], [ %i.bc, %bb.f ], [ %i.at, %bb.e ], [ %i.ak, %bb.d ], [ %i.ab, %bb.c ], [ %i.s, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = and i32 %i.h, 2
  %i.k = icmp ne i32 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  ret i1 %i.l

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !8
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !8
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !8
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 0 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !8
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.av) ; 0 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !8
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.be) ; 0 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !8
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bn) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert12 = getelementptr inbounds i8, ptr %0, i64 %.pre11
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert12, i64 32
  %.pre14 = load i32, ptr %.phi.trans.insert13, align 8, !tbaa !11
  br label %.critedge
}

declare void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Transform") align 16, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o18ParameterSE3Offset5writeERSo(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.3", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.3") align 8 %2, ptr noundef nonnull align 16 dereferenceable(128) %i.a)
  %i.b = call noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !22
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !22
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !22
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.q)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !22
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load double, ptr %i.x, align 8, !tbaa !22
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.y)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !8
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = icmp eq i32 %i.ag, 0
  ret i1 %i.ah
}

declare void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.3") align 8, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o14CacheSE3OffsetC2Ev(ptr noundef nonnull align 16 dereferenceable(464) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZN3g2o5CacheC2EPNS_14CacheContainerERKSt6vectorIPNS_9ParameterESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3g2o14CacheSE3OffsetE, i64 16), ptr %0, align 16, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !22
end_hunk_0
begin_hunk_1_@_ZN3g2o14CacheSE3OffsetC2Ev:bb.a
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 392
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 424
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 456
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !22
  ret void

bb.e:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #14
  br label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit5

_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit5: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %i.t
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN3g2o5CacheC2EPNS_14CacheContainerERKSt6vectorIPNS_9ParameterESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN3g2o14CacheSE3Offset19resolveDependenciesEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(464) initializes((72, 80)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN3g2o9ParameterE, ptr nonnull @_ZTIN3g2o18ParameterSE3OffsetE, i64 0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = icmp ne ptr %i.f, null
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o14CacheSE3Offset10updateImplEv(ptr noundef nonnull align 16 dereferenceable(464) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3g2o5Cache6vertexEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load <2 x double>, ptr %i.b, align 1, !tbaa !10, !noalias !51 ; 4 uses
  %i.g = load double, ptr %i.e, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.h = insertelement <2 x double> poison, double %i.g, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x double> %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.l = load <2 x double>, ptr %i.k, align 1, !tbaa !10, !noalias !51 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.l, %i.p
  %i.r = fadd <2 x double> %i.j, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !10, !noalias !51 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.t, %i.x
  %i.z = fadd <2 x double> %i.r, %i.y             ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !22, !noalias !51 ; 4 uses
  %i.ac = fmul double %i.g, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !22, !noalias !51 ; 4 uses
  %i.af = fmul double %i.n, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !22, !noalias !51 ; 4 uses
  %i.ai = fmul double %i.v, %i.ah
  %i.aj = fadd double %i.af, %i.ai
  %i.ak = fadd double %i.ac, %i.aj                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.am = load double, ptr %i.al, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.f, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.l, %i.at
  %i.av = fadd <2 x double> %i.ap, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x double> %i.t, %i.az
  %i.bb = fadd <2 x double> %i.av, %i.ba          ; 3 uses
  %i.bc = fmul double %i.ab, %i.am
  %i.bd = fmul double %i.ae, %i.ar
  %i.be = fmul double %i.ah, %i.ax
  %i.bf = fadd double %i.bd, %i.be
  %i.bg = fadd double %i.bc, %i.bf                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.f, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.l, %i.bp
  %i.br = fadd <2 x double> %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.t, %i.bv
  %i.bx = fadd <2 x double> %i.br, %i.bw          ; 5 uses
  %i.by = fmul double %i.ab, %i.bi
  %i.bz = fmul double %i.ae, %i.bn
  %i.ca = fmul double %i.ah, %i.bt
  %i.cb = fadd double %i.bz, %i.ca
  %i.cc = fadd double %i.by, %i.cb                ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.cg = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.f, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.cl = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x double> %i.l, %i.cm
  %i.co = fadd <2 x double> %i.ci, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.t, %i.cs
  %i.cu = fadd <2 x double> %i.co, %i.ct
  %i.cv = fmul double %i.ab, %i.cf
  %i.cw = fmul double %i.ae, %i.ck
  %i.cx = fmul double %i.ah, %i.cq
  %i.cy = fadd double %i.cw, %i.cx
  %i.cz = fadd double %i.cv, %i.cy
  %i.da = load <2 x double>, ptr %i.ce, align 8, !tbaa !10, !noalias !51
  %i.db = fadd <2 x double> %i.da, %i.cu          ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !22, !noalias !51
  %i.de = fadd double %i.dd, %i.cz                ; 3 uses
  %.sroa.4.24.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ak, i64 0
  %.sroa.924.56.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bg, i64 0
  %.sroa.14.88.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cc, i64 0
  %.sroa.1928.120.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> %i.z, ptr %i.df, align 16, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> %.sroa.4.24.vec.insert, ptr %i.dg, align 16, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x double> %i.bb, ptr %i.dh, align 16, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x double> %.sroa.924.56.vec.insert, ptr %i.di, align 16, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x double> %i.bx, ptr %i.dj, align 16, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x double> %.sroa.14.88.vec.insert, ptr %i.dk, align 16, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x double> %i.db, ptr %i.dl, align 16, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <2 x double> %.sroa.1928.120.vec.insert, ptr %i.dm, align 16, !tbaa !10
  %.sroa.06.8.vec.insert = shufflevector <2 x double> %i.z, <2 x double> %i.bb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %1 = extractelement <2 x double> %i.bx, i64 0
  %.sroa.910.40.vec.insert = shufflevector <2 x double> %i.z, <2 x double> %i.bb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dn = extractelement <2 x double> %i.bx, i64 1
  %.sroa.1514.64.vec.insert = insertelement <2 x double> poison, double %i.ak, i64 0
  %.sroa.1514.72.vec.insert = insertelement <2 x double> %.sroa.1514.64.vec.insert, double %i.bg, i64 1 ; 2 uses
  %i.do = fneg <2 x double> %.sroa.06.8.vec.insert
  %i.dp = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dp, %i.do
  %i.dr = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = fmul <2 x double> %.sroa.910.40.vec.insert, %i.dr
  %i.dt = fsub <2 x double> %i.dq, %i.ds
  %i.du = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %.sroa.1514.72.vec.insert, %i.dv
  %i.dx = fsub <2 x double> %i.dt, %i.dw
  %i.dy = fneg double %i.cc
  %i.dz = fmul double %i.de, %i.dy
  %foldExtExtBinop = fmul <2 x double> %i.bx, %i.db
  %i.ea = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.eb = fsub double %i.dz, %i.ea
  %foldExtExtBinop42 = fmul <2 x double> %i.bx, %i.db
  %i.ec = extractelement <2 x double> %foldExtExtBinop42, i64 0
  %i.ed = fsub double %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> %.sroa.06.8.vec.insert, ptr %i.ee, align 16
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %1, ptr %.sroa.68.0..sroa_idx, align 16
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double 0.000000e+00, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> %.sroa.910.40.vec.insert, ptr %.sroa.910.0..sroa_idx, align 16
  %.sroa.1212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.dn, ptr %.sroa.1212.0..sroa_idx, align 16
  %.sroa.1313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double 0.000000e+00, ptr %.sroa.1313.0..sroa_idx, align 8
  %.sroa.1514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x double> %.sroa.1514.72.vec.insert, ptr %.sroa.1514.0..sroa_idx, align 16
  %.sroa.1816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.cc, ptr %.sroa.1816.0..sroa_idx, align 16
  %.sroa.1917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 0.000000e+00, ptr %.sroa.1917.0..sroa_idx, align 8
  %.sroa.2118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %i.dx, ptr %.sroa.2118.0..sroa_idx, align 16
  %.sroa.2219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.ed, ptr %.sroa.2219.0..sroa_idx, align 16
  %.sroa.2320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double 1.000000e+00, ptr %.sroa.2320.0..sroa_idx, align 8, !tbaa !10
  %i.ef = load <2 x double>, ptr %i.b, align 8    ; 2 uses
  %i.eg = load double, ptr %i.k, align 8, !tbaa !22, !noalias !56
  %.sroa.0.8.vec.insert = insertelement <2 x double> %i.ef, double %i.eg, i64 1 ; 2 uses
  %i.eh = load double, ptr %i.s, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %.sroa.9.32.vec.insert = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !22, !noalias !56
  %.sroa.9.40.vec.insert = insertelement <2 x double> %.sroa.9.32.vec.insert, double %i.ej, i64 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.el = load double, ptr %i.ek, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.em = load double, ptr %i.aa, align 8, !tbaa !22, !noalias !56
  %.sroa.15.64.vec.insert = insertelement <2 x double> poison, double %i.em, i64 0
  %i.en = load double, ptr %i.ad, align 8, !tbaa !22, !noalias !56
  %.sroa.15.72.vec.insert = insertelement <2 x double> %.sroa.15.64.vec.insert, double %i.en, i64 1 ; 2 uses
  %i.eo = load double, ptr %i.ag, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.ep = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.eq = load double, ptr %i.ce, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.er = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x double> %i.es, %i.ep
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.ew = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %.sroa.9.40.vec.insert, %i.ex
  %i.ez = fsub <2 x double> %i.et, %i.ey
  %i.fa = load double, ptr %i.dc, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.fb = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x double> %.sroa.15.72.vec.insert, %i.fc
  %i.fe = fsub <2 x double> %i.ez, %i.fd
  %i.ff = fneg double %i.eo
  %i.fg = fmul double %i.fa, %i.ff
  %i.fh = fmul double %i.el, %i.ev
  %i.fi = fsub double %i.fg, %i.fh
  %i.fj = fmul double %i.eh, %i.eq
  %i.fk = fsub double %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x double> %.sroa.0.8.vec.insert, ptr %i.fl, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store double %i.eh, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <2 x double> %.sroa.9.40.vec.insert, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double %i.el, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store double 0.000000e+00, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <2 x double> %.sroa.15.72.vec.insert, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store double %i.eo, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store double 0.000000e+00, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <2 x double> %i.fe, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double %i.fk, ptr %.sroa.22.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store double 1.000000e+00, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !10
  ret void
}

declare noundef ptr @_ZN3g2o5Cache6vertexEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3g2o14CacheSE3Offset14setOffsetParamEPNS_18ParameterSE3OffsetE(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(464) initializes((72, 80)) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10HyperGraph17HyperGraphElementD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o18ParameterSE3OffsetD0Ev(ptr noundef nonnull align 16 dereferenceable(272) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o9Parameter11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o5CacheD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3g2o5CacheE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #14
  br label %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit

_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit:      ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #14
  br label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit

_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit:  ; preds = %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o14CacheSE3OffsetD0Ev(ptr noundef nonnull align 16 dereferenceable(464) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3g2o5CacheE, i64 16), ptr %0, align 16, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #14
  br label %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i:    ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !24  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN3g2o5CacheD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !28
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #14
  br label %_ZN3g2o5CacheD2Ev.exit

_ZN3g2o5CacheD2Ev.exit:                           ; preds = %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o5Cache11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1
end_hunk_1
