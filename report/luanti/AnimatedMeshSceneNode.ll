inline.NumInlined: 1647
inline.NumDeleted: 634
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5scene13BoneSceneNodeC1EPNS_10ISceneNodeEPNS_13ISceneManagerEijRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN4core9TransformERKS5_INSF_8CMatrix4IfEEE:bb.a

_ZN5scene10ISceneNodeC2EPS0_PNS_13ISceneManagerEiRKN4core8vector3dIfEES8_S8_.exit: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-24, 288) (i8, ptr @_ZTVN5scene13BoneSceneNodeE, i64 24), ptr %0, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene13BoneSceneNodeE, i64 336), ptr %i.a, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.af, align 4, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %4, ptr %i.ag, align 4, !tbaa !265
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !137
  %i.aj = load i8, ptr %i.ah, align 4, !tbaa !137, !range !92, !noundef !93
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %_ZNSt8optionalIN4core8CMatrix4IfEEEC2ERKS3_.exit

bb.e:                                             ; preds = %_ZN5scene10ISceneNodeC2EPS0_PNS_13ISceneManagerEiRKN4core8vector3dIfEES8_S8_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.al, ptr noundef nonnull align 4 dereferenceable(68) %7, i64 64, i1 false), !tbaa.struct !151
  store i8 1, ptr %i.ai, align 8, !tbaa !137
  br label %_ZNSt8optionalIN4core8CMatrix4IfEEEC2ERKS3_.exit

_ZNSt8optionalIN4core8CMatrix4IfEEEC2ERKS3_.exit: ; preds = %bb.e, %_ZN5scene10ISceneNodeC2EPS0_PNS_13ISceneManagerEiRKN4core8vector3dIfEES8_S8_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZN5scene10ISceneNode7setNameERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE.exit unwind label %bb.f

_ZN5scene10ISceneNode7setNameERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE.exit: ; preds = %_ZNSt8optionalIN4core8CMatrix4IfEEEC2ERKS3_.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(40) %6)
          to label %.noexc unwind label %bb.f, !inline_history !183

.noexc:                                           ; preds = %_ZN5scene10ISceneNode7setNameERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !143
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.as = load ptr, ptr %0, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ar)
          to label %_ZN5scene13BoneSceneNode12setTransformERKN4core9TransformE.exit unwind label %bb.f, !inline_history !183

_ZN5scene13BoneSceneNode12setTransformERKN4core9TransformE.exit: ; preds = %.noexc
  ret void

bb.f:                                             ; preds = %_ZNSt8optionalIN4core8CMatrix4IfEEEC2ERKS3_.exit, %.noexc, %_ZN5scene10ISceneNode7setNameERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5scene10ISceneNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5scene13BoneSceneNodeE, i64 8)) #31
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %i.y, %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7irr_ptrIN5scene13BoneSceneNodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7irr_ptrIN5scene13BoneSceneNodeEE5resetEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.i, ptr %i.f, align 8, !tbaa !83
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN7irr_ptrIN5scene13BoneSceneNodeEE5resetEPS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.e) #31, !inline_history !218
  br label %_ZN7irr_ptrIN5scene13BoneSceneNodeEE5resetEPS1_.exit

_ZN7irr_ptrIN5scene13BoneSceneNodeEE5resetEPS1_.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene21AnimatedMeshSceneNode21updateJointSceneNodesERKSt6vectorISt7variantIJN4core9TransformENS3_8CMatrix4IfEEEESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = load ptr, ptr %1, align 8, !tbaa !175    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.ae, %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit ] ; 2 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit ] ; 3 uses
  %i.f = getelementptr inbounds nuw [68 x i8], ptr %i.e, i64 %.016 ; 5 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.016
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 8 uses
  %.not.i.i = icmp ne ptr %i.e, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !243 ; 2 uses
  %i.j = icmp eq i8 %.pre, 0
  %or.cond = select i1 %.not.i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %_ZSt6get_ifIN4core9TransformEJS1_NS0_8CMatrix4IfEEEENSt11add_pointerIKT_E4typeEPKSt7variantIJDpT0_EE.exit, label %._crit_edge17

_ZSt6get_ifIN4core9TransformEJS1_NS0_8CMatrix4IfEEEENSt11add_pointerIKT_E4typeEPKSt7variantIJDpT0_EE.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(308) %i.i, ptr noundef nonnull align 4 dereferenceable(40) %i.f), !inline_history !183
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !143
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(308) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.p), !inline_history !183
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  store i8 0, ptr %i.t, align 8, !tbaa !137
  br label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit

._crit_edge17:                                    ; preds = %bb.b
  switch i8 %.pre, label %bb.c [
    i8 1, label %_ZSt3getIN4core8CMatrix4IfEEJNS0_9TransformES2_EERKT_RKSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !245

bb.c:                                             ; preds = %._crit_edge17
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @.str.13, ptr %i.v, align 8, !tbaa !246
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %._crit_edge17
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.w, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @.str.12, ptr %i.x, align 8, !tbaa !246
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #33
  unreachable

_ZSt3getIN4core8CMatrix4IfEEJNS0_9TransformES2_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %._crit_edge17
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 304 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !137, !range !92, !noundef !93
  %i.ab = trunc nuw i8 %i.aa to i1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.y, ptr noundef nonnull align 4 dereferenceable(64) %i.f, i64 64, i1 false)
  br i1 %i.ab, label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt3getIN4core8CMatrix4IfEEJNS0_9TransformES2_EERKT_RKSt7variantIJDpT0_EE.exit
  store i8 1, ptr %i.z, align 4, !tbaa !137
  br label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit

_ZNSt8optionalIN4core8CMatrix4IfEEEaSIRKS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS2_ES9_IS2_NSt5decayISC_E4typeEEEEESt16is_constructibleIS2_JSC_EESt13is_assignableIRS2_SC_EEERS3_E4typeEOSC_.exit: ; preds = %bb.d, %_ZSt3getIN4core8CMatrix4IfEEJNS0_9TransformES2_EERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt6get_ifIN4core9TransformEJS1_NS0_8CMatrix4IfEEEENSt11add_pointerIKT_E4typeEPKSt7variantIJDpT0_EE.exit
  %i.ac = add nuw i64 %.016, 1                    ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.ae = load ptr, ptr %1, align 8, !tbaa !175   ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 68
  %i.aj = icmp ult i64 %i.ac, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !272
}

