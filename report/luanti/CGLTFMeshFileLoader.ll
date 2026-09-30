Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS_11SkinnedMesh6SJointE:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %"_ZNSt8functionIFvvEEC2IZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS3_11SkinnedMesh6SJointEE3$_0vEEOT_.exit.i" unwind label %bb.c ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !180  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %common.resume.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %common.resume.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #33
  unreachable

common.resume.i:                                  ; preds = %bb.j, %bb.d, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.ar, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i

"_ZNSt8functionIFvvEEC2IZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS3_11SkinnedMesh6SJointEE3$_0vEEOT_.exit.i": ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %0, ptr %i.g, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 %3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %4, ptr %.sroa.810.0..sroa_idx, align 16
  store ptr %i.g, ptr %i.c, align 8, !tbaa !176
  store ptr @"_ZNSt17_Function_handlerIFvvEZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS1_11SkinnedMesh6SJointEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.m, align 8, !tbaa !186
  store ptr @"_ZNSt17_Function_handlerIFvvEZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS1_11SkinnedMesh6SJointEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.f, align 8, !tbaa !180
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.b, align 8, !tbaa !194
  br label %"_ZNSt6vectorISt8functionIFvvEESaIS2_EE12emplace_backIJZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS6_11SkinnedMesh6SJointEE3$_0EEERS2_DpOT_.exit"

bb.f:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !193  ; 5 uses
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775776
  br i1 %i.t, label %bb.g, label %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #34
  unreachable

_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.u = ashr exact i64 %i.s, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 288230376151711743)
  %i.y = select i1 %i.w, i64 288230376151711743, i64 %i.x ; 3 uses
  %.not.i.i3.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i3.i)
  %i.z = shl nuw nsw i64 %i.y, 5                  ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #32 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  %i.ac = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.h unwind label %_ZNSt14_Function_baseD2Ev.exit.i4.i ; 6 uses

