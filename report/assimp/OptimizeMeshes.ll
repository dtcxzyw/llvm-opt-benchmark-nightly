inline.NumInlined: 300
inline.NumDeleted: 161
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.9 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.9 = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZN6Assimp6Logger5debugIJRA47_KcRKjRA18_S2_RjEEEvDpOT_ = comdat any

$_ZN6Assimp21OptimizeMeshesProcessD2Ev = comdat any

$_ZN6Assimp21OptimizeMeshesProcessD0Ev = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE17_M_default_appendEm = comdat any

$_ZN6Assimp6Logger13formatMessageIJRA18_KcRjERKjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSB_SC_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJRjERA18_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS6_S7_EEOT0_DpOT_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@_ZTVN6Assimp21OptimizeMeshesProcessE = hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp21OptimizeMeshesProcessE, ptr @_ZN6Assimp21OptimizeMeshesProcessD2Ev, ptr @_ZN6Assimp21OptimizeMeshesProcessD0Ev, ptr @_ZNK6Assimp21OptimizeMeshesProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp21OptimizeMeshesProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp21OptimizeMeshesProcess7ExecuteEP7aiScene] }, align 8
@.str = private unnamed_addr constant [22 x i8] c"PP_SLM_TRIANGLE_LIMIT\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PP_SLM_VERTEX_LIMIT\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Skipping OptimizeMeshesProcess\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"OptimizeMeshesProcess begin\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"OptimizeMeshes: No meshes remaining; there's definitely something wrong\00", align 1
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.5 = private unnamed_addr constant [47 x i8] c"OptimizeMeshesProcess finished. Input meshes: \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c", Output meshes: \00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"OptimizeMeshesProcess finished\00", align 1
@_ZTIN6Assimp21OptimizeMeshesProcessE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp21OptimizeMeshesProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTSN6Assimp21OptimizeMeshesProcessE = hidden constant [33 x i8] c"N6Assimp21OptimizeMeshesProcessE\00", align 1
@_ZTIN6Assimp11BaseProcessE = external constant ptr
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6Assimp21OptimizeMeshesProcessC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp21OptimizeMeshesProcessC2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp21OptimizeMeshesProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21OptimizeMeshesProcessE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.a, i8 0, i64 57, i1 false)
  store i32 -1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 -1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp21OptimizeMeshesProcess8IsActiveEj(ptr noundef nonnull align 8 captures(none) dereferenceable(120) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %1, 2097152
  %.not = icmp ne i32 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = lshr i32 %1, 15
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 1
  store i8 %i.e, ptr %i.b, align 8
  %i.f = and i32 %1, 128
  %.not4 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %.not4, i32 %i.h, i32 -559038737
  store i32 %i.i, ptr %i.g, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp21OptimizeMeshesProcess15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, -559038737
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i32 noundef 1000000)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.d, ptr %i.e, align 8
  %i.f = tail call noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i32 noundef 1000000)
  store i32 %i.f, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZNK6Assimp8Importer18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp21OptimizeMeshesProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = icmp ult i32 %i.c, 2
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv() ; 2 uses
  br i1 %i.d, label %2, label %bb.b

