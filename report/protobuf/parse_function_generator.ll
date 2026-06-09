inline.NumInlined: 4794
inline.NumDeleted: 2084
begin_hunk_0_@_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIRN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEvvEEDaOT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.n, align 8, !tbaa !147, !alias.scope !431
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.o, align 8, !tbaa !434, !alias.scope !431
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEEvvEEDaOT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSY_DpOSZ_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEEvvEEDaOT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vIST_T0_DpT1_EEST_E4typeEOSY_DpOSZ_.exit: ; preds = %bb.a, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i
  %.sink.i.i = phi i8 [ 1, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink.i.i, ptr %i.p, align 8, !tbaa !442, !alias.scope !431
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIRN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEvvEEDaOT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_EUlSA_E_, ptr %0, align 8, !tbaa !444
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !239
  store ptr %i.a, ptr %0, align 8, !tbaa !239
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEC2EOSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"struct.absl::lts_20250512::container_internal::HeapPtrs", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.a = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.a, ptr %0, align 8
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE4findIS7_EENSJ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !174
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !149 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !77 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !129
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !129
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149, !nonnull !73, !noundef !73
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !77 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !129
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !64, !noalias !446
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %0, align 8, !tbaa !174, !noalias !446 ; 4 uses
  %i.t = lshr i64 %i.o, 7
  %i.u = xor i64 %i.r, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.o to i8
  %i.w = and i8 %i.v, 127
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !149  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !149 ; 4 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ab, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.ak, %bb.f ], [ %i.u, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.s      ; 4 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i.us
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !149 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.aa, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ah = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not43.i.us = icmp eq i16 %i.ai, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit, !prof !151

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.aj = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !449

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.as, %bb.g ], [ %i.ag, %.split.us ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.us, %i.am
  %i.ao = and i64 %i.an, %i.s                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us = load i64, ptr %i.ap, align 8, !tbaa !77
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us, 0
  br i1 %i.aq, label %.thread32.i, label %bb.g, !prof !450

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.ar = add i16 %.sroa.017.046.i.us.us, -1
  %i.as = and i16 %i.ar, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.as, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bl, %bb.i ], [ %i.u, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.s            ; 4 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !149 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.aa, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bh, %bb.h ], [ %i.ax, %.split ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i, %i.az
  %i.bb = and i64 %i.ba, %i.s                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bb ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10 = load i64, ptr %i.bc, align 8, !tbaa !77
  %i.bd = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, label %bb.h, !prof !450

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i11, align 8, !tbaa !129
  %bcmp.i.i.i.i.i.i.i.i14 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i12, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i14, 0
  br i1 %i.be, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
  %i.bg = add i16 %.sroa.017.046.i, -1
  %i.bh = and i16 %i.bg, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bi = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit, !prof !151

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !449

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi18, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !432
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #33
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.175, align 8            ; 4 uses
  %4 = alloca %class.anon.155, align 8            ; 5 uses
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_EUlSA_E_, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !239
  store ptr %i.a, ptr %0, align 8, !tbaa !239
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !239    ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E15_M_init_functorIRKSS_EEvRSt9_Any_dataSR_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.c, ptr %4, align 8, !tbaa !65
  invoke void @_ZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS8_SaIcEEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKS9_SD_EEEC1ERKSL_RKSK_EUlPvPKvE_vJSQ_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.f unwind label %.body.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E15_M_init_functorIRKSS_EEvRSt9_Any_dataSR_.exit

.body.i.i.i.i.i.i:                                ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #30
  resume { ptr, i32 } %i.f

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E15_M_init_functorIRKSS_EEvRSt9_Any_dataSR_.exit: ; preds = %bb.d, %bb.f
  store ptr %i.c, ptr %0, align 8, !tbaa !239
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.g:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !239    ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !174
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_ENUlSA_E_D2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.g, ptr %3, align 8, !tbaa !175
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 48, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS8_SaIcEEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKS9_SD_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i.i unwind label %bb.j

.noexc.i.i.i:                                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.k = load i64, ptr %i.g, align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !64
  %i.p = and i64 %i.o, 65536
  %i.q = icmp ne i64 %i.p, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.k, ptr noundef %i.m, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %i.q)
          to label %_ZZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_ENUlSA_E_D2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i.i.i, %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable

_ZZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_ENUlSA_E_D2Ev.exit.i: ; preds = %.noexc.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 32) #30
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEvvEEDaOT_ENUlSA_E_D2Ev.exit.i, %bb.g, %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIRN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEvvEEDaOT_EUlSC_E_E15_M_init_functorIRKSS_EEvRSt9_Any_dataSR_.exit, %bb.c, %bb.b, %bb.a
  ret i1 false
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !186
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !150    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !149
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
end_hunk_0
begin_hunk_1_@_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2EOSC_:bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !150
  %i.i = load i64, ptr %i.c, align 8, !tbaa !149
  store i64 %i.i, ptr %i.a, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !147
  store ptr %i.c, ptr %1, align 8, !tbaa !150
  store i64 0, ptr %i.j, align 8, !tbaa !147
  store i8 0, ptr %i.c, align 8, !tbaa !149
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 -1, ptr %i.o, align 8, !tbaa !186
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !186
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !145
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !150  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !147  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.m, align 8, !tbaa !150
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !149
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !149
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !147
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !147
  store ptr %i.u, ptr %i.n, align 8, !tbaa !150
  store i64 0, ptr %i.ab, align 8, !tbaa !147
  store i8 0, ptr %i.u, align 8, !tbaa !149
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !182
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !182
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !185
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, ptr noundef nonnull align 8 dereferenceable(73) %i.n, i64 16, i1 false), !tbaa.struct !412
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !185
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !185
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i: ; preds = %bb.f, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i
  %i.al = load i8, ptr %i.p, align 8, !tbaa !186
  store i8 %i.al, ptr %i.o, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !145
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !150 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !147 ; 2 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !150
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !149
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !149
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !147
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !147
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !150
  store i64 0, ptr %i.ax, align 8, !tbaa !147
  store i8 0, ptr %i.aq, align 8, !tbaa !149
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !188, !range !136, !noundef !73
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !188
  ret void
}

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE30find_or_prepare_insert_non_sooIS9_EESJ_INSN_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.258") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !150
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !147  ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64, !noalias !540
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !174, !noalias !540 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !149 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.az, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !149 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.an, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !150
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !147
  %i.ak = icmp eq i64 %i.aj, %i.v
  br i1 %i.ak, label %bb.c, label %.critedge, !prof !450

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.u, i64 %i.v)
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.am = add i16 %.sroa.033.059, -1
  %i.an = and i16 %i.am, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ao = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !151

.thread:                                          ; preds = %.critedge18
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !149
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ay = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !495
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEE9constructISaISt4pairIKS8_SE_EEJRKSt21piecewise_construct_tSt5tupleIJOS8_EESO_IJOSE_EEEEEvPT_PNS1_13map_slot_typeIS8_SE_EEDpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !479
  %i.b = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.c = load i64, ptr %4, align 8, !tbaa !487
  %i.d = inttoptr i64 %i.c to ptr                 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !145
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !147  ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %1, align 8, !tbaa !150
  %i.m = load i64, ptr %i.g, align 8, !tbaa !149
  store i64 %i.m, ptr %i.e, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !147
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !147
  store ptr %i.g, ptr %i.b, align 8, !tbaa !150
  store i64 0, ptr %i.n, align 8, !tbaa !147
  store i8 0, ptr %i.g, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i8 -1, ptr %i.r, align 8, !tbaa !186
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !186
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !145
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !150  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !147 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.w, ptr %i.q, align 8, !tbaa !150
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !149
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !149
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !147
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !147
  store ptr %i.x, ptr %i.d, align 8, !tbaa !150
  store i64 0, ptr %i.ae, align 8, !tbaa !147
  store i8 0, ptr %i.x, align 8, !tbaa !149
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.q, i8 0, i64 24, i1 false)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !182
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !182
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !185
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.q, ptr noundef nonnull align 8 dereferenceable(73) %i.d, i64 16, i1 false), !tbaa.struct !412
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !185
  store ptr %i.an, ptr %i.am, align 8, !tbaa !185
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ao = load i8, ptr %i.s, align 8, !tbaa !186
  store i8 %i.ao, ptr %i.r, align 8, !tbaa !186
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !145
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !150 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !147 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2IJOS5_EJOSB_EEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i.i
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !150
  %i.az = load i64, ptr %i.at, align 8, !tbaa !149
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !149
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2IJOS5_EJOSB_EEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEC2IJOS5_EJOSB_EEESt21piecewise_construct_tSt5tupleIJDpT_EESH_IJDpT0_EE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !147
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !147
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !150
  store i64 0, ptr %i.ba, align 8, !tbaa !147
  store i8 0, ptr %i.at, align 8, !tbaa !149
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !188, !range !136, !noundef !73
  store i8 %i.bf, ptr %i.bd, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSD_EUlOT_T0_E_JRKSt7variantIJS9_SC_EEEEDcOSI_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !186
  %i.d = icmp eq i8 %i.c, 0
  %i.e = load ptr, ptr %0, align 8, !tbaa !535    ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.e, align 8, !tbaa !145
  %i.g = load ptr, ptr %1, align 8, !tbaa !150    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.i, ptr %i.a, align 8, !tbaa !77
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !150
  %i.l = load i64, ptr %i.a, align 8, !tbaa !77
  store i64 %i.l, ptr %i.f, align 8, !tbaa !149
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !149
  store i8 %i.n, ptr %i.m, align 1, !tbaa !149
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !147
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !150
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SP_.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SP_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !239
  store <2 x ptr> %i.v, ptr %i.f, align 8, !tbaa !239
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SP_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.w

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SP_.exit: ; preds = %bb.g, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1ERKSE_EUlOT_T0_E_RKSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SP_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.263") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !150
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !147  ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64, !noalias !543
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !174, !noalias !543 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !149 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.az, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !149 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.an, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !150
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !147
  %i.ak = icmp eq i64 %i.aj, %i.v
  br i1 %i.ak, label %bb.c, label %.critedge, !prof !450

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.u, i64 %i.v)
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.am = add i16 %.sroa.033.059, -1
  %i.an = and i16 %i.am, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ao = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !151

