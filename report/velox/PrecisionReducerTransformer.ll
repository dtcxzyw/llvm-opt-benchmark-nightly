inline.NumInlined: 143
inline.NumDeleted: 101
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.geos::precision::PrecisionReducerTransformer" = type <{ %"class.geos::geom::util::GeometryTransformer.base", [4 x i8], ptr, i8, [7 x i8] }>
%"class.geos::geom::util::GeometryTransformer.base" = type <{ ptr, ptr, ptr, i8, i8, i8, i8 }>
%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%"class.geos::precision::PrecisionReducerFilter" = type { %"class.geos::geom::CoordinateFilter", %"class.std::vector", %"class.geos::geom::Coordinate", i8, ptr }
%"class.geos::geom::CoordinateFilter" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl" = type { %"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" }
%"struct.std::_Vector_base<geos::geom::Coordinate, std::allocator<geos::geom::Coordinate>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4geos4geom4util19GeometryTransformerD2Ev = comdat any

$_ZN4geos9precision22PrecisionReducerFilterD2Ev = comdat any

$_ZN4geos9precision27PrecisionReducerTransformerD0Ev = comdat any

$_ZN4geos9precision22PrecisionReducerFilterD0Ev = comdat any

$_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE = comdat any

$_ZN4geos9precision22PrecisionReducerFilter9filter_roEPKNS_4geom10CoordinateE = comdat any

$_ZTVN4geos9precision22PrecisionReducerFilterE = comdat any

$_ZTIN4geos9precision22PrecisionReducerFilterE = comdat any

$_ZTSN4geos9precision22PrecisionReducerFilterE = comdat any

$_ZTIN4geos4geom16CoordinateFilterE = comdat any

$_ZTSN4geos4geom16CoordinateFilterE = comdat any

