Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS_11SkinnedMesh6SJointE:bb.a
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !401, !alias.scope !885
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !180, !alias.scope !883, !noalias !884
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !alias.scope !884, !noalias !883
  br label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !882

_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i: ; preds = %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.am, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i36.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i36.i.i, label %"_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS6_11SkinnedMesh6SJointEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i", label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !195
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.aq) #31
  br label %"_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS6_11SkinnedMesh6SJointEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i"

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i4.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume.i unwind label %bb.k

_ZNSt14_Function_baseD2Ev.exit.i4.i:              ; preds = %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.z) #31
  invoke void @__cxa_rethrow() #34
          to label %bb.l unwind label %bb.j

bb.k:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #33
  unreachable

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i4.i
  unreachable

"_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS6_11SkinnedMesh6SJointEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i": ; preds = %bb.i, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !193
  store ptr %i.an, ptr %i.b, align 8, !tbaa !194
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ax, ptr %i.d, align 8, !tbaa !195
  br label %"_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS6_11SkinnedMesh6SJointEE3$_0EEERS2_DpOT_.exit"

"_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS6_11SkinnedMesh6SJointEE3$_0EEERS2_DpOT_.exit": ; preds = %"_ZNSt8functionIFvvEEC2IZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS3_11SkinnedMesh6SJointEE3$_0vEEOT_.exit.i", %"_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS6_11SkinnedMesh6SJointEE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene19CGLTFMeshFileLoader13MeshExtractor8loadNodeEmPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(784) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %4 = alloca %"class.core::CMatrix4", align 16   ; 27 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !410
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !411  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 288                 ; 2 uses
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %1, i64 noundef %i.i) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %1 ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.l = tail call noundef ptr @_ZN5scene18SkinnedMeshBuilder8addJointEPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef %2) ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load <4 x double>, ptr %i.m, align 8     ; 4 uses
  %.sroa.057.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.o = load <4 x double>, ptr %.sroa.057.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.057.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.p = load <4 x double>, ptr %.sroa.057.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %.sroa.057.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.q = load <4 x double>, ptr %.sroa.057.sroa.13.0..sroa_idx, align 8
  %.sroa.057.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %.sroa.057.sroa.17.0.copyload = load i8, ptr %.sroa.057.sroa.17.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.r = icmp eq i8 %.sroa.057.sroa.17.0.copyload, 0
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.s = fptrunc <4 x double> %i.n to <4 x float>
  store <4 x float> %i.s, ptr %4, align 16, !tbaa !412, !alias.scope !924
  %i.t = fptrunc <4 x double> %i.o to <4 x float>
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x float> %i.t, ptr %i.u, align 16, !tbaa !412, !alias.scope !924
  %i.v = fptrunc <4 x double> %i.p to <4 x float>
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store <4 x float> %i.v, ptr %i.w, align 16, !tbaa !412, !alias.scope !924
  %i.x = fptrunc <4 x double> %i.q to <4 x float>
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x float> %i.x, ptr %i.y, align 16, !tbaa !412, !alias.scope !924
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !924
  call fastcc void @_ZL17convertHandednessIN4core8CMatrix4IfEEET_RKS3_(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef nonnull align 4 dereferenceable(64) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !290
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !924
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !414, !noalias !924
  %i.ac = icmp eq i8 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65) %i.z, ptr noundef nonnull align 16 dereferenceable(64) %4, i64 64, i1 false)
  br i1 %i.ac, label %_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.aa, align 4, !tbaa !414, !noalias !924
  br label %_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !414, !noalias !930
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4core8CMatrix4IfEEEEOZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS8_11SkinnedMesh6SJointEE3$_0RSG_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SN_.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.ad, align 4, !tbaa !414, !noalias !930
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4core8CMatrix4IfEEEEOZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS8_11SkinnedMesh6SJointEE3$_0RSG_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SN_.exit.i.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4core8CMatrix4IfEEEEOZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS8_11SkinnedMesh6SJointEE3$_0RSG_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SN_.exit.i.i.i": ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ah = extractelement <4 x double> %i.p, i64 1
  %i.ai = fptrunc double %i.ah to float           ; 3 uses
  %i.aj = extractelement <4 x double> %i.p, i64 0
  %i.ak = fptrunc double %i.aj to float           ; 2 uses
  %i.al = extractelement <4 x double> %i.o, i64 3
  %i.am = fptrunc double %i.al to float           ; 3 uses
  %i.an = extractelement <4 x double> %i.o, i64 1
  %i.ao = fptrunc double %i.an to float           ; 3 uses
  %i.ap = fneg float %i.ao
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.ap, i64 0 ; 2 uses
  %i.aq = extractelement <4 x double> %i.o, i64 2
  %i.ar = fptrunc double %i.aq to float           ; 4 uses
  %.sroa.3.12.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i, float %i.ar, i64 1
  %i.as = extractelement <4 x double> %i.n, i64 3
  %i.at = fptrunc double %i.as to float           ; 4 uses
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = extractelement <4 x double> %i.o, i64 0
  %i.aw = fptrunc double %i.av to float           ; 4 uses
  %.sroa.0.4.vec.insert.i14.i.i.i.i.i.i.i.i = insertelement <2 x float> %i.au, float %i.aw, i64 1
  %i.ax = extractelement <4 x double> %i.n, i64 2
  %i.ay = fptrunc double %i.ax to float
  %i.az = fneg float %i.ay                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store float %i.az, ptr %i.ba, align 4, !tbaa !412, !noalias !930
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  store <2 x float> %.sroa.0.4.vec.insert.i14.i.i.i.i.i.i.i.i, ptr %i.bb, align 4, !noalias !930
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i.i.i.i.i.i, ptr %i.bc, align 4, !noalias !930
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  store float %i.am, ptr %i.bd, align 4, !tbaa !412, !noalias !930
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store float %i.ak, ptr %i.be, align 4, !tbaa !412, !noalias !930
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  store float %i.ai, ptr %i.bf, align 4, !tbaa !412, !noalias !930
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bi = fmul float %i.aw, %i.aw
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.bi)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.bj)
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.bk)
  %i.bm = fpext float %i.bl to double
  %sqrt.i.i.i.i.i.i.i.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bm)
  %i.bn = fdiv double 1.000000e+00, %sqrt.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = fptrunc double %i.bn to float           ; 3 uses
  %i.bp = fmul float %i.at, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.ar, %i.bo                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.bw, align 4, !tbaa !412, !alias.scope !931
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.bx, align 4, !tbaa !412, !alias.scope !931
  store float 1.000000e+00, ptr %i.bg, align 4, !tbaa !412, !alias.scope !931
  %i.by = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i, float %i.aw, i64 1
  %i.bz = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.by, %i.ca           ; 6 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 1 ; 3 uses
  %5 = insertelement <2 x float> poison, float %i.am, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ak, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %9 = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %10 = insertelement <2 x float> %9, float %i.bp, i64 0
  %11 = fmul <2 x float> %10, splat (float 2.000000e+00) ; 7 uses
  %12 = extractelement <2 x float> %11, i64 0     ; 2 uses
  %13 = fneg float %12
  %14 = fmul float %i.bq, %12                     ; 2 uses
  %15 = fneg float %14
  %16 = extractelement <2 x float> %11, i64 1
  %17 = fneg float %16                            ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %17, i64 0
  %18 = shufflevector <2 x float> %i.cd, <2 x float> %11, <2 x i32> <i32 0, i32 2>
  %19 = fmul float %i.cc, 2.000000e+00            ; 2 uses
  %i.ce = fneg float %19                          ; 2 uses
  %20 = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cc, float 1.000000e+00)
  %21 = insertelement <2 x float> poison, float %i.bq, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = insertelement <2 x float> %11, float %19, i64 0
  %24 = fmul <2 x float> %22, %23                 ; 3 uses
  %25 = extractelement <2 x float> %24, i64 0
  %26 = fneg float %25
  %27 = fneg <2 x float> %24
  %i.cf = insertelement <2 x float> %27, float %20, i64 0
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %i.cb, <2 x float> %i.cf)
  %i.ch = insertelement <2 x float> poison, float %26, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %14, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.cb, <2 x float> %i.ci)
  %28 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %i.cb, <2 x float> %24) ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %13, float %i.bp, float 1.000000e+00) ; 2 uses
  %i.cl = insertelement <2 x float> %11, float %17, i64 0
  %i.cm = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %15, i64 1
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cb, <2 x float> %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.cc, float %i.ck)
  %30 = fmul <2 x float> %i.cg, %6
  store <2 x float> %30, ptr %4, align 16, !tbaa !412, !alias.scope !931
  %31 = extractelement <2 x float> %29, i64 0
  %i.cq = fmul float %31, %i.am
  store float %i.cq, ptr %i.bu, align 8, !tbaa !412, !alias.scope !931
  %32 = shufflevector <2 x float> %29, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %33 = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %32, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = shufflevector <4 x float> %33, <4 x float> %i.cr, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ct = fmul <4 x float> %i.cs, %8
  store <4 x float> %i.ct, ptr %i.br, align 16, !tbaa !412, !alias.scope !931
  %i.cu = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.cj, %i.cv
  store <2 x float> %i.cw, ptr %i.bs, align 16, !tbaa !412, !alias.scope !931
  %i.cx = fmul float %i.cp, %i.ai
  store float %i.cx, ptr %i.bh, align 8, !tbaa !412, !alias.scope !931
  %i.cy = shufflevector <4 x double> %i.n, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.cz = fptrunc <2 x double> %i.cy to <2 x float> ; 2 uses
  store <2 x float> %i.cz, ptr %i.ag, align 4, !noalias !930
  store <2 x float> %i.cz, ptr %i.bt, align 16, !tbaa !412, !alias.scope !931
  store float %i.az, ptr %i.bv, align 8, !tbaa !412, !alias.scope !931
  br label %_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit

