inline.NumInlined: 225
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%"class.std::unique_ptr.18" = type { %"struct.std::__uniq_ptr_data.19" }
%"struct.std::__uniq_ptr_data.19" = type { %"class.std::__uniq_ptr_impl.20" }
%"class.std::__uniq_ptr_impl.20" = type { %"class.std::tuple.21" }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }
%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.std::unique_ptr.26" = type { %"struct.std::__uniq_ptr_data.27" }
%"struct.std::__uniq_ptr_data.27" = type { %"class.std::__uniq_ptr_impl.28" }
%"class.std::__uniq_ptr_impl.28" = type { %"class.std::tuple.29" }
%"class.std::tuple.29" = type { %"struct.std::_Tuple_impl.30" }
%"struct.std::_Tuple_impl.30" = type { %"struct.std::_Head_base.33" }
%"struct.std::_Head_base.33" = type { ptr }

$_ZN4geos4util21GeometricShapeFactoryD2Ev = comdat any

$_ZN4geos4util21GeometricShapeFactoryD0Ev = comdat any

$_ZTVN4geos4util21GeometricShapeFactoryE = comdat any

$_ZTIN4geos4util21GeometricShapeFactoryE = comdat any

$_ZTSN4geos4util21GeometricShapeFactoryE = comdat any

@_ZTVN4geos4util21GeometricShapeFactoryE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN4geos4util21GeometricShapeFactoryE, ptr @_ZN4geos4util21GeometricShapeFactoryD2Ev, ptr @_ZN4geos4util21GeometricShapeFactoryD0Ev] }, comdat, align 8
@_ZTIN4geos4util21GeometricShapeFactoryE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos4util21GeometricShapeFactoryE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4util21GeometricShapeFactoryE = linkonce_odr constant [36 x i8] c"N4geos4util21GeometricShapeFactoryE\00", comdat, align 1