2:                                                ; preds = %bb.a
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str.2)
  br label %bb.ac

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str.3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 7 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.h, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit:      ; preds = %bb.b, %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i
  %i.l = phi ptr [ %i.i, %bb.b ], [ %i.j, %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not.i.i24 = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i24, label %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26, label %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i25

_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i25: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit
  store ptr %i.p, ptr %i.n, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26

_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26:    ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit, %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i25
  %i.q = load i32, ptr %i.b, align 8
  %i.r = zext i32 %i.q to i64                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.k                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.w, %i.r
  br i1 %i.x, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = sub i64 %i.y, %i.k                       ; 3 uses
  %i.aa = shl nuw nsw i64 %i.r, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 4 uses
  %i.ac = icmp sgt i64 %i.z, 0
  br i1 %i.ac, label %bb.c, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.j, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.c, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.v) #20
  %.pre42.pre = load ptr, ptr %i.m, align 8
  br label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.pre42 = phi ptr [ %.pre42.pre, %bb.d ], [ %i.p, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ]
  store ptr %i.ab, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store ptr %i.ad, ptr %i.h, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.r
  store ptr %i.ae, ptr %i.s, align 8
  %.pre = load i32, ptr %i.b, align 8
  %.pre45 = zext i32 %.pre to i64
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi = phi i64 [ %i.r, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26 ], [ %.pre45, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %i.af = phi ptr [ %i.p, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit26 ], [ %.pre42, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.al, %.pre-phi
  br i1 %i.am, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i27, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i27: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aj                    ; 3 uses
  %i.aq = shl nuw nsw i64 %.pre-phi, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #19 ; 4 uses
  %i.as = icmp sgt i64 %i.ap, 0
  br i1 %i.as, label %bb.e, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.af, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28: ; preds = %bb.e, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i27
  %.not.i8.i29 = icmp eq ptr %i.af, null
  br i1 %.not.i8.i29, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #20
  br label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30: ; preds = %bb.f, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i28
  store ptr %i.ar, ptr %i.m, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store ptr %i.at, ptr %i.n, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.pre-phi
  store ptr %i.au, ptr %i.ag, align 8
  %.pre43 = load i32, ptr %i.b, align 8
  %.pre46 = zext i32 %.pre43 to i64
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31:   ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30
  %.pre-phi47 = phi i64 [ %.pre-phi, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit ], [ %.pre46, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i30 ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 12                ; 3 uses
  %i.bd = icmp ult i64 %i.bc, %.pre-phi47
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31
  %i.be = sub nuw nsw i64 %.pre-phi47, %i.bc
  tail call void @_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef %i.be)
  br label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit

bb.h:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit31
  %i.bf = icmp ugt i64 %i.bc, %.pre-phi47
  br i1 %i.bf, label %bb.i, label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %.pre-phi47 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.i.i32, label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.i
  store ptr %i.bg, ptr %i.aw, align 8
  br label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void @_ZN6Assimp21OptimizeMeshesProcess19FindInstancedMeshesEP6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp eq i32 %i.bk, -559038737
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit
  store i32 -1, ptr %i.bj, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit
  %i.bm = load i32, ptr %i.b, align 8
  %.not40 = icmp eq i32 %i.bm, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.l

._crit_edge:                                      ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %bb.k
  %i.bo = load ptr, ptr %i.bh, align 8
  tail call void @_ZN6Assimp21OptimizeMeshesProcess11ProcessNodeEP6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.bo)
  %i.bp = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bq = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %.not = icmp eq ptr %i.bp, %i.bq
  br i1 %.not, label %bb.t, label %bb.w

bb.l:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.02238 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %i.bs = load ptr, ptr %i.bn, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef %i.bu)
  %i.bw = load ptr, ptr %i.av, align 8
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bv, ptr %i.by, align 4
  %i.bz = load ptr, ptr %i.av, align 8
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %indvars.iv ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp ugt i32 %i.cb, 1
  br i1 %i.cc, label %bb.m, label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.n, label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.m
  %i.cg = add i32 %.02238, 1                      ; 2 uses
  store i32 %.02238, ptr %i.cd, align 4
  %i.ch = load ptr, ptr %i.f, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv ; 2 uses
  %i.cl = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.cm = load ptr, ptr %i.ag, align 8
  %.not.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %i.ck, align 8
  store ptr %i.cn, ptr %i.cl, align 8
  %i.co = load ptr, ptr %i.n, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cp, ptr %i.n, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.cq = load ptr, ptr %i.m, align 8             ; 4 uses
  %i.cr = ptrtoint ptr %i.cl to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.q, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #19 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.ct ; 2 uses
  %i.dd = load ptr, ptr %i.ck, align 8
  store ptr %i.dd, ptr %i.dc, align 8
  %i.de = icmp sgt i64 %i.ct, 0
  br i1 %i.de, label %bb.r, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %i.cq, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.ct) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.db, ptr %i.m, align 8
  store ptr %i.df, ptr %i.n, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dg, ptr %i.ag, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.o, %bb.l, %bb.m
  %.1 = phi i32 [ %.02238, %bb.l ], [ %.02238, %bb.m ], [ %i.cg, %bb.o ], [ %i.cg, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = load i32, ptr %i.b, align 8
  %i.di = zext i32 %i.dh to i64
  %i.dj = icmp samesign ult i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %bb.l, label %._crit_edge, !llvm.loop !3

bb.t:                                             ; preds = %._crit_edge
  %i.dk = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull @.str.4)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dl = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dk) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.dl