_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit: ; preds = %bb.d, %bb.e, %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4core8CMatrix4IfEEEEOZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS8_11SkinnedMesh6SJointEE3$_0RSG_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SN_.exit.i.i.i"
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.de = load <4 x float>, ptr %4, align 16, !tbaa !412, !noalias !932 ; 4 uses
  %i.df = load <4 x float>, ptr %i.da, align 4, !tbaa !412, !noalias !932 ; 4 uses
  %i.dg = load <4 x float>, ptr %i.db, align 4, !tbaa !412, !noalias !932 ; 4 uses
  %i.dh = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.di = fmul <4 x float> %i.dh, %i.dg
  %i.dj = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.dj, <4 x float> %i.di)
  %i.dl = load <4 x float>, ptr %i.dc, align 4, !tbaa !412, !noalias !932 ; 4 uses
  %i.dm = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dm, <4 x float> %i.dk)
  %i.do = load <4 x float>, ptr %i.dd, align 4, !tbaa !412, !noalias !932 ; 4 uses
  %i.dp = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.dp, <4 x float> %i.dn)
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ds = load <4 x float>, ptr %i.dr, align 16, !tbaa !412, !noalias !932 ; 4 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.du = fmul <4 x float> %i.dg, %i.dt
  %i.dv = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.dv, <4 x float> %i.du)
  %i.dx = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dx, <4 x float> %i.dw)
  %i.dz = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.dz, <4 x float> %i.dy)
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ec = load <4 x float>, ptr %i.eb, align 16, !tbaa !412, !noalias !932 ; 4 uses
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ee = fmul <4 x float> %i.dg, %i.ed
  %i.ef = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.ef, <4 x float> %i.ee)
  %i.eh = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.eh, <4 x float> %i.eg)
  %i.ej = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.ej, <4 x float> %i.ei)
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !412, !noalias !932 ; 4 uses
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eo = fmul <4 x float> %i.dg, %i.en
  %i.ep = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.ep, <4 x float> %i.eo)
  %i.er = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.er, <4 x float> %i.eq)
  %i.et = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.et, <4 x float> %i.es)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit
  %i.ev = load <4 x float>, ptr %4, align 16
  %.sroa.8.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ew = load <4 x float>, ptr %.sroa.8.0..sroa_idx33, align 16
  %.sroa.12.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ex = load <4 x float>, ptr %.sroa.12.0..sroa_idx41, align 16
  %.sroa.16.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ey = load <4 x float>, ptr %.sroa.16.0..sroa_idx49, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ez = phi <4 x float> [ %i.ev, %bb.i ], [ %i.dq, %bb.h ]
  %i.fa = phi <4 x float> [ %i.ew, %bb.i ], [ %i.ea, %bb.h ]
  %i.fb = phi <4 x float> [ %i.ex, %bb.i ], [ %i.ek, %bb.h ]
  %i.fc = phi <4 x float> [ %i.ey, %bb.i ], [ %i.eu, %bb.h ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  store <4 x float> %i.ez, ptr %i.fd, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  store <4 x float> %i.fa, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  store <4 x float> %i.fb, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 304
  store <4 x float> %i.fc, ptr %.sroa.16.0..sroa_idx, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !93, !range !80, !noundef !81
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !61
  store ptr %i.fi, ptr %i.a, align 8, !tbaa !313
  %i.fj = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIPKcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !190
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %1
  store ptr %i.l, ptr %i.fm, align 8, !tbaa !343
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !264, !range !80, !noundef !81
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !181
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %.sroa.0.0.copyload = load i64, ptr %i.fs, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(784) %0, i64 noundef %i.fr, i64 %.sroa.0.0.copyload, i8 %.sroa.2.0.copyload, ptr noundef nonnull %i.l)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ft = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !211, !range !80, !noundef !81
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.fw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !415 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !415 ; 2 uses
  %.not8081 = icmp eq ptr %i.fx, %i.fz
  br i1 %.not8081, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.sroa.022.082 = phi ptr [ %i.gb, %.lr.ph ], [ %i.fx, %bb.o ] ; 2 uses
  %i.ga = load i64, ptr %.sroa.022.082, align 8, !tbaa !181
  call void @_ZN5scene19CGLTFMeshFileLoader13MeshExtractor8loadNodeEmPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(784) %0, i64 noundef %i.ga, ptr noundef nonnull %i.l)
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.022.082, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.gb, %i.fz
  br i1 %.not80, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

