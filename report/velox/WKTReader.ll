inline.NumInlined: 962
inline.NumDeleted: 583
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
%"class.geos::io::CLocalizer" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.geos::io::StringTokenizer" = type { ptr, %"class.std::__cxx11::basic_string", double, %"class.__gnu_cxx::__normal_iterator" }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.std::unique_ptr.23" = type { %"struct.std::__uniq_ptr_data.24" }
%"struct.std::__uniq_ptr_data.24" = type { %"class.std::__uniq_ptr_impl.25" }
%"class.std::__uniq_ptr_impl.25" = type { %"class.std::tuple.26" }
%"class.std::tuple.26" = type { %"struct.std::_Tuple_impl.27" }
%"struct.std::_Tuple_impl.27" = type { %"struct.std::_Head_base.30" }
%"struct.std::_Head_base.30" = type { ptr }
%"class.std::unique_ptr.31" = type { %"struct.std::__uniq_ptr_data.32" }
%"struct.std::__uniq_ptr_data.32" = type { %"class.std::__uniq_ptr_impl.33" }
%"class.std::__uniq_ptr_impl.33" = type { %"class.std::tuple.34" }
%"class.std::tuple.34" = type { %"struct.std::_Tuple_impl.35" }
%"struct.std::_Tuple_impl.35" = type { %"struct.std::_Head_base.38" }
%"struct.std::_Head_base.38" = type { ptr }
%"class.std::unique_ptr.39" = type { %"struct.std::__uniq_ptr_data.40" }
%"struct.std::__uniq_ptr_data.40" = type { %"class.std::__uniq_ptr_impl.41" }
%"class.std::__uniq_ptr_impl.41" = type { %"class.std::tuple.42" }
%"class.std::tuple.42" = type { %"struct.std::_Tuple_impl.43" }
%"struct.std::_Tuple_impl.43" = type { %"struct.std::_Head_base.46" }
%"struct.std::_Head_base.46" = type { ptr }
%"class.std::unique_ptr.47" = type { %"struct.std::__uniq_ptr_data.48" }
%"struct.std::__uniq_ptr_data.48" = type { %"class.std::__uniq_ptr_impl.49" }
%"class.std::__uniq_ptr_impl.49" = type { %"class.std::tuple.50" }
%"class.std::tuple.50" = type { %"struct.std::_Tuple_impl.51" }
%"struct.std::_Tuple_impl.51" = type { %"struct.std::_Head_base.54" }
%"struct.std::_Head_base.54" = type { ptr }
%"class.std::unique_ptr.55" = type { %"struct.std::__uniq_ptr_data.56" }
%"struct.std::__uniq_ptr_data.56" = type { %"class.std::__uniq_ptr_impl.57" }
%"class.std::__uniq_ptr_impl.57" = type { %"class.std::tuple.58" }
%"class.std::tuple.58" = type { %"struct.std::_Tuple_impl.59" }
%"struct.std::_Tuple_impl.59" = type { %"struct.std::_Head_base.62" }
%"struct.std::_Head_base.62" = type { ptr }
%"class.std::unique_ptr.63" = type { %"struct.std::__uniq_ptr_data.64" }
%"struct.std::__uniq_ptr_data.64" = type { %"class.std::__uniq_ptr_impl.65" }
%"class.std::__uniq_ptr_impl.65" = type { %"class.std::tuple.66" }
%"class.std::tuple.66" = type { %"struct.std::_Tuple_impl.67" }
%"struct.std::_Tuple_impl.67" = type { %"struct.std::_Head_base.70" }
%"struct.std::_Head_base.70" = type { ptr }
%"class.std::unique_ptr.71" = type { %"struct.std::__uniq_ptr_data.72" }
%"struct.std::__uniq_ptr_data.72" = type { %"class.std::__uniq_ptr_impl.73" }
%"class.std::__uniq_ptr_impl.73" = type { %"class.std::tuple.74" }
%"class.std::tuple.74" = type { %"struct.std::_Tuple_impl.75" }
%"struct.std::_Tuple_impl.75" = type { %"struct.std::_Head_base.78" }
%"struct.std::_Head_base.78" = type { ptr }
%"class.std::unique_ptr.79" = type { %"struct.std::__uniq_ptr_data.80" }
%"struct.std::__uniq_ptr_data.80" = type { %"class.std::__uniq_ptr_impl.81" }
%"class.std::__uniq_ptr_impl.81" = type { %"class.std::tuple.82" }
%"class.std::tuple.82" = type { %"struct.std::_Tuple_impl.83" }
%"struct.std::_Tuple_impl.83" = type { %"struct.std::_Head_base.86" }
%"struct.std::_Head_base.86" = type { ptr }
%"class.std::allocator" = type { i8 }
%"class.geos::geom::Coordinate" = type { double, double, double }
%"class.std::vector.92" = type { %"struct.std::_Vector_base.93" }
%"struct.std::_Vector_base.93" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::LinearRing>, std::allocator<std::unique_ptr<geos::geom::LinearRing>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::LinearRing>, std::allocator<std::unique_ptr<geos::geom::LinearRing>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::LinearRing>, std::allocator<std::unique_ptr<geos::geom::LinearRing>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::LinearRing>, std::allocator<std::unique_ptr<geos::geom::LinearRing>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.87" = type { %"struct.std::_Vector_base.88" }
%"struct.std::_Vector_base.88" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::Point>, std::allocator<std::unique_ptr<geos::geom::Point>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::Point>, std::allocator<std::unique_ptr<geos::geom::Point>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::Point>, std::allocator<std::unique_ptr<geos::geom::Point>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::Point>, std::allocator<std::unique_ptr<geos::geom::Point>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::vector.97" = type { %"struct.std::_Vector_base.98" }
%"struct.std::_Vector_base.98" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::LineString>, std::allocator<std::unique_ptr<geos::geom::LineString>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::LineString>, std::allocator<std::unique_ptr<geos::geom::LineString>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::LineString>, std::allocator<std::unique_ptr<geos::geom::LineString>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::LineString>, std::allocator<std::unique_ptr<geos::geom::LineString>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.102" = type { %"struct.std::_Vector_base.103" }
%"struct.std::_Vector_base.103" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::Polygon>, std::allocator<std::unique_ptr<geos::geom::Polygon>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::Polygon>, std::allocator<std::unique_ptr<geos::geom::Polygon>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::Polygon>, std::allocator<std::unique_ptr<geos::geom::Polygon>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::Polygon>, std::allocator<std::unique_ptr<geos::geom::Polygon>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.107" = type { %"struct.std::_Vector_base.108" }
%"struct.std::_Vector_base.108" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::Geometry>, std::allocator<std::unique_ptr<geos::geom::Geometry>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::Geometry>, std::allocator<std::unique_ptr<geos::geom::Geometry>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::geom::Geometry>, std::allocator<std::unique_ptr<geos::geom::Geometry>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<geos::geom::Geometry>, std::allocator<std::unique_ptr<geos::geom::Geometry>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev = comdat any

