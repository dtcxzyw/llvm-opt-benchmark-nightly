Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/vm?download=true
inline.NumInlined: 28114
inline.NumDeleted: 15480
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEEC1INS_2VM2VMEJRKNS_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEENS1_4spanIKSH_Lm18446744073709551615EEENS10_IKSI_Lm18446744073709551615EEEEJSV_NSt7__cxx1112basic_stringIcSY_SaIcEEES3_ISH_SaISH_EES3_ISI_SaISI_EEEEEMT_FSN_DpT0_ERS1D_DpOT1_ENUlvE0_D2Ev:bb.a
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt10_Head_baseILm3ESt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEESaISE_EELb0EED2Ev.exit.i.i.i

_ZNSt10_Head_baseILm3ESt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEESaISE_EELb0EED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZNSt10_Head_baseILm2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !381  ; 3 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZNSt11_Tuple_implILm1EJN8WasmEdge3AST6ModuleENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISM_EES9_INS0_7ValTypeESaISP_EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_Head_baseILm3ESt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEESaISE_EELb0EED2Ev.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !380
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %_ZNSt11_Tuple_implILm1EJN8WasmEdge3AST6ModuleENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISM_EES9_INS0_7ValTypeESaISP_EEEED2Ev.exit

_ZNSt11_Tuple_implILm1EJN8WasmEdge3AST6ModuleENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS0_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISM_EES9_INS0_7ValTypeESaISP_EEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm3ESt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEESaISE_EELb0EED2Ev.exit.i.i.i, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt7promiseIN5cxx208expectedISt6vectorISt4pairIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS4_10RefVariantEEEENS4_7ValTypeEESaISJ_EENS4_7ErrCodeEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvvEZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS1_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEESaISL_EENS1_7ErrCodeEEEEC1INS1_2VM2VMEJRKNS1_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEENS3_4spanIKSJ_Lm18446744073709551615EEENS12_IKSK_Lm18446744073709551615EEEEJSX_NSt7__cxx1112basic_stringIcS10_SaIcEEES5_ISJ_SaISJ_EES5_ISK_SaISK_EEEEEMT_FSP_DpT0_ERS1F_DpOT1_EUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3350, !nonnull !165, !align !301 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1632
  store atomic i32 1, ptr %i.c monotonic, align 8
  tail call void @_ZN8WasmEdge8Executor8Executor15atomicNotifyAllEv(ptr noundef nonnull align 8 dereferenceable(328) %i.b) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS1_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEESaISL_EENS1_7ErrCodeEEEEC1INS1_2VM2VMEJRKNS1_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEENS3_4spanIKSJ_Lm18446744073709551615EEENS12_IKSK_Lm18446744073709551615EEEEJSX_NSt7__cxx1112basic_stringIcS10_SaIcEEES5_ISJ_SaISJ_EES5_ISK_SaISK_EEEEEMT_FSP_DpT0_ERS1F_DpOT1_EUlvE_E10_M_managerERSt9_Any_dataRKS1Q_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS1_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEESaISL_EENS1_7ErrCodeEEEEC1INS1_2VM2VMEJRKNS1_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEENS3_4spanIKSJ_Lm18446744073709551615EEENS12_IKSK_Lm18446744073709551615EEEEJSX_NSt7__cxx1112basic_stringIcS10_SaIcEEES5_ISJ_SaISJ_EES5_ISK_SaISK_EEEEEMT_FSP_DpT0_ERS1F_DpOT1_EUlvE_E10_M_managerERSt9_Any_dataRKS1Q_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEEC1INS_2VM2VMEJRKNS_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEENS1_4spanIKSH_Lm18446744073709551615EEENS10_IKSI_Lm18446744073709551615EEEEJSV_NSt7__cxx1112basic_stringIcSY_SaIcEEES3_ISH_SaISH_EES3_ISI_SaISI_EEEEEMT_FSN_DpT0_ERS1D_DpOT1_EUlvE_, ptr %0, align 8, !tbaa !1081
  br label %_ZNSt14_Function_base13_Base_managerIZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS1_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEESaISL_EENS1_7ErrCodeEEEEC1INS1_2VM2VMEJRKNS1_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEENS3_4spanIKSJ_Lm18446744073709551615EEENS12_IKSK_Lm18446744073709551615EEEEJSX_NSt7__cxx1112basic_stringIcS10_SaIcEEES5_ISJ_SaISJ_EES5_ISK_SaISK_EEEEEMT_FSP_DpT0_ERS1F_DpOT1_EUlvE_E10_M_managerERSt9_Any_dataRKS1Q_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !348
  br label %_ZNSt14_Function_base13_Base_managerIZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS1_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEESaISL_EENS1_7ErrCodeEEEEC1INS1_2VM2VMEJRKNS1_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEENS3_4spanIKSJ_Lm18446744073709551615EEENS12_IKSK_Lm18446744073709551615EEEEJSX_NSt7__cxx1112basic_stringIcS10_SaIcEEES5_ISJ_SaISJ_EES5_ISK_SaISK_EEEEEMT_FSP_DpT0_ERS1F_DpOT1_EUlvE_E10_M_managerERSt9_Any_dataRKS1Q_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !352
  store i64 %i.a, ptr %0, align 8, !tbaa !352
  br label %_ZNSt14_Function_base13_Base_managerIZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS1_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEESaISL_EENS1_7ErrCodeEEEEC1INS1_2VM2VMEJRKNS1_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEENS3_4spanIKSJ_Lm18446744073709551615EEENS12_IKSK_Lm18446744073709551615EEEEJSX_NSt7__cxx1112basic_stringIcS10_SaIcEEES5_ISJ_SaISJ_EES5_ISK_SaISK_EEEEEMT_FSP_DpT0_ERS1F_DpOT1_EUlvE_E10_M_managerERSt9_Any_dataRKS1Q_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS1_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEESaISL_EENS1_7ErrCodeEEEEC1INS1_2VM2VMEJRKNS1_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEENS3_4spanIKSJ_Lm18446744073709551615EEENS12_IKSK_Lm18446744073709551615EEEEJSX_NSt7__cxx1112basic_stringIcS10_SaIcEEES5_ISJ_SaISJ_EES5_ISK_SaISK_EEEEEMT_FSP_DpT0_ERS1F_DpOT1_EUlvE_E10_M_managerERSt9_Any_dataRKS1Q_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST6ModuleC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(705) %0, ptr noundef nonnull align 8 dereferenceable(705) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !410

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !156
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !158
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !157
  %i.m = load ptr, ptr %1, align 8, !tbaa !810    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !810
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !1069

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !319
  store i8 %i.t, ptr %i.i, align 1, !tbaa !319
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !158
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !158  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !156  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i47 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i47, label %.noexc50, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %.noexc.i.i49, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i48, !prof !410

.noexc.i.i49:                                     ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %.noexc.i.i49
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i48: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #28
          to label %.noexc50 unwind label %bb.ar

.noexc50:                                         ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i48, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i48 ] ; 6 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !156
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !158
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !157
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !810 ; 3 uses
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !810
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !1069

bb.h:                                             ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc50
  %i.ap = icmp eq i64 %i.an, 1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !319
  store i8 %i.aq, ptr %i.af, align 1, !tbaa !319
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 %i.an
  store ptr %i.ar, ptr %i.ag, align 8, !tbaa !158
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorIN8WasmEdge3AST13CustomSectionESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.l unwind label %bb.as

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 16, i1 false), !tbaa.struct !1100
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !709 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !708 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i.i, label %.noexc54, label %bb.m

