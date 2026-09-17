Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Postprocess?download=true
inline.NumInlined: 858
inline.NumDeleted: 400
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.aiMatrix4x4t = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<aiMatrix4x4t<float>, std::allocator<aiMatrix4x4t<float>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<aiMatrix4x4t<float>, std::allocator<aiMatrix4x4t<float>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%struct.aiColor3D = type { float, float, float }
%struct.aiString = type { i32, [1024 x i8] }
%struct.aiUVTransform = type { %class.aiVector2t, %class.aiVector2t, float }
%class.aiVector2t = type { float, float }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::list.45" = type { %"class.std::__cxx11::_List_base.46" }
%"class.std::__cxx11::_List_base.46" = type { %"struct.std::__cxx11::_List_base<aiNode *, std::allocator<aiNode *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<aiNode *, std::allocator<aiNode *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"class.std::__cxx11::list.50" = type { %"class.std::__cxx11::_List_base.51" }
%"class.std::__cxx11::_List_base.51" = type { %"struct.std::__cxx11::_List_base<unsigned int, std::allocator<unsigned int>>::_List_impl" }
%"struct.std::__cxx11::_List_base<unsigned int, std::allocator<unsigned int>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"class.std::__cxx11::list.3" = type { %"class.std::__cxx11::_List_base.4" }
%"class.std::__cxx11::_List_base.4" = type { %"struct.std::__cxx11::_List_base<X3DNodeElementBase *, std::allocator<X3DNodeElementBase *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<X3DNodeElementBase *, std::allocator<X3DNodeElementBase *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_Z12ai_to_stringI11X3DElemTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_ = comdat any

$_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_ = comdat any

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@.str = private unnamed_addr constant [48 x i8] c"Postprocess_BuildLight. Unknown type of light: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.2 = private unnamed_addr constant [49 x i8] c"Postprocess_BuildMaterial. pMaterial is nullptr.\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Postprocess_BuildMaterial. *pMaterial must be nullptr.\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"$clr.ambient\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"$clr.diffuse\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"$clr.emissive\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"$clr.specular\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"$mat.shinpercent\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"$mat.shininess\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"$mat.opacity\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"$tex.file\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"$tex.mapmodeu\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"$tex.mapmodev\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"$tex.op\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"$tex.uvtrafo\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Postprocess_BuildMesh. pMesh is nullptr.\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Postprocess_BuildMesh. *pMesh must be nullptr.\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"Postprocess_BuildMesh. Unknown child of ElevationGrid: \00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"Postprocess_BuildMesh. Unknown child of IndexedFaceSet: \00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"Postprocess_BuildMesh. Unknown child of IndexedLineSet: \00", align 1
@.str.21 = private unnamed_addr constant [182 x i8] c"Postprocess_BuildMesh. Unknown child of IndexedTriangleSet or IndexedTriangleFanSet, or                                                                     IndexedTriangleStripSet: \00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"Postprocess_BuildMesh. Unknown child of PointSet: \00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"Postprocess_BuildMesh. Unknown child of LineSet: \00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"Postprocess_BuildMesh. Unknown child of TrianlgeFanSet: \00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Postprocess_BuildMesh. Unknown child of TrianlgeSet: \00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"Postprocess_BuildMesh. Unknown child of TriangleStripSet: \00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"Postprocess_BuildMesh. Unknown mesh type: \00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"Postprocess_BuildNode. Unknown type: \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"$tex.mapping\00", align 1
@.str.30 = private unnamed_addr constant [76 x i8] c"Postprocess. MetaData member in node are not nullptr. Something went wrong.\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Postprocess. Unknown metadata type.\00", align 1
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.34 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._ZNK6Assimp11X3DImporter22Postprocess_BuildShapeERK19X3DNodeElementShapeRNSt7__cxx114listIjSaIjEEERNS5_IP6aiMeshSaISA_EEERNS5_IP10aiMaterialSaISF_EEE = private unnamed_addr constant [4 x i8] c"\03\02\02\01", align 4

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.a, align 8
  store ptr %2, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store float 1.000000e+00, ptr %0, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %.09 = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09, i64 72
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader
  %i.n = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %_ZNSt7__cxx114listI12aiMatrix4x4tIfESaIS2_EE9push_backERKS2_.exit unwind label %bb.c ; 2 uses

_ZNSt7__cxx114listI12aiMatrix4x4tIfESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.09, i64 76
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.p, ptr noundef nonnull align 4 dereferenceable(64) %i.o, i64 64, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %i.q = load i64, ptr %i.b, align 8
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %.not8.i.i15 = icmp eq ptr %i.t, %2
  br i1 %.not8.i.i15, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit19, label %.lr.ph.i.i16

bb.d:                                             ; preds = %_ZNSt7__cxx114listI12aiMatrix4x4tIfESaIS2_EE9push_backERKS2_.exit, %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.v, null
  br i1 %.not12, label %.loopexit, label %.preheader, !llvm.loop !7

.loopexit:                                        ; preds = %bb.d
  %.pre = load ptr, ptr %2, align 8, !noalias !12 ; 3 uses
  %.not5367 = icmp eq ptr %2, %.pre
  br i1 %.not5367, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.21.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.29.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %i.ap, ptr %0, align 4
  store <4 x float> %i.ax, ptr %.sroa.13.0..sroa_idx27, align 4
  store <4 x float> %i.bf, ptr %.sroa.21.0..sroa_idx35, align 4
  store <4 x float> %i.bn, ptr %.sroa.29.0..sroa_idx43, align 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.w = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 80) #20
  %.not.i.i = icmp eq ptr %i.w, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !10

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge: ; preds = %bb.a, %.loopexit
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.f, align 4
  store float 1.000000e+00, ptr %i.h, align 4
  br label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.e:                                             ; preds = %.loopexit, %bb.e
  %.sroa.052.069 = phi ptr [ %i.z, %bb.e ], [ %2, %.loopexit ]
  %i.x = phi <16 x float> [ %i.bs, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.loopexit ] ; 16 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.052.069, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ae = load <4 x float>, ptr %i.aa, align 4    ; 4 uses
  %i.af = load <4 x float>, ptr %i.ab, align 4    ; 4 uses
  %i.ag = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ah = fmul <4 x float> %i.ag, %i.af
  %i.ai = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> zeroinitializer
  %i.aj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.ai, <4 x float> %i.ah)
  %i.ak = load <4 x float>, ptr %i.ac, align 4    ; 4 uses
  %i.al = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.am = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.al, <4 x float> %i.aj)
  %i.an = load <4 x float>, ptr %i.ad, align 4    ; 4 uses
  %i.ao = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.ao, <4 x float> %i.am) ; 2 uses
  %i.aq = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ar = fmul <4 x float> %i.aq, %i.af
  %i.as = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.at = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.as, <4 x float> %i.ar)
  %i.au = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.av = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.au, <4 x float> %i.at)
  %i.aw = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.ax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.aw, <4 x float> %i.av) ; 2 uses
  %i.ay = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.az = fmul <4 x float> %i.ay, %i.af
  %i.ba = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.ba, <4 x float> %i.az)
  %i.bc = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.bc, <4 x float> %i.bb)
  %i.be = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.bf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.be, <4 x float> %i.bd) ; 2 uses
  %i.bg = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.bh = fmul <4 x float> %i.bg, %i.af
  %i.bi = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.bj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.bi, <4 x float> %i.bh)
  %i.bk = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.bl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.bk, <4 x float> %i.bj)
  %i.bm = shufflevector <16 x float> %i.x, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.bn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.bm, <4 x float> %i.bl) ; 2 uses
  %.not53 = icmp eq ptr %i.z, %.pre
  %i.bo = shufflevector <4 x float> %i.ap, <4 x float> %i.ax, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bf, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <16 x float> %i.bo, <16 x float> %i.bp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bn, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <16 x float> %i.bq, <16 x float> %i.br, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  br i1 %.not53, label %._crit_edge, label %bb.e, !llvm.loop !11