.thread:                                          ; preds = %.critedge18
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !149
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ay = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !514
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE19transfer_n_slots_fnEPvSN_SN_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator.319", align 1 ; 3 uses
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i64 [ %i.a, %.lr.ph ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.01012 = phi ptr [ %i.b, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_(ptr noundef nonnull %4, ptr noundef %.0913, ptr noundef %.01012)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.a = add i64 %.014, -1                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01012, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 96
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !546

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSS_PFvSS_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !174    ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.064 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.064
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.064 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not62 = icmp eq i16 %i.r, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_.exit, %bb.c
  %i.s = add nuw i64 %.064, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !547

.lr.ph:                                           ; preds = %bb.c, %_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_.exit
  %.sroa.055.063 = phi i16 [ %i.ff, %_ZN4absl12lts_2025051218container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEE8transferISaISt4pairIKS8_SD_EEEEDaPT_PNS1_13map_slot_typeIS8_SD_EESO_.exit ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.055.063, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.064, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %i.w ; 13 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150  ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !147 ; 14 uses
  %i.ab = icmp ult i64 %i.aa, 9
  br i1 %i.ab, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.ac = icmp samesign ugt i64 %i.aa, 3
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i32, ptr %i.y, align 1
  %i.ad = zext i32 %.0.copyload.i.i.i to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.ag, align 1
  %i.ah = zext i32 %.0.copyload.i4.i.i to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i8, ptr %i.y, align 1, !tbaa !149
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !149
  %i.ap = zext i8 %i.ao to i64
  %i.aq = or disjoint i64 %i.al, %i.ap
  %i.ar = lshr i64 %i.aa, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !149
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = or disjoint i64 %i.aq, %i.av
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %i.ai, %bb.e ], [ %i.aw, %bb.g ]
  %i.ax = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ay = mul i64 %i.ax, -2543921745674291987
  %i.az = tail call noundef i64 @llvm.bswap.i64(i64 %i.ay)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ba = icmp ult i64 %i.aa, 17
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i64, ptr %i.y, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.bc, align 1
  %i.bd = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.be = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.bf = zext i64 %i.bd to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.k:                                             ; preds = %bb.i
  %i.bl = icmp ult i64 %i.aa, 33
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.0.copyload.i.i20.i = load i64, ptr %i.y, align 1
  %i.bm = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.bn, align 1
  %i.bo = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bp = zext i64 %i.bm to i128
  %i.bq = zext i64 %i.bo to i128
  %i.br = mul nuw i128 %i.bq, %i.bp               ; 2 uses
  %i.bs = getelementptr i8, ptr %i.y, i64 %i.aa   ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i22.i, 589684135938649225
  %i.bv = getelementptr i8, ptr %i.bs, i64 -8
  %.0.copyload.i.i23.i = load i64, ptr %i.bv, align 1
  %i.bw = xor i64 %.0.copyload.i.i23.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bx = zext i64 %i.bu to i128
  %i.by = zext i64 %i.bw to i128
  %i.bz = mul nuw i128 %i.by, %i.bx               ; 2 uses
  %i.ca = xor i128 %i.bz, %i.br
  %i.cb = lshr i128 %i.ca, 64
  %i.cc = xor i128 %i.br, %i.cb
  %i.cd = xor i128 %i.cc, %i.bz
  %i.ce = trunc i128 %i.cd to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.m:                                             ; preds = %bb.k
  %.not.i54 = icmp ugt i64 %i.aa, 1024
  br i1 %.not.i54, label %bb.o, label %bb.n, !prof !151

bb.n:                                             ; preds = %bb.m
  %i.cf = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %i.y, i64 noundef %i.aa)
  %i.cg = xor i64 %i.cf, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ch = zext i64 %i.cg to i128
  %i.ci = mul nuw i128 %i.ch, 15902822328035259629 ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = xor i128 %i.cj, %i.ci
  %i.cl = trunc i128 %i.ck to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.o:                                             ; preds = %bb.m
  %i.cm = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.y, i64 noundef %i.aa)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cm, %bb.o ], [ %i.bk, %bb.j ], [ %i.ce, %bb.l ], [ %i.cl, %bb.n ], [ %i.az, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.cn = add i64 %i.aa, 87
  %i.co = add i64 %i.cn, %.0.i                    ; 2 uses
  %i.cp = lshr i64 %i.co, 7
  %i.cq = xor i64 %i.cp, %i.j                     ; 5 uses
end_hunk_1
begin_hunk_2_@_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESC_:bb.a
bb.h:                                             ; preds = %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEC2EOS7_.exit.i.i.i.i.i.i.i
  %i.af = load i64, ptr %i.k, align 8, !tbaa !147 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEC2EOS7_.exit.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !150
  %i.ai = load i64, ptr %i.j, align 8, !tbaa !149
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !149
  %.pre = load i64, ptr %i.k, align 8, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aj = phi i64 [ %i.af, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !147
  store ptr %i.j, ptr %i.i, align 8, !tbaa !150
  store i64 0, ptr %i.k, align 8, !tbaa !147
  store i8 0, ptr %i.j, align 8, !tbaa !149
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load i8, ptr %i.l, align 8, !tbaa !434, !range !136, !noundef !73
  store i8 %i.am, ptr %i.al, align 8, !tbaa !434
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.an, align 8, !tbaa !442
  br i1 %i.u, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !185 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %5, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #33
  unreachable

_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !174
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !149 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !147  ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !129
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.h)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149, !nonnull !73, !noundef !73
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !149
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !77 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !129
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, 87
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !64, !noalias !566
  %i.u = and i64 %i.t, 65535
  %i.v = load i64, ptr %0, align 8, !tbaa !174, !noalias !566 ; 4 uses
  %i.w = lshr i64 %i.r, 7
  %i.x = xor i64 %i.u, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.r to i8
  %i.z = and i8 %i.y, 127
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !149 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !149 ; 4 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ae, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.an, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.am, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.v      ; 4 uses
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i.us
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !149 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ad, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.aj, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ak = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not43.i.us = icmp eq i16 %i.al, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit, !prof !151

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.am = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.an = add i64 %i.am, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !569

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.ax, %bb.g ], [ %i.aj, %.split.us ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.us, %i.ap
  %i.ar = and i64 %i.aq, %i.v                     ; 2 uses
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !147
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread32.i, label %bb.g, !prof !450

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aw = add i16 %.sroa.017.046.i.us.us, -1
  %i.ax = and i16 %i.aw, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ax, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bt, %bb.i ], [ %i.x, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.v            ; 4 uses
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !149 ; 2 uses
  %i.bb = icmp eq <16 x i8> %i.ad, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.bc, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bp, %bb.h ], [ %i.bc, %.split ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.6.0.i, %i.be
  %i.bg = and i64 %i.bf, %i.v                     ; 2 uses
  %i.bh = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !147
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !450

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !150
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit, !prof !151

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !569

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_smallISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE10find_largeISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEEvE5applyINS1_12raw_hash_setISG_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSO_ESG_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSX_DpOSY_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(73) ptr @_ZN6google8protobuf2io7Printer9ValueImplILb0EEaSILb1EEERS4_RKNS3_IXT_EEE(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !186
  switch i8 %i.c, label %bb.g [
    i8 0, label %bb.c
    i8 1, label %_ZSt3getISt8functionIFbvEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EERKT_RKSt7variantIJDpT0_EE.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !150    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !432
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %_ZSt3getILm0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit.i, label %bb.d

_ZSt3getILm0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit.i: ; preds = %bb.c
  store i64 %i.f, ptr %0, align 8, !tbaa !77
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !129
  br label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #33
  unreachable

_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.f, ptr %0, align 8, !tbaa !77
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !129
  store i8 0, ptr %i.g, align 8, !tbaa !432
  br label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit

bb.g:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.o, align 8, !tbaa !570
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @.str.190, ptr %i.p, align 8, !tbaa !572
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZSt3getISt8functionIFbvEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit

_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit: ; preds = %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S6_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, %_ZSt3getILm0EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit.i, %_ZSt3getISt8functionIFbvEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EERKT_RKSt7variantIJDpT0_EE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !tbaa !188, !range !136, !noundef !73
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.u, ptr %i.v, align 8, !tbaa !434
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS7_E4typeESC_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt7variantIJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEEaSIRKS6_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S6_EE4typeEE18is_constructible_vISG_SD_E15is_assignable_vIRSG_SD_EERS7_E4typeESE_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.226", align 16 ; 11 uses
  %3 = alloca %"class.std::function.226", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !432   ; 2 uses
  %i.c = icmp eq i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.c, label %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit, label %bb.i

_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !239
  br label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 16, !tbaa !185 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #33
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.ab, %bb.m ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit
  %i.n = phi <2 x ptr> [ splat (ptr null), %_ZSt3getILm1EJSt17basic_string_viewIcSt11char_traitsIcEESt8functionIFbvEEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSB_.exit ], [ %i.h, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !412
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !239
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !239  ; 2 uses
  store <2 x ptr> %i.p, ptr %i.e, align 16, !tbaa !239
  store <2 x ptr> %i.n, ptr %i.o, align 8, !tbaa !239
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbvEEaSERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit.i
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFbvEEaSERKS1_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #33
  unreachable

_ZNSt8functionIFbvEEaSERKS1_.exit:                ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !185  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.k unwind label %bb.l       ; 0 uses

end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E9_M_invokeERKSt9_Any_dataOSA_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !77, !noalias !597
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !129, !noalias !597
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !597
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !601
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !601
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !601 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @_ZN6google8protobuf2io7Printer16AnnotationRecordC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEERZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit: ; preds = %bb.a, %bb.b
  %.sink.i.i.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sink.i.i.i, ptr %i.h, align 8, !tbaa !196, !alias.scope !601
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !597
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSA_E0_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_, ptr %0, align 8, !tbaa !444
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !239
  store ptr %i.a, ptr %0, align 8, !tbaa !239
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !174
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !149 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !147  ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !129
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.h)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149, !nonnull !73, !noundef !73
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !149
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !77 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !129
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, 87
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !64, !noalias !602
  %i.u = and i64 %i.t, 65535
  %i.v = load i64, ptr %0, align 8, !tbaa !174, !noalias !602 ; 4 uses
  %i.w = lshr i64 %i.r, 7
  %i.x = xor i64 %i.u, %i.w                       ; 2 uses
  %i.y = trunc i64 %i.r to i8
  %i.z = and i8 %i.y, 127
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !149 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !149 ; 4 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ae, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.an, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.am, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.v      ; 4 uses
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i.us
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !149 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ad, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.aj, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ak = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not43.i.us = icmp eq i16 %i.al, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit, !prof !151

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.am = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.an = add i64 %i.am, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !605

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.ax, %bb.g ], [ %i.aj, %.split.us ] ; 3 uses
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.6.0.i.us, %i.ap
  %i.ar = and i64 %i.aq, %i.v                     ; 2 uses
  %i.as = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !147
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.thread32.i, label %bb.g, !prof !450

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.aw = add i16 %.sroa.017.046.i.us.us, -1
  %i.ax = and i16 %i.aw, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ax, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bt, %bb.i ], [ %i.x, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.v            ; 4 uses
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.6.0.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !149 ; 2 uses
  %i.bb = icmp eq <16 x i8> %i.ad, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.bc, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bp, %bb.h ], [ %i.bc, %.split ] ; 3 uses
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.6.0.i, %i.be
  %i.bg = and i64 %i.bf, %i.v                     ; 2 uses
  %i.bh = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !147
  %i.bk = icmp eq i64 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, label %bb.h, !prof !450

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !150
  %bcmp.i.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %i.bl, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i11, 0
  br i1 %i.bm, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bo = add i16 %.sroa.017.046.i, -1
  %i.bp = and i16 %i.bo, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bq = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %.not43.i = icmp eq i16 %i.br, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit, !prof !151

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.6.0.i
  br label %.split, !llvm.loop !605

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.336, align 8            ; 4 uses
  %4 = alloca %class.anon.333, align 8            ; 5 uses
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_, ptr %0, align 8, !tbaa !444
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !239
  store ptr %i.a, ptr %0, align 8, !tbaa !239
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !239    ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.c, ptr %4, align 8, !tbaa !606
  invoke void @_ZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEEC1ERKSO_RKSN_EUlPvPKvE_vJST_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.f unwind label %.body.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit

.body.i.i.i.i.i.i:                                ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #30
  resume { ptr, i32 } %i.f

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit: ; preds = %bb.d, %bb.f
  store ptr %i.c, ptr %0, align 8, !tbaa !239
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.g:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !239    ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !174
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.g, ptr %3, align 8, !tbaa !529
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 96, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i.i unwind label %bb.j

.noexc.i.i.i:                                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.k = load i64, ptr %i.g, align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !64
  %i.p = and i64 %i.o, 65536
  %i.q = icmp ne i64 %i.p, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.k, ptr noundef %i.m, i64 noundef 96, i64 noundef 8, i1 noundef zeroext %i.q)
          to label %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i.i.i, %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable

_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i: ; preds = %.noexc.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 32) #30
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS2_3SubEEEbENUlSt17basic_string_viewIcSt11char_traitsIcEEE0_D2Ev.exit.i, %bb.g, %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithDefsEN4absl12lts_202505124SpanIKNS4_3SubEEEbEUlSt17basic_string_viewIcSt11char_traitsIcEEE0_E15_M_init_functorIRKSF_EEvRSt9_Any_dataOT_.exit, %bb.c, %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEEC1ERKSO_RKSN_EUlPvPKvE_vJST_SV_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !145
  %i.c = load ptr, ptr %2, align 8, !tbaa !150    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !147  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.e, ptr %i.a, align 8, !tbaa !77
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !150
  %i.h = load i64, ptr %i.a, align 8, !tbaa !77
  store i64 %i.h, ptr %i.b, align 8, !tbaa !149
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !149
  store i8 %i.j, ptr %i.i, align 1, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !147
  %i.m = load ptr, ptr %1, align 8, !tbaa !150
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN6google8protobuf2io7Printer16AnnotationRecordC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEEC1ERKSN_RKSM_EUlPvPKvE_JSS_SU_EENSt13invoke_resultIT_JDpT0_EE4typeEOSZ_DpOS10_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %1, align 8, !tbaa !150    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !149
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  resume { ptr, i32 } %i.q

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEEC1ERKSN_RKSM_EUlPvPKvE_JSS_SU_EENSt13invoke_resultIT_JDpT0_EE4typeEOSZ_DpOS10_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
end_hunk_3
begin_hunk_4_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_T0_T1_":bb.a
  %i.dn = lshr i64 %i.dl, 1
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !26  ; 3 uses
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !26 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 4
  %.val.i.i.i = load i32, ptr %i.ds, align 4, !tbaa !27 ; 3 uses
  %i.dt = getelementptr i8, ptr %i.dr, i64 4
  %.val1.i.i.i = load i32, ptr %i.dt, align 4, !tbaa !27 ; 3 uses
  %i.du = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !26 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  %.val1.i27.i.i = load i32, ptr %i.dw, align 4, !tbaa !27 ; 4 uses
  br i1 %i.du, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dx = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dy = load ptr, ptr %.fr29, align 8, !tbaa !26
  store ptr %i.dr, ptr %.fr29, align 8, !tbaa !26
  store ptr %i.dy, ptr %i.do, align 8, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dz = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.ea = load ptr, ptr %.fr29, align 8, !tbaa !26 ; 2 uses
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.dv, ptr %.fr29, align 8, !tbaa !26
  store ptr %i.ea, ptr %i.dp, align 8, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !26
  store ptr %i.ea, ptr %i.f, align 8, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph54
  %i.eb = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.eb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ec = load ptr, ptr %.fr29, align 8, !tbaa !26
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !26
  store ptr %i.ec, ptr %i.f, align 8, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ed = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.ee = load ptr, ptr %.fr29, align 8, !tbaa !26 ; 2 uses
  br i1 %i.ed, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.dv, ptr %.fr29, align 8, !tbaa !26
  store ptr %i.ee, ptr %i.dp, align 8, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dr, ptr %.fr29, align 8, !tbaa !26
  store ptr %i.ee, ptr %i.do, align 8, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ek, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %i.ef = load ptr, ptr %.fr29, align 8, !tbaa !26
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  %.val1.i.i13.i = load i32, ptr %i.eg, align 4, !tbaa !27 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.ek, %bb.w ] ; 8 uses
  %i.eh = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !26 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %.val.i.i14.i = load i32, ptr %i.ei, align 4, !tbaa !27
  %i.ej = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ej, label %bb.w, label %.preheader.i.i, !llvm.loop !613

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.el = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !26 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 4
  %.val1.i9.i.i = load i32, ptr %i.em, align 4, !tbaa !27
  %i.en = icmp slt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.en, label %.preheader.i.i, label %bb.x, !llvm.loop !614