declare noundef ptr @_ZN5scene18SkinnedMeshBuilder8addJointEPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIPKcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !93, !range !80, !noundef !81
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load ptr, ptr %1, align 8, !tbaa !313    ; 6 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull %i.e, i64 noundef %i.h) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !56
  %i.k = icmp eq ptr %i.e, null
  br i1 %i.k, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.l, ptr %i.a, align 8, !tbaa !181
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !61
  %i.o = load i64, ptr %i.a, align 8, !tbaa !181
  store i64 %i.o, ptr %i.j, align 8, !tbaa !60
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.d
  %i.p = phi ptr [ %i.n, %.noexc.i.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJPKcEEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.q = load i8, ptr %i.e, align 1, !tbaa !60
  store i8 %i.q, ptr %i.p, align 1, !tbaa !60
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJPKcEEEvDpOT_.exit
end_hunk_0
begin_hunk_1_@_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE4makeERKN10tiniergltf4GlTFEm:bb.a
bb.ao:                                            ; preds = %bb.g
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.go, align 8, !tbaa !425
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !425 ; 2 uses
  switch i8 %i.gq, label %bb.as [
    i8 0, label %bb.ap
    i8 1, label %bb.aq
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit
  ]

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !954 ; 3 uses
  %i.gt = load ptr, ptr %3, align 8, !tbaa !428   ; 3 uses
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gs, %i.gt
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gx = icmp ugt i64 %i.gw, 9223372036854775744
  br i1 %i.gx, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.ar
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.at

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar
  %i.gy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #32
          to label %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.at

_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !955
  %.pre189 = load ptr, ptr %i.gr, align 8, !tbaa !955
  br label %.noexc4.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge, %bb.aq
  %i.gz = phi ptr [ %i.gs, %bb.aq ], [ %.pre189, %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 2 uses
  %i.ha = phi ptr [ %i.gt, %bb.aq ], [ %.pre, %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 2 uses
  %i.hb = phi ptr [ null, %bb.aq ], [ %i.gy, %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.hb, ptr %0, align 8, !tbaa !428
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gw
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !429
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ha, %i.gz
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hb, %.noexc4.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ha, %.noexc4.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !290
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hf, %i.gz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !948

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hb, %.noexc4.i.i.i.i.i.i.i ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hc, align 8, !tbaa !954
  %.pre190 = load i8, ptr %i.gp, align 8, !tbaa !425
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit

bb.as:                                            ; preds = %bb.ao
  unreachable

bb.at:                                            ; preds = %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(40) %0) #30
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit: ; preds = %bb.ao, %bb.ap, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i
  %i.hi = phi i8 [ %i.gq, %bb.ao ], [ 0, %bb.ap ], [ %.pre190, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i ]
  store i8 %i.hi, ptr %i.go, align 8, !tbaa !425
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !424
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !424
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit76

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit76: ; preds = %bb.aj, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEEC2ERKS5_.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !425
  %i.ho = icmp eq i8 %i.hn, 1
  br i1 %i.ho, label %bb.au, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit89

bb.au:                                            ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit76
  %i.hp = load ptr, ptr %3, align 8, !tbaa !428   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i88 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i88, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit89, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !429
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit89

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit89: ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit76, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87: ; preds = %bb.at, %bb.j, %bb.am, %bb.an
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41236, %bb.an ], [ %i.bk, %bb.j ], [ %.pn.pn.pn.pn, %bb.am ], [ %i.hh, %bb.at ]
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !425
  %i.hx = icmp eq i8 %i.hw, 1
  br i1 %i.hx, label %bb.aw, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91

bb.aw:                                            ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87
  %i.hy = load ptr, ptr %3, align 8, !tbaa !428   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i90 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i90, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !429
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.id) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91: ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91, %bb.f
  %.pn45 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn41.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit91 ]
  resume { ptr, i32 } %.pn45

