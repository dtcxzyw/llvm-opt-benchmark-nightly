inline.NumInlined: 1393
inline.NumDeleted: 732
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.Assimp::AMFImporter::SPP_Texture" = type { %"class.std::__cxx11::basic_string", i64, i64, i64, i8, [9 x i8], ptr }
%"class.std::__cxx11::list.49" = type { %"class.std::__cxx11::_List_base.50" }
%"class.std::__cxx11::_List_base.50" = type { %"struct.std::__cxx11::_List_base<Assimp::AMFImporter::SComplexFace, std::allocator<Assimp::AMFImporter::SComplexFace>>::_List_impl" }
%"struct.std::__cxx11::_List_base<Assimp::AMFImporter::SComplexFace, std::allocator<Assimp::AMFImporter::SComplexFace>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%struct.aiString = type { i32, [1024 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<AMFColor *, std::allocator<AMFColor *>>::_Vector_impl" }
%"struct.std::_Vector_base<AMFColor *, std::allocator<AMFColor *>>::_Vector_impl" = type { %"struct.std::_Vector_base<AMFColor *, std::allocator<AMFColor *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<AMFColor *, std::allocator<AMFColor *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::list.66" = type { %"class.std::__cxx11::_List_base.67" }
%"class.std::__cxx11::_List_base.67" = type { %"struct.std::__cxx11::_List_base<unsigned int, std::allocator<unsigned int>>::_List_impl" }
%"struct.std::__cxx11::_List_base<unsigned int, std::allocator<unsigned int>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"class.std::__cxx11::list.44" = type { %"class.std::__cxx11::_List_base.45" }
%"class.std::__cxx11::_List_base.45" = type { %"struct.std::__cxx11::_List_base<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>, std::allocator<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>, std::allocator<std::__cxx11::list<Assimp::AMFImporter::SComplexFace>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%class.anon.76 = type { ptr, ptr, ptr, ptr, ptr }
%"struct.Assimp::AMFImporter::SPP_Material" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::list", ptr, %"class.std::__cxx11::list.3" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<AMFMetadata *, std::allocator<AMFMetadata *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<AMFMetadata *, std::allocator<AMFMetadata *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"class.std::__cxx11::list.3" = type { %"class.std::__cxx11::_List_base.4" }
%"class.std::__cxx11::_List_base.4" = type { %"struct.std::__cxx11::_List_base<Assimp::AMFImporter::SPP_Composite, std::allocator<Assimp::AMFImporter::SPP_Composite>>::_List_impl" }
%"struct.std::__cxx11::_List_base<Assimp::AMFImporter::SPP_Composite, std::allocator<Assimp::AMFImporter::SPP_Composite>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"class.std::__cxx11::list.84" = type { %"class.std::__cxx11::_List_base.85" }
%"class.std::__cxx11::_List_base.85" = type { %"struct.std::__cxx11::_List_base<aiNode *, std::allocator<aiNode *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<aiNode *, std::allocator<aiNode *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"class.std::vector.89" = type { %"struct.std::_Vector_base.90" }
%"struct.std::_Vector_base.90" = type { %"struct.std::_Vector_base<aiNode *, std::allocator<aiNode *>>::_Vector_impl" }
%"struct.std::_Vector_base<aiNode *, std::allocator<aiNode *>>::_Vector_impl" = type { %"struct.std::_Vector_base<aiNode *, std::allocator<aiNode *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<aiNode *, std::allocator<aiNode *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.61" = type { %"struct.std::_Vector_base.62" }
%"struct.std::_Vector_base.62" = type { %"struct.std::_Vector_base<aiMesh *, std::allocator<aiMesh *>>::_Vector_impl" }
%"struct.std::_Vector_base<aiMesh *, std::allocator<aiMesh *>>::_Vector_impl" = type { %"struct.std::_Vector_base<aiMesh *, std::allocator<aiMesh *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<aiMesh *, std::allocator<aiMesh *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.56" = type { %"struct.std::_Vector_base.57" }
%"struct.std::_Vector_base.57" = type { %"struct.std::_Vector_base<AMFMetadata *, std::allocator<AMFMetadata *>>::_Vector_impl" }
%"struct.std::_Vector_base<AMFMetadata *, std::allocator<AMFMetadata *>>::_Vector_impl" = type { %"struct.std::_Vector_base<AMFMetadata *, std::allocator<AMFMetadata *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<AMFMetadata *, std::allocator<AMFMetadata *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev = comdat any

$_ZN6Assimp11AMFImporter12SPP_MaterialD2Ev = comdat any

$_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_ = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev = comdat any

$_ZNSt6vectorIP8AMFColorSaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt7__cxx114listIN6Assimp11AMFImporter12SComplexFaceESaIS3_EEC2ERKS5_ = comdat any

$_ZN6Assimp11AMFImporter12SPP_MaterialC2ERKS1_ = comdat any

$_ZNSt7__cxx114listIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EE9_M_insertIJRKS3_EEEvSt14_List_iteratorIS3_EDpOT_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@.str = private unnamed_addr constant [30 x i8] c"IME. GetColor for composition\00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [30 x i8] c"IME. GetColor, composed color\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"PostprocessHelper_GetTextureID_Or_Create. At least one texture ID must be defined.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"PostprocessHelper_GetTextureID_Or_Create. Source texture must has the same size.\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"Postprocess. MetaData member in node are not nullptr. Something went wrong.\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"IME: face color composed\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Only <instance> nodes can be in <constellation>.\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"<constellation> must have at least one <instance>.\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Root(<amf>) element not found.\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"$tex.file\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"$tex.op\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"$tex.mapmodeu\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"$tex.mapmodev\00", align 1
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.17 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"IME: vertex color composed\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"IME: volume color composed\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"IME: object color composed\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define hidden { <2 x float>, <2 x float> } @_ZNK6Assimp11AMFImporter12SPP_Material8GetColorEfff(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(88) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i8, ptr %i.h, align 8, !range !3, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.m, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.n = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.6.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.n
  %i.o = fcmp une <4 x float> %.fr, zeroinitializer
  %i.p = bitcast <4 x i1> %i.o to i4
  %i.q = icmp eq i4 %i.p, 0                       ; 2 uses
  %.sroa.0.0 = select i1 %i.q, <2 x float> splat (float 5.000000e-01), <2 x float> %.sroa.0.0.copyload
  %.sroa.6.0 = select i1 %i.q, <2 x float> <float 5.000000e-01, float 1.000000e+00>, <2 x float> %.sroa.6.0.copyload
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.k, %bb.h ], [ %i.d, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.e, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #21
end_hunk_0
begin_hunk_1_@_ZNK6Assimp11AMFImporter23Postprocess_AddMetadataERKSt6vectorIP11AMFMetadataSaIS3_EER6aiNode:bb.a

bb.l:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cj = load i32, ptr %i.cg, align 8
  %.not25.i = icmp eq i32 %i.cj, 7
  br i1 %.not25.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.ci, ptr noundef nonnull align 4 dereferenceable(1028) %3, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.n:                                             ; preds = %bb.l
  store i32 %spec.select.i, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr nonnull align 4 %i.bb, i64 %i.bn, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.bn
  store i8 0, ptr %i.cl, align 1
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread29.i:                                      ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cm = tail call noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #24 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cn, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i, ptr %i.cm, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr nonnull align 4 %i.bb, i64 %i.bn, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.bn
  store i8 0, ptr %i.co, align 1
  store ptr %i.cm, ptr %i.ch, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.h, %bb.i, %bb.m, %bb.n, %.thread29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %i.cp, %i.ba
  br i1 %.not17, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZN10aiMetadata5AllocEj.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter30Postprocess_BuildNodeAndObjectERK9AMFObjectRSt6vectorIP6aiMeshSaIS6_EEPP6aiNode(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %5 = alloca %"class.std::vector.17", align 8    ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24 ; 5 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp ugt i64 %i.c, 1023
  br i1 %i.d, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = trunc nuw nsw i64 %i.c to i32
  store i32 %i.f, ptr %i.a, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 1 %i.h, i64 %i.c, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store i8 0, ptr %i.i, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.sroa.024.027 = load ptr, ptr %i.j, align 8    ; 2 uses
  %.not28 = icmp eq ptr %.sroa.024.027, %i.j
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ret void

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1144) #23
  br label %bb.n

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23
  %.sroa.024.030 = phi ptr [ %.sroa.024.027, %.lr.ph ], [ %.sroa.024.0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23 ] ; 2 uses
  %.029 = phi ptr [ null, %.lr.ph ], [ %spec.select, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %spec.select = select i1 %i.r, ptr %i.o, ptr %.029
  %i.s = icmp eq i32 %i.q, 7
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit21

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6Assimp11AMFImporter37PostprocessHelper_CreateMeshDataArrayERK7AMFMeshRSt6vectorI10aiVector3tIfESaIS6_EERS4_IP8AMFColorSaISB_EE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %.029, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(1144) %i.t)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #23
  br label %_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit

_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit:         ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aa = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %.pre = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %.pre to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ai) #23
  br label %_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit21

_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit21:       ; preds = %bb.e, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aj = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit21
  %i.ak = load ptr, ptr %i.l, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit23:  ; preds = %_ZNSt6vectorIP8AMFColorSaIS1_EED2Ev.exit21, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.sroa.024.0 = load ptr, ptr %.sroa.024.030, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.024.0, %i.j
  br i1 %.not, label %._crit_edge, label %bb.e

bb.n:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %5, ptr noundef nonnull align 8 captures(none) dereferenceable(1144) %6) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %7 = alloca %"class.std::__cxx11::list.66", align 8 ; 17 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::list.49", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::list.44", align 8 ; 18 uses
  %10 = alloca %class.anon.76, align 8            ; 10 uses
  store ptr %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %7, ptr %i.d, align 8
  store ptr %7, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.sroa.0554.01308 = load ptr, ptr %i.f, align 8 ; 2 uses
  %.not5751309 = icmp eq ptr %.sroa.0554.01308, %i.f
  br i1 %.not5751309, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit, label %.lr.ph1312

.lr.ph1312:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.b

._crit_edge1313:                                  ; preds = %bb.du
  %.pre1810 = load ptr, ptr %7, align 8           ; 4 uses
  %i.r = icmp eq ptr %.pre1810, %7
  br i1 %i.r, label %.loopexit, label %bb.dv

bb.b:                                             ; preds = %.lr.ph1312, %bb.du
  %.sroa.0554.01310 = phi ptr [ %.sroa.0554.01308, %.lr.ph1312 ], [ %.sroa.0554.0, %bb.du ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0554.01310, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr null, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, 15
  br i1 %i.w, label %bb.c, label %bb.du

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %8, ptr %i.g, align 8
  store ptr %8, ptr %8, align 8
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %9, ptr %i.i, align 8
  store ptr %9, ptr %9, align 8
  store i64 0, ptr %i.j, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = invoke noundef zeroext i1 @_ZNK6Assimp11AMFImporter22Find_ConvertedMaterialERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKNS0_12SPP_MaterialE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %.loopexit625

bb.e:                                             ; preds = %bb.d
  br i1 %i.ab, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6Assimp11AMFImporter17Throw_ID_NotFoundERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #22
          to label %bb.g unwind label %.loopexit.split-lp626

bb.g:                                             ; preds = %bb.f
  unreachable

.loopexit625:                                     ; preds = %bb.d, %._crit_edge
  %lpad.loopexit627 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit165

.loopexit.split-lp626:                            ; preds = %bb.f
  %lpad.loopexit.split-lp628 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit165

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 3 uses
  %.sroa.0550.01192 = load ptr, ptr %i.ac, align 8 ; 2 uses
  %.not5761193 = icmp eq ptr %.sroa.0550.01192, %i.ac
  br i1 %.not5761193, label %._crit_edge, label %.lr.ph1195

._crit_edge:                                      ; preds = %bb.q, %bb.h
  invoke void @_ZN6Assimp11AMFImporter39PostprocessHelper_SplitFacesByTextureIDERNSt7__cxx114listINS0_12SComplexFaceESaIS3_EEERNS2_IS5_SaIS5_EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.preheader611 unwind label %.loopexit625

.preheader611:                                    ; preds = %._crit_edge
  %.sroa.0535.01303 = load ptr, ptr %9, align 8   ; 3 uses
  %.not5771304 = icmp eq ptr %.sroa.0535.01303, %9
  br i1 %.not5771304, label %._crit_edge1307, label %.lr.ph1306

.lr.ph1195:                                       ; preds = %bb.h, %bb.q
  %.sroa.0550.01194 = phi ptr [ %.sroa.0550.0, %bb.q ], [ %.sroa.0550.01192, %bb.h ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0550.01194, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  switch i32 %i.ag, label %bb.q [
    i32 0, label %bb.i
    i32 10, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph1195
  store ptr %i.ae, ptr %i.b, align 8
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph1195
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.aj = load i64, ptr %i.ai, align 8
  %.not161 = icmp eq i64 %i.aj, 0
  br i1 %.not161, label %.loopexit610, label %.preheader609

.preheader609:                                    ; preds = %bb.j
  %.sroa.0539.01186 = load ptr, ptr %i.ah, align 8 ; 2 uses
  %.not5821187 = icmp eq ptr %.sroa.0539.01186, %i.ah
  br i1 %.not5821187, label %.loopexit610, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader609, %bb.m
  %.sroa.0539.01190 = phi ptr [ %.sroa.0539.0, %bb.m ], [ %.sroa.0539.01186, %.preheader609 ] ; 2 uses
  %.sroa.16.01189 = phi ptr [ %.sroa.16.1, %bb.m ], [ null, %.preheader609 ] ; 2 uses
  %.sroa.13.01188 = phi ptr [ %.sroa.13.1, %bb.m ], [ null, %.preheader609 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0539.01190, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8
  switch i32 %i.an, label %bb.m [
    i32 0, label %bb.k
    i32 11, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l, %bb.k
  %.sroa.13.1 = phi ptr [ %.sroa.13.01188, %.lr.ph ], [ %i.al, %bb.k ], [ %.sroa.13.01188, %bb.l ] ; 2 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.01189, %.lr.ph ], [ %.sroa.16.01189, %bb.k ], [ %i.al, %bb.l ] ; 2 uses
  %.sroa.0539.0 = load ptr, ptr %.sroa.0539.01190, align 8 ; 2 uses
  %.not582 = icmp eq ptr %.sroa.0539.0, %i.ah
  br i1 %.not582, label %.loopexit610, label %.lr.ph

.loopexit610:                                     ; preds = %bb.m, %.preheader609, %bb.j
  %.sroa.13.2 = phi ptr [ null, %bb.j ], [ null, %.preheader609 ], [ %.sroa.13.1, %bb.m ]
  %.sroa.16.2 = phi ptr [ null, %bb.j ], [ null, %.preheader609 ], [ %.sroa.16.1, %bb.m ]
  %i.ao = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #24
          to label %bb.n unwind label %.body.thread563 ; 6 uses

.body.thread563:                                  ; preds = %.loopexit610
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit165

bb.n:                                             ; preds = %.loopexit610
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  store i32 %i.as, ptr %i.ao, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24
          to label %bb.o unwind label %.body      ; 6 uses

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  store ptr null, ptr %i.bd, align 8
  store i32 3, ptr %i.bc, align 8
  %i.be = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #24
          to label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit unwind label %.body.thread ; 2 uses

.body.thread:                                     ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 48) #23
  br label %bb.p

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit:   ; preds = %bb.o
  store ptr %i.be, ptr %i.bd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 12, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %.sroa.13.2, ptr %i.bg, align 8
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
end_hunk_1
begin_hunk_2_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a

.noexc245:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233: ; preds = %bb.ax
  %i.iz = ashr exact i64 %i.ix, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i234 = call i64 @llvm.umax.i64(i64 %i.iz, i64 1)
  %i.ja = add nsw i64 %.sroa.speculated.i.i.i.i234, %i.iz ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.iz
  %i.jc = call i64 @llvm.umin.i64(i64 %i.ja, i64 576460752303423487)
  %i.jd = select i1 %i.jb, i64 576460752303423487, i64 %i.jc ; 3 uses
  %.not.i.i.i.i235 = icmp ne i64 %i.jd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i235)
  %i.je = shl nuw nsw i64 %i.jd, 4
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #24
          to label %.noexc246 unwind label %.loopexit603 ; 6 uses

.noexc246:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.ix ; 2 uses
  store <2 x float> %i.it, ptr %i.jg, align 4
  %.sroa.6.0..sroa_idx428 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store <2 x float> %i.iu, ptr %.sroa.6.0..sroa_idx428, align 4
  %.not10.i.i.i.i.i.i236 = icmp eq ptr %.sroa.0440.21201, %.sroa.18.01207
  br i1 %.not10.i.i.i.i.i.i236, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241, label %.lr.ph.i.i.i.i.i.i237.preheader

.lr.ph.i.i.i.i.i.i237.preheader:                  ; preds = %.noexc246
  %i.jh = sub i64 %.sroa.0440.16.pn12023338, %i.iw ; 2 uses
  %i.ji = lshr i64 %i.jh, 4
  %i.jj = add nuw nsw i64 %i.ji, 1
  %xtraiter3339 = and i64 %i.jj, 3                ; 2 uses
  %lcmp.mod3340.not = icmp eq i64 %xtraiter3339, 0
  br i1 %lcmp.mod3340.not, label %.lr.ph.i.i.i.i.i.i237.prol.loopexit, label %.lr.ph.i.i.i.i.i.i237.prol

.lr.ph.i.i.i.i.i.i237.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i237.preheader, %.lr.ph.i.i.i.i.i.i237.prol
  %.012.i.i.i.i.i.i238.prol = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i237.prol ], [ %i.jf, %.lr.ph.i.i.i.i.i.i237.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i239.prol = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i237.prol ], [ %.sroa.0440.21201, %.lr.ph.i.i.i.i.i.i237.preheader ] ; 2 uses
  %prol.iter3341 = phi i64 [ %prol.iter3341.next, %.lr.ph.i.i.i.i.i.i237.prol ], [ 0, %.lr.ph.i.i.i.i.i.i237.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i238.prol, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i239.prol, i64 16, i1 false), !alias.scope !55
  %i.jk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239.prol, i64 16 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238.prol, i64 16 ; 3 uses
  %prol.iter3341.next = add i64 %prol.iter3341, 1 ; 2 uses
  %prol.iter3341.cmp.not = icmp eq i64 %prol.iter3341.next, %xtraiter3339
  br i1 %prol.iter3341.cmp.not, label %.lr.ph.i.i.i.i.i.i237.prol.loopexit, label %.lr.ph.i.i.i.i.i.i237.prol, !llvm.loop !59

.lr.ph.i.i.i.i.i.i237.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i237.prol, %.lr.ph.i.i.i.i.i.i237.preheader
  %.lcssa2890.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i237.preheader ], [ %i.jl, %.lr.ph.i.i.i.i.i.i237.prol ]
  %.012.i.i.i.i.i.i238.unr = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i.i237.preheader ], [ %i.jl, %.lr.ph.i.i.i.i.i.i237.prol ]
  %.0911.i.i.i.i.i.i239.unr = phi ptr [ %.sroa.0440.21201, %.lr.ph.i.i.i.i.i.i237.preheader ], [ %i.jk, %.lr.ph.i.i.i.i.i.i237.prol ]
  %i.jm = icmp ult i64 %i.jh, 48
  br i1 %i.jm, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241, label %.lr.ph.i.i.i.i.i.i237

.lr.ph.i.i.i.i.i.i237:                            ; preds = %.lr.ph.i.i.i.i.i.i237.prol.loopexit, %.lr.ph.i.i.i.i.i.i237
  %.012.i.i.i.i.i.i238 = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i.i237 ], [ %.012.i.i.i.i.i.i238.unr, %.lr.ph.i.i.i.i.i.i237.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i239 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i.i237 ], [ %.0911.i.i.i.i.i.i239.unr, %.lr.ph.i.i.i.i.i.i237.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i238, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i239, i64 16, i1 false), !alias.scope !55
  %i.jn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jo, ptr noundef nonnull align 4 dereferenceable(16) %i.jn, i64 16, i1 false), !alias.scope !55
  %i.jp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jq, ptr noundef nonnull align 4 dereferenceable(16) %i.jp, i64 16, i1 false), !alias.scope !55
  %i.jr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 48 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.js, ptr noundef nonnull align 4 dereferenceable(16) %i.jr, i64 16, i1 false), !alias.scope !55
  %i.jt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i239, i64 64
  %i.ju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i238, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i240.3 = icmp eq ptr %i.jr, %.sroa.0440.16.pn1202
  br i1 %.not.i.i.i.i.i.i240.3, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241, label %.lr.ph.i.i.i.i.i.i237, !llvm.loop !60

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241: ; preds = %.lr.ph.i.i.i.i.i.i237.prol.loopexit, %.lr.ph.i.i.i.i.i.i237, %.noexc246
  %.0.lcssa.i.i.i.i.i.i242 = phi ptr [ %i.jf, %.noexc246 ], [ %.lcssa2890.unr, %.lr.ph.i.i.i.i.i.i237.prol.loopexit ], [ %i.ju, %.lr.ph.i.i.i.i.i.i237 ]
  %.not.i23.i.i.i243 = icmp eq ptr %.sroa.0440.21201, null
  br i1 %.not.i23.i.i.i243, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.21201, i64 noundef %i.ix) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244: ; preds = %bb.az, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i241
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %i.jd
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244, %bb.aw
  %.sroa.0440.17 = phi ptr [ %i.jf, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244 ], [ %.sroa.0440.21201, %bb.aw ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i242.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i242, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244 ], [ %.sroa.18.01207, %bb.aw ] ; 2 uses
  %.sroa.37.17 = phi ptr [ %i.jv, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i244 ], [ %.sroa.37.21203, %bb.aw ] ; 2 uses
  %i.jw = add nuw nsw i64 %.05571204, 1           ; 3 uses
  %.not149 = icmp eq i64 %.5.lcssa.i, %i.jw
  %.sroa.05.023.i.pre1807 = load ptr, ptr %i.bx, align 8 ; 3 uses
  %.not6.i249 = icmp eq ptr %.sroa.05.023.i.pre1807, %i.bx
  %or.cond2388 = select i1 %.not149, i1 true, i1 %.not6.i249
  br i1 %or.cond2388, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259", label %.lr.ph8.i250