@_ZN4geos4util21GeometricShapeFactoryC1EPKNS_4geom15GeometryFactoryE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos4util21GeometricShapeFactoryC2EPKNS_4geom15GeometryFactoryE
@_ZN4geos4util21GeometricShapeFactory10DimensionsC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos4util21GeometricShapeFactory10DimensionsC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4util21GeometricShapeFactoryC2EPKNS_4geom15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(92) initializes((0, 24)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos4util21GeometricShapeFactoryE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4geos4util21GeometricShapeFactory10DimensionsC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 100, ptr %i.e, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4util21GeometricShapeFactory7setBaseERKNS_4geom10CoordinateE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(92) initializes((24, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4util21GeometricShapeFactory10Dimensions7setBaseERKNS_4geom10CoordinateE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4util21GeometricShapeFactory9setCentreERKNS_4geom10CoordinateE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(92) initializes((48, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4util21GeometricShapeFactory10Dimensions9setCentreERKNS_4geom10CoordinateE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((24, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4util21GeometricShapeFactory12setNumPointsEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(92) initializes((88, 92)) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %1, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4util21GeometricShapeFactory7setSizeEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(92) initializes((72, 88)) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %1, ptr %i.b, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4util21GeometricShapeFactory10Dimensions7setSizeEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((48, 64)) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %1, ptr %i.b, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4util21GeometricShapeFactory8setWidthEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(92) initializes((72, 80)) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %1, ptr %i.a, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4util21GeometricShapeFactory10Dimensions8setWidthEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((48, 56)) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %1, ptr %i.a, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4util21GeometricShapeFactory9setHeightEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(92) initializes((80, 88)) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %1, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4util21GeometricShapeFactory10Dimensions9setHeightEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((56, 64)) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %1, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4util21GeometricShapeFactory15createRectangleEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.2", align 8 ; 5 uses
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.std::unique_ptr.10", align 8 ; 7 uses
  %5 = alloca %"class.std::unique_ptr.18", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = lshr i32 %i.b, 2
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.c, i32 1) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZNK4geos4util21GeometricShapeFactory10Dimensions11getEnvelopeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.e = load ptr, ptr %2, align 8, !tbaa !23     ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %6 = uitofp nneg i32 %spec.store.select to double
  %7 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %9 = load <4 x double>, ptr %i.e, align 8       ; 8 uses
  %10 = load double, ptr %i.f, align 8, !tbaa !25
  %11 = fcmp uno double %10, 0.000000e+00
  %12 = shufflevector <4 x double> %9, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %13 = shufflevector <4 x double> %9, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %14 = fsub <2 x double> %12, %13
  %15 = insertelement <2 x i1> poison, i1 %11, i64 0
  %16 = shufflevector <2 x i1> %15, <2 x i1> poison, <2 x i32> zeroinitializer
  %17 = select <2 x i1> %16, <2 x double> zeroinitializer, <2 x double> %14
  %18 = insertelement <2 x double> poison, double %6, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = fdiv <2 x double> %17, %19                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.g = shl nuw i32 %spec.store.select, 2
  %i.h = or disjoint i32 %i.g, 1
  %i.i = zext i32 %i.h to i64                     ; 4 uses
  %i.j = mul nuw nsw i64 %i.i, 24
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #12
          to label %.noexc unwind label %bb.c     ; 19 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.k, ptr %3, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !30
  %xtraiter = and i64 %i.i, 5
  br label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc
  %.013.i.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %.noexc ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %.noexc ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc ]
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i.prol, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.n, align 8, !tbaa !31
  %i.o = add nsw i64 %.01012.i.i.i.i.i.prol, -1   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !32

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.q = icmp ult i32 %i.b, 8
  br i1 %i.q, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.i.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ab, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.af, align 8, !tbaa !31
  %i.ag = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.7, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !34

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.lcssa, ptr %i.ai, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !37
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !40, !noalias !37
  %i.am = icmp eq i32 %i.al, 1
  %wide.trip.count124 = zext nneg i32 %spec.store.select to i64 ; 10 uses
  br i1 %i.am, label %iter.check, label %.split.preheader

.split.preheader:                                 ; preds = %.unr-lcssa
  %21 = extractelement <2 x double> %20, i64 0
  br label %.split

iter.check:                                       ; preds = %.unr-lcssa
  %min.iters.check = icmp ult i32 %i.b, 16
  br i1 %min.iters.check, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check166 = icmp ult i32 %i.b, 64
  br i1 %min.iters.check166, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count124, 12
  %n.vec = and i64 %wide.trip.count124, 1073741808 ; 4 uses
  %broadcast.splat = shufflevector <2 x double> %20, <2 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat168 = shufflevector <4 x double> %9, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat170 = shufflevector <4 x double> %9, <4 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.an = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.ao = uitofp nneg <4 x i32> %step.add to <4 x double>
  %i.ap = uitofp nneg <4 x i32> %step.add.2 to <4 x double>
  %i.aq = uitofp nneg <4 x i32> %step.add.3 to <4 x double>
  %i.ar = fmul <4 x double> %broadcast.splat, %i.an
  %i.as = fmul <4 x double> %broadcast.splat, %i.ao
  %i.at = fmul <4 x double> %broadcast.splat, %i.ap
  %i.au = fmul <4 x double> %broadcast.splat, %i.aq
  %i.av = fadd <4 x double> %i.ar, %broadcast.splat168
  %i.aw = fadd <4 x double> %i.as, %broadcast.splat168
  %i.ax = fadd <4 x double> %i.at, %broadcast.splat168
  %i.ay = fadd <4 x double> %i.au, %broadcast.splat168
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %index
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %index
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %index
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 192
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 288
  %i.bg = shufflevector <4 x double> %i.av, <4 x double> %broadcast.splat170, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x double> %i.bg, <8 x double> <double +qnan, double +qnan, double +qnan, double +qnan, double poison, double poison, double poison, double poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec, ptr %i.az, align 8, !tbaa !20
  %i.bh = shufflevector <4 x double> %i.aw, <4 x double> %broadcast.splat170, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec171 = shufflevector <8 x double> %i.bh, <8 x double> <double +qnan, double +qnan, double +qnan, double +qnan, double poison, double poison, double poison, double poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec171, ptr %i.bb, align 8, !tbaa !20
  %i.bi = shufflevector <4 x double> %i.ax, <4 x double> %broadcast.splat170, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec172 = shufflevector <8 x double> %i.bi, <8 x double> <double +qnan, double +qnan, double +qnan, double +qnan, double poison, double poison, double poison, double poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec172, ptr %i.bd, align 8, !tbaa !20
  %i.bj = shufflevector <4 x double> %i.ay, <4 x double> %broadcast.splat170, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec173 = shufflevector <8 x double> %i.bj, <8 x double> <double +qnan, double +qnan, double +qnan, double +qnan, double poison, double poison, double poison, double poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec173, ptr %i.bf, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count124
  br i1 %cmp.n, label %.preheader97, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec175 = and i64 %wide.trip.count124, 1073741820 ; 3 uses
  %broadcast.splat177 = shufflevector <2 x double> %20, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat179 = shufflevector <4 x double> %9, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat181 = shufflevector <4 x double> %9, <4 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bl = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat183, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index184 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next187, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind185 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next188, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = uitofp nneg <4 x i32> %vec.ind185 to <4 x double>
  %i.bn = fmul <4 x double> %broadcast.splat177, %i.bm
  %i.bo = fadd <4 x double> %i.bn, %broadcast.splat179
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %index184
  %i.bq = shufflevector <4 x double> %i.bo, <4 x double> %broadcast.splat181, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec186 = shufflevector <8 x double> %i.bq, <8 x double> <double +qnan, double +qnan, double +qnan, double +qnan, double poison, double poison, double poison, double poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec186, ptr %i.bp, align 8, !tbaa !20
  %index.next187 = add nuw i64 %index184, 4       ; 2 uses
  %vec.ind.next188 = add <4 x i32> %vec.ind185, splat (i32 4)
  %i.br = icmp eq i64 %index.next187, %n.vec175
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n189 = icmp eq i64 %n.vec175, %wide.trip.count124
  br i1 %cmp.n189, label %.preheader97, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us.preheader

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv119.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec175, %vec.epilog.middle.block ]
  %22 = extractelement <2 x double> %20, i64 0
  %23 = extractelement <4 x double> %9, i64 0
  %24 = shufflevector <4 x double> %9, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.bs = insertelement <2 x double> %24, double +qnan, i64 1
  br label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us: ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us.preheader, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us ], [ %indvars.iv119.ph, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us.preheader ] ; 3 uses
  %indvars121 = trunc i64 %indvars.iv119 to i32
  %i.bt = uitofp nneg i32 %indvars121 to double
  %i.bu = fmul double %22, %i.bt
  %i.bv = fadd double %i.bu, %23
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv119 ; 2 uses
  store double %i.bv, ptr %i.bw, align 8, !tbaa !20
  %.sroa.693.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store <2 x double> %i.bs, ptr %.sroa.693.0..sroa_idx.us, align 8, !tbaa !20
  %exitcond125.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count124
  br i1 %exitcond125.not, label %.preheader97, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us, !llvm.loop !48

.preheader97:                                     ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit.us, %middle.block, %vec.epilog.middle.block
  %i.bx = add nuw nsw i64 %wide.trip.count124, 2
  %25 = extractelement <2 x double> %20, i64 1    ; 2 uses
  br label %bb.e

.split:                                           ; preds = %.split.preheader, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit ], [ 0, %.split.preheader ] ; 3 uses
  %indvars116 = trunc i64 %indvars.iv to i32
  %i.by = load double, ptr %i.e, align 8, !tbaa !49
  %i.bz = uitofp nneg i32 %indvars116 to double
  %i.ca = fmul double %21, %i.bz
  %i.cb = fadd double %i.ca, %i.by                ; 2 uses
  %i.cc = load double, ptr %8, align 8, !tbaa !50 ; 2 uses
  %i.cd = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !37 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !40, !noalias !37
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit, label %bb.b

bb.b:                                             ; preds = %.split
  %i.cg = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, double noundef %i.cb)
          to label %.noexc62 unwind label %bb.d

.noexc62:                                         ; preds = %bb.b
  %i.ch = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, double noundef %i.cc)
          to label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit unwind label %bb.d

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit: ; preds = %.split, %.noexc62
  %.sroa.092.0 = phi double [ %i.cb, %.split ], [ %i.cg, %.noexc62 ]
  %.sroa.693.0 = phi double [ %i.cc, %.split ], [ %i.ch, %.noexc62 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  store double %.sroa.092.0, ptr %i.ci, align 8, !tbaa !20
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store double %.sroa.693.0, ptr %.sroa.693.0..sroa_idx, align 8, !tbaa !20
  %.sroa.894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store double +qnan, ptr %.sroa.894.0..sroa_idx, align 8, !tbaa !20
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count124
  br i1 %exitcond.not, label %.preheader97, label %.split, !llvm.loop !51

bb.c:                                             ; preds = %bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit82

bb.d:                                             ; preds = %.noexc62, %bb.b
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %.preheader97, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit66
  %indvars.iv137 = phi i64 [ %i.bx, %.preheader97 ], [ %indvars.iv.next138, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit66 ] ; 2 uses
  %indvars.iv130.in = phi i64 [ %wide.trip.count124, %.preheader97 ], [ %indvars.iv130, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit66 ]
  %indvars.iv126 = phi i64 [ %wide.trip.count124, %.preheader97 ], [ %indvars.iv.next127, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit66 ] ; 2 uses
  %.1105 = phi i32 [ 0, %.preheader97 ], [ %i.cw, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit66 ] ; 2 uses
  %indvars.iv130 = add nuw nsw i64 %indvars.iv130.in, 1 ; 2 uses
  %i.cl = load double, ptr %i.f, align 8, !tbaa !25 ; 2 uses
  %i.cm = load double, ptr %8, align 8, !tbaa !50
  %i.cn = uitofp nneg i32 %.1105 to double
  %i.co = fmul double %25, %i.cn
  %i.cp = fadd double %i.co, %i.cm                ; 2 uses
  %i.cq = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !53 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !40, !noalias !53
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, double noundef %i.cl)
          to label %.noexc64 unwind label %bb.g