bb.h:                                             ; preds = %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %0, ptr %i.ac, align 16
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %1, ptr %.sroa.5.0..sroa_idx3, align 8
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx5, align 16
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i8 %3, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.810.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %4, ptr %.sroa.810.0..sroa_idx11, align 16
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !176
  store ptr @"_ZNSt17_Function_handlerIFvvEZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS1_11SkinnedMesh6SJointEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ae, align 8, !tbaa !186
  store ptr @"_ZNSt17_Function_handlerIFvvEZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS1_11SkinnedMesh6SJointEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.ad, align 8, !tbaa !180
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.aa, %bb.h ] ; 5 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.p, %bb.h ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !883, !noalias !884
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !186, !alias.scope !884, !noalias !883
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !186, !alias.scope !883, !noalias !884
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !180, !alias.scope !884, !noalias !883 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
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
  %5 = fptrunc double %i.ah to float              ; 3 uses
  %6 = extractelement <4 x double> %i.p, i64 0
  %7 = fptrunc double %6 to float                 ; 2 uses
  %8 = extractelement <4 x double> %i.o, i64 3
  %i.ai = fptrunc double %8 to float              ; 3 uses
  %i.aj = extractelement <4 x double> %i.o, i64 1
  %i.ak = fptrunc double %i.aj to float           ; 3 uses
  %i.al = fneg float %i.ak
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.al, i64 0 ; 2 uses
  %i.am = extractelement <4 x double> %i.o, i64 2
  %i.an = fptrunc double %i.am to float           ; 4 uses
  %.sroa.3.12.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i, float %i.an, i64 1
  %i.ao = extractelement <4 x double> %i.n, i64 3
  %i.ap = fptrunc double %i.ao to float           ; 4 uses
  %i.aq = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ar = extractelement <4 x double> %i.o, i64 0
  %i.as = fptrunc double %i.ar to float           ; 4 uses
  %.sroa.0.4.vec.insert.i14.i.i.i.i.i.i.i.i = insertelement <2 x float> %i.aq, float %i.as, i64 1
  %i.at = extractelement <4 x double> %i.n, i64 2
  %i.au = fptrunc double %i.at to float
  %i.av = fneg float %i.au                        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store float %i.av, ptr %i.aw, align 4, !tbaa !412, !noalias !930
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  store <2 x float> %.sroa.0.4.vec.insert.i14.i.i.i.i.i.i.i.i, ptr %i.ax, align 4, !tbaa !412, !noalias !930
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i.i.i.i.i.i, ptr %i.ay, align 4, !tbaa !412, !noalias !930
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  store float %i.ai, ptr %i.az, align 4, !tbaa !412, !noalias !930
  %9 = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store float %7, ptr %9, align 4, !tbaa !412, !noalias !930
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  store float %5, ptr %i.ba, align 4, !tbaa !412, !noalias !930
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bd = fmul float %i.as, %i.as
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.bd)
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.be)
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.bf)
  %i.bh = fpext float %i.bg to double
  %sqrt.i.i.i.i.i.i.i.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bh)
  %i.bi = fdiv double 1.000000e+00, %sqrt.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = fptrunc double %i.bi to float           ; 3 uses
  %i.bk = fmul float %i.ap, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.an, %i.bj                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.br, align 4, !tbaa !412, !alias.scope !931
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.bs, align 4, !tbaa !412, !alias.scope !931
  store float 1.000000e+00, ptr %i.bb, align 4, !tbaa !412, !alias.scope !931
  %i.bt = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i, float %i.as, i64 1
  %i.bu = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bt, %i.bv           ; 6 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1 ; 3 uses
  %10 = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.by = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %7, i64 0
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = insertelement <2 x float> %i.bz, float %i.bk, i64 0
  %i.cb = fmul <2 x float> %i.ca, splat (float 2.000000e+00) ; 7 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = fneg float %i.cc
  %i.ce = fmul float %i.bl, %i.cc                 ; 2 uses
  %i.cf = fneg float %i.ce
  %i.cg = extractelement <2 x float> %i.cb, i64 1
  %i.ch = fneg float %i.cg                        ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.ck = fmul float %i.bx, 2.000000e+00          ; 2 uses
  %i.cl = fneg float %i.ck                        ; 2 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.bx, float 1.000000e+00)
  %i.cn = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x float> %i.cb, float %i.ck, i64 0
  %i.cq = fmul <2 x float> %i.co, %i.cp           ; 3 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 0
  %i.cs = fneg float %i.cr
  %i.ct = fneg <2 x float> %i.cq
  %i.cu = insertelement <2 x float> %i.ct, float %i.cm, i64 0
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.bw, <2 x float> %i.cu)
  %i.cw = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.ce, i64 1
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.bw, <2 x float> %i.cx)
  %i.cz = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.bw, <2 x float> %i.cq) ; 2 uses
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bk, float 1.000000e+00) ; 2 uses
  %i.dc = insertelement <2 x float> %i.cb, float %i.ch, i64 0
  %i.dd = insertelement <2 x float> poison, float %i.db, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.cf, i64 1
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.bw, <2 x float> %i.de)
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.bx, float %i.db)
  %i.dh = fmul <2 x float> %i.cv, %i.by
  store <2 x float> %i.dh, ptr %4, align 16, !tbaa !412, !alias.scope !931
  %13 = extractelement <2 x float> %i.da, i64 0
  %14 = fmul float %13, %i.ai
  store float %14, ptr %i.bp, align 8, !tbaa !412, !alias.scope !931
  %i.di = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.di, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.dk = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dm = fmul <4 x float> %i.dl, %12
  store <4 x float> %i.dm, ptr %i.bm, align 16, !tbaa !412, !alias.scope !931
  %i.dn = insertelement <2 x float> poison, float %5, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.cy, %i.do
  store <2 x float> %i.dp, ptr %i.bn, align 16, !tbaa !412, !alias.scope !931
  %i.dq = fmul float %i.dg, %5
  store float %i.dq, ptr %i.bc, align 8, !tbaa !412, !alias.scope !931
  %i.dr = shufflevector <4 x double> %i.n, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ds = fptrunc <2 x double> %i.dr to <2 x float> ; 2 uses
  store <2 x float> %i.ds, ptr %i.ag, align 4, !tbaa !412, !noalias !930
  store <2 x float> %i.ds, ptr %i.bo, align 16, !tbaa !412, !alias.scope !931
  store float %i.av, ptr %i.bq, align 8, !tbaa !412, !alias.scope !931
  br label %_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit

_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit: ; preds = %bb.d, %bb.e, %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIN4core8CMatrix4IfEEEEOZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS8_11SkinnedMesh6SJointEE3$_0RSG_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SN_.exit.i.i.i"
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.dx = load <4 x float>, ptr %4, align 16, !tbaa !412, !noalias !932 ; 4 uses
  %i.dy = load <4 x float>, ptr %i.dt, align 4, !tbaa !412, !noalias !932 ; 4 uses
  %i.dz = load <4 x float>, ptr %i.du, align 4, !tbaa !412, !noalias !932 ; 4 uses
  %i.ea = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eb = fmul <4 x float> %i.ea, %i.dz
  %i.ec = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.ec, <4 x float> %i.eb)
  %i.ee = load <4 x float>, ptr %i.dv, align 4, !tbaa !412, !noalias !932 ; 4 uses
  %i.ef = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.ef, <4 x float> %i.ed)
  %i.eh = load <4 x float>, ptr %i.dw, align 4, !tbaa !412, !noalias !932 ; 4 uses
  %i.ei = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.ei, <4 x float> %i.eg)
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.el = load <4 x float>, ptr %i.ek, align 16, !tbaa !412, !noalias !932 ; 4 uses
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.en = fmul <4 x float> %i.dz, %i.em
  %i.eo = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.eo, <4 x float> %i.en)
  %i.eq = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.eq, <4 x float> %i.ep)
  %i.es = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.es, <4 x float> %i.er)
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ev = load <4 x float>, ptr %i.eu, align 16, !tbaa !412, !noalias !932 ; 4 uses
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ex = fmul <4 x float> %i.dz, %i.ew
  %i.ey = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.ey, <4 x float> %i.ex)
  %i.fa = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.fa, <4 x float> %i.ez)
  %i.fc = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.fc, <4 x float> %i.fb)
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !412, !noalias !932 ; 4 uses
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fh = fmul <4 x float> %i.dz, %i.fg
  %i.fi = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.fi, <4 x float> %i.fh)
  %i.fk = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.fk, <4 x float> %i.fj)
  %i.fm = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.fm, <4 x float> %i.fl)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5sceneL13loadTransformESt8optionalISt7variantIJSt5arrayIdLm16EEN10tiniergltf4Node3TRSEEEEPNS_11SkinnedMesh6SJointE.exit
  %i.fo = load <4 x float>, ptr %4, align 16
  %.sroa.8.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fp = load <4 x float>, ptr %.sroa.8.0..sroa_idx33, align 16
  %.sroa.12.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fq = load <4 x float>, ptr %.sroa.12.0..sroa_idx41, align 16
  %.sroa.16.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fr = load <4 x float>, ptr %.sroa.16.0..sroa_idx49, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fs = phi <4 x float> [ %i.fo, %bb.i ], [ %i.ej, %bb.h ]
  %i.ft = phi <4 x float> [ %i.fp, %bb.i ], [ %i.et, %bb.h ]
  %i.fu = phi <4 x float> [ %i.fq, %bb.i ], [ %i.fd, %bb.h ]
  %i.fv = phi <4 x float> [ %i.fr, %bb.i ], [ %i.fn, %bb.h ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  store <4 x float> %i.fs, ptr %i.fw, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  store <4 x float> %i.ft, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  store <4 x float> %i.fu, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 304
  store <4 x float> %i.fv, ptr %.sroa.16.0..sroa_idx, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !93, !range !80, !noundef !81
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !61
  store ptr %i.gb, ptr %i.a, align 8, !tbaa !313
  %i.gc = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIPKcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !190
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %1
  store ptr %i.l, ptr %i.gf, align 8, !tbaa !343
  %i.gg = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !264, !range !80, !noundef !81
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gj = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !181
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %.sroa.0.0.copyload = load i64, ptr %i.gl, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN5scene19CGLTFMeshFileLoader13MeshExtractor12deferAddMeshEmSt8optionalImEPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(784) %0, i64 noundef %i.gk, i64 %.sroa.0.0.copyload, i8 %.sroa.2.0.copyload, ptr noundef nonnull %i.l)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gm = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !211, !range !80, !noundef !81
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.gp = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !415 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !415 ; 2 uses
  %.not8081 = icmp eq ptr %i.gq, %i.gs
  br i1 %.not8081, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.sroa.022.082 = phi ptr [ %i.gu, %.lr.ph ], [ %i.gq, %bb.o ] ; 2 uses
  %i.gt = load i64, ptr %.sroa.022.082, align 8, !tbaa !181
  call void @_ZN5scene19CGLTFMeshFileLoader13MeshExtractor8loadNodeEmPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(784) %0, i64 noundef %i.gt, ptr noundef nonnull %i.l)
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.022.082, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.gu, %i.gs
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