bb.az:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL17convertHandednessIN4core8CMatrix4IfEEET_RKS3_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.m = load <2 x float>, ptr %i.b, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %i.n = load float, ptr %i.c, align 4, !tbaa !412, !noalias !960
  %i.o = fmul float %i.n, 0.000000e+00            ; 2 uses
  %i.p = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.q = fadd float %i.p, %i.o
  %i.r = load <2 x float>, ptr %i.f, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %i.s = load <2 x float>, ptr %i.i, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %i.t = load float, ptr %i.j, align 4, !tbaa !412, !noalias !960
  %i.u = shufflevector <2 x float> %i.m, <2 x float> %i.r, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.v = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %i.x = fmul <4 x float> %i.w, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.y = fmul float %i.t, 0.000000e+00            ; 2 uses
  %i.z = extractelement <2 x float> %i.s, i64 0
  %i.aa = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.ab = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %i.y, i64 1
  %i.ad = fadd <2 x float> %i.aa, %i.ac           ; 2 uses
  %i.ae = shufflevector <2 x float> %i.m, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 1, i32 4>
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> zeroinitializer, <4 x float> %i.x) ; 4 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.z, float 0.000000e+00, float %i.y) ; 2 uses
  %i.ai = load <2 x float>, ptr %1, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %i.aj = fmul <2 x float> %i.ai, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.al = load <2 x float>, ptr %i.a, align 4, !tbaa !412, !noalias !960 ; 4 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %i.ai)
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> zeroinitializer, <2 x float> %i.am)
  %i.ap = load <2 x float>, ptr %i.d, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %i.aq = load float, ptr %i.e, align 4, !tbaa !412, !noalias !960
  %i.ar = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> %i.ai, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.at = insertelement <4 x float> %i.as, float -0.000000e+00, i64 2
  %i.au = insertelement <4 x float> poison, float %i.q, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.ag, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aw = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %2 = extractelement <2 x float> %i.al, i64 0
  %i.ax = shufflevector <2 x float> %i.ap, <2 x float> %i.al, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.ay = load <2 x float>, ptr %i.g, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %i.az = load float, ptr %i.h, align 4, !tbaa !412, !noalias !960
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = extractelement <4 x float> %i.ag, i64 2 ; 2 uses
  %i.bc = fsub float %i.bb, %i.ba
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ba, float 0.000000e+00, float %i.bb)
  %i.be = fadd float %i.az, %i.bd                 ; 2 uses
  %i.bf = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bh = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> %i.ag, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.bj = insertelement <4 x float> %i.bi, float %i.bc, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.be, i64 3
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> zeroinitializer, <4 x float> %i.bk)
  %i.bm = shufflevector <2 x float> %i.ay, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> zeroinitializer, <4 x float> %i.bl) ; 2 uses
  %i.bo = load <2 x float>, ptr %i.k, align 4, !tbaa !412, !noalias !960 ; 3 uses
  %i.bp = load float, ptr %i.l, align 4, !tbaa !412, !noalias !960
  %i.bq = extractelement <2 x float> %i.bo, i64 0 ; 2 uses
  %i.br = fsub float %i.ah, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bq, float 0.000000e+00, float %i.ah)
  %i.bt = fadd float %i.bp, %i.bs                 ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bw = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> %i.ag, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.by = insertelement <4 x float> %i.bx, float %i.br, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bt, i64 3
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> zeroinitializer, <4 x float> %i.bz)
  %i.cb = shufflevector <2 x float> %i.bo, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> zeroinitializer, <4 x float> %i.ca) ; 2 uses
  %i.cd = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ce = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.p, float 0.000000e+00, float %i.o) ; 2 uses
  %i.cg = fsub float %i.cf, %i.ar
  %i.ch = insertelement <4 x float> %i.av, float %i.cg, i64 2
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> zeroinitializer, <4 x float> %i.ci) ; 2 uses
  %i.ck = extractelement <4 x float> %i.cj, i64 3
  %3 = fsub float %i.ck, %2
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> zeroinitializer, <4 x float> %i.cj) ; 3 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ar, float 0.000000e+00, float %i.cf)
  %i.cn = fadd float %i.aq, %i.cm                 ; 2 uses
  %i.co = fmul <4 x float> %i.ce, %i.cl
  %i.cp = fadd <4 x float> %i.ce, %i.cl           ; 2 uses
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.cr = insertelement <2 x float> poison, float %3, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cn, i64 1
  %i.ct = fmul <2 x float> %i.cs, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cu = shufflevector <4 x float> %i.cd, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cv = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cw = shufflevector <2 x float> %i.ao, <2 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> zeroinitializer, <4 x float> %i.cw) ; 2 uses
  %i.cy = fadd <4 x float> %i.cq, %i.cx
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> zeroinitializer, <4 x float> %i.cy)
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> zeroinitializer, <4 x float> %i.cz)
  store <4 x float> %i.da, ptr %0, align 4, !tbaa !412, !alias.scope !961
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = shufflevector <4 x float> %i.cx, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dd = insertelement <4 x float> %i.cl, float %i.cn, i64 3
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.dd)
  %i.df = insertelement <4 x float> %i.bn, float %i.be, i64 3 ; 3 uses
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> zeroinitializer, <4 x float> %i.de)
  %i.dh = insertelement <4 x float> %i.cc, float %i.bt, i64 3 ; 3 uses
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> zeroinitializer, <4 x float> %i.dg)
  store <4 x float> %i.di, ptr %i.db, align 4, !tbaa !412, !alias.scope !961
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dk = shufflevector <4 x float> %i.cq, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.dk) ; 2 uses
  %i.dm = fsub <4 x float> %i.dl, %i.df
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> zeroinitializer, <4 x float> %i.dm)
  store <4 x float> %i.dn, ptr %i.dj, align 4, !tbaa !412, !alias.scope !961
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> zeroinitializer, <4 x float> %i.dl)
  %i.dq = fadd <4 x float> %i.dp, %i.dh
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !412, !alias.scope !961
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEm(ptr noundef nonnull align 8 dereferenceable(784) %0, i64 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.582", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.605", align 8 ; 11 uses
  %6 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.628", align 8 ; 11 uses
  %7 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.605", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 88                  ; 2 uses
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf9AnimationESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %1, i64 noundef %i.i) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf9AnimationESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %1 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !452  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !452  ; 2 uses
  %.not327 = icmp eq ptr %i.k, %i.m
  br i1 %.not327, label %._crit_edge330, label %.lr.ph329

