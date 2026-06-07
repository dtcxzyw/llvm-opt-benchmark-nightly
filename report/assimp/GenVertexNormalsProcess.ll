inline.NumInlined: 219
inline.NumDeleted: 155
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.23 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.23 = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.Assimp::SpatialSort" = type <{ %class.aiVector3t, %class.aiVector3t, %"class.std::vector", i8, [7 x i8] }>
%class.aiVector3t = type { float, float, float }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Assimp::SpatialSort::Entry, std::allocator<Assimp::SpatialSort::Entry>>::_Vector_impl" }
%"struct.std::_Vector_base<Assimp::SpatialSort::Entry, std::allocator<Assimp::SpatialSort::Entry>>::_Vector_impl" = type { %"struct.std::_Vector_base<Assimp::SpatialSort::Entry, std::allocator<Assimp::SpatialSort::Entry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Assimp::SpatialSort::Entry, std::allocator<Assimp::SpatialSort::Entry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZN6Assimp11BaseProcessD2Ev = comdat any

$_ZN6Assimp23GenVertexNormalsProcessD0Ev = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@_ZTVN6Assimp23GenVertexNormalsProcessE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp23GenVertexNormalsProcessE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp23GenVertexNormalsProcessD0Ev, ptr @_ZNK6Assimp23GenVertexNormalsProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp23GenVertexNormalsProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp23GenVertexNormalsProcess7ExecuteEP7aiScene] }, align 8
@.str = private unnamed_addr constant [27 x i8] c"PP_GSN_MAX_SMOOTHING_ANGLE\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GenVertexNormalsProcess begin\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"Post-processing order mismatch: expecting pseudo-indexed (\22verbose\22) vertices here\00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.3 = private unnamed_addr constant [70 x i8] c"GenVertexNormalsProcess finished. Vertex normals have been calculated\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"GenVertexNormalsProcess finished. Normals are already there\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Normal vectors are undefined for line and point meshes\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"$Spat\00", align 1
@_ZTIN6Assimp23GenVertexNormalsProcessE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp23GenVertexNormalsProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTSN6Assimp23GenVertexNormalsProcessE = constant [35 x i8] c"N6Assimp23GenVertexNormalsProcessE\00", align 1
@_ZTIN6Assimp11BaseProcessE = external constant ptr
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8

@_ZN6Assimp23GenVertexNormalsProcessC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6Assimp23GenVertexNormalsProcessC2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Assimp23GenVertexNormalsProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(31) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp23GenVertexNormalsProcessE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float f0x40437A14, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 0, ptr %i.d, align 2
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @_ZNK6Assimp23GenVertexNormalsProcess8IsActiveEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(31) initializes((28, 31)) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = lshr i32 %1, 29
  %i.c = trunc nuw nsw i32 %i.b to i8
  %i.d = and i8 %i.c, 1
  store i8 %i.d, ptr %i.a, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.f = lshr i32 %1, 24
  %i.g = trunc nuw i32 %i.f to i8
  %i.h = and i8 %i.g, 1
  store i8 %i.h, ptr %i.e, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.j = trunc i32 %1 to i8
  %i.k = lshr i8 %i.j, 2
  %i.l = and i8 %i.k, 1
  store i8 %i.l, ptr %i.i, align 2
  %i.m = and i32 %1, 64
  %i.n = icmp ne i32 %i.m, 0
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp23GenVertexNormalsProcess15SetupPropertiesEPKNS_8ImporterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(31) initializes((24, 28)) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, float noundef 1.750000e+02) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = fcmp ogt float %i.a, 1.750000e+02
  %.sroa.speculated3 = select i1 %i.c, float 1.750000e+02, float %i.a ; 2 uses
  %i.d = fcmp olt float %.sroa.speculated3, 0.000000e+00
  %.sroa.speculated = select i1 %i.d, float 0.000000e+00, float %.sroa.speculated3
  %i.e = fmul float %.sroa.speculated, f0x3C8EFA35
  store float %i.e, ptr %i.b, align 8
  ret void
}