.lr.ph8.i250:                                     ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247
  %i.jx = trunc nuw i64 %i.jw to i32
  br label %bb.ba

.loopexit.i255:                                   ; preds = %bb.bd, %bb.ba
  %.sroa.01.0.i256 = load ptr, ptr %.sroa.01.07.i251, align 8 ; 2 uses
  %.not.i257 = icmp eq ptr %.sroa.01.0.i256, %i.bx
  br i1 %.not.i257, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259.loopexit", label %bb.ba

bb.ba:                                            ; preds = %.loopexit.i255, %.lr.ph8.i250
  %.sroa.01.07.i251 = phi ptr [ %.sroa.05.023.i.pre1807, %.lr.ph8.i250 ], [ %.sroa.01.0.i256, %.loopexit.i255 ] ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i251, i64 16 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 8            ; 2 uses
  %.not9.i252 = icmp eq i32 %i.jz, 0
  br i1 %.not9.i252, label %.loopexit.i255, label %.lr.ph.i253

.lr.ph.i253:                                      ; preds = %bb.ba
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i251, i64 24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %.lr.ph.i253
  %i.kb = phi i32 [ %i.jz, %.lr.ph.i253 ], [ %i.kh, %bb.bd ]
  %.04.i254 = phi i64 [ 0, %.lr.ph.i253 ], [ %i.ki, %bb.bd ] ; 2 uses
  %i.kc = load ptr, ptr %i.ka, align 8
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %.04.i254 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = zext i32 %i.ke to i64
  %i.kg = icmp eq i64 %.5.lcssa.i, %i.kf
  br i1 %i.kg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.jx, ptr %i.kd, align 4
  %.pre.i258 = load i32, ptr %i.jy, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kh = phi i32 [ %i.kb, %bb.bb ], [ %.pre.i258, %bb.bc ] ; 2 uses
  %i.ki = add nuw nsw i64 %.04.i254, 1            ; 2 uses
  %i.kj = zext i32 %i.kh to i64
  %i.kk = icmp samesign ult i64 %i.ki, %i.kj
  br i1 %i.kk, label %bb.bb, label %.loopexit.i255, !llvm.loop !48