$_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EED2Ev = comdat any

$_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev = comdat any

$_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev = comdat any

$_ZNK4geos4geom15GeometryFactory24createGeometryCollectionINS0_8GeometryEEESt10unique_ptrINS0_18GeometryCollectionESt14default_deleteIS5_EEOSt6vectorIS4_IT_S6_ISA_EESaISC_EE = comdat any

$_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev = comdat any

$_ZTIN4geos2io14ParseExceptionE = comdat any

$_ZTSN4geos2io14ParseExceptionE = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Expected number but encountered end of stream\00", align 1
@_ZTIN4geos2io14ParseExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos2io14ParseExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos2io14ParseExceptionE = linkonce_odr constant [27 x i8] c"N4geos2io14ParseExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.3 = private unnamed_addr constant [44 x i8] c"Expected number but encountered end of line\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Expected number but encountered word\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Expected number but encountered '('\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Expected number but encountered ')'\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Expected number but encountered ','\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"Expected 'Z', 'M', 'ZM', 'EMPTY' or '(' but encountered \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Expected ')' or ',' but encountered\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Expected ')' but encountered\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Expected word but encountered end of stream\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Expected word but encountered end of line\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Expected word but encountered number\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"LINESTRING\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"POLYGON\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"MULTIPOINT\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"MULTILINESTRING\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"MULTIPOLYGON\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"GEOMETRYCOLLECTION\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Unknown type\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Unexpected token: \00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"EOF or EOL\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos2io9WKTReader4readERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::io::CLocalizer", align 8 ; 6 uses
  %4 = alloca %"class.geos::io::StringTokenizer", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN4geos2io10CLocalizerC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN4geos2io15StringTokenizerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK4geos2io9WKTReader22readGeometryTaggedTextEPNS0_15StringTokenizerE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4geos2io15StringTokenizerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.b) #18
  br label %_ZN4geos2io15StringTokenizerD2Ev.exit