.lr.ph329:                                        ; preds = %_ZNKSt6vectorIN10tiniergltf9AnimationESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %.sroa.4.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.c

._crit_edge330:                                   ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit, %_ZNKSt6vectorIN10tiniergltf9AnimationESaIS1_EE2atEm.exit
  ret void

bb.c:                                             ; preds = %.lr.ph329, %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit
  %.sroa.0212.0328 = phi ptr [ %i.k, %.lr.ph329 ], [ %i.jz, %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit ] ; 5 uses
  %i.ad = load i64, ptr %.sroa.0212.0328, align 8, !tbaa !456 ; 3 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !459
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !460 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 2 uses
  %.not.i.i85 = icmp ult i64 %i.ad, %i.aj
  br i1 %.not.i.i85, label %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.ad, i64 noundef %i.aj) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit: ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ad ; 5 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val.val = load i32, ptr %i.al, align 8, !tbaa !463
  switch i32 %.val.val, label %bb.f [
    i32 2, label %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit"
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit
  br label %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit"

bb.f:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit
  %i.am = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull @.str.37)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

common.resume:                                    ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit201, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.h ], [ %.pn81.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit201 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.am) #30
  br label %common.resume

"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit": ; preds = %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit, %bb.e
  %.0.i = phi i8 [ 1, %bb.e ], [ 0, %_ZNKSt6vectorIN10tiniergltf16AnimationSamplerESaIS1_EE2atEm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !464
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIfE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.582") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.ao)
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !473 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0212.0328, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !264, !range !80, !noundef !81
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %bb.i

bb.i:                                             ; preds = %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit"
  %i.at = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull @.str.8)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.ce unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.l:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.at) #30
  br label %bb.cb

bb.m:                                             ; preds = %"_ZZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEmENK3$_0clEv.exit"
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0212.0328, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !181 ; 3 uses
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !341
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !190 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %.not.i.i86 = icmp ult i64 %i.ax, %i.bd
  br i1 %.not.i.i86, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.ax, i64 noundef %i.bd) #34
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !343 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !414
  %i.bi = icmp eq i8 %i.bh, 1
  br i1 %i.bi, label %.noexc.i, label %bb.t

end_hunk_1