bb.m:                                             ; preds = %bb.l
  %2 = sdiv exact i64 %i.bd, 144
  %i.be = icmp ugt i64 %2, 64051194700380387
  br i1 %i.be, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST7SubTypeEE8allocateEmPKv.exit.i.i.i.i.i, !prof !410

.noexc.i.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc53 unwind label %bb.at

.noexc53:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST7SubTypeEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #28
          to label %.noexc54 unwind label %bb.at

.noexc54:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST7SubTypeEE8allocateEmPKv.exit.i.i.i.i.i, %bb.l
  %i.bg = phi ptr [ null, %bb.l ], [ %i.bf, %_ZNSt15__new_allocatorIN8WasmEdge3AST7SubTypeEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !708
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !709
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !712
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !995
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !995
  %i.bm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST7SubTypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.bk, ptr %i.bl, ptr noundef %i.bg)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %.noexc54
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !708 ; 3 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i52, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !712
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #30
  br label %.body

bb.p:                                             ; preds = %.noexc54
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !709
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 16, i1 false), !tbaa.struct !1100
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_ZN8WasmEdge3AST13ImportSectionC2ERKS1_.exit unwind label %bb.au

_ZN8WasmEdge3AST13ImportSectionC2ERKS1_.exit:     ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 16, i1 false), !tbaa.struct !1100
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1101 ; 2 uses
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !663 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i56 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i.i.i.i56, label %.noexc59, label %bb.q

bb.q:                                             ; preds = %_ZN8WasmEdge3AST13ImportSectionC2ERKS1_.exit
  %i.ch = icmp ugt i64 %i.cg, 9223372036854775804
  br i1 %i.ch, label %.noexc.i.i.i57, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !410

.noexc.i.i.i57:                                   ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc58 unwind label %bb.av

.noexc58:                                         ; preds = %.noexc.i.i.i57
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #28
          to label %.noexc59 unwind label %bb.av

.noexc59:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %_ZN8WasmEdge3AST13ImportSectionC2ERKS1_.exit
  %i.cj = phi ptr [ null, %_ZN8WasmEdge3AST13ImportSectionC2ERKS1_.exit ], [ %i.ci, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !663
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !1101
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !664
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !1102 ; 3 uses
  %i.co = load ptr, ptr %i.cb, align 8, !tbaa !1102
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 4
  br i1 %i.cs, label %bb.r, label %bb.s, !prof !1069

bb.r:                                             ; preds = %.noexc59
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cj, ptr align 4 %i.cn, i64 %i.cr, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %.noexc59
  %i.ct = icmp eq i64 %i.cr, 4
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cu = load i32, ptr %i.cn, align 4, !tbaa !409
  store i32 %i.cu, ptr %i.cj, align 4, !tbaa !409
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.cv = getelementptr inbounds i8, ptr %i.cj, i64 %i.cr
  store ptr %i.cv, ptr %i.ck, align 8, !tbaa !1101
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 16, i1 false), !tbaa.struct !1100
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !703 ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !702 ; 2 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i60 = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i.i.i.i.i60, label %.noexc64, label %bb.v

bb.v:                                             ; preds = %bb.u
  %3 = sdiv exact i64 %i.df, 56
  %i.dg = icmp ugt i64 %3, 164703072086692425
  br i1 %i.dg, label %.noexc.i.i.i62, label %_ZNSt15__new_allocatorIN8WasmEdge3AST12TableSegmentEE8allocateEmPKv.exit.i.i.i.i.i, !prof !410

.noexc.i.i.i62:                                   ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc63 unwind label %bb.aw

.noexc63:                                         ; preds = %.noexc.i.i.i62
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST12TableSegmentEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #28
          to label %.noexc64 unwind label %bb.aw

.noexc64:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST12TableSegmentEE8allocateEmPKv.exit.i.i.i.i.i, %bb.u
  %i.di = phi ptr [ null, %bb.u ], [ %i.dh, %_ZNSt15__new_allocatorIN8WasmEdge3AST12TableSegmentEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.di, ptr %i.cy, align 8, !tbaa !702
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !703
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !704
  %i.dm = load ptr, ptr %i.cz, align 8, !tbaa !1103
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !1103
  %i.do = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST12TableSegmentESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.dm, ptr %i.dn, ptr noundef %i.di)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %.noexc64
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load ptr, ptr %i.cy, align 8, !tbaa !702 ; 3 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i61, label %.body65, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !704
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.du) #30
  br label %.body65

bb.y:                                             ; preds = %.noexc64
  store ptr %i.do, ptr %i.dj, align 8, !tbaa !703
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(40) %i.dw, i64 16, i1 false), !tbaa.struct !1100
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !3352 ; 2 uses
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !700 ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i67 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not.i.i.i.i.i67, label %.noexc70, label %bb.z

bb.z:                                             ; preds = %bb.y
  %4 = sdiv exact i64 %i.ee, 24
  %i.ef = icmp ugt i64 %4, 384307168202282325
  br i1 %i.ef, label %.noexc.i.i.i68, label %_ZNSt15__new_allocatorIN8WasmEdge3AST10MemoryTypeEE8allocateEmPKv.exit.i.i.i.i.i, !prof !410

.noexc.i.i.i68:                                   ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc69 unwind label %bb.ax

.noexc69:                                         ; preds = %.noexc.i.i.i68
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST10MemoryTypeEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #28
          to label %.noexc70 unwind label %bb.ax

.noexc70:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST10MemoryTypeEE8allocateEmPKv.exit.i.i.i.i.i, %bb.y
  %i.eh = phi ptr [ null, %bb.y ], [ %i.eg, %_ZNSt15__new_allocatorIN8WasmEdge3AST10MemoryTypeEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.eh, ptr %i.dx, align 8, !tbaa !700
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !3352
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ee
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !701
  %i.el = load ptr, ptr %i.dy, align 8, !tbaa !1104 ; 2 uses
  %i.em = load ptr, ptr %i.dz, align 8, !tbaa !1104 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.el, %i.em
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc70, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i ], [ %i.eh, %.noexc70 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i ], [ %i.el, %.noexc70 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !3353
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.en, %i.em
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3351

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc70
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.eh, %.noexc70 ], [ %i.eo, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ei, align 8, !tbaa !3352
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ep, ptr noundef nonnull align 8 dereferenceable(40) %i.eq, i64 16, i1 false), !tbaa.struct !1100
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !698 ; 2 uses
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !697 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i71 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i.i.i.i71, label %.noexc75, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %5 = sdiv exact i64 %i.ey, 40
  %i.ez = icmp ugt i64 %5, 230584300921369395
  br i1 %i.ez, label %.noexc.i.i.i73, label %_ZNSt15__new_allocatorIN8WasmEdge3AST13GlobalSegmentEE8allocateEmPKv.exit.i.i.i.i.i, !prof !410

.noexc.i.i.i73:                                   ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc74 unwind label %bb.ay

.noexc74:                                         ; preds = %.noexc.i.i.i73
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST13GlobalSegmentEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #28
          to label %.noexc75 unwind label %bb.ay

