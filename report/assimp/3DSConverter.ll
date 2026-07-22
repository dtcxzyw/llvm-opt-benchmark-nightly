inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.Assimp::D3DS::Material" = type <{ ptr, %"class.std::__cxx11::basic_string", %struct.aiColor3D, float, float, %struct.aiColor3D, %struct.aiColor3D, i32, float, [4 x i8], %"struct.Assimp::D3DS::Texture", %"struct.Assimp::D3DS::Texture", %"struct.Assimp::D3DS::Texture", %"struct.Assimp::D3DS::Texture", %"struct.Assimp::D3DS::Texture", %"struct.Assimp::D3DS::Texture", %"struct.Assimp::D3DS::Texture", float, %struct.aiColor3D, %"struct.Assimp::D3DS::Texture", i8, [7 x i8] }>
%struct.aiColor3D = type { float, float, float }
%"struct.Assimp::D3DS::Texture" = type { float, %"class.std::__cxx11::basic_string", float, float, float, float, float, i32, i8, i32 }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<aiVector3t<float>, std::allocator<aiVector3t<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.aiString = type { i32, [1024 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.42" }
%"struct.std::_Head_base.42" = type { ptr }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.aiMatrix4x4t = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

$_ZN6Assimp4D3DS8MaterialC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN6Assimp4D3DS8MaterialD2Ev = comdat any

$_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_ = comdat any

$_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev = comdat any

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZN12aiMatrix4x4tIfE7InverseEv = comdat any

$_ZN6Assimp4D3DS8MaterialD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZN6Assimp4D3DS8MaterialC2ERKS1_ = comdat any

$_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_default_appendEm = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTVN6Assimp4D3DS8MaterialE = comdat any

$_ZTIN6Assimp4D3DS8MaterialE = comdat any

$_ZTSN6Assimp4D3DS8MaterialE = comdat any

$_ZTV17DeadlyImportError = comdat any

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Material index overflow in 3DS file. Using default material\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%%%DEFAULT\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"3DS: Generating default material\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"3DS: Vertex index overflow)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"3DS: Texture coordinate index overflow)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"$tex.file\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"$tex.blend\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"$tex.mapmodeu\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"$tex.mapmodev\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"$tex.uvtrafo\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"?bg.global\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"?mat.name\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"$clr.ambient\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"$clr.diffuse\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"$clr.specular\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"$clr.emissive\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"$mat.shininess\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"$mat.shinpercent\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"$mat.opacity\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"$mat.bumpscaling\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"$mat.twosided\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"$mat.wireframe\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"$mat.shadingm\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"No faces loaded. The mesh is empty\00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.25 = private unnamed_addr constant [26 x i8] c"3DS: Flipping mesh X-Axis\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"_inst_\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"3DS: Converting camera roll track ...\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"No hierarchy information has been found in the file. \00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"<3DSDummyRoot>\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"3DSMesh_%u\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"3DSMasterAnim\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"UNNAMED\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"<3DSRoot>\00", align 1
@_ZTVN6Assimp4D3DS8MaterialE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6Assimp4D3DS8MaterialE, ptr @_ZN6Assimp4D3DS8MaterialD2Ev, ptr @_ZN6Assimp4D3DS8MaterialD0Ev] }, comdat, align 8
@_ZTIN6Assimp4D3DS8MaterialE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp4D3DS8MaterialE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp4D3DS8MaterialE = linkonce_odr hidden constant [24 x i8] c"N6Assimp4D3DS8MaterialE\00", comdat, align 1
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.37 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter22ReplaceDefaultMaterialEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"struct.Assimp::D3DS::Material", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8
  %.not96 = icmp eq ptr %i.e, %i.f
  br i1 %.not96, label %._crit_edge77.thread, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge77:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = icmp eq i32 %.127.fr, -842150451
  %i.j = trunc nuw i64 %i.ce to i32
  %spec.select = select i1 %i.i, i32 %i.j, i32 %.127.fr
  br label %._crit_edge77.thread