.loopexit603:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233
  %.sroa.37.21203.lcssa1356 = phi ptr [ %.sroa.37.21203, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit231 ], [ %.sroa.18.01207, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i233 ]
  %lpad.loopexit605 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp604:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp606 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259.loopexit": ; preds = %.loopexit.i255
  %.sroa.05.023.i.pre = load ptr, ptr %i.bx, align 8
  br label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259"

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259": ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259.loopexit", %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247
  %.sroa.05.023.i = phi ptr [ %.sroa.05.023.i.pre, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259.loopexit" ], [ %.sroa.05.023.i.pre1807, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backEOS1_.exit247 ] ; 3 uses
  %.sroa.18.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i242.pn, i64 16 ; 2 uses
  %.sroa.22.0 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i226.pn, i64 12 ; 2 uses
  %.not1724.i = icmp eq ptr %.sroa.05.023.i, %i.bx
  br i1 %.not1724.i, label %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", label %.lr.ph26.i.preheader, !llvm.loop !61

"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread": ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212", %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259", %.loopexit20.i, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit"
  %.sroa.45.2699 = phi ptr [ %.sroa.45.21200, %.loopexit20.i ], [ %.sroa.45.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.45.21200, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.45.18, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ] ; 2 uses
  %.sroa.0440.2692 = phi ptr [ %.sroa.0440.21201, %.loopexit20.i ], [ %.sroa.0440.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.0440.21201, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.0440.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ] ; 2 uses
  %.sroa.37.2684 = phi ptr [ %.sroa.37.21203, %.loopexit20.i ], [ %.sroa.37.16, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.37.21203, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.37.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ] ; 2 uses
  %.sroa.0485.2676 = phi ptr [ %.sroa.0485.21206, %.loopexit20.i ], [ %.sroa.0485.17, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.0485.21206, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.0485.18, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ] ; 2 uses
  %.sroa.18.0669 = phi ptr [ %.sroa.18.01207, %.loopexit20.i ], [ %.sroa.18.01196, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.18.01207, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.18.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ] ; 2 uses
  %.sroa.22.0662 = phi ptr [ %.sroa.22.01208, %.loopexit20.i ], [ %.sroa.22.01197, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.22.01208, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.22.0, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ] ; 2 uses
  %.sroa.05.023.i655 = phi ptr [ %.sroa.05.023.i1209, %.loopexit20.i ], [ %.sroa.05.023.i1198, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit" ], [ %.sroa.05.023.i1209, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212" ], [ %.sroa.05.023.i, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_2clERNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEmm.exit259" ] ; 3 uses
  %.not5791241 = icmp eq ptr %.sroa.05.023.i655, %i.bx
  br i1 %.not5791241, label %._crit_edge1251, label %.lr.ph1250

._crit_edge1251.loopexit:                         ; preds = %bb.bu
  %.pre = load ptr, ptr %i.bx, align 8
  br label %._crit_edge1251

._crit_edge1251:                                  ; preds = %._crit_edge1251.loopexit, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread"
  %i.kl = phi ptr [ %.sroa.05.023.i655, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.pre, %._crit_edge1251.loopexit ]
  %.sroa.45.3.lcssa = phi ptr [ %.sroa.45.2699, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.45.8, %._crit_edge1251.loopexit ] ; 6 uses
  %.sroa.0440.3.lcssa = phi ptr [ %.sroa.0440.2692, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0440.7, %._crit_edge1251.loopexit ] ; 6 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.0669, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.18.3, %._crit_edge1251.loopexit ]
  %.sroa.37.3.lcssa = phi ptr [ %.sroa.37.2684, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.37.7, %._crit_edge1251.loopexit ] ; 6 uses
  %.sroa.22.1.lcssa = phi ptr [ %.sroa.22.0662, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.22.3, %._crit_edge1251.loopexit ] ; 4 uses
  %.sroa.0485.3.lcssa = phi ptr [ %.sroa.0485.2676, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ], [ %.sroa.0485.8, %._crit_edge1251.loopexit ] ; 7 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.kn = load ptr, ptr %i.km, align 8
  %.not150 = icmp eq ptr %i.kn, null
  br i1 %.not150, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295, label %bb.bv

.lr.ph1250:                                       ; preds = %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread", %bb.bu
  %.sroa.0423.01248 = phi ptr [ %i.mv, %bb.bu ], [ %.sroa.05.023.i655, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.0485.31247 = phi ptr [ %.sroa.0485.8, %bb.bu ], [ %.sroa.0485.2676, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 6 uses
  %.sroa.22.11246 = phi ptr [ %.sroa.22.3, %bb.bu ], [ %.sroa.22.0662, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 4 uses
  %.sroa.37.31245 = phi ptr [ %.sroa.37.7, %bb.bu ], [ %.sroa.37.2684, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.18.11244 = phi ptr [ %.sroa.18.3, %bb.bu ], [ %.sroa.18.0669, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 3 uses
  %.sroa.0440.31243 = phi ptr [ %.sroa.0440.7, %bb.bu ], [ %.sroa.0440.2692, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %.sroa.45.31242 = phi ptr [ %.sroa.45.8, %bb.bu ], [ %.sroa.45.2699, %"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_0clERKNSt7__cxx114listINS0_12SComplexFaceESaIST_EEEPKm.exit212.thread" ] ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0423.01248, i64 16 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0423.01248, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8            ; 3 uses
  %.not156 = icmp eq ptr %i.kq, null
  br i1 %.not156, label %bb.bu, label %bb.be

bb.be:                                            ; preds = %.lr.ph1250
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 80
  %i.ks = load i8, ptr %i.kr, align 8, !range !3, !noundef !4
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.ku = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, ptr noundef nonnull @.str.6)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  invoke void @__cxa_throw(ptr nonnull %i.ku, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.dz unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ku) #21
  br label %.loopexit.split-lp599

bb.bi:                                            ; preds = %bb.bg
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

bb.bj:                                            ; preds = %bb.be
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 216
  %.sroa.0.0.copyload = load <4 x float>, ptr %i.kx, align 8 ; 2 uses
  %i.ky = load i32, ptr %i.ko, align 8
  %.not1318 = icmp eq i32 %i.ky, 0
  br i1 %.not1318, label %bb.bu, label %.lr.ph1233

.lr.ph1233:                                       ; preds = %bb.bj
  %i.kz = ptrtoint ptr %.sroa.22.11246 to i64
  %i.la = ptrtoint ptr %.sroa.0485.31247 to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = sdiv exact i64 %i.lb, 12
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0423.01248, i64 24 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph1233, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %.01311231 = phi i64 [ %i.lc, %.lr.ph1233 ], [ %i.mn, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.01321230 = phi i64 [ 0, %.lr.ph1233 ], [ %i.mr, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.0485.51229 = phi ptr [ %.sroa.0485.31247, %.lr.ph1233 ], [ %.sroa.0485.19, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 9 uses
  %.sroa.22.21228 = phi ptr [ %.sroa.22.11246, %.lr.ph1233 ], [ %.sroa.22.11, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  %.sroa.37.51227 = phi ptr [ %.sroa.37.31245, %.lr.ph1233 ], [ %.sroa.37.18, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 7 uses
  %.sroa.18.21226 = phi ptr [ %.sroa.18.11244, %.lr.ph1233 ], [ %.sroa.18.10, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.0440.51225 = phi ptr [ %.sroa.0440.31243, %.lr.ph1233 ], [ %.sroa.0440.18, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  %.sroa.45.51224 = phi ptr [ %.sroa.45.31242, %.lr.ph1233 ], [ %.sroa.45.19, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.01321230
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = zext i32 %i.lg to i64                   ; 3 uses
  %i.li = ptrtoint ptr %.sroa.22.21228 to i64
  %i.lj = ptrtoint ptr %.sroa.0485.51229 to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 5 uses
  %i.ll = sdiv exact i64 %i.lk, 12                ; 3 uses
  %.not.i.i260 = icmp ugt i64 %i.ll, %i.lh
  br i1 %.not.i.i260, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, i64 noundef %i.lh, i64 noundef %i.ll) #22
          to label %.noexc261 unwind label %.loopexit.split-lp588

.noexc261:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.lm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0485.51229, i64 %i.lh ; 2 uses
  %.not.i262 = icmp eq ptr %.sroa.22.21228, %.sroa.45.51224
  br i1 %.not.i262, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.22.21228, ptr noundef nonnull align 4 dereferenceable(12) %i.lm, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit277

bb.bo:                                            ; preds = %bb.bm
  %i.ln = icmp eq i64 %i.lk, 9223372036854775800
  br i1 %i.ln, label %bb.bp, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc275 unwind label %.loopexit.split-lp588

.noexc275:                                        ; preds = %bb.bp
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263: ; preds = %bb.bo
  %i.lo = shl nsw i64 %i.ll, 1
  %i.lp = icmp slt i64 %i.lk, 0
  %i.lq = call i64 @llvm.umin.i64(i64 %i.lo, i64 768614336404564650)
  %i.lr = select i1 %i.lp, i64 768614336404564650, i64 %i.lq ; 2 uses
  %i.ls = mul nuw nsw i64 %i.lr, 12
  %i.lt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #24
          to label %.noexc276 unwind label %.loopexit587 ; 5 uses

.noexc276:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lu, ptr noundef nonnull align 4 dereferenceable(12) %i.lm, i64 12, i1 false)
  %.not10.i.i.i.i.i266 = icmp eq ptr %.sroa.0485.51229, %.sroa.22.21228
  br i1 %.not10.i.i.i.i.i266, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i274, label %.lr.ph.i.i.i.i.i267

.lr.ph.i.i.i.i.i267:                              ; preds = %.noexc276, %.lr.ph.i.i.i.i.i267
  %.012.i.i.i.i.i268 = phi ptr [ %i.lw, %.lr.ph.i.i.i.i.i267 ], [ %i.lt, %.noexc276 ] ; 2 uses
  %.0911.i.i.i.i.i269 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i267 ], [ %.sroa.0485.51229, %.noexc276 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i268, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i269, i64 12, i1 false), !alias.scope !62
  %i.lv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i269, i64 12 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i268, i64 12 ; 2 uses
  %.not.i.i.i.i.i270 = icmp eq ptr %i.lv, %.sroa.22.21228
  br i1 %.not.i.i.i.i.i270, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i274, label %.lr.ph.i.i.i.i.i267, !llvm.loop !9

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i274: ; preds = %.lr.ph.i.i.i.i.i267, %.noexc276
  %.0.lcssa.i.i.i.i.i272 = phi ptr [ %i.lt, %.noexc276 ], [ %i.lw, %.lr.ph.i.i.i.i.i267 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0485.51229, i64 noundef %i.lk) #23
  %i.lx = getelementptr inbounds nuw [12 x i8], ptr %i.lt, i64 %i.lr
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit277

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit277: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i274, %bb.bn
  %.sroa.45.19 = phi ptr [ %i.lx, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i274 ], [ %.sroa.45.51224, %bb.bn ] ; 4 uses
  %.0.lcssa.i.i.i.i.i272.pn = phi ptr [ %.0.lcssa.i.i.i.i.i272, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i274 ], [ %.sroa.22.21228, %bb.bn ]
  %.sroa.0485.19 = phi ptr [ %i.lt, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i274 ], [ %.sroa.0485.51229, %bb.bn ] ; 4 uses
  %.sroa.22.11 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i272.pn, i64 12 ; 2 uses
  %.not.i278 = icmp eq ptr %.sroa.18.21226, %.sroa.37.51227
  br i1 %.not.i278, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit277
  store <4 x float> %.sroa.0.0.copyload, ptr %.sroa.18.21226, align 4
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

bb.br:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit277
  %i.ly = ptrtoint ptr %.sroa.37.51227 to i64
  %i.lz = ptrtoint ptr %.sroa.0440.51225 to i64
  %i.ma = sub i64 %i.ly, %i.lz                    ; 4 uses
  %i.mb = icmp eq i64 %i.ma, 9223372036854775792
  br i1 %i.mb, label %bb.bs, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc288 unwind label %.loopexit.split-lp588

.noexc288:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.br
  %i.mc = ashr exact i64 %i.ma, 4                 ; 3 uses
  %.sroa.speculated.i.i.i279 = call i64 @llvm.umax.i64(i64 %i.mc, i64 1)
  %i.md = add nsw i64 %.sroa.speculated.i.i.i279, %i.mc ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.mc
  %i.mf = call i64 @llvm.umin.i64(i64 %i.md, i64 576460752303423487)
  %i.mg = select i1 %i.me, i64 576460752303423487, i64 %i.mf ; 3 uses
  %.not.i.i.i280 = icmp ne i64 %i.mg, 0
  call void @llvm.assume(i1 %.not.i.i.i280)
  %i.mh = shl nuw nsw i64 %i.mg, 4
  %i.mi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mh) #24
          to label %.noexc289 unwind label %.loopexit587 ; 5 uses

.noexc289:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ma
  store <4 x float> %.sroa.0.0.copyload, ptr %i.mj, align 4
  %.not10.i.i.i.i.i281 = icmp eq ptr %.sroa.0440.51225, %.sroa.37.51227
  br i1 %.not10.i.i.i.i.i281, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i282

.lr.ph.i.i.i.i.i282:                              ; preds = %.noexc289, %.lr.ph.i.i.i.i.i282
  %.012.i.i.i.i.i283 = phi ptr [ %i.ml, %.lr.ph.i.i.i.i.i282 ], [ %i.mi, %.noexc289 ] ; 2 uses
  %.0911.i.i.i.i.i284 = phi ptr [ %i.mk, %.lr.ph.i.i.i.i.i282 ], [ %.sroa.0440.51225, %.noexc289 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i283, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i284, i64 16, i1 false), !alias.scope !66
  %i.mk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i284, i64 16 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i283, i64 16 ; 2 uses
  %.not.i.i.i.i.i285 = icmp eq ptr %i.mk, %.sroa.37.51227
  br i1 %.not.i.i.i.i.i285, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i282, !llvm.loop !60

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i282, %.noexc289
  %.0.lcssa.i.i.i.i.i286 = phi ptr [ %i.mi, %.noexc289 ], [ %i.ml, %.lr.ph.i.i.i.i.i282 ]
  %.not.i23.i.i287 = icmp eq ptr %.sroa.0440.51225, null
  br i1 %.not.i23.i.i287, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.51225, i64 noundef %i.ma) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bt, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %i.mg
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bq
  %.sroa.0440.18 = phi ptr [ %i.mi, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0440.51225, %bb.bq ] ; 2 uses
  %.0.lcssa.i.i.i.i.i286.pn = phi ptr [ %.0.lcssa.i.i.i.i.i286, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.21226, %bb.bq ]
  %.sroa.37.18 = phi ptr [ %i.mm, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.37.51227, %bb.bq ] ; 2 uses
  %.sroa.18.10 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i286.pn, i64 16 ; 2 uses
  %i.mn = add nsw i64 %.01311231, 1
  %i.mo = trunc i64 %.01311231 to i32
  %i.mp = load ptr, ptr %i.ld, align 8
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %.01321230
  store i32 %i.mo, ptr %i.mq, align 4
  %i.mr = add nuw nsw i64 %.01321230, 1           ; 2 uses
  %i.ms = load i32, ptr %i.ko, align 8
  %i.mt = zext i32 %i.ms to i64
  %i.mu = icmp samesign ult i64 %i.mr, %i.mt
  br i1 %i.mu, label %bb.bk, label %bb.bu, !llvm.loop !70

.loopexit587:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.45.6.ph = phi ptr [ %.sroa.22.21228, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.45.19, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.0485.6.ph = phi ptr [ %.sroa.0485.51229, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.0485.19, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit591 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp588:                            ; preds = %bb.bl, %bb.bp, %bb.bs
  %.sroa.45.6.ph589 = phi ptr [ %.sroa.45.51224, %bb.bl ], [ %.sroa.45.19, %bb.bs ], [ %.sroa.22.21228, %bb.bp ]
  %.sroa.0485.6.ph590 = phi ptr [ %.sroa.0485.51229, %bb.bl ], [ %.sroa.0485.19, %bb.bs ], [ %.sroa.0485.51229, %bb.bp ]
  %lpad.loopexit.split-lp592 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

bb.bu:                                            ; preds = %bb.bj, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit, %.lr.ph1250
  %.sroa.45.8 = phi ptr [ %.sroa.45.31242, %.lr.ph1250 ], [ %.sroa.45.31242, %bb.bj ], [ %.sroa.45.19, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0440.7 = phi ptr [ %.sroa.0440.31243, %.lr.ph1250 ], [ %.sroa.0440.31243, %bb.bj ], [ %.sroa.0440.18, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.18.3 = phi ptr [ %.sroa.18.11244, %.lr.ph1250 ], [ %.sroa.18.11244, %bb.bj ], [ %.sroa.18.10, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.37.7 = phi ptr [ %.sroa.37.31245, %.lr.ph1250 ], [ %.sroa.37.31245, %bb.bj ], [ %.sroa.37.18, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.11246, %.lr.ph1250 ], [ %.sroa.22.11246, %bb.bj ], [ %.sroa.22.11, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.0485.8 = phi ptr [ %.sroa.0485.31247, %.lr.ph1250 ], [ %.sroa.0485.31247, %bb.bj ], [ %.sroa.0485.19, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.mv = load ptr, ptr %.sroa.0423.01248, align 8 ; 2 uses
  %.not579 = icmp eq ptr %i.mv, %i.bx
  br i1 %.not579, label %._crit_edge1251.loopexit, label %.lr.ph1250

bb.bv:                                            ; preds = %._crit_edge1251
  %i.mw = ptrtoint ptr %.sroa.22.1.lcssa to i64
  %i.mx = ptrtoint ptr %.sroa.0485.3.lcssa to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = sdiv exact i64 %i.my, 12                ; 2 uses
  %i.na = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dp) #24
          to label %.preheader unwind label %.loopexit615 ; 3 uses

.preheader:                                       ; preds = %bb.bv
  br i1 %.not578, label %._crit_edge1260, label %.lr.ph1259.preheader

.lr.ph1259.preheader:                             ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.na, i8 0, i64 %i.dp, i1 false)
  br label %._crit_edge1260

._crit_edge1260:                                  ; preds = %.lr.ph1259.preheader, %.preheader
  %i.nb = load ptr, ptr %i.bx, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.nd = load ptr, ptr %i.nc, align 8            ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 120
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 152
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 184
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 216
  %i.ni = invoke noundef i64 @_ZN6Assimp11AMFImporter40PostprocessHelper_GetTextureID_Or_CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ne, ptr noundef nonnull align 8 dereferenceable(32) %i.nf, ptr noundef nonnull align 8 dereferenceable(32) %i.ng, ptr noundef nonnull align 8 dereferenceable(32) %i.nh)
          to label %bb.bw unwind label %.loopexit615

.loopexit615:                                     ; preds = %bb.bv, %._crit_edge1260, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399
  %.sroa.45.9.ph = phi ptr [ %.sroa.45.3.lcssa, %._crit_edge1260 ], [ %.sroa.45.3.lcssa, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.45.3.lcssa, %bb.bv ], [ %.sroa.45.10.lcssa, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399 ]
  %.sroa.0464.1.ph = phi ptr [ null, %._crit_edge1260 ], [ null, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %bb.bv ], [ %.sroa.0464.4, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399 ]
  %.sroa.31.1.ph = phi ptr [ null, %._crit_edge1260 ], [ null, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %bb.bv ], [ %.sroa.17.1, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399 ]
  %.sroa.0440.8.ph = phi ptr [ %.sroa.0440.3.lcssa, %._crit_edge1260 ], [ %.sroa.0440.3.lcssa, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0440.3.lcssa, %bb.bv ], [ %.sroa.0440.9.lcssa, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399 ]
  %.sroa.37.8.ph = phi ptr [ %.sroa.37.3.lcssa, %._crit_edge1260 ], [ %.sroa.37.3.lcssa, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.37.3.lcssa, %bb.bv ], [ %.sroa.37.9.lcssa, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399 ]
  %.sroa.0485.9.ph = phi ptr [ %.sroa.0485.3.lcssa, %._crit_edge1260 ], [ %.sroa.0485.3.lcssa, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0485.3.lcssa, %bb.bv ], [ %.sroa.0485.10.lcssa, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399 ]
  %lpad.loopexit617 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp616:                            ; preds = %bb.by
  %lpad.loopexit.split-lp618 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

bb.bw:                                            ; preds = %._crit_edge1260
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = getelementptr inbounds nuw i8, ptr %i.by, i64 232
  store i32 %i.nj, ptr %i.nk, align 8
  br i1 %.not578, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bw
  %i.nl = mul nuw nsw i64 %i.dp, 12               ; 2 uses
  %i.nm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nl) #24
          to label %.noexc291 unwind label %.loopexit615 ; 3 uses

.noexc291:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nm, i8 0, i64 %i.nl, i1 false)
  %i.nn = getelementptr [12 x i8], ptr %i.nm, i64 %i.dp
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %.noexc291, %bb.bw
  %.sroa.0464.4 = phi ptr [ %i.nm, %.noexc291 ], [ null, %bb.bw ] ; 15 uses
  %.sroa.17.1 = phi ptr [ %i.nn, %.noexc291 ], [ null, %bb.bw ] ; 11 uses
  %.sroa.0419.01278 = load ptr, ptr %i.bx, align 8 ; 2 uses
  %.not5801279 = icmp eq ptr %.sroa.0419.01278, %i.bx
  %.pre1812 = ptrtoint ptr %.sroa.17.1 to i64     ; 2 uses
  %.pre1813 = ptrtoint ptr %.sroa.0464.4 to i64   ; 2 uses
  %.pre1815 = sub i64 %.pre1812, %.pre1813        ; 3 uses
  %.pre1817 = sdiv exact i64 %.pre1815, 12        ; 11 uses
  br i1 %.not5801279, label %._crit_edge1289, label %.lr.ph1288

.loopexit583:                                     ; preds = %bb.ct, %.lr.ph1288
  %.sroa.45.11.lcssa = phi ptr [ %.sroa.45.101280, %.lr.ph1288 ], [ %.sroa.45.13, %bb.ct ] ; 2 uses
  %.sroa.0440.10.lcssa = phi ptr [ %.sroa.0440.91281, %.lr.ph1288 ], [ %.sroa.0440.12, %bb.ct ] ; 2 uses
  %.sroa.18.5.lcssa = phi ptr [ %.sroa.18.41282, %.lr.ph1288 ], [ %.sroa.18.6, %bb.ct ]
  %.sroa.37.10.lcssa = phi ptr [ %.sroa.37.91283, %.lr.ph1288 ], [ %.sroa.37.12, %bb.ct ] ; 2 uses
  %.sroa.22.5.lcssa = phi ptr [ %.sroa.22.41284, %.lr.ph1288 ], [ %.sroa.22.6, %bb.ct ] ; 2 uses
  %.sroa.0485.11.lcssa = phi ptr [ %.sroa.0485.101285, %.lr.ph1288 ], [ %.sroa.0485.13, %bb.ct ] ; 2 uses
  %.1135.lcssa = phi i64 [ %.01341286, %.lr.ph1288 ], [ %.2136, %bb.ct ] ; 2 uses
  %.sroa.0419.0 = load ptr, ptr %.sroa.0419.01287, align 8 ; 2 uses
  %.not580 = icmp eq ptr %.sroa.0419.0, %i.bx
  br i1 %.not580, label %._crit_edge1289, label %.lr.ph1288

._crit_edge1289:                                  ; preds = %.loopexit583, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %.sroa.45.10.lcssa = phi ptr [ %.sroa.45.3.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.sroa.45.11.lcssa, %.loopexit583 ] ; 5 uses
  %.sroa.0440.9.lcssa = phi ptr [ %.sroa.0440.3.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.sroa.0440.10.lcssa, %.loopexit583 ] ; 5 uses
  %.sroa.37.9.lcssa = phi ptr [ %.sroa.37.3.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.sroa.37.10.lcssa, %.loopexit583 ] ; 5 uses
  %.sroa.22.4.lcssa = phi ptr [ %.sroa.22.1.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.sroa.22.5.lcssa, %.loopexit583 ] ; 3 uses
  %.sroa.0485.10.lcssa = phi ptr [ %.sroa.0485.3.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.sroa.0485.11.lcssa, %.loopexit583 ] ; 5 uses
  %.0134.lcssa = phi i64 [ %i.mz, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ], [ %.1135.lcssa, %.loopexit583 ] ; 5 uses
  call void @_ZdaPv(ptr noundef nonnull %i.na) #23
  %i.no = icmp ugt i64 %.0134.lcssa, %.pre1817
  br i1 %i.no, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %._crit_edge1289
  %i.np = sub nuw i64 %.0134.lcssa, %.pre1817     ; 3 uses
  %i.nq = icmp ult i64 %.pre1817, 768614336404564651
  call void @llvm.assume(i1 %i.nq)
  %i.nr = icmp ugt i64 %.0134.lcssa, 768614336404564650
  br i1 %i.nr, label %bb.by, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #22
          to label %.noexc409 unwind label %.loopexit.split-lp616

.noexc409:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399: ; preds = %bb.bx
  %.sroa.speculated.i.i400 = call i64 @llvm.umax.i64(i64 %.pre1817, i64 %i.np)
  %i.ns = add nuw nsw i64 %.sroa.speculated.i.i400, %.pre1817
  %i.nt = call i64 @llvm.umin.i64(i64 %i.ns, i64 768614336404564650) ; 2 uses
  %i.nu = mul nuw nsw i64 %i.nt, 12
  %i.nv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nu) #24
          to label %.noexc410 unwind label %.loopexit615 ; 4 uses

.noexc410:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i399
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.pre1815 ; 2 uses
  %i.nx = mul nuw nsw i64 %i.np, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nw, i8 0, i64 %i.nx, i1 false)
  %.not10.i.i.i.i401 = icmp eq ptr %.sroa.0464.4, %.sroa.17.1
  br i1 %.not10.i.i.i.i401, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i406, label %.lr.ph.i.i.i.i402.preheader

.lr.ph.i.i.i.i402.preheader:                      ; preds = %.noexc410
  %i.ny = add i64 %.pre1812, -12
  %i.nz = sub i64 %i.ny, %.pre1813                ; 2 uses
  %i.oa = urem i64 %i.nz, 12
  %i.ob = sub nuw i64 %i.nz, %i.oa
  %i.oc = add i64 %i.ob, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nv, ptr align 4 %.sroa.0464.4, i64 %i.oc, i1 false), !alias.scope !71
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i406

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i406: ; preds = %.lr.ph.i.i.i.i402.preheader, %.noexc410
  %.not.i36.i407 = icmp eq ptr %.sroa.0464.4, null
  br i1 %.not.i36.i407, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i408, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i406
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0464.4, i64 noundef %.pre1815) #23
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i408

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i408: ; preds = %bb.bz, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i406
  %i.od = getelementptr inbounds nuw [12 x i8], ptr %i.nw, i64 %i.np
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %i.nv, i64 %i.nt
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295

bb.ca:                                            ; preds = %._crit_edge1289
  %i.of = icmp ult i64 %.0134.lcssa, %.pre1817
  br i1 %i.of, label %bb.cb, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295

bb.cb:                                            ; preds = %bb.ca
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0464.4, i64 %.0134.lcssa ; 2 uses
  %.not.i.i292 = icmp eq ptr %.sroa.17.1, %i.og
  %spec.select = select i1 %.not.i.i292, ptr %.sroa.17.1, ptr %i.og
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit295

.lr.ph1288:                                       ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, %.loopexit583
  %.sroa.0419.01287 = phi ptr [ %.sroa.0419.0, %.loopexit583 ], [ %.sroa.0419.01278, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 4 uses
  %.01341286 = phi i64 [ %.1135.lcssa, %.loopexit583 ], [ %i.mz, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 2 uses
  %.sroa.0485.101285 = phi ptr [ %.sroa.0485.11.lcssa, %.loopexit583 ], [ %.sroa.0485.3.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 2 uses
  %.sroa.22.41284 = phi ptr [ %.sroa.22.5.lcssa, %.loopexit583 ], [ %.sroa.22.1.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 2 uses
  %.sroa.37.91283 = phi ptr [ %.sroa.37.10.lcssa, %.loopexit583 ], [ %.sroa.37.3.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 2 uses
  %.sroa.18.41282 = phi ptr [ %.sroa.18.5.lcssa, %.loopexit583 ], [ %.sroa.18.1.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 2 uses
  %.sroa.0440.91281 = phi ptr [ %.sroa.0440.10.lcssa, %.loopexit583 ], [ %.sroa.0440.3.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 2 uses
  %.sroa.45.101280 = phi ptr [ %.sroa.45.11.lcssa, %.loopexit583 ], [ %.sroa.45.3.lcssa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0419.01287, i64 16 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 8
  %.not1320 = icmp eq i32 %i.oi, 0
  br i1 %.not1320, label %.loopexit583, label %.lr.ph1270

.lr.ph1270:                                       ; preds = %.lr.ph1288
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0419.01287, i64 24 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0419.01287, i64 40 ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph1270, %bb.ct
  %.01301268 = phi i64 [ 0, %.lr.ph1270 ], [ %i.rc, %bb.ct ] ; 6 uses
  %.11351267 = phi i64 [ %.01341286, %.lr.ph1270 ], [ %.2136, %bb.ct ] ; 7 uses
  %.sroa.0485.111266 = phi ptr [ %.sroa.0485.101285, %.lr.ph1270 ], [ %.sroa.0485.13, %bb.ct ] ; 11 uses
  %.sroa.22.51265 = phi ptr [ %.sroa.22.41284, %.lr.ph1270 ], [ %.sroa.22.6, %bb.ct ] ; 10 uses
  %.sroa.37.101264 = phi ptr [ %.sroa.37.91283, %.lr.ph1270 ], [ %.sroa.37.12, %bb.ct ] ; 11 uses
  %.sroa.18.51263 = phi ptr [ %.sroa.18.41282, %.lr.ph1270 ], [ %.sroa.18.6, %bb.ct ] ; 6 uses
  %.sroa.0440.101262 = phi ptr [ %.sroa.0440.91281, %.lr.ph1270 ], [ %.sroa.0440.12, %bb.ct ] ; 13 uses
  %.sroa.45.111261 = phi ptr [ %.sroa.45.101280, %.lr.ph1270 ], [ %.sroa.45.13, %bb.ct ] ; 5 uses
  %i.ol = load ptr, ptr %i.oj, align 8
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.01301268
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = zext i32 %i.on to i64                   ; 10 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.oo ; 2 uses
  %i.oq = load i8, ptr %i.op, align 1, !range !3, !noundef !4
  %i.or = trunc nuw i8 %i.oq to i1
  %.not.i.i299 = icmp ugt i64 %.pre1817, %i.oo    ; 2 uses
  br i1 %i.or, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not.i.i299, label %bb.ce, label %.invoke

.invoke:                                          ; preds = %bb.cd, %_ZNK10aiVector3tIfEneERKS0_.exit.thread, %bb.cf
  %i.os = phi i64 [ %i.pr, %_ZNK10aiVector3tIfEneERKS0_.exit.thread ], [ %.pre1817, %bb.cf ], [ %.pre1817, %bb.cd ]
end_hunk_2
begin_hunk_3_@_ZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNode:bb.a
  store ptr %i.sa, ptr %i.sf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sa, ptr align 4 %.sroa.0464.2, i64 %i.rx, i1 false)
  %i.sg = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  store i32 2, ptr %i.sg, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %.loopexit594, %.loopexit595
  %.sroa.0415.01296 = load ptr, ptr %i.bx, align 8 ; 2 uses
  %.not5811297 = icmp eq ptr %.sroa.0415.01296, %i.bx
  br i1 %.not5811297, label %._crit_edge1302, label %.lr.ph1301

._crit_edge1302:                                  ; preds = %_ZN6aiFaceaSERKS_.exit, %bb.cy
  %i.sh = load ptr, ptr %i.p, align 8
  %i.si = load ptr, ptr %5, align 8
  %i.sj = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.df unwind label %bb.do     ; 2 uses

.lr.ph1301:                                       ; preds = %bb.cy, %_ZN6aiFaceaSERKS_.exit
  %.sroa.0415.01299 = phi ptr [ %.sroa.0415.0, %_ZN6aiFaceaSERKS_.exit ], [ %.sroa.0415.01296, %bb.cy ] ; 3 uses
  %.01211298 = phi i64 [ %i.sx, %_ZN6aiFaceaSERKS_.exit ], [ 0, %bb.cy ] ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.0415.01299, i64 16 ; 2 uses
  %i.sl = load ptr, ptr %i.dn, align 8
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.sl, i64 %.01211298 ; 3 uses
  %i.sn = icmp eq ptr %i.sk, %i.sm
  br i1 %i.sn, label %_ZN6aiFaceaSERKS_.exit, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph1301
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 8 ; 3 uses
  %i.sp = load ptr, ptr %i.so, align 8            ; 2 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZdaPv(ptr noundef nonnull %i.sp) #23
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.sr = load i32, ptr %i.sk, align 8            ; 3 uses
  store i32 %i.sr, ptr %i.sm, align 8
  %.not.i343 = icmp eq i32 %i.sr, 0
  br i1 %.not.i343, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ss = zext i32 %i.sr to i64
  %i.st = shl nuw nsw i64 %i.ss, 2                ; 2 uses
  %i.su = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.st) #24
          to label %.noexc344 unwind label %bb.de ; 2 uses

.noexc344:                                        ; preds = %bb.dc
  store ptr %i.su, ptr %i.so, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.0415.01299, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.su, ptr align 4 %i.sw, i64 %i.st, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit

bb.dd:                                            ; preds = %bb.db
  store ptr null, ptr %i.so, align 8
  br label %_ZN6aiFaceaSERKS_.exit

_ZN6aiFaceaSERKS_.exit:                           ; preds = %bb.dd, %.noexc344, %.lr.ph1301
  %i.sx = add i64 %.01211298, 1
  %.sroa.0415.0 = load ptr, ptr %.sroa.0415.01299, align 8 ; 2 uses
  %.not581 = icmp eq ptr %.sroa.0415.0, %i.bx
  br i1 %.not581, label %._crit_edge1302, label %.lr.ph1301

bb.de:                                            ; preds = %bb.dc
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

bb.df:                                            ; preds = %._crit_edge1302
  %i.sz = ptrtoint ptr %i.sh to i64
  %i.ta = ptrtoint ptr %i.si to i64
  %i.tb = sub i64 %i.sz, %i.ta
  %i.tc = lshr exact i64 %i.tb, 3
  %i.td = trunc i64 %i.tc to i32
  %i.te = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  store i32 %i.td, ptr %i.te, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.sj, ptr noundef nonnull align 8 dereferenceable(24) %7) #21
  %i.tf = load i64, ptr %i.e, align 8
  %i.tg = add i64 %i.tf, 1
  store i64 %i.tg, ptr %i.e, align 8
  %i.th = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.ti = load ptr, ptr %i.q, align 8
  %.not.i345 = icmp eq ptr %i.th, %i.ti
  br i1 %.not.i345, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store ptr %i.by, ptr %i.th, align 8
  %i.tj = load ptr, ptr %i.p, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store ptr %i.tk, ptr %i.p, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.dh:                                            ; preds = %bb.df
  %i.tl = load ptr, ptr %5, align 8               ; 4 uses
  %i.tm = ptrtoint ptr %i.th to i64
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = sub i64 %i.tm, %i.tn                    ; 6 uses
  %i.tp = icmp eq i64 %i.to, 9223372036854775800
  br i1 %i.tp, label %bb.di, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc348 unwind label %.loopexit.split-lp621

.noexc348:                                        ; preds = %bb.di
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dh
  %i.tq = ashr exact i64 %i.to, 3                 ; 3 uses
  %.sroa.speculated.i.i.i346 = call i64 @llvm.umax.i64(i64 %i.tq, i64 1)
  %i.tr = add nsw i64 %.sroa.speculated.i.i.i346, %i.tq ; 2 uses
  %i.ts = icmp ult i64 %i.tr, %i.tq
  %i.tt = call i64 @llvm.umin.i64(i64 %i.tr, i64 1152921504606846975)
  %i.tu = select i1 %i.ts, i64 1152921504606846975, i64 %i.tt ; 3 uses
  %.not.i.i.i347 = icmp ne i64 %i.tu, 0
  call void @llvm.assume(i1 %.not.i.i.i347)
  %i.tv = shl nuw nsw i64 %i.tu, 3
  %i.tw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tv) #24
          to label %.noexc349 unwind label %.loopexit620 ; 4 uses

.noexc349:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.tx = getelementptr inbounds i8, ptr %i.tw, i64 %i.to ; 2 uses
  store ptr %i.by, ptr %i.tx, align 8
  %i.ty = icmp sgt i64 %i.to, 0
  br i1 %i.ty, label %bb.dj, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.dj:                                            ; preds = %.noexc349
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tw, ptr align 8 %i.tl, i64 %i.to, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.dj, %.noexc349
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %.not.i17.i.i = icmp eq ptr %i.tl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tl, i64 noundef %i.to) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.dk, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.tw, ptr %5, align 8
  store ptr %i.tz, ptr %i.p, align 8
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.tu
  store ptr %i.ua, ptr %i.q, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.dg
  %.not.i.i.i350 = icmp eq ptr %.sroa.0440.13, null
  br i1 %.not.i.i.i350, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %i.ub = ptrtoint ptr %.sroa.37.13 to i64
  %i.uc = ptrtoint ptr %.sroa.0440.13 to i64
  %i.ud = sub i64 %i.ub, %i.uc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.13, i64 noundef %i.ud) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit:      ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %bb.dl
  %.not.i.i.i351 = icmp eq ptr %.sroa.0464.2, null
  br i1 %.not.i.i.i351, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit
  %i.ue = ptrtoint ptr %.sroa.31.2 to i64
  %i.uf = sub i64 %i.ue, %i.rz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0464.2, i64 noundef %i.uf) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit, %bb.dm
  %.not.i.i.i352 = icmp eq ptr %.sroa.0485.14, null
  br i1 %.not.i.i.i352, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit353, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.ug = ptrtoint ptr %.sroa.45.14 to i64
  %i.uh = sub i64 %i.ug, %i.rh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0485.14, i64 noundef %i.uh) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit353

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit353: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.sroa.0535.0 = load ptr, ptr %.sroa.0535.01305, align 8 ; 2 uses
  %.not577 = icmp eq ptr %.sroa.0535.0, %9
  br i1 %.not577, label %._crit_edge1307.loopexit, label %.lr.ph1306

bb.do:                                            ; preds = %._crit_edge1302
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit620:                                     ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit622 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp621:                            ; preds = %bb.di
  %lpad.loopexit.split-lp623 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp599

.loopexit.split-lp599:                            ; preds = %bb.bh, %bb.bi, %.loopexit.split-lp588, %.loopexit587, %.loopexit620, %.loopexit.split-lp621, %.loopexit584, %.loopexit.split-lp, %.loopexit615, %.loopexit.split-lp616, %.loopexit603, %.loopexit.split-lp604, %.loopexit598, %.loopexit.split-lp599.loopexit.split-lp, %.loopexit.split-lp599.loopexit, %bb.ak, %bb.de, %bb.do, %bb.aj
  %.sroa.45.15 = phi ptr [ %.sroa.45.0, %bb.aj ], [ %.sroa.45.18, %.loopexit.split-lp604 ], [ %.sroa.45.14, %.loopexit.split-lp621 ], [ %.sroa.45.14, %bb.de ], [ %.sroa.45.12.ph585, %.loopexit.split-lp ], [ %.sroa.45.14, %bb.do ], [ %.sroa.45.10.lcssa, %.loopexit.split-lp616 ], [ %.sroa.45.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.45.17, %bb.ak ], [ %.sroa.22.01208, %.loopexit598 ], [ %.sroa.0485.16572, %.loopexit.split-lp599.loopexit ], [ %.sroa.45.18, %.loopexit603 ], [ %.sroa.45.9.ph, %.loopexit615 ], [ %.sroa.45.12.ph, %.loopexit584 ], [ %.sroa.45.14, %.loopexit620 ], [ %.sroa.45.31242, %bb.bi ], [ %.sroa.45.31242, %bb.bh ], [ %.sroa.45.6.ph, %.loopexit587 ], [ %.sroa.45.6.ph589, %.loopexit.split-lp588 ]
  %.sroa.0464.3 = phi ptr [ %.sroa.0464.0, %bb.aj ], [ null, %.loopexit.split-lp604 ], [ %.sroa.0464.2, %.loopexit.split-lp621 ], [ %.sroa.0464.2, %bb.de ], [ %.sroa.0464.4, %.loopexit.split-lp ], [ %.sroa.0464.2, %bb.do ], [ %.sroa.0464.4, %.loopexit.split-lp616 ], [ null, %.loopexit.split-lp599.loopexit.split-lp ], [ null, %bb.ak ], [ null, %.loopexit598 ], [ null, %.loopexit.split-lp599.loopexit ], [ null, %.loopexit603 ], [ %.sroa.0464.1.ph, %.loopexit615 ], [ %.sroa.0464.4, %.loopexit584 ], [ %.sroa.0464.2, %.loopexit620 ], [ null, %.loopexit587 ], [ null, %.loopexit.split-lp588 ], [ null, %bb.bi ], [ null, %bb.bh ] ; 3 uses
  %.sroa.31.3 = phi ptr [ %.sroa.31.0, %bb.aj ], [ null, %.loopexit.split-lp604 ], [ %.sroa.31.2, %.loopexit.split-lp621 ], [ %.sroa.31.2, %bb.de ], [ %.sroa.17.1, %.loopexit.split-lp ], [ %.sroa.31.2, %bb.do ], [ %.sroa.17.1, %.loopexit.split-lp616 ], [ null, %.loopexit.split-lp599.loopexit.split-lp ], [ null, %bb.ak ], [ null, %.loopexit598 ], [ null, %.loopexit.split-lp599.loopexit ], [ null, %.loopexit603 ], [ %.sroa.31.1.ph, %.loopexit615 ], [ %.sroa.17.1, %.loopexit584 ], [ %.sroa.31.2, %.loopexit620 ], [ null, %.loopexit587 ], [ null, %.loopexit.split-lp588 ], [ null, %bb.bi ], [ null, %bb.bh ]
  %.sroa.0440.14 = phi ptr [ %.sroa.0440.0, %bb.aj ], [ %.sroa.0440.21201, %.loopexit.split-lp604 ], [ %.sroa.0440.13, %.loopexit.split-lp621 ], [ %.sroa.0440.13, %bb.de ], [ %.sroa.0440.11.ph, %.loopexit.split-lp ], [ %.sroa.0440.13, %bb.do ], [ %.sroa.0440.9.lcssa, %.loopexit.split-lp616 ], [ %.sroa.0440.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.0440.15, %bb.ak ], [ %.sroa.0440.21201, %.loopexit598 ], [ %.sroa.0440.15, %.loopexit.split-lp599.loopexit ], [ %.sroa.0440.21201, %.loopexit603 ], [ %.sroa.0440.8.ph, %.loopexit615 ], [ %.sroa.0440.101262, %.loopexit584 ], [ %.sroa.0440.13, %.loopexit620 ], [ %.sroa.0440.31243, %bb.bi ], [ %.sroa.0440.31243, %bb.bh ], [ %.sroa.0440.51225, %.loopexit587 ], [ %.sroa.0440.51225, %.loopexit.split-lp588 ] ; 3 uses
  %.sroa.37.14 = phi ptr [ %.sroa.37.0, %bb.aj ], [ %.sroa.18.01207, %.loopexit.split-lp604 ], [ %.sroa.37.13, %.loopexit.split-lp621 ], [ %.sroa.37.13, %bb.de ], [ %.sroa.37.11.ph, %.loopexit.split-lp ], [ %.sroa.37.13, %bb.do ], [ %.sroa.37.9.lcssa, %.loopexit.split-lp616 ], [ %.sroa.37.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.37.15.lcssa1535, %bb.ak ], [ %.sroa.37.21203, %.loopexit598 ], [ %.sroa.37.15, %.loopexit.split-lp599.loopexit ], [ %.sroa.37.21203.lcssa1356, %.loopexit603 ], [ %.sroa.37.8.ph, %.loopexit615 ], [ %.sroa.37.101264, %.loopexit584 ], [ %.sroa.37.13, %.loopexit620 ], [ %.sroa.37.31245, %bb.bi ], [ %.sroa.37.31245, %bb.bh ], [ %.sroa.37.51227, %.loopexit587 ], [ %.sroa.37.51227, %.loopexit.split-lp588 ]
  %.sroa.0485.15 = phi ptr [ %.sroa.0485.0, %bb.aj ], [ %.sroa.0485.18, %.loopexit.split-lp604 ], [ %.sroa.0485.14, %.loopexit.split-lp621 ], [ %.sroa.0485.14, %bb.de ], [ %.sroa.0485.12.ph586, %.loopexit.split-lp ], [ %.sroa.0485.14, %bb.do ], [ %.sroa.0485.10.lcssa, %.loopexit.split-lp616 ], [ %.sroa.0485.1.ph.ph, %.loopexit.split-lp599.loopexit.split-lp ], [ %.sroa.0485.17, %bb.ak ], [ %.sroa.0485.21206, %.loopexit598 ], [ %.sroa.0485.16572, %.loopexit.split-lp599.loopexit ], [ %.sroa.0485.18, %.loopexit603 ], [ %.sroa.0485.9.ph, %.loopexit615 ], [ %.sroa.0485.12.ph, %.loopexit584 ], [ %.sroa.0485.14, %.loopexit620 ], [ %.sroa.0485.31247, %bb.bi ], [ %.sroa.0485.31247, %bb.bh ], [ %.sroa.0485.6.ph, %.loopexit587 ], [ %.sroa.0485.6.ph590, %.loopexit.split-lp588 ] ; 3 uses
  %.pn157.pn = phi { ptr, i32 } [ %i.gd, %bb.aj ], [ %lpad.loopexit.split-lp606, %.loopexit.split-lp604 ], [ %lpad.loopexit.split-lp623, %.loopexit.split-lp621 ], [ %i.sy, %bb.de ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ui, %bb.do ], [ %lpad.loopexit.split-lp618, %.loopexit.split-lp616 ], [ %lpad.loopexit.split-lp613, %.loopexit.split-lp599.loopexit.split-lp ], [ %i.ge, %bb.ak ], [ %lpad.loopexit600, %.loopexit598 ], [ %lpad.loopexit612, %.loopexit.split-lp599.loopexit ], [ %lpad.loopexit605, %.loopexit603 ], [ %lpad.loopexit617, %.loopexit615 ], [ %lpad.loopexit, %.loopexit584 ], [ %lpad.loopexit622, %.loopexit620 ], [ %i.kw, %bb.bi ], [ %i.kv, %bb.bh ], [ %lpad.loopexit591, %.loopexit587 ], [ %lpad.loopexit.split-lp592, %.loopexit.split-lp588 ] ; 2 uses
  %.not.i.i.i354 = icmp eq ptr %.sroa.0440.14, null
  br i1 %.not.i.i.i354, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355, label %bb.dp

bb.dp:                                            ; preds = %.loopexit.split-lp599
  %i.uj = ptrtoint ptr %.sroa.37.14 to i64
  %i.uk = ptrtoint ptr %.sroa.0440.14 to i64
  %i.ul = sub i64 %i.uj, %i.uk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0440.14, i64 noundef %i.ul) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355

_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355:   ; preds = %.loopexit.split-lp599, %bb.dp
  %.not.i.i.i356 = icmp eq ptr %.sroa.0464.3, null
  br i1 %.not.i.i.i356, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355
  %i.um = ptrtoint ptr %.sroa.31.3 to i64
  %i.un = ptrtoint ptr %.sroa.0464.3 to i64
  %i.uo = sub i64 %i.um, %i.un
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0464.3, i64 noundef %i.uo) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit355, %bb.dq
  %.not.i.i.i358 = icmp eq ptr %.sroa.0485.15, null
  br i1 %.not.i.i.i358, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357
  %i.up = ptrtoint ptr %.sroa.45.15 to i64
  %i.uq = ptrtoint ptr %.sroa.0485.15 to i64
  %i.ur = sub i64 %i.up, %i.uq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0485.15, i64 noundef %i.ur) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359: ; preds = %bb.dr, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357, %bb.ai
  %.pn157.pn.pn = phi { ptr, i32 } [ %i.gc, %bb.ai ], [ %.pn157.pn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit357 ], [ %.pn157.pn, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit165

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit165: ; preds = %.loopexit625, %.loopexit.split-lp626, %bb.p, %.body.thread563, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359
  %.pn162 = phi { ptr, i32 } [ %eh.lpad-body561, %bb.p ], [ %.pn157.pn.pn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit359 ], [ %i.ap, %.body.thread563 ], [ %lpad.loopexit627, %.loopexit625 ], [ %lpad.loopexit.split-lp628, %.loopexit.split-lp626 ]
  %i.us = load ptr, ptr %9, align 8               ; 2 uses
  %.not8.i.i360 = icmp eq ptr %i.us, %9
  br i1 %.not8.i.i360, label %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit370, label %.lr.ph.i.i361

.lr.ph.i.i361:                                    ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit165, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i368
  %.09.i.i362 = phi ptr [ %i.ut, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i368 ], [ %i.us, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit165 ] ; 3 uses
  %i.ut = load ptr, ptr %.09.i.i362, align 8      ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.09.i.i362, i64 16 ; 3 uses
  %i.uv = load ptr, ptr %i.uu, align 8            ; 2 uses
  %.not8.i.i.i.i363 = icmp eq ptr %i.uv, %i.uu
  br i1 %.not8.i.i.i.i363, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i368, label %.lr.ph.i.i.i.i364

.lr.ph.i.i.i.i364:                                ; preds = %.lr.ph.i.i361, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i366
  %.09.i.i.i.i365 = phi ptr [ %i.uw, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i366 ], [ %i.uv, %.lr.ph.i.i361 ] ; 3 uses
  %i.uw = load ptr, ptr %.09.i.i.i.i365, align 8  ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i365, i64 24
  %i.uy = load ptr, ptr %i.ux, align 8            ; 2 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i366, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i364
  call void @_ZdaPv(ptr noundef nonnull %i.uy) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i366

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i366: ; preds = %bb.ds, %.lr.ph.i.i.i.i364
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i365, i64 noundef 48) #23
  %.not.i.i.i.i367 = icmp eq ptr %i.uw, %i.uu
  br i1 %.not.i.i.i.i367, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i368, label %.lr.ph.i.i.i.i364, !llvm.loop !39

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i368: ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i.i.i366, %.lr.ph.i.i361
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i362, i64 noundef 40) #23
  %.not.i.i369 = icmp eq ptr %i.ut, %9
  br i1 %.not.i.i369, label %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit370, label %.lr.ph.i.i361, !llvm.loop !40

_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit370: ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit.i.i368, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit165
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.va = load ptr, ptr %8, align 8               ; 2 uses
  %.not8.i.i371 = icmp eq ptr %i.va, %8
  br i1 %.not8.i.i371, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit376, label %.lr.ph.i.i372

.lr.ph.i.i372:                                    ; preds = %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit370, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i374
  %.09.i.i373 = phi ptr [ %i.vb, %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i374 ], [ %i.va, %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit370 ] ; 3 uses
  %i.vb = load ptr, ptr %.09.i.i373, align 8      ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.09.i.i373, i64 24
  %i.vd = load ptr, ptr %i.vc, align 8            ; 2 uses
  %i.ve = icmp eq ptr %i.vd, null
  br i1 %i.ve, label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i374, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i.i372
  call void @_ZdaPv(ptr noundef nonnull %i.vd) #23
  br label %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i374

_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i374: ; preds = %bb.dt, %.lr.ph.i.i372
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i373, i64 noundef 48) #23
  %.not.i.i375 = icmp eq ptr %i.vb, %8
  br i1 %.not.i.i375, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit376, label %.lr.ph.i.i372, !llvm.loop !39

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit376: ; preds = %_ZN6Assimp11AMFImporter12SComplexFaceD2Ev.exit.i.i374, %_ZNSt7__cxx1110_List_baseINS_4listIN6Assimp11AMFImporter12SComplexFaceESaIS4_EEESaIS6_EED2Ev.exit370
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.dy

bb.du:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.sroa.0554.0 = load ptr, ptr %.sroa.0554.01310, align 8 ; 2 uses
  %.not575 = icmp eq ptr %.sroa.0554.0, %i.f
  br i1 %.not575, label %._crit_edge1313, label %bb.b

bb.dv:                                            ; preds = %._crit_edge1313
  %i.vf = load i64, ptr %i.e, align 8             ; 2 uses
  %i.vg = trunc i64 %i.vf to i32                  ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %6, i64 1120 ; 2 uses
  store i32 %i.vg, ptr %i.vh, align 8
  %i.vi = shl i64 %i.vf, 2
  %i.vj = and i64 %i.vi, 17179869180
  %i.vk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vj) #24
          to label %bb.dw unwind label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.vl = getelementptr inbounds nuw i8, ptr %6, i64 1128 ; 2 uses
  store ptr %i.vk, ptr %i.vl, align 8
  %.not1321 = icmp eq i32 %i.vg, 0
  br i1 %.not1321, label %.loopexit, label %.lr.ph1317

bb.dx:                                            ; preds = %bb.dv
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.lr.ph1317:                                       ; preds = %bb.dw, %.lr.ph1317
  %.01315 = phi i64 [ %i.vs, %.lr.ph1317 ], [ 0, %bb.dw ] ; 2 uses
  %.sroa.0413.01314 = phi ptr [ %i.vn, %.lr.ph1317 ], [ %.pre1810, %bb.dw ] ; 2 uses
  %i.vn = load ptr, ptr %.sroa.0413.01314, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %.sroa.0413.01314, i64 16
  %i.vp = load i32, ptr %i.vo, align 8
  %i.vq = load ptr, ptr %i.vl, align 8
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vq, i64 %.01315
  store i32 %i.vp, ptr %i.vr, align 4
  %i.vs = add nuw nsw i64 %.01315, 1              ; 2 uses
  %i.vt = load i32, ptr %i.vh, align 8
  %i.vu = zext i32 %i.vt to i64
  %i.vv = icmp samesign ult i64 %i.vs, %i.vu
  br i1 %i.vv, label %.lr.ph1317, label %.loopexit.loopexit, !llvm.loop !84

.loopexit.loopexit:                               ; preds = %.lr.ph1317
  %.pre1811 = load ptr, ptr %7, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.dw, %._crit_edge1313
  %i.vw = phi ptr [ %.pre1811, %.loopexit.loopexit ], [ %.pre1810, %bb.dw ], [ %.pre1810, %._crit_edge1313 ] ; 2 uses
  %.not8.i.i377 = icmp eq ptr %i.vw, %7
  br i1 %.not8.i.i377, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit, label %.lr.ph.i.i378

.lr.ph.i.i378:                                    ; preds = %.loopexit, %.lr.ph.i.i378
  %.09.i.i379 = phi ptr [ %i.vx, %.lr.ph.i.i378 ], [ %i.vw, %.loopexit ] ; 2 uses
  %i.vx = load ptr, ptr %.09.i.i379, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i379, i64 noundef 24) #23
  %.not.i.i380 = icmp eq ptr %i.vx, %7
  br i1 %.not.i.i380, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit, label %.lr.ph.i.i378, !llvm.loop !85