.noexc75:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST13GlobalSegmentEE8allocateEmPKv.exit.i.i.i.i.i, %.loopexit
  %i.fb = phi ptr [ null, %.loopexit ], [ %i.fa, %_ZNSt15__new_allocatorIN8WasmEdge3AST13GlobalSegmentEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.fb, ptr %i.er, align 8, !tbaa !697
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !698
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ey
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !699
  %i.ff = load ptr, ptr %i.es, align 8, !tbaa !1106
  %i.fg = load ptr, ptr %i.et, align 8, !tbaa !1106
  %i.fh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST13GlobalSegmentESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ff, ptr %i.fg, ptr noundef %i.fb)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc75
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %i.er, align 8, !tbaa !697 ; 3 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i72, label %.body76, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !699
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = sub i64 %i.fl, %i.fm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fn) #30
  br label %.body76

bb.ad:                                            ; preds = %.noexc75
  store ptr %i.fh, ptr %i.fc, align 8, !tbaa !698
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fo, ptr noundef nonnull align 8 dereferenceable(40) %i.fp, i64 16, i1 false), !tbaa.struct !1100
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !695 ; 2 uses
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !694 ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i78 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i.i.i.i.i78, label %.noexc82, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %6 = sdiv exact i64 %i.fx, 48
  %i.fy = icmp ugt i64 %6, 192153584101141162
  br i1 %i.fy, label %.noexc.i.i.i80, label %_ZNSt15__new_allocatorIN8WasmEdge3AST10ExportDescEE8allocateEmPKv.exit.i.i.i.i.i, !prof !410

.noexc.i.i.i80:                                   ; preds = %bb.ae
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc81 unwind label %bb.az

.noexc81:                                         ; preds = %.noexc.i.i.i80
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST10ExportDescEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #28
          to label %.noexc82 unwind label %bb.az

.noexc82:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST10ExportDescEE8allocateEmPKv.exit.i.i.i.i.i, %bb.ad
  %i.ga = phi ptr [ null, %bb.ad ], [ %i.fz, %_ZNSt15__new_allocatorIN8WasmEdge3AST10ExportDescEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ga, ptr %i.fq, align 8, !tbaa !694
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !695
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fx
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !696
  %i.ge = load ptr, ptr %i.fr, align 8, !tbaa !1107
  %i.gf = load ptr, ptr %i.fs, align 8, !tbaa !1107
  %i.gg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST10ExportDescESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ge, ptr %i.gf, ptr noundef %i.ga)
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %.noexc82
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load ptr, ptr %i.fq, align 8, !tbaa !694 ; 3 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i79, label %.body83, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !696
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gm) #30
  br label %.body83

bb.ah:                                            ; preds = %.noexc82
  store ptr %i.gg, ptr %i.gb, align 8, !tbaa !695
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 24, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gp, ptr noundef nonnull align 8 dereferenceable(40) %i.gq, i64 16, i1 false), !tbaa.struct !1100
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 392
  invoke void @_ZNSt6vectorIN8WasmEdge3AST14ElementSegmentESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_ZN8WasmEdge3AST14ElementSectionC2ERKS1_.exit unwind label %bb.ba

_ZN8WasmEdge3AST14ElementSectionC2ERKS1_.exit:    ; preds = %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gt, ptr noundef nonnull align 8 dereferenceable(40) %i.gu, i64 16, i1 false), !tbaa.struct !1100
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke void @_ZNSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %_ZN8WasmEdge3AST11CodeSectionC2ERKS1_.exit unwind label %bb.bb

_ZN8WasmEdge3AST11CodeSectionC2ERKS1_.exit:       ; preds = %_ZN8WasmEdge3AST14ElementSectionC2ERKS1_.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gx, ptr noundef nonnull align 8 dereferenceable(40) %i.gy, i64 16, i1 false), !tbaa.struct !1100
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 472
  invoke void @_ZNSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %_ZN8WasmEdge3AST11DataSectionC2ERKS1_.exit unwind label %bb.bc

_ZN8WasmEdge3AST11DataSectionC2ERKS1_.exit:       ; preds = %_ZN8WasmEdge3AST11CodeSectionC2ERKS1_.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 24, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hd, ptr noundef nonnull align 8 dereferenceable(40) %i.he, i64 16, i1 false), !tbaa.struct !1100
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !3354 ; 2 uses
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !683 ; 2 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i88 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not.i.i.i.i.i88, label %.noexc91, label %bb.ai

bb.ai:                                            ; preds = %_ZN8WasmEdge3AST11DataSectionC2ERKS1_.exit
  %i.hn = icmp ugt i64 %i.hm, 9223372036854775792
  br i1 %i.hn, label %.noexc.i.i.i89, label %_ZNSt15__new_allocatorIN8WasmEdge3AST7TagTypeEE8allocateEmPKv.exit.i.i.i.i.i, !prof !410

.noexc.i.i.i89:                                   ; preds = %bb.ai
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc90 unwind label %bb.bd

.noexc90:                                         ; preds = %.noexc.i.i.i89
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST7TagTypeEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ai
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #28
          to label %.noexc91 unwind label %bb.bd

.noexc91:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST7TagTypeEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN8WasmEdge3AST11DataSectionC2ERKS1_.exit
  %i.hp = phi ptr [ null, %_ZN8WasmEdge3AST11DataSectionC2ERKS1_.exit ], [ %i.ho, %_ZNSt15__new_allocatorIN8WasmEdge3AST7TagTypeEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.hp, ptr %i.hf, align 8, !tbaa !683
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !3354
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hm
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !684
  %i.ht = load ptr, ptr %i.hg, align 8, !tbaa !1108 ; 3 uses
  %i.hu = load ptr, ptr %i.hh, align 8, !tbaa !1108
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.ht to i64
  %i.hx = sub i64 %i.hv, %i.hw                    ; 4 uses
  %i.hy = icmp sgt i64 %i.hx, 16
  br i1 %i.hy, label %bb.aj, label %bb.ak, !prof !1069

bb.aj:                                            ; preds = %.noexc91
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hp, ptr align 8 %i.ht, i64 %i.hx, i1 false)
  br label %bb.am

bb.ak:                                            ; preds = %.noexc91
  %i.hz = icmp eq i64 %i.hx, 16
  br i1 %i.hz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i64 16, i1 false), !tbaa.struct !3355
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.ia = getelementptr inbounds i8, ptr %i.hp, i64 %i.hx
  store ptr %i.ia, ptr %i.hq, align 8, !tbaa !3354
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke void @_ZN8WasmEdge3AST10AOTSectionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %i.ib, ptr noundef nonnull align 8 dereferenceable(120) %i.ic)
          to label %bb.an unwind label %bb.be

bb.an:                                            ; preds = %bb.am
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !397 ; 2 uses
  %i.ih = load <2 x ptr>, ptr %i.ie, align 8, !tbaa !348
  store <2 x ptr> %i.ih, ptr %i.id, align 8, !tbaa !348
  %.not.i.i.i.i92 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i92, label %_ZN8WasmEdge6SymbolIPA38_KPvEC2ERKS5_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !319
  %.not.i.i.i.i.i93 = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i93, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ik = load i32, ptr %i.ii, align 4, !tbaa !409
  %i.il = add nsw i32 %i.ik, 1
  store i32 %i.il, ptr %i.ii, align 4, !tbaa !409
  br label %_ZN8WasmEdge6SymbolIPA38_KPvEC2ERKS5_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.im = atomicrmw volatile add ptr %i.ii, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8WasmEdge6SymbolIPA38_KPvEC2ERKS5_.exit