_ZN4geos2io15StringTokenizerD2Ev.exit:            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN4geos2io10CLocalizerD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4geos2io15StringTokenizerD2Ev.exit7

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4geos2io15StringTokenizerD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #18
  br label %_ZN4geos2io15StringTokenizerD2Ev.exit7

_ZN4geos2io15StringTokenizerD2Ev.exit7:           ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5 ], [ %i.f, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN4geos2io10CLocalizerD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4geos2io10CLocalizerC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN4geos2io15StringTokenizerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos2io9WKTReader22readGeometryTaggedTextEPNS0_15StringTokenizerE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.2", align 8 ; 7 uses
  %4 = alloca %"class.std::unique_ptr.2", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::unique_ptr.23", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.31", align 8 ; 5 uses
  %8 = alloca %"class.std::unique_ptr.39", align 8 ; 5 uses
  %9 = alloca %"class.std::unique_ptr.47", align 8 ; 5 uses
  %10 = alloca %"class.std::unique_ptr.55", align 8 ; 5 uses
  %11 = alloca %"class.std::unique_ptr.63", align 8 ; 5 uses
  %12 = alloca %"class.std::unique_ptr.71", align 8 ; 5 uses
  %13 = alloca %"class.std::unique_ptr.79", align 8 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN4geos2io9WKTReader11getNextWordB5cxx11EPNS0_15StringTokenizerE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread55 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1313427280
  %i.f = getelementptr i8, ptr %i.c, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = xor i32 %i.h, 84
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread55

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNK4geos2io9WKTReader13readPointTextEPNS0_15StringTokenizerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.23") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2)
          to label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit unwind label %bb.c

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.n = load ptr, ptr %6, align 8, !tbaa !14
  store ptr %i.n, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.y

bb.b:                                             ; preds = %bb.p, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread55
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.z

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %bb.a
  %.pre = load ptr, ptr %5, align 8, !tbaa !7     ; 4 uses
  %bcmp.i19 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.21, i64 %i.b)
  %i.q = icmp eq i32 %bcmp.i19, 0
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !19
  invoke void @_ZNK4geos2io9WKTReader14getCoordinatesEPNS0_15StringTokenizerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread
  %i.r = load ptr, ptr %1, align 8, !tbaa !22, !noalias !19
  invoke void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.31") align 8 %7, ptr noundef nonnull align 8 dereferenceable(45) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %4, align 8, !tbaa !26, !noalias !19 ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #17, !inline_history !30
  br label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !26, !noalias !19 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i5.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i5.i: ; preds = %bb.e
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #17, !inline_history !30
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i5.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !19
  br label %.body

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !19
  %i.ab = load ptr, ptr %7, align 8, !tbaa !31
  store ptr %i.ab, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.y

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.w, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.z

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.ad = load i64, ptr %.pre, align 1
  %i.ae = xor i64 %i.ad, 5283375753148123468
  %i.af = getelementptr i8, ptr %.pre, i64 8
  %i.ag = load i16, ptr %i.af, align 1