declare void @_ZN5scene11SkinnedMesh11animateMeshEf(ptr dead_on_unwind writable sret(%"class.std::vector.86") align 8, ptr noundef nonnull align 8 dereferenceable(152), float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4core9Transform11interpolateES0_f(ptr dead_on_unwind noalias writable sret(%"struct.core::Transform") align 4 %0, ptr noundef nonnull align 4 dereferenceable(40) %1, ptr noundef byval(%"struct.core::Transform") align 8 %2, float noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.28.0.copyload = load <2 x float>, ptr %.sroa.28.0..sroa_idx, align 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.b, align 4 ; 4 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.26.0.copyload = load <2 x float>, ptr %.sroa.26.0..sroa_idx, align 4 ; 4 uses
  %.sroa.036.0.vec.extract.i.a = extractelement <2 x float> %.sroa.07.0.copyload, i64 0
  %.sroa.036.4.vec.extract.i = extractelement <2 x float> %.sroa.05.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.07.0.copyload, %.sroa.05.0.copyload
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.036.0.vec.extract.i.a, float %.sroa.036.4.vec.extract.i, float %i.c)
  %.sroa.10.8.vec.extract.i = extractelement <2 x float> %.sroa.28.0.copyload, i64 0
  %.sroa.6.8.vec.extract.i = extractelement <2 x float> %.sroa.26.0.copyload, i64 0
  %i.e = tail call float @llvm.fmuladd.f32(float %.sroa.10.8.vec.extract.i, float %.sroa.6.8.vec.extract.i, float %i.d)
  %.sroa.10.12.vec.extract.i = extractelement <2 x float> %.sroa.28.0.copyload, i64 1
  %.sroa.6.12.vec.extract.i = extractelement <2 x float> %.sroa.26.0.copyload, i64 1
  %i.f = tail call noundef float @llvm.fmuladd.f32(float %.sroa.10.12.vec.extract.i, float %.sroa.6.12.vec.extract.i, float %i.e) ; 3 uses
  %i.g = fcmp olt float %i.f, 0.000000e+00        ; 3 uses
  %i.h = fneg <2 x float> %.sroa.07.0.copyload
  %i.i = fneg <2 x float> %.sroa.28.0.copyload
  %i.j = fneg float %i.f
  %.sroa.047.0.i = select i1 %i.g, <2 x float> %i.h, <2 x float> %.sroa.07.0.copyload ; 2 uses
  %.sroa.10.0.i = select i1 %i.g, <2 x float> %i.i, <2 x float> %.sroa.28.0.copyload ; 2 uses
  %.020.i = select i1 %i.g, float %i.j, float %i.f ; 2 uses
  %i.k = fcmp ugt float %.020.i, 9.990000e-01
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call float @acosf(float noundef %.020.i) #31 ; 3 uses
  %i.m = tail call float @sinf(float noundef %i.l) #31
  %i.n = fdiv float 1.000000e+00, %i.m            ; 2 uses
  %i.o = fsub float 1.000000e+00, %3
  %i.p = fmul float %i.o, %i.l
  %i.q = tail call float @sinf(float noundef %i.p) #31
  %i.r = fmul float %i.q, %i.n
  %i.s = fmul float %3, %i.l
  %i.t = tail call float @sinf(float noundef %i.s) #31
  %i.u = fmul float %i.n, %i.t
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = fmul <2 x float> %.sroa.047.0.i, %i.w
  %i.y = insertelement <2 x float> poison, float %i.u, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul <2 x float> %.sroa.05.0.copyload, %i.z
  %i.ab = fadd <2 x float> %i.x, %i.aa
  %i.ac = fmul <2 x float> %.sroa.10.0.i, %i.w
  %i.ad = fmul <2 x float> %.sroa.26.0.copyload, %i.z
  %i.ae = fadd <2 x float> %i.ac, %i.ad
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

bb.c:                                             ; preds = %bb.a
  %i.af = fsub float 1.000000e+00, %3
  %4 = insertelement <2 x float> poison, float %3, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %6 = fmul <2 x float> %5, %.sroa.05.0.copyload
  %7 = fmul <2 x float> %5, %.sroa.26.0.copyload
  %8 = insertelement <2 x float> poison, float %i.af, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %10 = fmul <2 x float> %9, %.sroa.10.0.i
  %11 = fadd <2 x float> %7, %10                  ; 3 uses
  %12 = extractelement <2 x float> %11, i64 0     ; 2 uses
  %13 = extractelement <2 x float> %11, i64 1     ; 2 uses
  %14 = fmul <2 x float> %9, %.sroa.047.0.i
  %15 = fadd <2 x float> %6, %14                  ; 4 uses
  %foldExtExtBinop17 = fmul <2 x float> %15, %15
  %16 = extractelement <2 x float> %foldExtExtBinop17, i64 1
  %17 = extractelement <2 x float> %15, i64 0     ; 2 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %17, float %17, float %16)
  %i.ah = tail call float @llvm.fmuladd.f32(float %12, float %12, float %i.ag)
  %i.ai = tail call float @llvm.fmuladd.f32(float %13, float %13, float %i.ah)
  %i.aj = fpext float %i.ai to double
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.aj)
  %i.ak = fdiv double 1.000000e+00, %sqrt.i.i.i
  %i.al = fptrunc double %i.ak to float
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> poison, float %i.al, i64 0
  %18 = shufflevector <2 x float> %.sroa.018.4.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %19 = fmul <2 x float> %15, %18
  %20 = fmul <2 x float> %11, %18
  br label %_ZN4core10quaternion5slerpES0_S0_ff.exit