_ZN8WasmEdge6SymbolIPA38_KPvEC2ERKS5_.exit:       ; preds = %bb.an, %bb.ap, %bb.aq
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !543
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !543
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !1109, !range !164, !noundef !165
  store i8 %i.is, ptr %i.iq, align 8, !tbaa !1109
  ret void

bb.ar:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i48, %.noexc.i.i49
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.as:                                            ; preds = %bb.k
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.at:                                            ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST7SubTypeEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.p
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.av:                                            ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i57
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8WasmEdge3AST15FunctionSectionD2Ev.exit

bb.aw:                                            ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST12TableSegmentEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i62
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body65

bb.ax:                                            ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST10MemoryTypeEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i68
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8WasmEdge3AST13MemorySectionD2Ev.exit

bb.ay:                                            ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST13GlobalSegmentEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i73
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body76

bb.az:                                            ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST10ExportDescEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i80
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body83

bb.ba:                                            ; preds = %bb.ah
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bb:                                            ; preds = %_ZN8WasmEdge3AST14ElementSectionC2ERKS1_.exit
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bc:                                            ; preds = %_ZN8WasmEdge3AST11CodeSectionC2ERKS1_.exit
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST7TagTypeEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i89
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8WasmEdge3AST10TagSectionD2Ev.exit

bb.be:                                            ; preds = %bb.am
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %i.hf, align 8, !tbaa !683 ; 3 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i94, label %_ZN8WasmEdge3AST10TagSectionD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ji = load ptr, ptr %i.hs, align 8, !tbaa !684
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jh to i64
  %i.jl = sub i64 %i.jj, %i.jk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jl) #30
  br label %_ZN8WasmEdge3AST10TagSectionD2Ev.exit

_ZN8WasmEdge3AST10TagSectionD2Ev.exit:            ; preds = %bb.bf, %bb.be, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.jf, %bb.bd ], [ %i.jg, %bb.be ], [ %i.jg, %bb.bf ]
  tail call void @_ZN8WasmEdge3AST11DataSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.gx) #27
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN8WasmEdge3AST10TagSectionD2Ev.exit, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN8WasmEdge3AST10TagSectionD2Ev.exit ], [ %i.je, %bb.bc ]
  tail call void @_ZN8WasmEdge3AST11CodeSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.gt) #27
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bg ], [ %i.jd, %bb.bb ]
  tail call void @_ZN8WasmEdge3AST14ElementSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.gp) #27
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ba
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bh ], [ %i.jc, %bb.ba ]
  tail call void @_ZN8WasmEdge3AST13ExportSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.fo) #27
  br label %.body83

.body83:                                          ; preds = %bb.az, %bb.ag, %bb.af, %bb.bi
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.bi ], [ %i.jb, %bb.az ], [ %i.gh, %bb.ag ], [ %i.gh, %bb.af ]
  tail call void @_ZN8WasmEdge3AST13GlobalSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ep) #27
  br label %.body76

.body76:                                          ; preds = %bb.ay, %bb.ac, %bb.ab, %.body83
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body83 ], [ %i.ja, %bb.ay ], [ %i.fi, %bb.ac ], [ %i.fi, %bb.ab ] ; 2 uses
  %i.jm = load ptr, ptr %i.dx, align 8, !tbaa !700 ; 3 uses
  %.not.i.i.i.i95 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i.i95, label %_ZN8WasmEdge3AST13MemorySectionD2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %.body76
  %i.jn = load ptr, ptr %i.ek, align 8, !tbaa !701
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %i.jm to i64
  %i.jq = sub i64 %i.jo, %i.jp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jq) #30
  br label %_ZN8WasmEdge3AST13MemorySectionD2Ev.exit

_ZN8WasmEdge3AST13MemorySectionD2Ev.exit:         ; preds = %bb.bj, %.body76, %bb.ax
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iz, %bb.ax ], [ %.pn.pn.pn.pn.pn.pn, %.body76 ], [ %.pn.pn.pn.pn.pn.pn, %bb.bj ]
  tail call void @_ZN8WasmEdge3AST12TableSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.cw) #27
  br label %.body65

.body65:                                          ; preds = %bb.aw, %bb.x, %bb.w, %_ZN8WasmEdge3AST13MemorySectionD2Ev.exit
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %_ZN8WasmEdge3AST13MemorySectionD2Ev.exit ], [ %i.iy, %bb.aw ], [ %i.dp, %bb.x ], [ %i.dp, %bb.w ] ; 2 uses
  %i.jr = load ptr, ptr %i.bz, align 8, !tbaa !663 ; 3 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i96, label %_ZN8WasmEdge3AST15FunctionSectionD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %.body65
  %i.js = load ptr, ptr %i.cm, align 8, !tbaa !664
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jv) #30
  br label %_ZN8WasmEdge3AST15FunctionSectionD2Ev.exit

_ZN8WasmEdge3AST15FunctionSectionD2Ev.exit:       ; preds = %bb.bk, %.body65, %bb.av
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ix, %bb.av ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %.body65 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bk ]
  tail call void @_ZN8WasmEdge3AST13ImportSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bt) #27
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN8WasmEdge3AST15FunctionSectionD2Ev.exit, %bb.au
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN8WasmEdge3AST15FunctionSectionD2Ev.exit ], [ %i.iw, %bb.au ]
  tail call void @_ZN8WasmEdge3AST11TypeSectionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.au) #27
  br label %.body

.body:                                            ; preds = %bb.at, %bb.o, %bb.n, %bb.bl
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bl ], [ %i.iv, %bb.at ], [ %i.bn, %bb.o ], [ %i.bn, %bb.n ]
  tail call void @_ZNSt6vectorIN8WasmEdge3AST13CustomSectionESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #27
  br label %bb.bm

bb.bm:                                            ; preds = %.body, %bb.as
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.iu, %bb.as ] ; 2 uses
  %i.jw = load ptr, ptr %i.v, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jx = load ptr, ptr %i.ai, align 8, !tbaa !157
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jy, %i.jz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.ka) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.bn, %bb.bm, %bb.ar
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.it, %bb.ar ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bm ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bn ]
  %i.kb = load ptr, ptr %0, align 8, !tbaa !156   ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIhSaIhEED2Ev.exit98, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.kc = load ptr, ptr %i.l, align 8, !tbaa !157
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = sub i64 %i.kd, %i.ke
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kf) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit98

_ZNSt6vectorIhSaIhEED2Ev.exit98:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.bo
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST13CustomSectionESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !714  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !713    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 72
  %i.g = icmp ugt i64 %2, 128102389400760775
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST13CustomSectionEE8allocateEmPKv.exit.i.i.i, !prof !410

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST13CustomSectionEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST13CustomSectionEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST13CustomSectionEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !713
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !714
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !715
  %i.m = load ptr, ptr %1, align 8, !tbaa !1110   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1110 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST13CustomSectionESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN8WasmEdge3AST13CustomSectionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST13CustomSectionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8WasmEdge3AST13CustomSectionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN8WasmEdge3AST13CustomSectionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8WasmEdge3AST13CustomSectionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN8WasmEdge3AST13CustomSectionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST13CustomSectionESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3356

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8WasmEdge3AST13CustomSectionEEvT_S4_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST13CustomSectionESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8WasmEdge3AST13CustomSectionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST13CustomSectionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !714
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !713    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8WasmEdge3AST13CustomSectionESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !715
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #30
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST13CustomSectionESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST13CustomSectionESaIS2_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST10AOTSectionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !410

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !74
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !811  ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !811
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.d, label %bb.e, !prof !1069

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.o, align 8, !tbaa !76
  store i64 %i.v, ptr %i.k, align 8, !tbaa !76
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit

_ZNSt6vectorImSaImEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80  ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !73  ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i11, label %.noexc14, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit
  %i.af = icmp ugt i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %.noexc.i.i13, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i12, !prof !410

.noexc.i.i13:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i13
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i12: ; preds = %bb.g
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
          to label %.noexc14 unwind label %bb.u

.noexc14:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i12, %_ZNSt6vectorImSaImEEC2ERKS1_.exit
  %i.ah = phi ptr [ null, %_ZNSt6vectorImSaImEEC2ERKS1_.exit ], [ %i.ag, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i12 ] ; 6 uses
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !74
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !811 ; 3 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !811
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 8
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !1069

bb.h:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ah, ptr align 8 %i.al, i64 %i.ap, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc14
  %i.ar = icmp eq i64 %i.ap, 8
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.al, align 8, !tbaa !76
  store i64 %i.as, ptr %i.ah, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.at = getelementptr inbounds i8, ptr %i.ah, i64 %i.ap
  store ptr %i.at, ptr %i.ai, align 8, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !681 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !680 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i16 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i16, label %.noexc19, label %bb.l

bb.l:                                             ; preds = %bb.k
  %2 = sdiv exact i64 %i.bb, 48
  %i.bc = icmp ugt i64 %2, 192153584101141162
  br i1 %i.bc, label %.noexc.i.i17, label %_ZNSt15__new_allocatorISt5tupleIJhmmSt6vectorIhSaIhEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !410

.noexc.i.i17:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc18 unwind label %bb.v

.noexc18:                                         ; preds = %.noexc.i.i17
  unreachable

_ZNSt15__new_allocatorISt5tupleIJhmmSt6vectorIhSaIhEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #28
          to label %.noexc19 unwind label %bb.v

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorISt5tupleIJhmmSt6vectorIhSaIhEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorISt5tupleIJhmmSt6vectorIhSaIhEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !680
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !681
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !682
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !1111
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !1111
  %i.bk = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt5tupleIJhmmSt6vectorIhSaIhEEEES3_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.bi, ptr %i.bj, ptr noundef %i.be)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %.noexc19
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !680 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !682
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #30
  br label %.body

bb.o:                                             ; preds = %.noexc19
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !681
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !158 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !156 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %.not.i.i.i.i20 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.i20, label %.noexc23, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %.noexc.i.i21, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !410

.noexc.i.i21:                                     ; preds = %bb.p
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc22 unwind label %bb.w

.noexc22:                                         ; preds = %.noexc.i.i21
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.p
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #28
          to label %.noexc23 unwind label %bb.w

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.o
  %i.cb = phi ptr [ null, %bb.o ], [ %i.ca, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.cb, ptr %i.br, align 8, !tbaa !156
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !158
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !157
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !810 ; 3 uses
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !810
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = icmp sgt i64 %i.cj, 1
  br i1 %i.ck, label %bb.q, label %bb.r, !prof !1069

bb.q:                                             ; preds = %.noexc23
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.cf, i64 %i.cj, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %.noexc23
  %i.cl = icmp eq i64 %i.cj, 1
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !319
  store i8 %i.cm, ptr %i.cb, align 1, !tbaa !319
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cn = getelementptr inbounds i8, ptr %i.cb, i64 %i.cj
  store ptr %i.cn, ptr %i.cc, align 8, !tbaa !158
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i12, %.noexc.i.i13
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.v:                                             ; preds = %_ZNSt15__new_allocatorISt5tupleIJhmmSt6vectorIhSaIhEEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i17
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i21
  %i.cq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt5tupleIJhmmS_IhSaIhEEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #27
  br label %.body

.body:                                            ; preds = %bb.v, %bb.n, %bb.m, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.w ], [ %i.cp, %bb.v ], [ %i.bl, %bb.n ], [ %i.bl, %bb.m ] ; 2 uses
  %i.cr = load ptr, ptr %i.x, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.body
  %i.cs = load ptr, ptr %i.ak, align 8, !tbaa !74
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.x, %.body, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.co, %bb.u ], [ %.pn, %.body ], [ %.pn, %bb.x ]
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorImSaImEED2Ev.exit26, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.cx = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit26

_ZNSt6vectorImSaImEED2Ev.exit26:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.y
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST13CustomSectionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !335
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !318  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !336  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.g, ptr %i.a, align 8, !tbaa !76
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !318
  %i.j = load i64, ptr %i.a, align 8, !tbaa !76
  store i64 %i.j, ptr %i.d, align 8, !tbaa !319
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !319
  store i8 %i.l, ptr %i.k, align 1, !tbaa !319
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !336
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !318
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge3AST13CustomSectionC2ERKS1_:bb.a
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !319
  store i8 %i.al, ptr %i.aa, align 1, !tbaa !319
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !158
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !318 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !319
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST7SubTypeESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.023 = phi ptr [ %i.an, %bb.h ], [ %2, %bb.a ] ; 10 uses
  %.sroa.09.022 = phi ptr [ %i.am, %bb.h ], [ %0, %bb.a ] ; 7 uses
  %i.a = load i8, ptr %.sroa.09.022, align 8, !tbaa !1067, !range !164, !noundef !165
  store i8 %i.a, ptr %.023, align 8, !tbaa !1067
  %i.b = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1101 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !663  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp ugt i64 %i.i, 9223372036854775804
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !410

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #28
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.k, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !663
  %i.m = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1101
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.023, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !664
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1102 ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !1102
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 4
  br i1 %i.u, label %bb.c, label %bb.d, !prof !1069

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit.i.i

bb.d:                                             ; preds = %.noexc8
  %i.v = icmp eq i64 %i.t, 4
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.p, align 4, !tbaa !409
  store i32 %i.w, ptr %i.l, align 4, !tbaa !409
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit.i.i

_ZNSt6vectorIjSaIjEEC2ERKS1_.exit.i.i:            ; preds = %bb.e, %bb.d, %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8, !tbaa !1101
  %i.y = getelementptr inbounds nuw i8, ptr %.023, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !1068
  store i8 %i.aa, ptr %i.y, align 8, !tbaa !1068
  %i.ab = getelementptr inbounds nuw i8, ptr %.023, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 40
  invoke void @_ZNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(73) %i.ab, ptr noundef nonnull align 8 dereferenceable(73) %i.ac)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !663 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !664
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #30
  br label %.body

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.023, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ak, ptr noundef nonnull align 8 dereferenceable(20) %i.al, i64 20, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.022, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.023, i64 144 ; 2 uses
  %.not = icmp eq ptr %i.am, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3357

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.f, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.ad, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ao = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %i.ao) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8WasmEdge3AST7SubTypeEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.023)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #31
          to label %bb.m unwind label %bb.j

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.an, %bb.h ]
  ret ptr %.0.lcssa

bb.j:                                             ; preds = %bb.i, %.body
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.aq