end_hunk_0
begin_hunk_1_@_ZNK4geos2io9WKTReader15readPolygonTextEPNS0_15StringTokenizerE:bb.a
  br label %bb.af

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18.thread
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body25

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.en = load ptr, ptr %9, align 8, !tbaa !37    ; 3 uses
  %.not.i43 = icmp eq ptr %i.en, null
  br i1 %.not.i43, label %.body25, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i44

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i44: ; preds = %bb.ab
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !28
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(48) %i.en) #17, !inline_history !102
  br label %.body25

.body25:                                          ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i44, %bb.ab, %bb.aa, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i21
  %.pn = phi { ptr, i32 } [ %i.bm, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i21 ], [ %i.em, %bb.aa ], [ %lpad.phi, %bb.ab ], [ %lpad.phi, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.af

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.af

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18.thread59: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.es = load ptr, ptr %1, align 8, !tbaa !22
  invoke void @_ZNK4geos4geom15GeometryFactory13createPolygonEOSt10unique_ptrINS0_10LinearRingESt14default_deleteIS3_EEOSt6vectorIS6_SaIS6_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.47") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.es, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18.thread59
  %i.et = load ptr, ptr %7, align 8, !tbaa !37    ; 3 uses
  %.not.i46 = icmp eq ptr %i.et, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit48, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i47

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i47: ; preds = %bb.ad
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !28
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(48) %i.et) #17, !inline_history !102
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit48

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit48: ; preds = %bb.ad, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ex = load ptr, ptr %6, align 8, !tbaa !85    ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !81 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ex, %i.ez
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit48, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fe, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ex, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit48 ] ; 2 uses
  %i.fa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !28
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(48) %i.fa) #17, !inline_history !104
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fe, %i.ez
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit48
  %i.ff = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ex, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit48 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ff) #18
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac, %.body25, %bb.z, %bb.y
  %.pn12 = phi { ptr, i32 } [ %i.er, %bb.ac ], [ %.pn, %.body25 ], [ %i.el, %bb.z ], [ %i.ek, %bb.y ] ; 2 uses
  %i.fg = load ptr, ptr %7, align 8, !tbaa !37    ; 3 uses
  %.not.i49 = icmp eq ptr %i.fg, null
  br i1 %.not.i49, label %.body, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i50

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i50: ; preds = %bb.af
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !28
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(48) %i.fg) #17, !inline_history !102
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i50, %bb.af, %bb.x, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i
  %.pn12.pn = phi { ptr, i32 } [ %i.x, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i ], [ %i.ej, %bb.x ], [ %.pn12, %bb.af ], [ %.pn12, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ah

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.fk = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.fk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.ah:                                            ; preds = %.body, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.r, %bb.b ], [ %.pn12.pn, %.body ]
  %i.fn = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.fn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos2io9WKTReader18readMultiPointTextEPNS0_15StringTokenizerE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.55") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::vector.87", align 8    ; 12 uses
  %7 = alloca %"class.std::unique_ptr.23", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 2, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN4geos2io9WKTReader20getNextEmptyOrOpenerB5cxx11EPNS0_15StringTokenizerERm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp eq i64 %i.c, 5
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.f = load i32, ptr %i.e, align 1
  %i.g = xor i32 %i.f, 1414548805
  %i.h = getelementptr i8, ptr %i.e, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = xor i32 %i.j, 89
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !22
  invoke void @_ZNK4geos4geom15GeometryFactory16createMultiPointEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.55") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.p)
          to label %bb.ay unwind label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = invoke noundef i32 @_ZN4geos2io15StringTokenizer13peekNextTokenEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.c unwind label %bb.o       ; 2 uses

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94
  switch i32 %i.r, label %bb.an [
    i32 2, label %bb.d
    i32 40, label %bb.u
    i32 3, label %bb.u
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20
          to label %.noexc unwind label %bb.p     ; 8 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4geos4geom23CoordinateArraySequenceC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit.preheader unwind label %bb.e, !noalias !106

_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit.preheader: ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit

bb.e:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.s) #18, !noalias !106
  br label %.body