_ZN4core10quaternion5slerpES0_S0_ff.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.4.vec.insert.i29.sink.i = phi <2 x float> [ %19, %bb.c ], [ %i.ab, %bb.b ]
  %.sroa.3.12.vec.insert.i31.sink.i = phi <2 x float> [ %20, %bb.c ], [ %i.ae, %bb.b ]
  %i.am = fpext float %3 to double                ; 2 uses
  %i.an = fsub double 1.000000e+00, %i.am
  %i.ao = load <2 x float>, ptr %1, align 4, !tbaa !13
  %i.ap = fpext <2 x float> %i.ao to <2 x double>
  %i.aq = load <2 x float>, ptr %2, align 8, !tbaa !13
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = insertelement <2 x double> poison, double %i.am, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.au = fmul <2 x double> %i.at, %i.ar
  %i.av = insertelement <2 x double> poison, double %i.an, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.aw, <2 x double> %i.au)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float>
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !273
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load <4 x float>, ptr %i.bb, align 8
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  store <2 x float> %i.ay, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.0.4.vec.insert.i29.sink.i, ptr %i.be, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <2 x float> %.sroa.3.12.vec.insert.i31.sink.i, ptr %.sroa.6.0..sroa_idx, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bi = load <2 x float>, ptr %i.bh, align 4, !tbaa !13
  %i.bj = fpext <2 x float> %i.bi to <2 x double>
  %i.bk = load <2 x float>, ptr %i.bg, align 4, !tbaa !13
  %i.bl = fpext <2 x float> %i.bk to <2 x double>
  %i.bm = fmul <2 x double> %i.at, %i.bl
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.aw, <2 x double> %i.bm)
  %i.bo = fptrunc <2 x double> %i.bn to <2 x float>
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !273
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bs = load float, ptr %i.br, align 4, !tbaa !273
  %i.bt = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bq, i64 1
  %i.bv = fpext <2 x float> %i.bu to <2 x double>
  %i.bw = insertelement <2 x float> %i.bd, float %i.bs, i64 1
  %i.bx = fpext <2 x float> %i.bw to <2 x double>
  %i.by = fmul <2 x double> %i.at, %i.bx
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.aw, <2 x double> %i.by)
  %i.ca = fptrunc <2 x double> %i.bz to <2 x float> ; 2 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 0
  store float %i.cb, ptr %.sroa.24.0..sroa_idx, align 4
  store <2 x float> %i.bo, ptr %i.bf, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cc = extractelement <2 x float> %i.ca, i64 1
  store float %i.cc, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5scene21AnimatedMeshSceneNode5cloneEPNS_10ISceneNodeEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %.0 = select i1 %.not, ptr %i.b, ptr %1         ; 2 uses
  %.not32 = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.029 = select i1 %.not32, ptr %i.d, ptr %2     ; 4 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #34 ; 33 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  invoke void @_ZN5scene21AnimatedMeshSceneNodeC1EPNS_13IAnimatedMeshEPNS_10ISceneNodeEPNS_13ISceneManagerEiRKN4core8vector3dIfEESB_SB_(ptr noundef nonnull align 8 dereferenceable(432) %i.e, ptr noundef %i.g, ptr noundef null, ptr noundef %.029, i32 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) %i.l)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %.0, null
  br i1 %.not33, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %i.e, ptr noundef nonnull %.0)
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !83   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.w, ptr %i.t, align 8, !tbaa !83
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.f, label %_ZNK17IReferenceCounted4dropEv.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #31, !inline_history !85
  br label %_ZNK17IReferenceCounted4dropEv.exit

bb.g:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 448) #30
  resume { ptr, i32 } %i.aa

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.f, %bb.e, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 64, i1 false), !tbaa.struct !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false), !tbaa.struct !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !15
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  %i.am = load <2 x i16>, ptr %i.ak, align 4, !tbaa !242
  store <2 x i16> %i.am, ptr %i.al, align 4, !tbaa !242
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !47, !range !92, !noundef !93
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !48, !range !92, !noundef !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 217
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !48
  %.not.i34 = icmp eq ptr %.029, null
  br i1 %.not.i34, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK17IReferenceCounted4dropEv.exit
  %.sink.i = phi ptr [ %i.at, %bb.h ], [ %.029, %_ZNK17IReferenceCounted4dropEv.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store ptr %.sink.i, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.017.021.i = load ptr, ptr %i.av, align 8, !tbaa !20 ; 2 uses
  %.not2022.i = icmp eq ptr %.sroa.017.021.i, %i.av
  br i1 %.not2022.i, label %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.sroa.017.023.i = phi ptr [ %.sroa.017.0.i, %.lr.ph.i ], [ %.sroa.017.021.i, %bb.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !133 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 272
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(218) %i.ax, ptr noundef nonnull align 8 dereferenceable(218) %i.e, ptr noundef %.029), !inline_history !274 ; 0 uses
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.023.i, align 8, !tbaa !20 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.017.0.i, %i.av
  br i1 %.not20.i, label %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, label %.lr.ph.i, !llvm.loop !275

_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit: ; preds = %.lr.ph.i, %bb.i
  %i.bc = icmp eq ptr %i.e, %0
  br i1 %i.bc, label %_ZN4core5arrayIN5video9SMaterialEEaSERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.bf = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video9SMaterialESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %i.be, ptr noundef nonnull align 8 dereferenceable(25) %i.bd) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !51, !range !92, !noundef !93
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !51
  br label %_ZN4core5arrayIN5video9SMaterialEEaSERKS3_.exit

_ZN4core5arrayIN5video9SMaterialEEaSERKS3_.exit:  ; preds = %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !tbaa.struct !86
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !82
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.bp = load <4 x float>, ptr %i.bn, align 8, !tbaa !13
  store <4 x float> %i.bp, ptr %i.bo, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 320
end_hunk_0