bb.w:                                             ; preds = %._crit_edge
  %i.dm = load ptr, ptr %i.aw, align 8
  %i.dn = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i33, label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35, label %_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i34

_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i34: ; preds = %bb.w
  store ptr %i.dn, ptr %i.aw, align 8
  br label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35

_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35: ; preds = %bb.w, %_ZSt8_DestroyIPN6Assimp21OptimizeMeshesProcess8MeshInfoES2_EvT_S4_RSaIT0_E.exit.i.i34
  %i.do = ptrtoint ptr %i.bp to i64
  %i.dp = sub i64 %i.do, %i.br
  %i.dq = lshr exact i64 %i.dp, 3
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = load ptr, ptr %i.f, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i32 %i.dr, ptr %i.dt, align 8
  %i.du = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.dv = load ptr, ptr %i.n, align 8
  %i.dw = load ptr, ptr %i.f, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = ptrtoint ptr %i.du to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp sgt i64 %i.eb, 8
  br i1 %i.ec, label %bb.x, label %bb.y, !prof !5

bb.x:                                             ; preds = %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dy, ptr align 8 %i.du, i64 %i.eb, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.y:                                             ; preds = %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE6resizeEm.exit35
  %i.ed = icmp eq i64 %i.eb, 8
  br i1 %i.ed, label %bb.z, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.z:                                             ; preds = %bb.y
  %i.ee = load ptr, ptr %i.du, align 8
  store ptr %i.ee, ptr %i.dy, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.x, %bb.y, %bb.z
  %i.ef = load ptr, ptr %i.n, align 8
  %i.eg = load ptr, ptr %i.m, align 8
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 3
  %i.el = zext i32 %i.c to i64
  %.not23 = icmp eq i64 %i.ek, %i.el
  %i.em = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv() ; 2 uses
  br i1 %.not23, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  call void @_ZN6Assimp6Logger5debugIJRA47_KcRKjRA18_S2_RjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.em, ptr noundef nonnull align 1 dereferenceable(47) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.ac

bb.ab:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.em, ptr noundef nonnull @.str.7)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp21OptimizeMeshesProcess19FindInstancedMeshesEP6aiNode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1128
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph13

.lr.ph13:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.preheader, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph13, %bb.c
  %indvars.iv16 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next17, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @_ZN6Assimp21OptimizeMeshesProcess19FindInstancedMeshesEP6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.u)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %i.v = load i32, ptr %i.e, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next17, %i.w
  br i1 %i.x, label %bb.c, label %._crit_edge, !llvm.loop !7
}

declare noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp21OptimizeMeshesProcess11ProcessNodeEP6aiNode(ptr noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr noundef captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.ak, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not87 = icmp eq i32 %i.q, 0
  br i1 %.not87, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.al

bb.b:                                             ; preds = %.lr.ph83, %bb.ak
  %i.s = phi i32 [ %i.c, %.lr.ph83 ], [ %i.hm, %bb.ak ]
  %indvars.iv = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next.pre-phi, %bb.ak ] ; 4 uses
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv ; 4 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.w ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp ugt i32 %i.z, 1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 4
  %.pre96 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ak