_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit: ; preds = %_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit.preheader, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.t, align 8, !tbaa !57
  invoke void @_ZNK4geos2io9WKTReader20getPreciseCoordinateEPNS0_15StringTokenizerERNS_4geom10CoordinateERm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit
  invoke void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZN4geos2io9WKTReader20getNextCloserOrCommaB5cxx11EPNS0_15StringTokenizerE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull %2)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %3, align 8, !tbaa !7      ; 6 uses
  %i.z = icmp eq ptr %i.y, %i.u
  %i.aa = load ptr, ptr %5, align 8, !tbaa !7     ; 5 uses
  %i.ab = icmp eq ptr %i.aa, %i.v                 ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.ab, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.ab, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !13  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  switch i64 %i.ac, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !62
  store i8 %i.ae, ptr %i.y, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.af = load i64, ptr %i.w, align 8, !tbaa !13  ; 2 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !13
  %i.ag = load ptr, ptr %3, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !62
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aa, ptr %3, align 8, !tbaa !7
  %i.ai = load <2 x i64>, ptr %i.w, align 8, !tbaa !62
  store <2 x i64> %i.ai, ptr %i.b, align 8, !tbaa !62
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !62
  store ptr %i.aa, ptr %3, align 8, !tbaa !7
  %i.ak = load <2 x i64>, ptr %i.w, align 8, !tbaa !62
  store <2 x i64> %i.ak, ptr %i.b, align 8, !tbaa !62
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.y, ptr %5, align 8, !tbaa !7
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.v, ptr %5, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.al = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.y, %bb.l ], [ %i.v, %bb.m ]
  store i64 0, ptr %i.w, align 8, !tbaa !13
  store i8 0, ptr %i.al, align 1, !tbaa !62
  %i.am = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.v
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.am) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load ptr, ptr %3, align 8, !tbaa !7
  %lhsc136 = load i8, ptr %i.aq, align 1
  %i.ar = icmp eq i8 %lhsc136, 44
  br i1 %i.ar, label %_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread, !llvm.loop !109

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %i.as = load ptr, ptr %1, align 8, !tbaa !22
  %i.at = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory16createMultiPointERKNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit unwind label %bb.t

_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread
  store ptr %i.at, ptr %0, align 8, !tbaa !41
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #17, !inline_history !67
  br label %bb.ay

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.f, %_ZN4geos6detail11make_uniqueINS_4geom23CoordinateArraySequenceEJEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn37 = phi { ptr, i32 } [ %i.ba, %bb.r ], [ %i.az, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit50

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit50

_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit50: ; preds = %bb.t, %bb.s
  %.pn39 = phi { ptr, i32 } [ %i.bb, %bb.t ], [ %.pn37, %bb.s ]
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #17, !inline_history !67
  br label %.body

bb.u:                                             ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66: ; preds = %bb.af, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNK4geos2io9WKTReader13readPointTextEPNS0_15StringTokenizerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.23") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
          to label %bb.v unwind label %bb.ai

end_hunk_1
begin_hunk_2_@_ZNK4geos2io9WKTReader18readMultiPointTextEPNS0_15StringTokenizerE:bb.a
_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZN4geos2io9WKTReader20getNextCloserOrCommaB5cxx11EPNS0_15StringTokenizerE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %2)
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit
  %i.dk = load ptr, ptr %3, align 8, !tbaa !7     ; 6 uses
  %i.dl = icmp eq ptr %i.dk, %i.bh
  %i.dm = load ptr, ptr %8, align 8, !tbaa !7     ; 5 uses
  %i.dn = icmp eq ptr %i.dm, %i.bi                ; 2 uses
  br i1 %i.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i59: ; preds = %bb.z
  br i1 %i.dn, label %bb.aa, label %.thread.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i54: ; preds = %bb.z
  br i1 %i.dn, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i55

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i59
  %i.do = load i64, ptr %i.bj, align 8, !tbaa !13 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dp)
  switch i64 %i.do, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !62
  store i8 %i.dq, ptr %i.dk, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dm, i64 %i.do, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.dr = load i64, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  store i64 %i.dr, ptr %i.b, align 8, !tbaa !13
  %i.ds = load ptr, ptr %3, align 8, !tbaa !7
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  store i8 0, ptr %i.dt, align 1, !tbaa !62
  %.pre.i58 = load ptr, ptr %8, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61