bb.l:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #29
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 -1, ptr %i.a, align 8, !tbaa !711
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !711
  switch i8 %i.c, label %bb.h [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 -1, label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS6_EENS5_12FunctionTypeEEEC1ERKSA_EUlOT_T0_E_JRKSt7variantIJS8_S9_EEEEEvSE_DpOT0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3358 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !736    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.i, 12
  %i.j = icmp ugt i64 %2, 768614336404564650
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST9FieldTypeEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !410

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST9FieldTypeEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #28
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST9FieldTypeEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.l = phi ptr [ null, %bb.b ], [ %i.k, %_ZNSt15__new_allocatorIN8WasmEdge3AST9FieldTypeEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !736
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3358
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !3359
  %i.p = load ptr, ptr %1, align 8, !tbaa !3360   ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !3360
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 12
  br i1 %i.u, label %bb.d, label %bb.e, !prof !1069

bb.d:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS8_EENS7_12FunctionTypeEEEC1ERKSC_EUlOT_T0_E_RKSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SN_.exit.i.i

bb.e:                                             ; preds = %.noexc4
  %i.v = icmp eq i64 %i.t, 12
  br i1 %i.v, label %bb.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS8_EENS7_12FunctionTypeEEEC1ERKSC_EUlOT_T0_E_RKSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SN_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.l, ptr noundef nonnull align 4 dereferenceable(9) %i.p, i64 9, i1 false), !tbaa.struct !1114
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS8_EENS7_12FunctionTypeEEEC1ERKSC_EUlOT_T0_E_RKSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SN_.exit.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS8_EENS7_12FunctionTypeEEEC1ERKSC_EUlOT_T0_E_RKSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SN_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.w, ptr %i.m, align 8, !tbaa !3358
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS6_EENS5_12FunctionTypeEEEC1ERKSA_EUlOT_T0_E_JRKSt7variantIJS8_S9_EEEEEvSE_DpOT0_.exit

bb.g:                                             ; preds = %bb.a
  invoke void @_ZN8WasmEdge3AST12FunctionTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(73) %1)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS6_EENS5_12FunctionTypeEEEC1ERKSA_EUlOT_T0_E_JRKSt7variantIJS8_S9_EEEEEvSE_DpOT0_.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS6_EENS5_12FunctionTypeEEEC1ERKSA_EUlOT_T0_E_JRKSt7variantIJS8_S9_EEEEEvSE_DpOT0_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS8_EENS7_12FunctionTypeEEEC1ERKSC_EUlOT_T0_E_RKSt7variantIJSA_SB_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SN_.exit.i.i, %bb.a, %bb.g
  %i.x = load i8, ptr %i.b, align 8, !tbaa !711
  store i8 %i.x, ptr %i.a, align 8, !tbaa !711
  ret void

bb.i:                                             ; preds = %bb.g, %_ZNSt15__new_allocatorIN8WasmEdge3AST9FieldTypeEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIN8WasmEdge3AST9FieldTypeESaIS5_EENS4_12FunctionTypeEEED2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %0) #27
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST10ImportDescESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !706  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !705    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 168
  %i.g = icmp ugt i64 %2, 54901024028897475
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST10ImportDescEE8allocateEmPKv.exit.i.i.i, !prof !410

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST10ImportDescEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST10ImportDescEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST10ImportDescEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !705
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !706
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !707
  %i.m = load ptr, ptr %1, align 8, !tbaa !1115   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1115 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST10ImportDescESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN8WasmEdge3AST10ImportDescEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST10ImportDescEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8WasmEdge3AST10ImportDescEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN8WasmEdge3AST10ImportDescC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8WasmEdge3AST10ImportDescEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN8WasmEdge3AST10ImportDescEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 168 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST10ImportDescESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3361

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8WasmEdge3AST10ImportDescEEvT_S4_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST10ImportDescESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8WasmEdge3AST10ImportDescEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST10ImportDescEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !706
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !705    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !707
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #30
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST10ImportDescESaIS2_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST10ImportDescC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !1118
  store i8 %i.c, ptr %0, align 8, !tbaa !1118
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !335
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !318  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !336  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.i, ptr %i.b, align 8, !tbaa !76
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !318
  %i.l = load i64, ptr %i.b, align 8, !tbaa !76
  store i64 %i.l, ptr %i.f, align 8, !tbaa !319
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8WasmEdge3AST4DescC2ERKS1_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !319
  store i8 %i.n, ptr %i.m, align 1, !tbaa !319
  br label %_ZN8WasmEdge3AST4DescC2ERKS1_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN8WasmEdge3AST4DescC2ERKS1_.exit

_ZN8WasmEdge3AST4DescC2ERKS1_.exit:               ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !336
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !318
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !335
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !318  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !336  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.x, ptr %i.a, align 8, !tbaa !76
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN8WasmEdge3AST4DescC2ERKS1_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !318
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !76
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !319
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN8WasmEdge3AST4DescC2ERKS1_.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZN8WasmEdge3AST4DescC2ERKS1_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !319
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !319
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !336
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !318
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i64 96, i1 false)
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !318 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %_ZN8WasmEdge3AST4DescD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.am = load i64, ptr %i.f, align 8, !tbaa !319
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #30
  br label %_ZN8WasmEdge3AST4DescD2Ev.exit

_ZN8WasmEdge3AST4DescD2Ev.exit:                   ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST12TableSegmentESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:bb.a
  store ptr %i.i, ptr %i.j, align 8, !tbaa !719
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !724
  %i.m = load ptr, ptr %.sroa.010.018, align 8, !tbaa !1119 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1119 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.sroa.04.08.i.i.i.i.i.i.i.i.i) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !60

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !719
  %i.q = getelementptr inbounds nuw i8, ptr %.019, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !3363
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.s, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3362

.loopexit13:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit13
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit13 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.u = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #27 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST12TableSegmentEEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %_ZSt8_DestroyIPN8WasmEdge3AST12TableSegmentEEvT_S4_.exit unwind label %bb.d

_ZSt8_DestroyIPN8WasmEdge3AST12TableSegmentEEvT_S4_.exit: ; preds = %bb.c
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.t, %.loopexit ]
  ret ptr %.0.lcssa

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN8WasmEdge3AST12TableSegmentEEvT_S4_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #29
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST12TableSegmentEEvT_S4_.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %0, ptr noundef nonnull align 16 dereferenceable(26) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !807
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x i32>, ptr %i.b, align 16, !tbaa !319
  store <2 x i32> %i.c, ptr %i.a, align 16, !tbaa !319
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i16, ptr %i.e, align 8              ; 2 uses
  store i16 %i.f, ptr %i.d, align 8
  %i.g = lshr i16 %i.f, 8                         ; 2 uses
  %i.h = trunc nuw i16 %i.g to i8                 ; 3 uses
  %i.i = trunc i16 %i.g to i1
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 16, !tbaa !319
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 4
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #28
          to label %bb.c unwind label %bb.v       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !319
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !319  ; 2 uses
  %i.q = load i32, ptr %0, align 16, !tbaa !319   ; 2 uses
  switch i32 %i.q, label %bb.d [
    i32 0, label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit
    i32 1, label %bb.e
  ], !prof !3364

bb.d:                                             ; preds = %bb.c
  %i.r = zext i32 %i.q to i64
  %.idx.i.i = shl nuw nsw i64 %i.r, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.p, i64 %.idx.i.i, i1 false)
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !3365
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.f:                                             ; preds = %bb.a
  %i.s = and i8 %i.h, 2
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %0, align 16, !tbaa !319
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #28
          to label %bb.h unwind label %bb.v       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !319
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !319  ; 2 uses
  %i.aa = load i32, ptr %0, align 16, !tbaa !319  ; 2 uses
  switch i32 %i.aa, label %bb.i [
    i32 0, label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit
    i32 1, label %bb.j
  ], !prof !3364

