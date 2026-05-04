inline.NumInlined: 2799
inline.NumDeleted: 1236
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE30find_or_prepare_insert_non_sooIS8_EESE_INSI_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !30, !nonnull !48, !noundef !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE30find_or_prepare_insert_non_sooIS8_EESE_INSI_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !30, !nonnull !48, !noundef !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
end_hunk_4
begin_hunk_5_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_12vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  br i1 %i.lw, label %.thread32.i.i.i.i.i.i, label %bb.i, !prof !223

.thread32.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.lt
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE10find_largeIS8_EENSI_8iteratorERKT_m.exit.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
end_hunk_5
begin_hunk_6_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.at, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, label %4

4:                                                ; preds = %bb.d
  %5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, %i.an
  br i1 %7, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !30 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.av, i32 0, i32 1, i32 1)
  %i.aw = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ax = xor i64 %i.aw, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_6
begin_hunk_7_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !66
  %i.by = icmp eq ptr %i.bx, %i.an
  br i1 %i.by, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, label %bb.g, !prof !223

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bz = add i16 %.sroa.017.046.i.i.i.i.i.i.i.i, -1
end_hunk_7
begin_hunk_8_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.ce = add i64 %i.cd, %.sroa.6.0.i.i.i.i.i.i.i.i
  br label %bb.f, !llvm.loop !524

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cf = icmp eq ptr %i.av, null
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %4, %bb.d
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !598, !nonnull !48, !align !232
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
end_hunk_8
begin_hunk_9_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_13clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %.pre53.i.i.i.i = load i32, ptr %.pre.i.i.i.i, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread31.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %4
  %i.et = phi i32 [ %i.ai, %4 ], [ %i.ai, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %.pre53.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.eu
end_hunk_9
begin_hunk_10_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bs, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, label %7

7:                                                ; preds = %bb.d
  %8 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, %i.bm
  br i1 %10, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !30 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.bu, i32 0, i32 1, i32 1)
  %i.bv = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bw = xor i64 %i.bv, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_10
begin_hunk_11_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66
  %i.cx = icmp eq ptr %i.cw, %i.bm
  br i1 %i.cx, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, label %bb.g, !prof !223

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.cy = add i16 %.sroa.017.046.i.i.i.i.i.i.i.i, -1
end_hunk_11
begin_hunk_12_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.dd = add i64 %i.dc, %.sroa.6.0.i.i.i.i.i.i.i.i
  br label %bb.f, !llvm.loop !524

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.de = icmp eq ptr %i.bu, null
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %7, %bb.d
  %i.df = load ptr, ptr %i.n, align 8, !tbaa !621, !nonnull !48, !align !232
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
end_hunk_12
begin_hunk_13_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_14clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %.pre112.i.i.i.i = load i32, ptr %.pre.i.i.i.i, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread64.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %7
  %i.hr = phi i32 [ %i.bh, %7 ], [ %i.bh, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %.pre112.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.hs
end_hunk_13
begin_hunk_14_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !88
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bz, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i, label %3

3:                                                ; preds = %bb.g
  %4 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp eq ptr %5, %i.bt
  br i1 %6, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.cb, i32 0, i32 1, i32 1)
  %i.cc = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cd = xor i64 %i.cc, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_14
begin_hunk_15_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !66
  %i.de = icmp eq ptr %i.dd, %i.bt
  br i1 %i.de, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, label %bb.j, !prof !223

bb.j:                                             ; preds = %.lr.ph.i.i.i.i13.i.i.i.i
  %i.df = add i16 %.sroa.017.046.i.i.i.i.i.i.i.i, -1
end_hunk_15
begin_hunk_16_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %i.dk = add i64 %i.dj, %.sroa.6.0.i.i.i.i.i.i.i.i
  br label %bb.i, !llvm.loop !524

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i13.i.i.i.i
  %i.dl = icmp eq ptr %i.cb, null
  br i1 %i.dl, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.thread.i.i.i.i: ; preds = %._crit_edge.i.i.i.i15.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %3, %bb.g
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !528 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !104 ; 2 uses
end_hunk_16
begin_hunk_17_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEENK4$_15clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  %.pre70.i.i.i.i = load i32, ptr %.pre.i.i.i.i, align 4, !tbaa !3
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i, %bb.l, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i, %3
  %.pre72.i.i.i.i = phi ptr [ %.pre71.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %.pre71.i.i.i.i, %3 ], [ %.pre.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %.pre71.i.i.i.i, %bb.l ]
  %i.ei = phi i32 [ %i.bo, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %i.bo, %3 ], [ %.pre70.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.bo, %bb.l ] ; 2 uses
  %.sroa.14.1.i.i.i.i = phi ptr [ %.sroa.14.056.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %.sroa.14.056.i.i.i.i, %3 ], [ %i.eh, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.14.056.i.i.i.i, %bb.l ] ; 7 uses
  %.sroa.9.1.i.i.i.i = phi ptr [ %.sroa.9.057.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %.sroa.9.057.i.i.i.i, %3 ], [ %i.eg, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.dr, %bb.l ] ; 6 uses
  %.sroa.032.1.i.i.i.i = phi ptr [ %.sroa.032.058.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf19EnumValueDescriptorES8_EENS1_6HashEqIS8_vE4HashENSB_2EqESaISt4pairIKS8_S8_EEE8containsIS8_EEbRKT_.exit.i.i.i.i ], [ %.sroa.032.058.i.i.i.i, %3 ], [ %i.ec, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i ], [ %.sroa.032.058.i.i.i.i, %bb.l ] ; 15 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.ej
end_hunk_17