bb.x:                                             ; preds = %.preheader.i.i
  %i.eo = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.eo, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEET_SL_SL_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.el, ptr %.sroa.012.1.i.i, align 8, !tbaa !26
  store ptr %i.eh, ptr %.sroa.0.1.i.i, align 8, !tbaa !26
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_SL_T0_.exit.i", !llvm.loop !615

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEET_SL_SL_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.dm)
  %i.ep = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.eq = sub i64 %i.ep, %i.a                     ; 2 uses
  %i.er = ashr exact i64 %i.eq, 3                 ; 2 uses
  %i.es = icmp sgt i64 %i.er, 16
  br i1 %i.es, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !608

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEET_SL_SL_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_SL_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler3cpp16GetOrderedFieldsEPKNS3_10DescriptorEE3$_0EEEvT_SL_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA10_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.338") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(10) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(10) %2) #31 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(10) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64, !noalias !616
  %i.i = and i64 %i.h, 65535
  %i.j = load i64, ptr %1, align 8, !tbaa !174, !noalias !616 ; 3 uses
  %i.k = lshr i64 %i.f, 7
  %i.l = xor i64 %i.i, %i.k
  %i.m = trunc i64 %i.f to i8
  %i.n = and i8 %i.m, 127
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !149 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.l, %bb.a ], [ %i.at, %bb.e ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.e ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.j                 ; 5 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !149 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.r, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.w, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.033.059 = phi i16 [ %i.w, %.lr.ph ], [ %i.ah, %.critedge ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.7.0, %i.aa
  %i.ac = and i64 %i.ab, %i.j                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ac ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !129
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.x
  br i1 %i.ae, label %bb.d, label %.critedge, !prof !450

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %2, i64 %i.x)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ag = add i16 %.sroa.033.059, -1
  %i.ah = and i16 %i.ag, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %.critedge18, label %bb.c

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ai = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.aj, 0
  br i1 %.not51, label %bb.e, label %.thread, !prof !151

.thread:                                          ; preds = %.critedge18
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
  br label %bb.f

bb.e:                                             ; preds = %.critedge18
  %i.as = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.at = add i64 %i.as, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.av, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPS4_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca [1 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 19 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !239   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !619, !range !136, !noundef !73
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPS3_E3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISN_T0_DpT1_EESN_E4typeEOST_DpOSU_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !619
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = load ptr, ptr %.val, align 8, !tbaa !622 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72, !nonnull !73, !align !74
  %i.h = tail call noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp15IsProfileDrivenERKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(217) %i.g)
  br i1 %i.h, label %bb.c, label %"_ZZN6google8protobuf8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPNS0_2io7PrinterEENK3$_0clEv.exit.i.i.i"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 0, ptr %i.j, align 8, !tbaa !147
  store i8 0, ptr %i.i, align 8, !tbaa !149
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !72, !nonnull !73, !align !74
  %i.o = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp27UsingImplicitWeakDescriptorEPKNS0_14FileDescriptorERKNS2_7OptionsE(ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(217) %i.n)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !72, !nonnull !73, !align !74
  %i.r = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp16IsPresentMessageEPKNS0_10DescriptorERKNS2_7OptionsE(ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(217) %i.q)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %.str.193..str.194.i.i.i.i = select i1 %i.r, ptr @.str.193, ptr @.str.194
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.u = load i32, ptr %i.t, align 4, !tbaa !70
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !72, !nonnull !73, !align !74
  invoke void @_ZN6google8protobuf8compiler3cpp25WeakDescriptorDataSectionB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorEiRKNS2_7OptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 3, ptr nonnull %.str.193..str.194.i.i.i.i, ptr noundef %i.s, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(217) %i.v)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %2, align 8, !tbaa !150    ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !150    ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.aa = icmp eq ptr %i.y, %i.z                  ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  br i1 %i.aa, label %bb.h, label %.thread.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.g
  br i1 %i.aa, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !147 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  switch i64 %i.ac, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !149
  store i8 %i.ae, ptr %i.w, align 1, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !147 ; 2 uses
  store i64 %i.af, ptr %i.j, align 8, !tbaa !147
  %i.ag = load ptr, ptr %2, align 8, !tbaa !150
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !149
  %.pre.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr %i.y, ptr %2, align 8, !tbaa !150
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load <2 x i64>, ptr %i.ai, align 8, !tbaa !149
  store <2 x i64> %i.aj, ptr %i.j, align 8, !tbaa !149
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !149
  store ptr %i.y, ptr %2, align 8, !tbaa !150
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !149
  store <2 x i64> %i.am, ptr %i.j, align 8, !tbaa !149
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i
  store ptr %i.w, ptr %3, align 8, !tbaa !150
  store i64 %i.ak, ptr %i.z, align 8, !tbaa !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i, %.thread.i.i.i.i.i
  store ptr %i.z, ptr %3, align 8, !tbaa !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i
  %i.an = phi ptr [ %i.w, %bb.k ], [ %i.z, %bb.l ], [ %.pre.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !147
  store i8 0, ptr %i.an, align 1, !tbaa !149
  %i.ap = load ptr, ptr %3, align 8, !tbaa !150   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !149
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

bb.m:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.v

bb.o:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !72, !nonnull !73, !align !74
  %i.ay = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp16IsPresentMessageEPKNS0_10DescriptorERKNS2_7OptionsE(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(217) %i.ax)
          to label %.invoke.i.i.i.i unwind label %bb.m ; 2 uses

.invoke.i.i.i.i:                                  ; preds = %bb.o
  %i.az = load i64, ptr %i.j, align 8, !tbaa !147
  %.str.195..str.196.i.i.i.i = select i1 %i.ay, ptr @.str.195, ptr @.str.196
  %..i.i.i.i = select i1 %i.ay, i64 21, i64 26
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.az, ptr noundef nonnull %.str.195..str.196.i.i.i.i, i64 noundef %..i.i.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %.invoke.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !623, !nonnull !73, !align !74
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.be, ptr noundef nonnull align 1 dereferenceable(12) @.str.197, i64 12, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.bg, align 4, !tbaa !149
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bh, ptr %4, align 8, !tbaa !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bh, ptr noundef nonnull align 8 dereferenceable(13) %i.be, i64 13, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.bi, align 8, !tbaa !147
  store ptr %i.be, ptr %5, align 8, !tbaa !150
  store i64 0, ptr %i.bf, align 8, !tbaa !147
  store i8 0, ptr %i.be, align 8, !tbaa !149
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.bk, ptr %1, align 8, !tbaa !145
  %i.bl = load ptr, ptr %2, align 8, !tbaa !150   ; 2 uses
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !147 ; 4 uses
end_hunk_4