.noexc64:                                         ; preds = %bb.f
  %i.cu = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, double noundef %i.cp)
          to label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit66 unwind label %bb.g

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit66: ; preds = %bb.e, %.noexc64
  %.sroa.690.0 = phi double [ %i.cp, %bb.e ], [ %i.cu, %.noexc64 ]
  %.sroa.089.0 = phi double [ %i.cl, %bb.e ], [ %i.ct, %.noexc64 ]
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv126 ; 3 uses
  store double %.sroa.089.0, ptr %i.cv, align 8, !tbaa !20
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store double %.sroa.690.0, ptr %.sroa.690.0..sroa_idx, align 8, !tbaa !20
  %.sroa.891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store double +qnan, ptr %.sroa.891.0..sroa_idx, align 8, !tbaa !20
  %i.cw = add nuw nsw i32 %.1105, 1               ; 2 uses
  %exitcond129.not = icmp eq i32 %i.cw, %spec.store.select
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  br i1 %exitcond129.not, label %.preheader96.preheader, label %bb.e, !llvm.loop !56

.preheader96.preheader:                           ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit66
  %26 = extractelement <2 x double> %20, i64 0
  br label %.preheader96

bb.g:                                             ; preds = %.noexc64, %bb.f
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.preheader96:                                     ; preds = %.preheader96.preheader, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69 ], [ %indvars.iv137, %.preheader96.preheader ] ; 2 uses
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69 ], [ %indvars.iv130, %.preheader96.preheader ] ; 2 uses
  %.2107 = phi i32 [ %i.dj, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69 ], [ 0, %.preheader96.preheader ] ; 2 uses
  %i.cy = load double, ptr %i.f, align 8, !tbaa !25
  %i.cz = uitofp nneg i32 %.2107 to double
  %i.da = fmul double %26, %i.cz
  %i.db = fsub double %i.cy, %i.da                ; 2 uses
  %i.dc = load double, ptr %7, align 8, !tbaa !57 ; 2 uses
  %i.dd = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !58 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !40, !noalias !58
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69, label %bb.h