@_ZTVN4geos9precision27PrecisionReducerTransformerE = unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN4geos9precision27PrecisionReducerTransformerE, ptr @_ZN4geos4geom4util19GeometryTransformerD2Ev, ptr @_ZN4geos9precision27PrecisionReducerTransformerD0Ev, ptr @_ZN4geos9precision27PrecisionReducerTransformer20transformCoordinatesEPKNS_4geom18CoordinateSequenceEPKNS2_8GeometryE, ptr @_ZN4geos4geom4util19GeometryTransformer14transformPointEPKNS0_5PointEPKNS0_8GeometryE, ptr @_ZN4geos4geom4util19GeometryTransformer19transformMultiPointEPKNS0_10MultiPointEPKNS0_8GeometryE, ptr @_ZN4geos4geom4util19GeometryTransformer19transformLinearRingEPKNS0_10LinearRingEPKNS0_8GeometryE, ptr @_ZN4geos4geom4util19GeometryTransformer19transformLineStringEPKNS0_10LineStringEPKNS0_8GeometryE, ptr @_ZN4geos4geom4util19GeometryTransformer24transformMultiLineStringEPKNS0_15MultiLineStringEPKNS0_8GeometryE, ptr @_ZN4geos9precision27PrecisionReducerTransformer16transformPolygonEPKNS_4geom7PolygonEPKNS2_8GeometryE, ptr @_ZN4geos9precision27PrecisionReducerTransformer21transformMultiPolygonEPKNS_4geom12MultiPolygonEPKNS2_8GeometryE, ptr @_ZN4geos4geom4util19GeometryTransformer27transformGeometryCollectionEPKNS0_18GeometryCollectionEPKNS0_8GeometryE] }, align 8
@_ZTIN4geos9precision27PrecisionReducerTransformerE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos9precision27PrecisionReducerTransformerE, ptr @_ZTIN4geos4geom4util19GeometryTransformerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos9precision27PrecisionReducerTransformerE = constant [47 x i8] c"N4geos9precision27PrecisionReducerTransformerE\00", align 1
@_ZTIN4geos4geom4util19GeometryTransformerE = external constant ptr
@_ZTVN4geos9precision22PrecisionReducerFilterE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4geos9precision22PrecisionReducerFilterE, ptr @_ZN4geos9precision22PrecisionReducerFilterD2Ev, ptr @_ZN4geos9precision22PrecisionReducerFilterD0Ev, ptr @_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE, ptr @_ZN4geos9precision22PrecisionReducerFilter9filter_roEPKNS_4geom10CoordinateE] }, comdat, align 8
@_ZTIN4geos9precision22PrecisionReducerFilterE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos9precision22PrecisionReducerFilterE, ptr @_ZTIN4geos4geom16CoordinateFilterE }, comdat, align 8
@_ZTSN4geos9precision22PrecisionReducerFilterE = linkonce_odr constant [42 x i8] c"N4geos9precision22PrecisionReducerFilterE\00", comdat, align 1
@_ZTIN4geos4geom16CoordinateFilterE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos4geom16CoordinateFilterE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4geom16CoordinateFilterE = linkonce_odr constant [31 x i8] c"N4geos4geom16CoordinateFilterE\00", comdat, align 1
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision27PrecisionReducerTransformer6reduceERKNS_4geom8GeometryERKNS2_14PrecisionModelEb(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.geos::precision::PrecisionReducerTransformer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = zext i1 %3 to i8
  call void @_ZN4geos4geom4util19GeometryTransformerC2Ev(ptr noundef nonnull align 8 dereferenceable(41) %4)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4geos9precision27PrecisionReducerTransformerE, i64 16), ptr %4, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %2, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 %i.a, ptr %i.c, align 8, !tbaa !12
  call void @_ZN4geos4geom4util19GeometryTransformer9transformEPKNS0_8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4geos4geom4util19GeometryTransformer9transformEPKNS0_8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom4util19GeometryTransformerD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision27PrecisionReducerTransformer6extendERSt6vectorINS_4geom10CoordinateESaIS4_EEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(41) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %.not = icmp ult i64 %i.g, %2
  br i1 %.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  %i.i = phi i64 [ %i.g, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.j = phi i64 [ %i.f, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.k = phi ptr [ %i.c, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.l = phi ptr [ %i.b, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !22
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !18
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.i ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.i
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325)
  %i.u = select i1 %i.s, i64 384307168202282325, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #14 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !22
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !22, !alias.scope !26
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.w, ptr %1, align 8, !tbaa !21
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !25
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ac = phi ptr [ %.pre, %bb.c ], [ %i.w, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %i.ad = phi ptr [ %i.p, %bb.c ], [ %i.aa, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = sdiv exact i64 %i.ag, 24                ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %2
  br i1 %i.ai, label %bb.b, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision27PrecisionReducerTransformer20transformCoordinatesEPKNS_4geom18CoordinateSequenceEPKNS2_8GeometryE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.10") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %5 = alloca %"class.geos::precision::PrecisionReducerFilter", align 8 ; 13 uses
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !33
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !34
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.n = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #14, !noalias !37 ; 3 uses
  invoke void @_ZN4geos4geom23CoordinateArraySequenceC1Emm(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef 0, i64 noundef %i.m)
          to label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit unwind label %bb.e, !noalias !37

common.resume:                                    ; preds = %_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit26, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %.pn.pn.pn, %_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit26 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #15, !noalias !37
  br label %common.resume

_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d
  store ptr %i.n, ptr %0, align 8, !tbaa !34
  br label %bb.z

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40, !nonnull !41, !align !42
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9precision22PrecisionReducerFilterE, i64 16), ptr %5, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i8 1, ptr %i.u, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %i.q, ptr %i.v, align 8, !tbaa !9
  store <2 x double> splat (double +qnan), ptr %i.s, align 8, !tbaa !23
  store double +qnan, ptr %i.t, align 8, !tbaa !50
  %i.w = load ptr, ptr %2, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !21, !noalias !51 ; 7 uses
  store ptr %i.z, ptr %6, align 8, !tbaa !21, !alias.scope !51
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !54, !noalias !51
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !18, !noalias !51 ; 2 uses
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !54, !alias.scope !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !51
  %i.af = load ptr, ptr %3, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %3, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.j unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.g, %bb.h, %bb.n
  %i.ao = phi ptr [ %i.z, %bb.g ], [ %i.z, %bb.h ], [ %i.bb, %bb.n ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.ap = icmp eq i32 %i.ai, 1
  %spec.select = select i1 %i.ap, i64 2, i64 0
  %i.aq = icmp eq i32 %i.am, 2
  %spec.select19 = select i1 %i.aq, i64 3, i64 %spec.select ; 2 uses
  %i.ar = ptrtoint ptr %i.ae to i64
  %i.as = ptrtoint ptr %i.z to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = sdiv exact i64 %i.at, 24                ; 2 uses
  %i.av = icmp ult i64 %i.au, %spec.select19
  br i1 %i.av, label %bb.k, label %_ZN4geos9precision27PrecisionReducerTransformer6extendERSt6vectorINS_4geom10CoordinateESaIS4_EEm.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !12, !range !55, !noundef !41
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.s, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i
  %i.az = phi i64 [ %i.bw, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i ], [ %i.au, %bb.k ] ; 2 uses
  %i.ba = phi i64 [ %i.bv, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i ], [ %i.at, %bb.k ] ; 2 uses
  %i.bb = phi ptr [ %i.br, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i ], [ %i.z, %bb.k ] ; 6 uses
  %i.bc = phi ptr [ %i.bs, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i ], [ %i.ae, %bb.k ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !tbaa.struct !22
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  store ptr %i.bg, ptr %i.aa, align 8, !tbaa !18
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.bh = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bh, label %bb.n, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bi = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.az
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bi, i64 384307168202282325) ; 2 uses
  %i.bk = mul nuw nsw i64 %i.bj, 24
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #14
          to label %.noexc21 unwind label %.loopexit ; 6 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !22
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc21, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bl, %.noexc21 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bb, %.noexc21 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !22, !alias.scope !56
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bc
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc21
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.noexc21 ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bl, ptr %6, align 8, !tbaa !21
  store ptr %i.bp, ptr %i.aa, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bq, ptr %i.ac, align 8, !tbaa !25
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.l
  %i.br = phi ptr [ %.pre.i, %bb.l ], [ %i.bl, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bs = phi ptr [ %i.bg, %bb.l ], [ %i.bp, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = sdiv exact i64 %i.bv, 24                ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %spec.select19
  br i1 %i.bx, label %.lr.ph.i, label %_ZN4geos9precision27PrecisionReducerTransformer6extendERSt6vectorINS_4geom10CoordinateESaIS4_EEm.exit, !llvm.loop !32

_ZN4geos9precision27PrecisionReducerTransformer6extendERSt6vectorINS_4geom10CoordinateESaIS4_EEm.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i, %bb.j
  %i.by = phi ptr [ %i.z, %bb.j ], [ %i.br, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit.i ]
  %i.bz = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #14
          to label %bb.p unwind label %bb.q       ; 3 uses

bb.p:                                             ; preds = %_ZN4geos9precision27PrecisionReducerTransformer6extendERSt6vectorINS_4geom10CoordinateESaIS4_EEm.exit
  invoke void @_ZN4geos4geom23CoordinateArraySequenceC1EOSt6vectorINS0_10CoordinateESaIS3_EEm(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 0)
          to label %._crit_edge unwind label %bb.r

._crit_edge:                                      ; preds = %bb.p
  %.pre29 = load ptr, ptr %6, align 8, !tbaa !21
  br label %bb.s

bb.q:                                             ; preds = %_ZN4geos9precision27PrecisionReducerTransformer6extendERSt6vectorINS_4geom10CoordinateESaIS4_EEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #15
  %.pre = load ptr, ptr %6, align 8, !tbaa !21
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge, %bb.k
  %i.cc = phi ptr [ %i.z, %bb.k ], [ %.pre29, %._crit_edge ] ; 2 uses
  %storemerge = phi ptr [ null, %bb.k ], [ %i.bz, %._crit_edge ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !60
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdlPv(ptr noundef nonnull %i.cc) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9precision22PrecisionReducerFilterE, i64 16), ptr %5, align 8, !tbaa !7
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !21  ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i22, label %_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.cd) #15, !inline_history !61
  br label %_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit

_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.z

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.r
  %i.ce = phi ptr [ %i.by, %bb.q ], [ %.pre, %bb.r ], [ %i.bb, %.loopexit ], [ %i.ao, %.loopexit.split-lp ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.cb, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i23 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit24, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit24

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit24: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit24, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit24 ], [ %i.an, %bb.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9precision22PrecisionReducerFilterE, i64 16), ptr %5, align 8, !tbaa !7
  %i.cf = load ptr, ptr %i.r, align 8, !tbaa !21  ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i25, label %_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit26, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #15, !inline_history !61
  br label %_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit26

_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit26: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %common.resume

bb.z:                                             ; preds = %_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit, %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN4geos4geom23CoordinateArraySequenceC1EOSt6vectorINS0_10CoordinateESaIS3_EEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9precision22PrecisionReducerFilterD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9precision22PrecisionReducerFilterE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision27PrecisionReducerTransformer16transformPolygonEPKNS_4geom7PolygonEPKNS2_8GeometryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !noalias !62, !nonnull !41, !align !42
  tail call void @_ZN4geos9operation9overlayng16PrecisionReducer15reducePrecisionEPKNS_4geom8GeometryEPKNS3_14PrecisionModelEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %2, ptr noundef nonnull %i.b, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision27PrecisionReducerTransformer10reduceAreaEPKNS_4geom8GeometryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !41, !align !42
  tail call void @_ZN4geos9operation9overlayng16PrecisionReducer15reducePrecisionEPKNS_4geom8GeometryEPKNS3_14PrecisionModelEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %2, ptr noundef nonnull %i.b, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9precision27PrecisionReducerTransformer21transformMultiPolygonEPKNS_4geom12MultiPolygonEPKNS2_8GeometryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !noalias !65, !nonnull !41, !align !42
  tail call void @_ZN4geos9operation9overlayng16PrecisionReducer15reducePrecisionEPKNS_4geom8GeometryEPKNS3_14PrecisionModelEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %2, ptr noundef nonnull %i.b, i1 noundef zeroext false)
  ret void
}

declare void @_ZN4geos9operation9overlayng16PrecisionReducer15reducePrecisionEPKNS_4geom8GeometryEPKNS3_14PrecisionModelEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9precision27PrecisionReducerTransformerD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

declare void @_ZN4geos4geom4util19GeometryTransformer14transformPointEPKNS0_5PointEPKNS0_8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN4geos4geom4util19GeometryTransformer19transformMultiPointEPKNS0_10MultiPointEPKNS0_8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN4geos4geom4util19GeometryTransformer19transformLinearRingEPKNS0_10LinearRingEPKNS0_8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN4geos4geom4util19GeometryTransformer19transformLineStringEPKNS0_10LineStringEPKNS0_8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN4geos4geom4util19GeometryTransformer24transformMultiLineStringEPKNS0_15MultiLineStringEPKNS0_8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN4geos4geom4util19GeometryTransformer27transformGeometryCollectionEPKNS0_18GeometryCollectionEPKNS0_8GeometryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN4geos4geom4util19GeometryTransformerC2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9precision22PrecisionReducerFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9precision22PrecisionReducerFilterE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #15, !inline_history !61
  br label %_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit

_ZN4geos9precision22PrecisionReducerFilterD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos9precision22PrecisionReducerFilter9filter_roEPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload = load double, ptr %1, align 8, !tbaa !23 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !23 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68, !nonnull !41, !align !42 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !69
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %.sroa.0.0.copyload)
  %i.f = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %.sroa.9.0.copyload)
  br label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit

_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit: ; preds = %bb.a, %bb.b
  %.sroa.9.0 = phi double [ %.sroa.9.0.copyload, %bb.a ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi double [ %.sroa.0.0.copyload, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !43, !range !55, !noundef !41
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load double, ptr %i.j, align 8, !tbaa !72 ; 2 uses
  %i.l = fcmp uno double %i.k, 0.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load double, ptr %i.m, align 8           ; 2 uses
  %i.o = fcmp uno double %i.n, 0.000000e+00
  %or.cond.i = select i1 %i.l, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load double, ptr %i.p, align 8
  %i.r = fcmp uno double %i.q, 0.000000e+00
  %i.s = select i1 %or.cond.i, i1 %i.r, i1 false
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = fcmp oeq double %.sroa.0.0, %i.k
  %i.u = fcmp oeq double %.sroa.9.0, %i.n
  %.0.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %.0.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %.sroa.0.0, ptr %i.x, align 8, !tbaa !23
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx8, align 8, !tbaa !23
  %.sroa.12.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store double %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx15, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !18
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !21  ; 5 uses
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.h, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ag = sdiv exact i64 %i.ae, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 384307168202282325)
  %i.ak = select i1 %i.ai, i64 384307168202282325, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = mul nuw nsw i64 %i.ak, 24
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #14 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 3 uses
  store double %.sroa.0.0, ptr %i.an, align 8, !tbaa !23
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8, !tbaa !23
  %.sroa.12.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store double %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx17, align 8, !tbaa !23
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.x
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !22, !alias.scope !73
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.x
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #15
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.am, ptr %i.v, align 8, !tbaa !21
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !25
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.f, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.0.0, ptr %i.as, align 8, !tbaa !23
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx6, align 8, !tbaa !23
  %.sroa.12.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx13, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  ret void
}

declare noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

declare void @_ZN4geos4geom23CoordinateArraySequenceC1Emm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !17, i64 40}
!13 = !{!"_ZTSN4geos9precision27PrecisionReducerTransformerE", !14, i64 0, !10, i64 32, !17, i64 40}
!14 = !{!"_ZTSN4geos4geom4util19GeometryTransformerE", !15, i64 8, !16, i64 16, !17, i64 24, !17, i64 25, !17, i64 26, !17, i64 27}
!15 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !11, i64 0}
!16 = !{!"p1 _ZTSN4geos4geom8GeometryE", !11, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !11, i64 0}
!21 = !{!19, !20, i64 0}
!22 = !{i64 0, i64 8, !23, i64 8, i64 8, !23, i64 16, i64 8, !23}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !5, i64 0}
!25 = !{!19, !20, i64 16}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!28 = distinct !{!28, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!29 = distinct !{!29, !28, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = distinct !{null}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom18CoordinateSequenceELb0EE", !36, i64 0}
!36 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !11, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJjmEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!39 = distinct !{!39, !"_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJjmEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!40 = !{!13, !10, i64 32}
!41 = !{}
!42 = !{i64 8}
!43 = !{!44, !17, i64 56}
!44 = !{!"_ZTSN4geos9precision22PrecisionReducerFilterE", !45, i64 0, !46, i64 8, !49, i64 32, !17, i64 56, !10, i64 64}
!45 = !{!"_ZTSN4geos4geom16CoordinateFilterE"}
!46 = !{!"_ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE12_Vector_implE", !19, i64 0}
!49 = !{!"_ZTSN4geos4geom10CoordinateE", !24, i64 0, !24, i64 8, !24, i64 16}
!50 = !{!49, !24, i64 16}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN4geos9precision22PrecisionReducerFilter9getCoordsEv: argument 0"}
!53 = distinct !{!53, !"_ZN4geos9precision22PrecisionReducerFilter9getCoordsEv"}
!54 = !{!20, !20, i64 0}
!55 = !{i8 0, i8 2}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!58 = distinct !{!58, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!59 = distinct !{!59, !58, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!60 = !{!36, !36, i64 0}
!61 = !{ptr @_ZN4geos9precision22PrecisionReducerFilterD2Ev}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4geos9precision27PrecisionReducerTransformer10reduceAreaEPKNS_4geom8GeometryE: argument 0"}
!64 = distinct !{!64, !"_ZN4geos9precision27PrecisionReducerTransformer10reduceAreaEPKNS_4geom8GeometryE"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN4geos9precision27PrecisionReducerTransformer10reduceAreaEPKNS_4geom8GeometryE: argument 0"}
!67 = distinct !{!67, !"_ZN4geos9precision27PrecisionReducerTransformer10reduceAreaEPKNS_4geom8GeometryE"}
!68 = !{!44, !10, i64 64}
!69 = !{!70, !71, i64 0}
!70 = !{!"_ZTSN4geos4geom14PrecisionModelE", !71, i64 0, !24, i64 8}
!71 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !5, i64 0}
!72 = !{!49, !24, i64 0}
!73 = !{!74, !76}
!74 = distinct !{!74, !75, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!75 = distinct !{!75, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!76 = distinct !{!76, !75, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
end_hunk_0