declare noundef float @_ZNK6Assimp8Importer16GetPropertyFloatEPKcf(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp23GenVertexNormalsProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(31) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str.1)
  %i.b = load i32, ptr %1, align 8
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #19
  resume { ptr, i32 } %i.h

._crit_edge:                                      ; preds = %bb.e
  br i1 %spec.select, label %bb.f, label %.critedge

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.01011 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.e ]
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = trunc nuw i64 %indvars.iv to i32
  %i.m = tail call noundef zeroext i1 @_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj(ptr noundef nonnull align 8 dereferenceable(31) %0, ptr noundef %i.k, i32 noundef %i.l)
  %spec.select = select i1 %i.m, i1 true, i1 %.01011 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.d, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.e, label %._crit_edge, !llvm.loop !3

bb.f:                                             ; preds = %._crit_edge
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.3)
  br label %bb.g

.critedge:                                        ; preds = %.preheader, %._crit_edge
  %i.r = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull @.str.4)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

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
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #19
  resume { ptr, i32 } %i.p
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(31) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.Assimp::SpatialSort", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.8", align 8     ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.ao

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #21
  store ptr null, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.g = load i32, ptr %1, align 8
  %i.h = and i32 %i.g, 12
  %.not125 = icmp eq i32 %i.h, 0
  br i1 %.not125, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull @.str.5)
  br label %bb.ao

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, 12                 ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq i32 %i.k, 0
  br i1 %i.o, label %.loopexit234, label %.loopexit234.loopexit

.loopexit234.loopexit:                            ; preds = %bb.f
  %i.p = add nsw i64 %i.m, -12                    ; 2 uses
  %i.q = urem i64 %i.p, 12
  %i.r = sub nuw nsw i64 %i.p, %i.q
  %i.s = add nsw i64 %i.r, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.n, i8 0, i64 %i.s, i1 false)
  br label %.loopexit234

.loopexit234:                                     ; preds = %.loopexit234.loopexit, %bb.f
  store ptr %i.n, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %.not266 = icmp eq i32 %i.u, 0
  br i1 %.not266, label %._crit_edge, label %.lr.ph239

.lr.ph239:                                        ; preds = %.loopexit234
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 30
  br label %bb.g

._crit_edge:                                      ; preds = %.loopexit232, %.loopexit234
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %3)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not126 = icmp eq ptr %i.aa, null
  br i1 %.not126, label %.thread, label %bb.j

bb.g:                                             ; preds = %.lr.ph239, %.loopexit232
  %indvars.iv279 = phi i64 [ 0, %.lr.ph239 ], [ %indvars.iv.next280, %.loopexit232 ] ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv279 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 3
  br i1 %i.ae, label %.preheader231, label %bb.i

.preheader231:                                    ; preds = %bb.g
  %.not268 = icmp eq i32 %i.ad, 0
  br i1 %.not268, label %.loopexit232, label %.lr.ph237

.lr.ph237:                                        ; preds = %.preheader231
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph237, %bb.h
  %indvars.iv276 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next277, %bb.h ] ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv276
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %i.ak ; 2 uses
  store <2 x float> splat (float +qnan), ptr %i.al, align 4
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store float +qnan, ptr %.sroa.5209.0..sroa_idx, align 4
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.am = load i32, ptr %i.ac, align 8
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next277, %i.an
  br i1 %i.ao, label %bb.h, label %.loopexit232, !llvm.loop !7