._crit_edge77.thread:                             ; preds = %._crit_edge77, %bb.a
  %i.k = phi ptr [ %i.bx, %._crit_edge77 ], [ %i.c, %bb.a ] ; 3 uses
  %i.l = phi i32 [ %spec.select, %._crit_edge77 ], [ 0, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %.not6388 = icmp eq ptr %i.n, %i.p
  br i1 %.not6388, label %._crit_edge93.thread, label %.lr.ph92

bb.b:                                             ; preds = %.lr.ph76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = phi ptr [ %i.c, %.lr.ph76 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.r = phi i64 [ 0, %.lr.ph76 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.02674 = phi i32 [ -842150451, %.lr.ph76 ], [ %.127.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.02972 = phi i32 [ 0, %.lr.ph76 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %4 = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [696 x i8], ptr %4, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.g, ptr %1, align 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.w, ptr %i.a, align 8
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %1, align 8
  %i.z = load i64, ptr %i.a, align 8
  store i64 %i.z, ptr %i.g, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.aa = phi ptr [ %i.y, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ac, ptr %i.h, align 8
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.af = load ptr, ptr %1, align 8               ; 2 uses
  %i.ag = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %.not6570 = icmp samesign eq i64 %i.ag, 0
  br i1 %.not6570, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 7) #24
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %bb.l, label %bb.e

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %.lr.ph
  %.sroa.059.071 = phi ptr [ %i.ao, %.lr.ph ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  %i.ak = load i8, ptr %.sroa.059.071, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = call i32 @tolower(i32 noundef %i.al) #25
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %.sroa.059.071, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.059.071, i64 1 ; 2 uses
  %.not65 = icmp eq ptr %i.ao, %i.ah
  br i1 %.not65, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge
  %i.ap = load ptr, ptr %i.b, align 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw [696 x i8], ptr %i.aq, i64 %i.r ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load float, ptr %i.as, align 8          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.av = load float, ptr %i.au, align 4
  %i.aw = fcmp une float %i.at, %i.av
  br i1 %i.aw, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ay = load float, ptr %i.ax, align 8
  %i.az = fcmp une float %i.at, %i.ay
  br i1 %i.az, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.h, label %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 400
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.i, label %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 184
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 472
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 256
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit, label %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit.thread

_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit: ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 544
  %i.bq = load i64, ptr %i.bp, align 8
  %.fr = freeze i64 %i.bq
  %.not66 = icmp eq i64 %.fr, 0
  br i1 %.not66, label %bb.l, label %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit.thread

_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit.thread: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit.thread, %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit, %bb.e, %bb.f, %._crit_edge
  %.127 = phi i32 [ %.02674, %bb.e ], [ %.02674, %._crit_edge ], [ %.02674, %bb.f ], [ %.02674, %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit.thread ], [ %.02972, %_ZNK6Assimp19Discreet3DSImporter16ContainsTexturesEj.exit ]
  %.127.fr = freeze i32 %.127                     ; 3 uses
  %i.br = load ptr, ptr %1, align 8               ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.g
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bt = load i64, ptr %i.g, align 8
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.bv = add i32 %.02972, 1                      ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.bx, align 8
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 696               ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, %i.bw
  br i1 %i.cf, label %bb.b, label %._crit_edge77, !llvm.loop !3

._crit_edge93:                                    ; preds = %._crit_edge86
  %i.cg = icmp eq i32 %.1.lcssa, 0
  br i1 %i.cg, label %._crit_edge93.thread, label %bb.q

.lr.ph92:                                         ; preds = %._crit_edge77.thread, %._crit_edge86
  %i.ch = phi ptr [ %i.cm, %._crit_edge86 ], [ %i.k, %._crit_edge77.thread ]
  %.090 = phi i32 [ %.1.lcssa, %._crit_edge86 ], [ 0, %._crit_edge77.thread ] ; 2 uses
  %.sroa.054.089 = phi ptr [ %i.cn, %._crit_edge86 ], [ %i.n, %._crit_edge77.thread ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.054.089, i64 128
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.054.089, i64 136 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not6481 = icmp eq ptr %i.cj, %i.cl
  br i1 %.not6481, label %._crit_edge86, label %.lr.ph85

._crit_edge86.loopexit:                           ; preds = %bb.p
  %.pre = load ptr, ptr %i.b, align 8
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %._crit_edge86.loopexit, %.lr.ph92
  %i.cm = phi ptr [ %i.ch, %.lr.ph92 ], [ %.pre, %._crit_edge86.loopexit ] ; 4 uses
  %.1.lcssa = phi i32 [ %.090, %.lr.ph92 ], [ %.2, %._crit_edge86.loopexit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.054.089, i64 216 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %.not63 = icmp eq ptr %i.cn, %i.cp
  br i1 %.not63, label %._crit_edge93, label %.lr.ph92, !llvm.loop !5

.lr.ph85:                                         ; preds = %.lr.ph92, %bb.p
  %.183 = phi i32 [ %.2, %bb.p ], [ %.090, %.lr.ph92 ] ; 3 uses
  %.sroa.047.082 = phi ptr [ %i.de, %bb.p ], [ %i.cj, %.lr.ph92 ] ; 4 uses
  %i.cq = load i32, ptr %.sroa.047.082, align 4   ; 2 uses
  %i.cr = icmp eq i32 %i.cq, -842150451
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph85
  store i32 %i.l, ptr %.sroa.047.082, align 4
  %i.cs = add i32 %.183, 1
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph85
  %i.ct = zext i32 %i.cq to i64
  %i.cu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load ptr, ptr %i.cu, align 8
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 696
  %.not34 = icmp ugt i64 %i.db, %i.ct
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.l, ptr %.sroa.047.082, align 4
  %i.dc = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.dc, ptr noundef nonnull @.str.1)
  %i.dd = add i32 %.183, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %.2 = phi i32 [ %i.cs, %bb.m ], [ %i.dd, %bb.o ], [ %.183, %bb.n ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.047.082, i64 4 ; 2 uses
  %i.df = load ptr, ptr %i.ck, align 8
  %.not64 = icmp eq ptr %i.de, %i.df
  br i1 %.not64, label %._crit_edge86.loopexit, label %.lr.ph85, !llvm.loop !6

bb.q:                                             ; preds = %._crit_edge93
  %i.dg = zext i32 %i.l to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = load ptr, ptr %i.cm, align 8
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 696
  %i.do = icmp eq i64 %i.dn, %i.dg
  br i1 %i.do, label %._crit_edge.i.i35, label %._crit_edge93.thread

._crit_edge.i.i35:                                ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.dp, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dp, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.dr, align 2
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(689) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %._crit_edge.i.i35
  %i.ds = load ptr, ptr %3, align 8               ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dp
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.r
  %i.du = load i64, ptr %i.dp, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <2 x float> splat (float 3.000000e-01), ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 3.000000e-01, ptr %i.dx, align 8
  %i.dy = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8            ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not.i = icmp eq ptr %i.ea, %i.ec
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  invoke void @_ZN6Assimp4D3DS8MaterialC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(689) %i.ea, ptr noundef nonnull align 8 dereferenceable(689) %2)
          to label %.noexc40 unwind label %bb.x

.noexc40:                                         ; preds = %bb.s
  %i.ed = load ptr, ptr %i.dz, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 696
  store ptr %i.ee, ptr %i.dz, align 8
  br label %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  invoke void @_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr %i.ea, ptr noundef nonnull align 8 dereferenceable(689) %2)
          to label %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit unwind label %bb.x

_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc40, %bb.t
  %i.ef = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ef, ptr noundef nonnull @.str.3)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @_ZN6Assimp4D3DS8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %._crit_edge93.thread

bb.w:                                             ; preds = %._crit_edge.i.i35
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %3, align 8               ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dp
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.w
  %i.ej = load i64, ptr %i.dp, align 8
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.s, %bb.u, %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EE9push_backERKS2_.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp4D3DS8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %2) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn32 = phi { ptr, i32 } [ %i.el, %bb.x ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn32

._crit_edge93.thread:                             ; preds = %._crit_edge77.thread, %bb.v, %bb.q, %._crit_edge93
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #3

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS8MaterialC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(689) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