bb.i:                                             ; preds = %bb.h
  %i.ab = zext i32 %i.aa to i64
  %.idx.i.i11 = shl nuw nsw i64 %i.ab, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.z, i64 %.idx.i.i11, i1 false)
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.z, align 4, !tbaa !319
  store i64 %i.ac, ptr %i.w, align 4, !tbaa !319
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = and i8 %i.h, 4
  %.not9 = icmp eq i8 %i.ad, 0
  br i1 %.not9, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %bb.m unwind label %bb.v       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %1, align 16, !tbaa !319
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ae, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false), !tbaa.struct !3366
  store ptr %i.ae, ptr %0, align 16, !tbaa !319
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

bb.n:                                             ; preds = %bb.k
  %i.ag = and i8 %i.h, 8
  %.not10 = icmp eq i8 %i.ag, 0
  br i1 %.not10, label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %bb.p unwind label %bb.v       ; 6 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = load ptr, ptr %1, align 16, !tbaa !319  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !3367 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !722 ; 4 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.ar = getelementptr inbounds i8, ptr null, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !723
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %2 = sdiv exact i64 %i.aq, 28
  %i.at = icmp ugt i64 %2, 329406144173384850
  br i1 %i.at, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11Instruction15CatchDescriptorEE8allocateEmPKv.exit.i.i.i.i.i, !prof !410

.noexc.i.i.i:                                     ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11Instruction15CatchDescriptorEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #28
          to label %.noexc14 unwind label %bb.v   ; 4 uses

.noexc14:                                         ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11Instruction15CatchDescriptorEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !722
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.aq ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !723
  %3 = icmp sgt i64 %i.aq, 28
  br i1 %3, label %bb.r, label %bb.s, !prof !3368

bb.r:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.an, i64 %i.aq, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %.noexc14
  %i.ax = icmp eq i64 %i.aq, 28
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.au, ptr noundef nonnull align 4 dereferenceable(28) %i.an, i64 28, i1 false), !tbaa.struct !3369
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.t, %bb.s, %bb.r
  %i.ay = phi ptr [ %i.av, %bb.t ], [ %i.av, %bb.s ], [ %i.av, %bb.r ], [ %i.ar, %.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !3367
  store ptr %i.ah, ptr %0, align 16, !tbaa !319
  br label %_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit

_ZSt6copy_nIPN8WasmEdge3AST11Instruction14JumpDescriptorEjS4_ET1_T_T0_S5_.exit: ; preds = %bb.h, %bb.c, %bb.j, %bb.i, %bb.e, %bb.d, %bb.n, %bb.u, %bb.m
  ret void

bb.v:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11Instruction15CatchDescriptorEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i, %bb.o, %bb.l, %bb.g, %bb.b
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #29
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST13GlobalSegmentESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.019 = phi ptr [ %i.t, %.loopexit ], [ %2, %bb.a ] ; 7 uses
  %.sroa.010.018 = phi ptr [ %i.s, %.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !719  ; 2 uses
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !718 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.019, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !410

.noexc.i.i.i.i.i.i:                               ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
          to label %.noexc8 unwind label %.loopexit13

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.019, align 8, !tbaa !718
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !719
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !724
  %i.m = load ptr, ptr %.sroa.010.018, align 8, !tbaa !1119 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1119 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.sroa.04.08.i.i.i.i.i.i.i.i.i) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !60

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !719
  %i.q = getelementptr inbounds nuw i8, ptr %.019, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i64 12, i1 false), !tbaa.struct !1114
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.s, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3370

.loopexit13:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit13
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit13 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.u = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #27 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST13GlobalSegmentEEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %_ZSt8_DestroyIPN8WasmEdge3AST13GlobalSegmentEEvT_S4_.exit unwind label %bb.d

_ZSt8_DestroyIPN8WasmEdge3AST13GlobalSegmentEEvT_S4_.exit: ; preds = %bb.c
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.t, %.loopexit ]
  ret ptr %.0.lcssa

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN8WasmEdge3AST13GlobalSegmentEEvT_S4_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #29
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST13GlobalSegmentEEvT_S4_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST10ExportDescESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.v, %bb.d ], [ %2, %bb.a ]  ; 7 uses
  %.sroa.08.013 = phi ptr [ %i.u, %bb.d ], [ %0, %bb.a ] ; 5 uses
  %i.b = load i8, ptr %.sroa.08.013, align 8, !tbaa !1118
  store i8 %i.b, ptr %.014, align 8, !tbaa !1118
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !335
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !318  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !336  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.h, ptr %i.a, align 8, !tbaa !76
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.lr.ph
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.j, ptr %i.c, align 8, !tbaa !318
  %i.k = load i64, ptr %i.a, align 8, !tbaa !76
  store i64 %i.k, ptr %i.e, align 8, !tbaa !319
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %.lr.ph
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %.lr.ph ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !319
  store i8 %i.m, ptr %i.l, align 1, !tbaa !319
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !336
end_hunk_2
begin_hunk_3_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST10ExportDescESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:bb.a
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  %i.y = call ptr @__cxa_begin_catch(ptr %i.x) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN8WasmEdge3AST10ExportDescEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.v, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #29
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST14ElementSegmentESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !692  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !691    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775744
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST14ElementSegmentEE8allocateEmPKv.exit.i.i.i, !prof !410

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST14ElementSegmentEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST14ElementSegmentEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST14ElementSegmentEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !691
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !692
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !693
  %i.m = load ptr, ptr %1, align 8, !tbaa !1120   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1120 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST14ElementSegmentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN8WasmEdge3AST14ElementSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST14ElementSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8WasmEdge3AST14ElementSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN8WasmEdge3AST14ElementSegmentC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8WasmEdge3AST14ElementSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN8WasmEdge3AST14ElementSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST14ElementSegmentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3374

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #27 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST14ElementSegmentEEEvT_S6_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %_ZSt8_DestroyIPN8WasmEdge3AST14ElementSegmentEEvT_S4_.exit.i.i.i.i unwind label %bb.e

_ZSt8_DestroyIPN8WasmEdge3AST14ElementSegmentEEvT_S4_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST14ElementSegmentEEvT_S4_.exit.i.i.i.i, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST14ElementSegmentEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST14ElementSegmentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8WasmEdge3AST14ElementSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST14ElementSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !692
  ret void

.body:                                            ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !691    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8WasmEdge3AST14ElementSegmentESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !693
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #30
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST14ElementSegmentESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST14ElementSegmentESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST14ElementSegmentC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !719  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !718    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !410

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !718
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !719
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !724
  %i.m = load ptr, ptr %1, align 8, !tbaa !1119   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1119 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.sroa.04.08.i.i.i.i.i.i.i) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !60

_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !719
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !732  ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !731  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i, label %.noexc5, label %bb.d

bb.d:                                             ; preds = %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit
  %2 = sdiv exact i64 %i.z, 24
  %i.aa = icmp ugt i64 %2, 384307168202282325
  br i1 %i.aa, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST10ExpressionEE8allocateEmPKv.exit.i.i.i.i, !prof !410

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST10ExpressionEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #28
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST10ExpressionEE8allocateEmPKv.exit.i.i.i.i, %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit
  %i.ac = phi ptr [ null, %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit ], [ %i.ab, %_ZNSt15__new_allocatorIN8WasmEdge3AST10ExpressionEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !731
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !732
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !733
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !3375
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !3375
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST10ExpressionESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ag, ptr %i.ah, ptr noundef %i.ac)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc5
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !731 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !733
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #30
  br label %.body

