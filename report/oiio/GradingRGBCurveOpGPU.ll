inline.NumInlined: 497
inline.NumDeleted: 188
begin_hunk_0_@_ZN16OpenColorIO_v2_534GetGradingRGBCurveGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_21GradingRGBCurveOpDataEE:bb.a
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 72
  %i.ry = load ptr, ptr %i.rx, align 8
  %i.rz = invoke noundef zeroext i1 %i.ry(ptr noundef nonnull align 8 dereferenceable(16) %i.ru, ptr noundef %i.rv, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %.noexc.i102 unwind label %bb.fg, !inline_history !82

.noexc.i102:                                      ; preds = %.noexc105
  br i1 %i.rz, label %bb.dy, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110AddUniformERSt10shared_ptrINS_16GpuShaderCreatorEERKSt8functionIFbvEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_534GetGradingRGBCurveGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_21GradingRGBCurveOpDataEE:bb.a
  %i.vy = load ptr, ptr %i.vs, align 8, !tbaa !27
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8
  call void %i.wa(ptr noundef nonnull align 8 dereferenceable(16) %i.vs) #19, !inline_history !83
  %i.wb = load ptr, ptr %i.vs, align 8, !tbaa !27
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  %i.wd = load ptr, ptr %i.wc, align 8
  call void %i.wd(ptr noundef nonnull align 8 dereferenceable(16) %i.vs) #19, !inline_history !83
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fn:                                            ; preds = %bb.fl
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_534GetGradingRGBCurveGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_21GradingRGBCurveOpDataEE:bb.a
bb.gv:                                            ; preds = %bb.gu
  %i.yb = load ptr, ptr %1, align 8, !tbaa !7
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 192
  %i.yd = load i8, ptr %i.yc, align 8, !tbaa !84, !range !85, !noundef !86
  %i.ye = trunc nuw i8 %i.yd to i1
  %i.yf = xor i1 %i.ye, true
  br label %bb.gw
end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !87
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !87
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_512_GLOBAL__N_137AddCurveEvalMethodTextToShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS1_IKNS_21GradingRGBCurveOpDataEERKNS0_12GCPropertiesEb:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.c = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22, !noalias !88 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !63, !noalias !88
  store <2 x ptr> %i.h, ptr %5, align 16, !tbaa !63, !alias.scope !88
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !88
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !88
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3, !noalias !88
  br label %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !88 ; 0 uses
  br label %_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit

_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv.exit: ; preds = %bb.b, %bb.d, %bb.e
end_hunk_4
begin_hunk_5_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !87
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !87
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_6
begin_hunk_7_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !91
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_7
begin_hunk_8_@_ZN16OpenColorIO_v2_512_GLOBAL__N_124BuildResourceNameIndexedERSt10shared_ptrINS_16GpuShaderCreatorEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_j:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.e = icmp ult i32 %3, 10
  br i1 %i.e, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

end_hunk_8
begin_hunk_9_@_ZN16OpenColorIO_v2_512_GLOBAL__N_124BuildResourceNameIndexedERSt10shared_ptrINS_16GpuShaderCreatorEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_j:bb.a
  %i.l = udiv i32 %.02230.i.i, 10000
  %i.m = add i32 %.02329.i.i, 4                   ; 2 uses
  %i.n = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !95

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.0.i.i = phi i32 [ %i.k, %bb.g ], [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.m, %bb.h ]
  %i.o = zext i32 %.0.i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !31, !alias.scope !92
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.o, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !alias.scope !92 ; 4 uses
  %i.r = icmp ugt i32 %3, 99
  br i1 %i.r, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38, !alias.scope !92
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.u, -1
  br label %.lr.ph.i2.i
end_hunk_9
begin_hunk_10_@_ZN16OpenColorIO_v2_512_GLOBAL__N_124BuildResourceNameIndexedERSt10shared_ptrINS_16GpuShaderCreatorEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_j:bb.a
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !23, !noalias !92
  %i.ad = zext i32 %.01819.i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ad
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !23
  %i.af = load i8, ptr %i.aa, align 2, !tbaa !23, !noalias !92
  %i.ag = add i32 %.01819.i.i, -1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ah
  store i8 %i.af, ptr %i.ai, align 1, !tbaa !23
  %i.aj = add i32 %.01819.i.i, -2
  %i.ak = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ak, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !97

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.y, %.lr.ph.i2.i ] ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN16OpenColorIO_v2_512_GLOBAL__N_124BuildResourceNameIndexedERSt10shared_ptrINS_16GpuShaderCreatorEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_j:bb.a
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !23, !noalias !92
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !23
  %i.as = load i8, ptr %i.ao, align 2, !tbaa !23, !noalias !92
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.j:                                             ; preds = %._crit_edge.i.i
end_hunk_11
begin_hunk_12_@_ZN16OpenColorIO_v2_512_GLOBAL__N_124BuildResourceNameIndexedERSt10shared_ptrINS_16GpuShaderCreatorEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_j:bb.a
  %i.ca = load i64, ptr %i.bj, align 8, !tbaa !38
  %i.cb = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bz, i64 noundef %i.by, i64 noundef %i.ca) #19 ; 2 uses
  %.not.i = icmp eq i64 %i.cb, -1
  br i1 %.not.i, label %_ZN11StringUtils14ReplaceInPlaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_S8_.exit, label %.lr.ph.i, !llvm.loop !98