bb.i:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.ax ; 2 uses
  %i.az = add i32 %i.ad, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.x, align 1, !range !5, !noundef !6
  %i.bg = load i8, ptr %i.y, align 2, !range !5, !noundef !6
  %.not137 = icmp eq i8 %i.bf, %i.bg              ; 2 uses
  %spec.select = select i1 %.not137, ptr %i.be, ptr %i.ay ; 3 uses
  %spec.select229 = select i1 %.not137, ptr %i.ay, ptr %i.be ; 3 uses
  %i.bh = load float, ptr %spec.select229, align 4
  %i.bi = load float, ptr %i.au, align 4          ; 2 uses
  %i.bj = fsub float %i.bh, %i.bi                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %spec.select229, i64 4
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bn = load float, ptr %i.bm, align 4          ; 2 uses
  %i.bo = fsub float %i.bl, %i.bn                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select229, i64 8
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bs = load float, ptr %i.br, align 4          ; 2 uses
  %i.bt = fsub float %i.bq, %i.bs                 ; 2 uses
  %i.bu = load float, ptr %spec.select, align 4
  %i.bv = fsub float %i.bu, %i.bi                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.bx = load float, ptr %i.bw, align 4
  %i.by = fsub float %i.bx, %i.bn                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = fsub float %i.ca, %i.bs                 ; 2 uses
  %i.cc = fneg float %i.by
  %i.cd = fmul float %i.bt, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.cb, float %i.cd) ; 4 uses
  %i.cf = fneg float %i.cb
  %i.cg = fmul float %i.bj, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bv, float %i.cg) ; 4 uses
  %i.ci = fneg float %i.bv
  %i.cj = fmul float %i.bo, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.by, float %i.cj) ; 4 uses
  %.sroa.0.0.vec.insert.i142 = insertelement <2 x float> poison, float %i.ce, i64 0
  %.sroa.0.4.vec.insert.i143 = insertelement <2 x float> %.sroa.0.0.vec.insert.i142, float %i.ch, i64 1
  %i.cl = fmul float %i.ch, %i.ch
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cl)
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cm) ; 2 uses
  %i.co = fcmp ogt float %i.cn, 0.000000e+00
  br i1 %i.co, label %_ZN10aiVector3tIfEdVEf.exit.i, label %.lr.ph.preheader

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.i
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cn)
  %i.cp = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.cq = fmul float %i.ce, %i.cp
  %.sroa.0199.0.vec.insert = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cr = fmul float %i.ch, %i.cp
  %.sroa.0199.4.vec.insert = insertelement <2 x float> %.sroa.0199.0.vec.insert, float %i.cr, i64 1
  %i.cs = fmul float %i.ck, %i.cp
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.i
  %.sroa.0199.0 = phi <2 x float> [ %.sroa.0199.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.sroa.0.4.vec.insert.i143, %bb.i ]
  %.sroa.8.0 = phi float [ %i.cs, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.ck, %bb.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.im = extractelement <2 x float> %i.il, i64 0 ; 2 uses
  %i.in = fcmp ord float %i.im, 0.000000e+00
  br i1 %i.in, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.lr.ph258
  %i.io = icmp eq i64 %indvars.iv285, %i.ij
  br i1 %i.io, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ip = extractelement <2 x float> %i.il, i64 1
  %i.iq = fmul float %.sroa.5.0.copyload, %i.ip
  %i.ir = call float @llvm.fmuladd.f32(float %i.im, float %.sroa.0175.0.copyload, float %i.iq)
  %i.is = call noundef float @llvm.fmuladd.f32(float %.sroa.9.0.copyload, float %.sroa.6.0.copyload, float %i.ir)
  %i.it = fcmp ult float %i.is, %i.hf
  br i1 %i.it, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.iu = fadd <2 x float> %i.ig, %i.il
  %i.iv = fadd float %.sroa.14.0253, %.sroa.9.0.copyload
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph258
  %.sroa.14.1 = phi float [ %i.iv, %bb.af ], [ %.sroa.14.0253, %bb.ae ], [ %.sroa.14.0253, %.lr.ph258 ] ; 2 uses
  %i.iw = phi <2 x float> [ %i.iu, %bb.af ], [ %i.ig, %bb.ae ], [ %i.ig, %.lr.ph258 ] ; 2 uses
  %i.ix = add i32 %.0256, 1                       ; 2 uses
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  %i.iz = icmp ugt i64 %i.hs, %i.iy
  br i1 %i.iz, label %.lr.ph258, label %._crit_edge259, !llvm.loop !13

_ZN10aiVector3tIfE13NormalizeSafeEv.exit161:      ; preds = %_ZN10aiVector3tIfEdVEf.exit.i159, %._crit_edge259
  %.sroa.14.2 = phi float [ %i.id, %_ZN10aiVector3tIfEdVEf.exit.i159 ], [ %.sroa.14.0.lcssa, %._crit_edge259 ]
  %i.ja = phi <2 x float> [ %i.ic, %_ZN10aiVector3tIfEdVEf.exit.i159 ], [ %i.ht, %._crit_edge259 ]
  %i.jb = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %indvars.iv285 ; 2 uses
  store <2 x float> %i.ja, ptr %i.jb, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store float %.sroa.14.2, ptr %.sroa.14.0..sroa_idx, align 4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.jc = load i32, ptr %i.j, align 4
  %i.jd = zext i32 %i.jc to i64
  %i.je = icmp samesign ult i64 %indvars.iv.next286, %i.jd
  br i1 %i.je, label %bb.aa, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, !llvm.loop !14

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit161, %.thread217, %bb.z, %._crit_edge252
  %i.jf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.jf) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  store ptr %i.dx, ptr %i.b, align 8
  %i.jh = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp11SpatialSortD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.jt) #21
  br label %_ZN6Assimp11SpatialSortD2Ev.exit