bb.d:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.f, align 8             ; 4 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.ae, ptr %i.g, align 8
  %.pre = load i32, ptr %i.b, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit:      ; preds = %bb.d, %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i
  %i.af = phi ptr [ %i.ad, %bb.d ], [ %i.ae, %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.ag = phi i32 [ %i.s, %bb.d ], [ %.pre, %_ZSt8_DestroyIPP6aiMeshS1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ah = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ai = zext i32 %i.ag to i64
  %i.aj = icmp samesign ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit
  %i.ak = trunc nuw i64 %i.ah to i32
  %i.al = trunc nuw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread
  %.pre93 = load ptr, ptr %i.f, align 8
  %.pre94 = load ptr, ptr %i.g, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit
  %i.am = phi ptr [ %.pre94, %._crit_edge.loopexit ], [ %i.af, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit ] ; 4 uses
  %i.an = phi ptr [ %.pre93, %._crit_edge.loopexit ], [ %i.ae, %_ZNSt6vectorIP6aiMeshSaIS1_EE6resizeEm.exit ] ; 5 uses
  %i.ao = icmp eq ptr %i.an, %i.am
  %i.ap = load ptr, ptr %i.h, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %i.u, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at ; 4 uses
  br i1 %i.ao, label %bb.ae, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread
  %i.av = phi i32 [ %i.en, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ %i.ag, %.lr.ph.preheader ] ; 8 uses
  %.03979 = phi i32 [ %.039, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ %i.ak, %.lr.ph.preheader ] ; 9 uses
  %.039.in78 = phi i32 [ %.1, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ %i.al, %.lr.ph.preheader ]
  %.04077 = phi i32 [ %.141, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ 0, %.lr.ph.preheader ] ; 10 uses
  %.04276 = phi i32 [ %.143, %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread ], [ 0, %.lr.ph.preheader ] ; 10 uses
  %i.aw = load ptr, ptr %i.d, align 8
  %i.ax = zext i32 %.03979 to i64                 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.e, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread

bb.e:                                             ; preds = %.lr.ph
  %i.bf = load i32, ptr %i.u, align 4
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bl = load i32, ptr %i.bk, align 4
  %.not.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not.i, label %bb.f, label %_ZN6Assimp21OptimizeMeshesProcess7CanJoinEjjjj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bm = load ptr, ptr %i.h, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bg
  %i.bq = load ptr, ptr %i.bp, align 8            ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
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
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
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
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #18
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #18
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #18
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !23
  store i8 0, ptr %i.a, align 8, !alias.scope !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !23 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !23 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !23 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !23 ; 2 uses
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
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
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
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #18
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store i32 0, ptr %.08.i.i.i.prol, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 4
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i32 -1, ptr %i.q, align 4
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !24

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIPN6Assimp21OptimizeMeshesProcess8MeshInfoEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i32 -1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 12
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store i32 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 20
  store i32 -1, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 28
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i32 -1, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 36
  store i32 0, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 44
  store i32 -1, ptr %i.ae, align 4
  %i.af = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp21OptimizeMeshesProcess8MeshInfoEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !26

_ZSt27__uninitialized_default_n_aIPN6Assimp21OptimizeMeshesProcess8MeshInfoEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZNKSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 768614336404564650) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 12
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #19 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE12_M_check_lenEmPKc.exit ]
  store i32 0, ptr %.08.i.i.i31.prol, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 4
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  store i32 -1, ptr %i.ao, align 4
  %i.ap = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 12 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !27

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.am, %_ZNKSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i30.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPN6Assimp21OptimizeMeshesProcess8MeshInfoEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.be, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i31, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 4
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i32 -1, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 12
  store i32 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i32 0, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 20
  store i32 -1, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store i32 0, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 28
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store i32 -1, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 36
  store i32 0, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i32 0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 44
  store i32 -1, ptr %i.bc, align 4
  %i.bd = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp21OptimizeMeshesProcess8MeshInfoEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !26

_ZSt27__uninitialized_default_n_aIPN6Assimp21OptimizeMeshesProcess8MeshInfoEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp21OptimizeMeshesProcess8MeshInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp21OptimizeMeshesProcess8MeshInfoEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i37 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPN6Assimp21OptimizeMeshesProcess8MeshInfoEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp21OptimizeMeshesProcess8MeshInfoEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !alias.scope !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
end_hunk_1