bb.h:                                             ; preds = %.preheader96
  %i.dg = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, double noundef %i.db)
          to label %.noexc67 unwind label %bb.i

.noexc67:                                         ; preds = %bb.h
  %i.dh = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, double noundef %i.dc)
          to label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69 unwind label %bb.i

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69: ; preds = %.preheader96, %.noexc67
  %.sroa.687.0 = phi double [ %i.dc, %.preheader96 ], [ %i.dh, %.noexc67 ]
  %.sroa.086.0 = phi double [ %i.db, %.preheader96 ], [ %i.dg, %.noexc67 ]
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv133 ; 3 uses
  store double %.sroa.086.0, ptr %i.di, align 8, !tbaa !20
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store double %.sroa.687.0, ptr %.sroa.687.0..sroa_idx, align 8, !tbaa !20
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store double +qnan, ptr %.sroa.888.0..sroa_idx, align 8, !tbaa !20
  %i.dj = add nuw nsw i32 %.2107, 1               ; 2 uses
  %exitcond136.not = icmp eq i32 %i.dj, %spec.store.select
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br i1 %exitcond136.not, label %.preheader, label %.preheader96, !llvm.loop !61

bb.i:                                             ; preds = %.noexc67, %bb.h
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.preheader:                                       ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit72
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit72 ], [ %indvars.iv140, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69 ] ; 2 uses
  %.3109 = phi i32 [ %i.dw, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit72 ], [ 0, %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit69 ] ; 2 uses
  %i.dl = load double, ptr %i.e, align 8, !tbaa !49 ; 2 uses
  %i.dm = load double, ptr %7, align 8, !tbaa !57
  %i.dn = uitofp nneg i32 %.3109 to double
  %i.do = fmul double %25, %i.dn
  %i.dp = fsub double %i.dm, %i.do                ; 2 uses
  %i.dq = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !62 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !40, !noalias !62
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit72, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.dt = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, double noundef %i.dl)
          to label %.noexc70 unwind label %bb.k