bb.g:                                             ; preds = %.noexc5
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !732
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST10ExpressionEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.aj, %bb.f ], [ %i.aj, %bb.e ]
  tail call void @_ZN8WasmEdge3AST7SegmentD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST10ExpressionESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.019 = phi ptr [ %i.r, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.010.018 = phi ptr [ %i.q, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !719  ; 2 uses
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !718 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.019, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !410

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
          to label %.noexc8 unwind label %.loopexit13

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.019, align 8, !tbaa !718
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !719
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !724
  %i.m = load ptr, ptr %.sroa.010.018, align 8, !tbaa !1119 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1119 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.sroa.04.08.i.i.i.i.i.i.i) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !60

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !719
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.019, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3376

.loopexit13:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit13
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit13 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #27 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST10ExpressionEEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %_ZSt8_DestroyIPN8WasmEdge3AST10ExpressionEEvT_S4_.exit unwind label %bb.d

_ZSt8_DestroyIPN8WasmEdge3AST10ExpressionEEvT_S4_.exit: ; preds = %bb.c
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %.loopexit ]
  ret ptr %.0.lcssa

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN8WasmEdge3AST10ExpressionEEvT_S4_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST10ExpressionEEvT_S4_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST11CodeSegmentESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !689  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !688    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 80
  %i.g = icmp ugt i64 %2, 115292150460684697
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11CodeSegmentEE8allocateEmPKv.exit.i.i.i, !prof !410

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11CodeSegmentEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11CodeSegmentEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST11CodeSegmentEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !688
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !689
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !690
  %i.m = load ptr, ptr %1, align 8, !tbaa !1121   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1121 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11CodeSegmentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN8WasmEdge3AST11CodeSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST11CodeSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8WasmEdge3AST11CodeSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN8WasmEdge3AST11CodeSegmentC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8WasmEdge3AST11CodeSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN8WasmEdge3AST11CodeSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11CodeSegmentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3377

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #27 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST11CodeSegmentEEEvT_S6_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %_ZSt8_DestroyIPN8WasmEdge3AST11CodeSegmentEEvT_S4_.exit.i.i.i.i unwind label %bb.e

_ZSt8_DestroyIPN8WasmEdge3AST11CodeSegmentEEvT_S4_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11CodeSegmentEEvT_S4_.exit.i.i.i.i, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11CodeSegmentEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11CodeSegmentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8WasmEdge3AST11CodeSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST11CodeSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !689
  ret void

.body:                                            ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !688    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8WasmEdge3AST11CodeSegmentESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !690
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #30
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST11CodeSegmentESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST11CodeSegmentESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST11CodeSegmentC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !719  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !718    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !410

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !718
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !719
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !724
  %i.m = load ptr, ptr %1, align 8, !tbaa !1119   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1119 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.sroa.04.08.i.i.i.i.i.i.i) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !60

_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !719
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !3389
  store i32 %i.s, ptr %i.q, align 8, !tbaa !3389
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3390 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !727  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.d

bb.d:                                             ; preds = %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit
  %2 = sdiv exact i64 %i.aa, 12
  %i.ab = icmp ugt i64 %2, 768614336404564650
  br i1 %i.ab, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt4pairIjN8WasmEdge7ValTypeEEE8allocateEmPKv.exit.i.i.i.i, !prof !410

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIjN8WasmEdge7ValTypeEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #28
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorISt4pairIjN8WasmEdge7ValTypeEEE8allocateEmPKv.exit.i.i.i.i, %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit
  %i.ad = phi ptr [ null, %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit ], [ %i.ac, %_ZNSt15__new_allocatorISt4pairIjN8WasmEdge7ValTypeEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !727
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !3390
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !728
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !3391 ; 2 uses
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !3391 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc6, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.ad, %.noexc6 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc6 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i, i64 12, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3378

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc6
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %.noexc6 ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !3390
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !397 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !348
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !348
  %.not.i.i.i.i7 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i7, label %_ZN8WasmEdge6SymbolIvEC2ERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !319
  %.not.i.i.i.i.i8 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !409
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !409
  br label %_ZN8WasmEdge6SymbolIvEC2ERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8WasmEdge6SymbolIvEC2ERKS1_.exit

_ZN8WasmEdge6SymbolIvEC2ERKS1_.exit:              ; preds = %.loopexit, %bb.f, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3392
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !3392
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIjN8WasmEdge7ValTypeEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8WasmEdge3AST7SegmentD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8WasmEdge3AST11DataSegmentESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !686  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !685    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 56
  %i.g = icmp ugt i64 %2, 164703072086692425
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11DataSegmentEE8allocateEmPKv.exit.i.i.i, !prof !410

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11DataSegmentEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11DataSegmentEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST11DataSegmentEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !685
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !686
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !687
  %i.m = load ptr, ptr %1, align 8, !tbaa !1122   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1122 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11DataSegmentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN8WasmEdge3AST11DataSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST11DataSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN8WasmEdge3AST11DataSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN8WasmEdge3AST11DataSegmentC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN8WasmEdge3AST11DataSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN8WasmEdge3AST11DataSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11DataSegmentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3393

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #27 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8WasmEdge3AST11DataSegmentEEEvT_S6_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %_ZSt8_DestroyIPN8WasmEdge3AST11DataSegmentEEvT_S4_.exit.i.i.i.i unwind label %bb.e

_ZSt8_DestroyIPN8WasmEdge3AST11DataSegmentEEvT_S4_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11DataSegmentEEvT_S4_.exit.i.i.i.i, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN8WasmEdge3AST11DataSegmentEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN8WasmEdge3AST11DataSegmentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN8WasmEdge3AST11DataSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN8WasmEdge3AST11DataSegmentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !686
  ret void

.body:                                            ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !685    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8WasmEdge3AST11DataSegmentESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !687
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #30
  br label %_ZNSt12_Vector_baseIN8WasmEdge3AST11DataSegmentESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8WasmEdge3AST11DataSegmentESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge3AST11DataSegmentC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !719  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !718    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !410

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN8WasmEdge3AST11InstructionEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !718
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !719
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !724
  %i.m = load ptr, ptr %1, align 8, !tbaa !1119   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1119 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @_ZN8WasmEdge3AST11InstructionC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(26) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(26) %.sroa.04.08.i.i.i.i.i.i.i) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !60

_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !719
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158  ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !156  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i, label %.noexc5, label %bb.d

bb.d:                                             ; preds = %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !410

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #28
          to label %.noexc5 unwind label %bb.i

.noexc5:                                          ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit
  %i.ad = phi ptr [ null, %_ZN8WasmEdge3AST7SegmentC2ERKS1_.exit ], [ %i.ac, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !156
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !158
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !157
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !810 ; 3 uses
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !810
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.e, label %bb.f, !prof !1069

bb.e:                                             ; preds = %.noexc5
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ah, i64 %i.al, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %.noexc5
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !319
  store i8 %i.ao, ptr %i.ad, align 1, !tbaa !319
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ap = getelementptr inbounds i8, ptr %i.ad, i64 %i.al
  store ptr %i.ap, ptr %i.ae, align 8, !tbaa !158
  ret void

end_hunk_3