.thread.i60:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i59
  store ptr %i.dm, ptr %3, align 8, !tbaa !7
  %i.du = load <2 x i64>, ptr %i.bj, align 8, !tbaa !62
  store <2 x i64> %i.du, ptr %i.b, align 8, !tbaa !62
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i54
  %i.dv = load i64, ptr %i.bh, align 8, !tbaa !62
  store ptr %i.dm, ptr %3, align 8, !tbaa !7
  %i.dw = load <2 x i64>, ptr %i.bj, align 8, !tbaa !62
  store <2 x i64> %i.dw, ptr %i.b, align 8, !tbaa !62
  %.not.i56 = icmp eq ptr %i.dk, null
  br i1 %.not.i56, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i55
  store ptr %i.dk, ptr %8, align 8, !tbaa !7
  store i64 %i.dv, ptr %i.bi, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i55, %.thread.i60
  store ptr %i.bi, ptr %8, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57, %bb.ad, %bb.ae
  %i.dx = phi ptr [ %.pre.i58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i57 ], [ %i.dk, %bb.ad ], [ %i.bi, %bb.ae ]
  store i64 0, ptr %i.bj, align 8, !tbaa !13
  store i8 0, ptr %i.dx, align 1, !tbaa !62
  %i.dy = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bi
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61
  call void @_ZdlPv(ptr noundef %i.dy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !13
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.ec = load ptr, ptr %3, align 8, !tbaa !7
  %lhsc = load i8, ptr %i.ec, align 1
  %i.ed = icmp eq i8 %lhsc, 44
  br i1 %i.ed, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread, !llvm.loop !129

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.af
  %i.ee = load ptr, ptr %1, align 8, !tbaa !22
  invoke void @_ZNK4geos4geom15GeometryFactory16createMultiPointEOSt6vectorISt10unique_ptrINS0_5PointESt14default_deleteIS4_EESaIS7_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.55") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread
  %i.ef = load ptr, ptr %6, align 8, !tbaa !114   ; 3 uses
  %i.eg = load ptr, ptr %i.bf, align 8, !tbaa !110 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ef, %i.eg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.el, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.ef, %bb.ag ] ; 2 uses
  %i.eh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(82) %i.eh) #17, !inline_history !130
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.el, %i.eg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !131

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.ag
  %i.em = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.ef, %bb.ag ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.em) #18
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ay