.noexc70:                                         ; preds = %bb.j
  %i.du = invoke noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, double noundef %i.dp)
          to label %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit72 unwind label %bb.k

_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit72: ; preds = %.preheader, %.noexc70
  %.sroa.6.0 = phi double [ %i.dp, %.preheader ], [ %i.du, %.noexc70 ]
  %.sroa.0.0 = phi double [ %i.dl, %.preheader ], [ %i.dt, %.noexc70 ]
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv143 ; 3 uses
  store double %.sroa.0.0, ptr %i.dv, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store double %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !20
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store double +qnan, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !20
  %i.dw = add nuw nsw i32 %.3109, 1               ; 2 uses
  %exitcond146.not = icmp eq i32 %i.dw, %spec.store.select
  br i1 %exitcond146.not, label %bb.l, label %.preheader, !llvm.loop !65

bb.k:                                             ; preds = %.noexc70, %bb.j
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.l:                                             ; preds = %_ZNK4geos4util21GeometricShapeFactory5coordEdd.exit72
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.next144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !9
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !66 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.10") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !9
  invoke void @_ZNK4geos4geom15GeometryFactory16createLinearRingEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %5, ptr noundef nonnull align 8 dereferenceable(45) %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eh = load ptr, ptr %i.dz, align 8, !tbaa !9
  invoke void @_ZNK4geos4geom15GeometryFactory13createPolygonEOSt10unique_ptrINS0_10LinearRingESt14default_deleteIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.r unwind label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %5, align 8, !tbaa !70    ; 3 uses
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i: ; preds = %bb.q
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(48) %i.el) #11, !inline_history !72
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit

bb.r:                                             ; preds = %bb.n
  %i.ep = load ptr, ptr %5, align 8, !tbaa !70    ; 3 uses
  %.not.i73 = icmp eq ptr %i.ep, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit75, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i74

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i74: ; preds = %bb.r
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !7
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(48) %i.ep) #11, !inline_history !72
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit75

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit75: ; preds = %bb.r, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.et = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %.not.i76 = icmp eq ptr %i.et, null
  br i1 %.not.i76, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit75
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.et) #11, !inline_history !75
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit75, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ex = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #13
  br label %_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @_ZdlPv(ptr noundef nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ej, %bb.p ], [ %i.ek, %bb.q ], [ %i.ek, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ey = load ptr, ptr %4, align 8, !tbaa !73    ; 3 uses
  %.not.i78 = icmp eq ptr %i.ey, null
  br i1 %.not.i78, label %bb.t, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i79

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i79: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !7
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ey) #11, !inline_history !75
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i79
  %.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.o ], [ %.pn, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit ], [ %.pn, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i79 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.pre = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit82, label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.g, %bb.d, %bb.t
  %.pn56157 = phi { ptr, i32 } [ %.pn.pn, %bb.t ], [ %i.dx, %bb.k ], [ %i.dk, %bb.i ], [ %i.cx, %bb.g ], [ %i.ck, %bb.d ]
  %i.fc = phi ptr [ %.pre, %bb.t ], [ %i.k, %bb.k ], [ %i.k, %bb.i ], [ %i.k, %bb.g ], [ %i.k, %bb.d ]
  call void @_ZdlPv(ptr noundef nonnull %i.fc) #13
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit82

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit82: ; preds = %.thread, %bb.t, %bb.c
  %.pn56.pn = phi { ptr, i32 } [ %i.cj, %bb.c ], [ %.pn.pn, %bb.t ], [ %.pn56157, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @_ZdlPv(ptr noundef nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %.pn56.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4util21GeometricShapeFactory10Dimensions11getEnvelopeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.2") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !76  ; 5 uses
  %i.b = fcmp uno double %i.a, 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8           ; 5 uses
  %i.e = fcmp uno double %i.d, 0.000000e+00
  %or.cond.i = select i1 %i.b, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8
  %i.h = fcmp uno double %i.g, 0.000000e+00
  %i.i = select i1 %or.cond.i, i1 %i.h, i1 false
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load double, ptr %i.j, align 8, !tbaa !22
  %i.l = fadd double %i.a, %i.k                   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load double, ptr %i.m, align 8, !tbaa !21
  %i.o = fadd double %i.d, %i.n                   ; 3 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12, !noalias !77 ; 3 uses
  %i.q = fcmp olt double %i.a, %i.l               ; 2 uses
  %.sink19.i.i.i = select i1 %i.q, double %i.a, double %i.l
  %.sink.i.i.i = select i1 %i.q, double %i.l, double %i.a
  store double %.sink19.i.i.i, ptr %i.p, align 8, !tbaa !49, !noalias !77
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store double %.sink.i.i.i, ptr %i.r, align 8, !tbaa !25, !noalias !77
  %i.s = fcmp olt double %i.d, %i.o               ; 2 uses
  %.sink21.i.i.i = select i1 %i.s, double %i.d, double %i.o
  %.sink20.i.i.i = select i1 %i.s, double %i.o, double %i.d
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !76 ; 3 uses
  %i.v = fcmp uno double %i.u, 0.000000e+00
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_0
