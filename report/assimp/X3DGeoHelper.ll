inline.NumInlined: 1138
inline.NumDeleted: 495
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.35 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.35 = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%struct.aiFace = type { i32, ptr }
%"class.std::__cxx11::list.20" = type { %"class.std::__cxx11::_List_base.21" }
%"class.std::__cxx11::_List_base.21" = type { %"struct.std::__cxx11::_List_base<aiColor4t<float>, std::allocator<aiColor4t<float>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<aiColor4t<float>, std::allocator<aiColor4t<float>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<aiFace, std::allocator<aiFace>>::_Vector_impl" }
%"struct.std::_Vector_base<aiFace, std::allocator<aiFace>>::_Vector_impl" = type { %"struct.std::_Vector_base<aiFace, std::allocator<aiFace>>::_Vector_impl_data" }
%"struct.std::_Vector_base<aiFace, std::allocator<aiFace>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZNSt6vectorI6aiFaceSaIS0_EE7reserveEm = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_ = comdat any

$_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_ = comdat any

$_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_ = comdat any

$_ZNSt6vectorI6aiFaceSaIS0_EED2Ev = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZNSt6vectorI6aiFaceSaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_ = comdat any

$_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_ = comdat any

$_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@.str = private unnamed_addr constant [38 x i8] c"GeometryHelper_Make_Arc2D.pStartAngle\00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [36 x i8] c"GeometryHelper_Make_Arc2D.pEndAngle\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GeometryHelper_Make_Arc2D.pRadius\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"GeometryHelper_Extend_PointToLine.pPoint.size() can not be less than 2.\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"MeshGeometry_AddColor1. Colors count(\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c") can not be less than Vertices count(\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c").\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c") can not be less than Faces count(\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"MeshGeometry_AddColor2. pCoordIdx can not be empty.\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"MeshGeometry_AddColor2. Colors indices count(\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c") can not be less than Coords indices count(\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"MeshGeometry_AddColor2. Coordinate idx is out of range.\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"MeshGeometry_AddColor2. Color idx is out of range.\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"MeshGeometry_AddColor2. Colors count(\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"MeshGeometry_AddColor2. Face idx is out of range.\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Normals and Coords inidces count must be equal.\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"MeshGeometry_AddNormal. Normal index(\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c") is out of range. Normals count: \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.19 = private unnamed_addr constant [66 x i8] c"MeshGeometry_AddNormal. Normals and vertices count must be equal.\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"Normals faces count must be equal to mesh faces count.\00", align 1
@.str.21 = private unnamed_addr constant [63 x i8] c"MeshGeometry_AddNormal. Normals and faces count must be equal.\00", align 1
@.str.22 = private unnamed_addr constant [64 x i8] c"Failed to add texture coordinates to mesh, faces list is empty.\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"Texture coordinates faces count must be equal to mesh faces count.\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"Number of indices in texture face and mesh face must be equal. Invalid face index: \00", align 1
@.str.25 = private unnamed_addr constant [80 x i8] c"MeshGeometry_AddTexCoord. Texture coordinates and vertices count must be equal.\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"Failed to create mesh, faces list is empty.\00", align 1
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.29 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.32 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden { <2 x float>, float } @_ZN6Assimp12X3DGeoHelper12make_point2DEff(float noundef %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %0) #21
  %i.b = fmul float %1, %i.a
  %i.c = tail call noundef float @sinf(float noundef %0) #21
  %i.d = fmul float %1, %i.c
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.b, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.d, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float 0.000000e+00, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12X3DGeoHelper10make_arc2DEfffmRNSt7__cxx114listI10aiVector3tIfESaIS4_EEE(float noundef %0, float noundef %1, float noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0)
  %or.cond = fcmp ogt float %i.a, f0x40C90FDB
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.d = tail call float @llvm.fabs.f32(float %1)
  %or.cond3 = fcmp ogt float %i.d, f0x40C90FDB
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.g = fcmp ugt float %2, 0.000000e+00
  br i1 %i.g, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.i
  %i.j = fsub float %1, %0                        ; 2 uses
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.j) ; 2 uses
  %i.l = fcmp ogt float %i.k, f0x40C90FDB
  %i.m = fcmp oeq float %i.j, 0.000000e+00
  %or.cond5 = or i1 %i.m, %i.l
  %spec.store.select = select i1 %or.cond5, float f0x40C90FDB, float %i.k ; 2 uses
  %i.n = uitofp i64 %3 to float
  %i.o = fdiv float %spec.store.select, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %5 = insertelement <2 x float> poison, float %2, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.q = fcmp oeq float %spec.store.select, f0x40C90FDB
  br i1 %i.q, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.o
  %.03036 = phi i64 [ 0, %bb.m ], [ %i.z, %bb.o ] ; 2 uses
  %i.r = uitofp i64 %.03036 to float
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.o, float %0) ; 2 uses
  %i.t = tail call noundef float @cosf(float noundef %i.s) #21
  %i.u = tail call noundef float @sinf(float noundef %i.s) #21
  %7 = insertelement <2 x float> poison, float %i.t, i64 0
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %7, float %i.u, i64 1
  %8 = fmul <2 x float> %6, %.sroa.0.0.vec.insert.i
  %i.v = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x float> %8, ptr %i.w, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 4
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  %i.x = load i64, ptr %i.p, align 8
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.p, align 8
  %i.z = add i64 %.03036, 1                       ; 2 uses
  %.not = icmp ugt i64 %i.z, %3
  br i1 %.not, label %bb.n, label %bb.o, !llvm.loop !3

bb.p:                                             ; preds = %bb.n
  %i.aa = load ptr, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  %i.ae = load i64, ptr %i.p, align 8
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.p, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  ret void

bb.r:                                             ; preds = %bb.l, %bb.h, %bb.d
  %.sink = phi ptr [ %i.h, %bb.l ], [ %i.e, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.i, %bb.l ], [ %i.f, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #21
  resume { ptr, i32 } %i.p
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12X3DGeoHelper20extend_point_to_lineERKNSt7__cxx114listI10aiVector3tIfESaIS4_EEERS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #21
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1) #21
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8
  %.not15 = icmp eq ptr %i.i, %i.b
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.010.016 = phi ptr [ %i.y, %.lr.ph ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 16 ; 2 uses
  %i.q = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1) #21
  %i.s = load i64, ptr %i.m, align 8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.m, align 8
  %i.u = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1) #21
  %i.w = load i64, ptr %i.m, align 8
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.m, align 8
  %i.y = load ptr, ptr %.sroa.010.016, align 8    ; 3 uses
  %.not = icmp eq ptr %i.y, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.sroa.010.0.lcssa = phi ptr [ %i.i, %bb.e ], [ %i.y, %.lr.ph ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa, i64 16
  %i.aa = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %1) #21
  %i.ac = load i64, ptr %i.m, align 8
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12X3DGeoHelper22polylineIdx_to_lineIdxERKNSt7__cxx114listIiSaIiEEERS4_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not2432 = icmp eq ptr %i.a, %0
  br i1 %.not2432, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph34, %.critedge
  %.sroa.016.033 = phi ptr [ %i.a, %.lr.ph34 ], [ %.sroa.016.1.lcssa, %.critedge ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.016.033, align 8    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.016.033, i64 16
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.d, align 8
  store i32 %i.g, ptr %i.f, align 4
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1) #21
  %storemerge.in25 = load i64, ptr %i.b, align 8
  %storemerge26 = add i64 %storemerge.in25, 1
  store i64 %storemerge26, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
end_hunk_0