_ZN6Assimp11SpatialSortD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ao

_ZNSt13_Bvector_baseISaIbEED2Ev.exit158:          ; preds = %bb.t, %.thread220, %bb.ac, %bb.s
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %i.ie, %bb.ac ], [ %i.eq, %bb.s ], [ %i.fs, %.thread220 ], [ %i.er, %bb.t ]
  %i.ju = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorIjSaIjEED2Ev.exit163, label %bb.al

bb.al:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158
  %i.jv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jz) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit163

_ZNSt6vectorIjSaIjEED2Ev.exit163:                 ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit158, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit163, %bb.n, %bb.k
  %.pn131.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit163 ], [ %i.dt, %bb.n ], [ %i.dj, %bb.k ]
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8            ; 3 uses
  %.not.i.i.i.i164 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i.i164, label %_ZN6Assimp11SpatialSortD2Ev.exit165, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #21
  br label %_ZN6Assimp11SpatialSortD2Ev.exit165

_ZN6Assimp11SpatialSortD2Ev.exit165:              ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn131.pn.pn.pn.pn

bb.ao:                                            ; preds = %bb.b, %_ZN6Assimp11SpatialSortD2Ev.exit, %bb.e
  %.095 = phi i1 [ true, %_ZN6Assimp11SpatialSortD2Ev.exit ], [ false, %bb.e ], [ false, %bb.b ]
  ret i1 %.095
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49)) unnamed_addr #4

declare void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef) local_unnamed_addr #4

declare void @_ZNK6Assimp11SpatialSort13FindPositionsERK10aiVector3tIfEfRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 4 dereferenceable(12), float noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp23GenVertexNormalsProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(31) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #21
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #19
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #19
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #19
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !24
  store i8 0, ptr %i.a, align 8, !alias.scope !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !24 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !24 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !24 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #19
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_Z18GetGenericPropertyIPN6Assimp21SharedPostProcessInfo4BaseEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = load i16, ptr %.05463.i, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = add i32 %.05562.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 11
  %i.m = shl i32 %i.h, 16
  %i.n = xor i32 %i.l, %i.m
  %i.o = xor i32 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.q = lshr i32 %i.o, 11
  %i.r = add i32 %i.q, %i.o
  %i.s = load i16, ptr %i.p, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.r, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 11
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !25

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

end_hunk_1