_ZN11StringUtils14ReplaceInPlaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_S8_.exit: ; preds = %.noexc22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
end_hunk_12
begin_hunk_13_@_ZNSt17_Function_handlerIFivEPS0_E9_M_invokeERKSt9_Any_data
define linkonce_odr hidden noundef i32 @_ZNSt17_Function_handlerIFivEPS0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63
  %i.b = tail call noundef i32 %i.a(), !inline_history !99
  ret i32 %i.b
}

end_hunk_13
begin_hunk_14_@_ZNSt17_Function_handlerIFPKivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 3 uses
  %.elt2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack3.i.i.i.i.i.i = load i64, ptr %.elt2.i.i.i.i.i.i, align 8, !tbaa !23
end_hunk_14
begin_hunk_15_@_ZNSt17_Function_handlerIFPKivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data:bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !86
  br label %_ZSt10__invoke_rIPKiRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS4_EEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_15
begin_hunk_16_@_ZNSt17_Function_handlerIFPKivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data:bb.a

_ZSt10__invoke_rIPKiRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS4_EEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(152) %i.d), !inline_history !101
  ret ptr %i.l
}

end_hunk_16
begin_hunk_17_@_ZNSt17_Function_handlerIFPKivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS5_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFPKivEPS1_EE, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFPKivEPS3_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
end_hunk_17
begin_hunk_18_@_ZNSt17_Function_handlerIFivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFivEPS3_EEE9_M_invokeERKSt9_Any_data:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 3 uses
  %.elt2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack3.i.i.i.i.i.i = load i64, ptr %.elt2.i.i.i.i.i.i, align 8, !tbaa !23
end_hunk_18
begin_hunk_19_@_ZNSt17_Function_handlerIFivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFivEPS3_EEE9_M_invokeERKSt9_Any_data:bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !86
  br label %_ZSt10__invoke_rIiRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFivEPS2_EEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_19
begin_hunk_20_@_ZNSt17_Function_handlerIFivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFivEPS3_EEE9_M_invokeERKSt9_Any_data:bb.a

_ZSt10__invoke_rIiRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFivEPS2_EEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(152) %i.d), !inline_history !104
  ret i32 %i.l
}

end_hunk_20
begin_hunk_21_@_ZNSt17_Function_handlerIFivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFivEPS3_EEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFivEPS1_EE, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFivEPS3_EEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
end_hunk_21
begin_hunk_22_@_ZNSt17_Function_handlerIFPKfvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 3 uses
  %.elt2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack3.i.i.i.i.i.i = load i64, ptr %.elt2.i.i.i.i.i.i, align 8, !tbaa !23
end_hunk_22
begin_hunk_23_@_ZNSt17_Function_handlerIFPKfvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data:bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !86
  br label %_ZSt10__invoke_rIPKfRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS4_EEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_23
begin_hunk_24_@_ZNSt17_Function_handlerIFPKfvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data:bb.a

_ZSt10__invoke_rIPKfRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS4_EEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(152) %i.d), !inline_history !105
  ret ptr %i.l
}

end_hunk_24
begin_hunk_25_@_ZNSt17_Function_handlerIFPKfvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFS1_vEPS5_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFPKfvEPS1_EE, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFPKfvEPS3_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
end_hunk_25
begin_hunk_26_@_ZNSt17_Function_handlerIFbvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFbvEPS3_EEE9_M_invokeERKSt9_Any_data:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !23 ; 3 uses
  %.elt2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack3.i.i.i.i.i.i = load i64, ptr %.elt2.i.i.i.i.i.i, align 8, !tbaa !23
end_hunk_26
begin_hunk_27_@_ZNSt17_Function_handlerIFbvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFbvEPS3_EEE9_M_invokeERKSt9_Any_data:bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !86
  br label %_ZSt10__invoke_rIbRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFbvEPS2_EEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_27
begin_hunk_28_@_ZNSt17_Function_handlerIFbvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFbvEPS3_EEE9_M_invokeERKSt9_Any_data:bb.a

_ZSt10__invoke_rIbRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFbvEPS2_EEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(152) %i.d), !inline_history !106
  ret i1 %i.l
}

end_hunk_28
begin_hunk_29_@_ZNSt17_Function_handlerIFbvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFbvEPS3_EEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFbvEPS1_EE, ptr %0, align 8, !tbaa !102
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFbvEPS3_EEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
end_hunk_29
begin_hunk_30_@llvm.experimental.noalias.scope.decl
!79 = !{!"p1 _ZTSSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingRGBCurveImplEKFbvEPS1_EE", !10, i64 0}
!80 = !{!81, !10, i64 24}
!81 = !{!"_ZTSSt8functionIFbvEE", !66, i64 0, !10, i64 24}
!82 = distinct !{null}
!83 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!84 = !{!40, !58, i64 192}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = distinct !{null, null}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv: argument 0"}
!90 = distinct !{!90, !"_ZNK16OpenColorIO_v2_521GradingRGBCurveOpData26getDynamicPropertyInternalEv"}
!91 = distinct !{null}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!94 = distinct !{!94, !"_ZNSt7__cxx119to_stringEj"}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.mustprogress"}
!97 = distinct !{!97, !96}
!98 = distinct !{!98, !96}
!99 = distinct !{null, null}
!100 = !{!21, !21, i64 0}
!101 = distinct !{null, null, null, null, null, null}
!102 = !{!103, !103, i64 0}
!103 = !{!"p1 _ZTSSt9type_info", !10, i64 0}
!104 = distinct !{null, null, null, null, null, null}
!105 = distinct !{null, null, null, null, null, null}
!106 = distinct !{null, null, null, null, null, null}
end_hunk_30