bb.ai:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit69

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.eo = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i67 = icmp eq ptr %i.eo, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit69, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i68

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i68: ; preds = %bb.aj
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(82) %i.eo) #17, !inline_history !128
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit69

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit69: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i68, %bb.aj, %bb.ai
  %.pn33 = phi { ptr, i32 } [ %i.en, %bb.ai ], [ %lpad.phi, %bb.aj ], [ %lpad.phi, %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.am

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.am

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit69
  %.pn35 = phi { ptr, i32 } [ %i.et, %bb.al ], [ %i.es, %bb.ak ], [ %.pn33, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit69 ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.body

bb.an:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.29, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ao
  switch i32 %i.r, label %bb.ar [
    i32 44, label %13
    i32 41, label %12
    i32 0, label %.invoke
    i32 1, label %.invoke
    i32 40, label %11
  ]

bb.ap:                                            ; preds = %bb.an
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aq:                                            ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72, %bb.ao
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

11:                                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br label %.invoke

12:                                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br label %.invoke

13:                                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br label %.invoke

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br label %.invoke

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %11, %12, %13, %bb.ar
  %14 = phi ptr [ @.str.33, %bb.ar ], [ @.str.1, %13 ], [ @.str.13, %12 ], [ @.str.11, %11 ], [ @.str.32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ @.str.32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %15 = phi i64 [ 2, %bb.ar ], [ 1, %13 ], [ 1, %12 ], [ 1, %11 ], [ 10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ 10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull %14, i64 noundef %15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %.invoke
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.aq, !inline_history !132 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.fa = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.as unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread

bb.as:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  invoke void @_ZN4geos2io14ParseExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull @_ZTIN4geos2io14ParseExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.az unwind label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0 = phi i1 [ false, %bb.at ], [ true, %bb.as ] ; 2 uses
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fd = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.fd) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %.0, label %bb.av, label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br i1 %.0, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %.pn98 = phi { ptr, i32 } [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  call void @__cxa_free_exception(ptr %i.fa) #17
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.av, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %.pn98, %bb.av ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.ex, %bb.aq ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ap
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aw ], [ %i.ew, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.body

bb.ay:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.fg = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.ay
  call void @_ZdlPv(ptr noundef %i.fg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

.body:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit50, %bb.e, %bb.p, %bb.o, %bb.am, %bb.ax, %bb.b
  %.pn43 = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ax, %bb.o ], [ %.pn35, %bb.am ], [ %.pn.pn.pn, %bb.ax ], [ %.pn39, %_ZNSt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS2_EED2Ev.exit50 ], [ %i.ay, %bb.p ], [ %i.x, %bb.e ]
  %i.fj = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.fj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn43

bb.az:                                            ; preds = %bb.at
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos2io9WKTReader23readMultiLineStringTextEPNS0_15StringTokenizerE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.63") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.2", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::vector.97", align 8    ; 12 uses
  %6 = alloca %"class.std::unique_ptr.31", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN4geos2io9WKTReader20getNextEmptyOrOpenerB5cxx11EPNS0_15StringTokenizerERm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp eq i64 %i.c, 5
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.f = load i32, ptr %i.e, align 1
  %i.g = xor i32 %i.f, 1414548805
  %i.h = getelementptr i8, ptr %i.e, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = xor i32 %i.j, 89
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !22
  invoke void @_ZNK4geos4geom15GeometryFactory21createMultiLineStringEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.63") align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %i.p)
          to label %bb.w unwind label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread28: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18: ; preds = %bb.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !133
  invoke void @_ZNK4geos2io9WKTReader14getCoordinatesEPNS0_15StringTokenizerE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noundef nonnull %2)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
  %i.w = load ptr, ptr %1, align 8, !tbaa !22, !noalias !133
  invoke void @_ZNK4geos4geom15GeometryFactory16createLineStringEOSt10unique_ptrINS0_18CoordinateSequenceESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.31") align 8 %6, ptr noundef nonnull align 8 dereferenceable(45) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %3, align 8, !tbaa !26, !noalias !133 ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #17, !inline_history !30
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %3, align 8, !tbaa !26, !noalias !133 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i5.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i5.i: ; preds = %bb.d
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #17, !inline_history !30
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit6.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i5.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !133
  br label %.body

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !133
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !136 ; 6 uses
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !139
  %.not.i.i13 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i13, label %bb.f, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.e
  %i.ai = load i64, ptr %6, align 8, !tbaa !31
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !136
  br label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit
end_hunk_2