.lr.ph.i.i16:                                     ; preds = %bb.c, %.lr.ph.i.i16
  %.09.i.i17 = phi ptr [ %i.bt, %.lr.ph.i.i16 ], [ %i.t, %bb.c ] ; 2 uses
  %i.bt = load ptr, ptr %.09.i.i17, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i17, i64 noundef 80) #20
  %.not.i.i18 = icmp eq ptr %i.bt, %2
  br i1 %.not.i.i18, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit19, label %.lr.ph.i.i16, !llvm.loop !10

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit19: ; preds = %.lr.ph.i.i16, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter33PostprocessHelper_CollectMetadataERK18X3DNodeElementBaseRNSt7__cxx114listIPS1_SaIS6_EEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.05.015 = load ptr, ptr %i.a, align 8     ; 2 uses
  %.not16 = icmp eq ptr %.sroa.05.015, %i.a
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.05.017 = phi ptr [ %.sroa.05.015, %.lr.ph ], [ %.sroa.05.0, %bb.e ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.05.017, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i32, ptr %i.e, align 8
  switch i32 %i.f, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 6, label %bb.c
    i32 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.c, align 8
  store ptr %i.i, ptr %i.h, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %i.j = load i64, ptr %i.b, align 8
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZNK6Assimp11X3DImporter33PostprocessHelper_CollectMetadataERK18X3DNodeElementBaseRNSt7__cxx114listIPS1_SaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.05.0 = load ptr, ptr %.sroa.05.017, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.05.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11X3DImporter35PostprocessHelper_ElementIsMetadataE11X3DElemType(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %or.cond9 = icmp ult i32 %i.a, 6
  ret i1 %or.cond9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11X3DImporter31PostprocessHelper_ElementIsMeshE11X3DElemType(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = insertelement <6 x i32> poison, i32 %1, i64 0 ; 2 uses
  %i.b = shufflevector <6 x i32> %i.a, <6 x i32> poison, <6 x i32> zeroinitializer
  %i.c = add <6 x i32> %i.b, <i32 -7, i32 -15, i32 -19, i32 -24, i32 -11, i32 -31>
  %i.d = shufflevector <6 x i32> %i.a, <6 x i32> poison, <2 x i32> zeroinitializer
  %i.e = icmp eq <2 x i32> %i.d, <i32 18, i32 14>
  %i.f = icmp ult <6 x i32> %i.c, <i32 4, i32 3, i32 2, i32 7, i32 3, i32 2>
  %i.g = shufflevector <6 x i1> %i.f, <6 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.h = shufflevector <2 x i1> %i.e, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.i = shufflevector <8 x i1> %i.g, <8 x i1> %i.h, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.j = icmp eq i32 %1, 33
  %i.k = bitcast <8 x i1> %i.i to i8
  %i.l = icmp ne i8 %i.k, 0
  %op.rdx = or i1 %i.l, %i.j
  ret i1 %op.rdx
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter22Postprocess_BuildLightERK18X3DNodeElementBaseRNSt7__cxx114listIP7aiLightSaIS7_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 4 %3, ptr noundef nonnull align 8 dereferenceable(120) %0)
  %i.a = tail call noalias noundef nonnull dereferenceable(1132) ptr @_Znwm(i64 noundef 1132) #19 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1132) %i.a, i8 0, i64 1072, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1076 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1116 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store <4 x float> <float f0x40C90FDB, float f0x40C90FDB, float 0.000000e+00, float 0.000000e+00>, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = trunc nuw nsw i64 %i.f to i32
  store i32 %i.i, ptr %i.a, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 1 %i.k, i64 %i.f, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  store i8 0, ptr %i.l, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1108
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load float, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1092
  %i.u = load <4 x float>, ptr %i.m, align 4      ; 3 uses
  %i.v = load <2 x float>, ptr %i.n, align 4, !noalias !16
  %i.w = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.w, %i.v
  store <2 x float> %i.x, ptr %i.o, align 4
  %i.y = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 0>
  %i.z = insertelement <4 x float> %i.y, float %i.q, i64 2 ; 2 uses
end_hunk_0