_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit:       ; preds = %.lr.ph.i.i378, %bb.a, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret void

bb.dy:                                            ; preds = %bb.dx, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit376
  %.pn162.pn = phi { ptr, i32 } [ %.pn162, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter12SComplexFaceESaIS3_EED2Ev.exit376 ], [ %i.vm, %bb.dx ]
  %i.vy = load ptr, ptr %7, align 8               ; 2 uses
  %.not8.i.i381 = icmp eq ptr %i.vy, %7
  br i1 %.not8.i.i381, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit385, label %.lr.ph.i.i382

.lr.ph.i.i382:                                    ; preds = %bb.dy, %.lr.ph.i.i382
  %.09.i.i383 = phi ptr [ %i.vz, %.lr.ph.i.i382 ], [ %i.vy, %bb.dy ] ; 2 uses
  %i.vz = load ptr, ptr %.09.i.i383, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i383, i64 noundef 24) #23
  %.not.i.i384 = icmp eq ptr %i.vz, %7
  br i1 %.not.i.i384, label %_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit385, label %.lr.ph.i.i382, !llvm.loop !85

_ZNSt7__cxx1110_List_baseIjSaIjEED2Ev.exit385:    ; preds = %.lr.ph.i.i382, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  resume { ptr, i32 } %.pn162.pn

bb.dz:                                            ; preds = %bb.bg
  unreachable
}

declare noundef zeroext i1 @_ZNK6Assimp11AMFImporter22Find_ConvertedMaterialERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKNS0_12SPP_MaterialE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc { <2 x float>, <2 x float> } @"_ZZN6Assimp11AMFImporter24Postprocess_BuildMeshSetERK7AMFMeshRKSt6vectorI10aiVector3tIfESaIS6_EERKS4_IP8AMFColorSaISC_EEPKSB_RS4_IP6aiMeshSaISK_EER6aiNodeENK3$_1clEm"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !86 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %1, %i.h
end_hunk_3
