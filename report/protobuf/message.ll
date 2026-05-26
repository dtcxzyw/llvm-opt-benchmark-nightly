inline.NumInlined: 3020
inline.NumDeleted: 1291
begin_hunk_0_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = add i16 %.sroa.017.046.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.017.046.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = icmp eq <16 x i8> %i.ad, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not43.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not43.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i, !prof !303

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !304

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread32.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.an, %.thread32.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ak, %.thread32.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 0
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit
  %i.aw = tail call { ptr, i64 } @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1)
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  br label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit
  %i.ay = extractvalue { ptr, ptr } %.pn.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !305
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !307
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.ax, %bb.h ], [ %i.bb, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.131", align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"struct.std::pair.131", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.6", align 8     ; 10 uses
  %5 = alloca %"struct.google::protobuf::compiler::rust::Context::DepsGenerator", align 1 ; 3 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !310 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.d = load i64, ptr %0, align 8, !tbaa !298, !noalias !322 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ult i64 %i.d, 2
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !299, !noalias !326
  %.not.i.i.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.g, align 8, !tbaa !47, !noalias !326
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !227, !noalias !326 ; 2 uses
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, 6679450291180483821
  %i.s = lshr i64 %i.r, 56
  %i.t = trunc nuw i64 %i.s to i8
  %i.u = and i8 %i.t, 127
  %i.v = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.w = xor i64 %i.v, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  %i.z = xor i64 %i.y, %i.v
  %i.aa = mul i64 %i.z, -2543921745674291987
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ab, i8 noundef signext %i.u)
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit42 ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !49, !noalias !326
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !49, !noalias !326
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i: ; preds = %.noexc, %bb.d, %bb.c
  %.sink17.i.i.i.i = phi ptr [ %i.ae, %.noexc ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ]
  %.sink16.i.i.i.i = phi ptr [ %i.ag, %.noexc ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  %.sink.i.i.i.i = phi i8 [ 1, %.noexc ], [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  store ptr %.sink17.i.i.i.i, ptr %3, align 8, !alias.scope !326
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink16.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !326
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sink.i.i.i.i, ptr %i.ah, align 8, !tbaa !327, !alias.scope !326
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE30find_or_prepare_insert_non_sooIS8_EESP_INST_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.131") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc37 unwind label %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit42

.noexc37:                                         ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !327, !range !84, !alias.scope !330
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i: ; preds = %.noexc37, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i
  %i.ai = phi i8 [ %.sink.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i ], [ %.pre.i.i, %.noexc37 ]
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE11try_emplaceIS8_Li0EJSJ_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISK_SN_SO_SS_E14const_iteratorEEE5valueEiE4typeELi0EEESP_INSY_8iteratorEbERKSW_DpOT1_.exit.thread, label %_ZNKSt14default_deleteIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataEEclEPS8_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE11try_emplaceIS8_Li0EJSJ_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISK_SN_SO_SS_E14const_iteratorEEE5valueEiE4typeELi0EEESP_INSY_8iteratorEbERKSW_DpOT1_.exit.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !330 ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !227, !noalias !330
  store ptr %i.ak, ptr %.sroa.2.0.copyload.i.i, align 8, !tbaa !331
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 8
  %i.am = ptrtoint ptr %i.c to i64
  store i64 %i.am, ptr %i.al, align 8, !tbaa !305
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit

_ZNKSt14default_deleteIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataEEclEPS8_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #24
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE11try_emplaceIS8_Li0EJSJ_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISK_SN_SO_SS_E14const_iteratorEEE5valueEiE4typeELi0EEESP_INSY_8iteratorEbERKSW_DpOT1_.exit.thread, %_ZNKSt14default_deleteIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataEEclEPS8_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !305 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !339 ; 3 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !339
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 5 uses
  store i32 %i.as, ptr %i.au, align 4, !tbaa !340
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  store i32 %i.as, ptr %i.av, align 8, !tbaa !341
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !342 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !343
  %.not.i38 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !227 ; 2 uses
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !227
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !342
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !247 ; 4 uses
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 6 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.i, label %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
  unreachable

_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bi = ashr exact i64 %i.bg, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i, %i.bi ; 2 uses
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #25 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.bg ; 2 uses
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !227 ; 2 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !227
  %i.bp = icmp sgt i64 %i.bg, 0
  br i1 %i.bp, label %bb.j, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bg) #24
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !227
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.k ], [ %i.bo, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i ]
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !247
  store ptr %i.bq, ptr %i.ax, align 8, !tbaa !342
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.br, ptr %i.az, align 8, !tbaa !343
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.g, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.bs = phi ptr [ %i.bb, %bb.g ], [ %.pre, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNK6google8protobuf8compiler4rust7Context13DepsGeneratorclEPKNS0_10DescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bt = load ptr, ptr %4, align 8, !tbaa !248   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !248 ; 2 uses
  %.not7379 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not7379, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.bw, 1
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %bb.ad
  %.pre84 = load ptr, ptr %4, align 8, !tbaa !247
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit
  %i.bz = phi ptr [ %.pre84, %._crit_edge.loopexit ], [ %i.bt, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !343
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cf = load i32, ptr %i.av, align 8, !tbaa !341
  %i.cg = load i32, ptr %i.au, align 4, !tbaa !340
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ag, label %bb.az

_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit42: ; preds = %bb.f, %bb.e
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #24
  br label %bb.ba

bb.m:                                             ; preds = %.lr.ph, %bb.ad
  %.sroa.066.080 = phi ptr [ %i.bt, %.lr.ph ], [ %i.eq, %bb.ad ] ; 2 uses
  %i.cj = load ptr, ptr %.sroa.066.080, align 8, !tbaa !227 ; 5 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.n, label %.critedge, !prof !303

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.49, i32 noundef 95, ptr noundef nonnull @.str.50) #27
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.q

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.o
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ae

bb.q:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  unreachable

.critedge:                                        ; preds = %bb.m
  %i.cm = load i64, ptr %0, align 8, !tbaa !298   ; 4 uses
  %i.cn = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp ult i64 %i.cm, 2
  br i1 %i.co, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.critedge
  %i.cp = load i64, ptr %i.bx, align 8, !tbaa !299
  %.not.i.i.i44 = icmp ult i64 %i.cp, 131072
  br i1 %.not.i.i.i44, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = load ptr, ptr %i.bw, align 8, !tbaa !227
  %i.cr = icmp eq ptr %i.cq, %i.cj
  %spec.select.i.i = select i1 %i.cr, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %bb.x

bb.t:                                             ; preds = %.critedge
  %i.cs = load ptr, ptr %i.bw, align 8, !tbaa !49 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.cs, i32 0, i32 1, i32 1)
  %i.ct = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cu = xor i64 %i.ct, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cv = mul i64 %i.cu, -2543921745674291987
  %i.cw = call noundef i64 @llvm.bswap.i64(i64 %i.cv)
  %i.cx = xor i64 %i.cw, %i.ct
  %i.cy = mul i64 %i.cx, -2543921745674291987
  %i.cz = call noundef i64 @llvm.bswap.i64(i64 %i.cy) ; 2 uses
  %i.da = load i64, ptr %i.bx, align 8, !tbaa !299, !noalias !344
  %i.db = and i64 %i.da, 65535
  %i.dc = lshr i64 %i.cz, 7
  %i.dd = xor i64 %i.db, %i.dc
  %i.de = trunc i64 %i.cz to i8
  %i.df = and i8 %i.de, 127
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !49 ; 2 uses
  %i.dg = insertelement <16 x i8> poison, i8 %i.df, i64 0
  %i.dh = shufflevector <16 x i8> %i.dg, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.pn.i6.i = phi i64 [ %i.dd, %bb.t ], [ %i.ea, %bb.w ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.t ], [ %i.dz, %bb.w ]
  %.sroa.6.0.i.i = and i64 %.pn.i6.i, %i.cm       ; 4 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  call void @llvm.prefetch.p0(ptr %i.di, i32 0, i32 3, i32 1)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.6.0.i.i
  %i.dk = load <16 x i8>, ptr %i.dj, align 1, !tbaa !49 ; 2 uses
  %i.dl = icmp eq <16 x i8> %i.dh, %i.dk
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not45.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not45.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.v
  %.sroa.017.046.i.i = phi i16 [ %i.dw, %bb.v ], [ %i.dm, %bb.u ] ; 3 uses
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = add i64 %.sroa.6.0.i.i, %i.do
  %i.dq = and i64 %i.dp, %i.cm                    ; 2 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.dq ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !227
  %i.dt = icmp eq ptr %i.ds, %i.cj
  br i1 %i.dt, label %.thread32.i.i, label %bb.v, !prof !187

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dq ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.du) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dv = add i16 %.sroa.017.046.i.i, -1
  %i.dw = and i16 %i.dv, %.sroa.017.046.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.v, %bb.u
  %i.dx = icmp eq <16 x i8> %i.dk, splat (i8 -128)
  %i.dy = bitcast <16 x i1> %i.dx to i16
  %.not43.i.i = icmp eq i16 %i.dy, 0
  br i1 %.not43.i.i, label %bb.w, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i, !prof !303

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.dz = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ea = add i64 %i.dz, %.sroa.6.0.i.i
  br label %bb.u, !llvm.loop !304

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread32.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.du, %.thread32.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.dr, %.thread32.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %bb.x

bb.x:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i, %bb.s, %bb.r
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.r ], [ %spec.select.i.i, %bb.s ] ; 2 uses
  %i.eb = extractvalue { ptr, ptr } %.pn.i, 0
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ed = invoke { ptr, i64 } @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.cj)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ee = extractvalue { ptr, i64 } %i.ed, 1
  %.sroa.4.sroa.4.0.extract.shift = lshr i64 %i.ee, 32
  %.sroa.4.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.sroa.4.0.extract.shift to i32
  %i.ef = load i32, ptr %i.au, align 4, !tbaa !3
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ef, i32 %.sroa.4.sroa.4.0.extract.trunc)
  br label %.sink.split

bb.aa:                                            ; preds = %bb.y
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.x
  %i.eh = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !305 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !307
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !3
  %i.eo = load i32, ptr %i.au, align 4, !tbaa !3
  %i.ep = call i32 @llvm.smin.i32(i32 %i.en, i32 %i.eo)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.ac
  %.sink = phi i32 [ %i.ep, %bb.ac ], [ %.sroa.speculated, %bb.z ]
  store i32 %.sink, ptr %i.au, align 4, !tbaa !340
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.066.080, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.eq, %i.bv
  br i1 %.not73, label %._crit_edge.loopexit, label %bb.m

bb.ae:                                            ; preds = %bb.aa, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.p ], [ %i.eg, %bb.aa ]
  %i.er = load ptr, ptr %4, align 8, !tbaa !247   ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit47, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !343
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.er to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ew) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit47

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit47: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ba

bb.ag:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit
  %i.ex = call noundef ptr @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE9CreateSCCEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 7 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEEixIS8_SK_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISR_EPT_RSX_EclL_ZSt7declvalIRSR_EDTcl9__declvalISX_ELi0EEEvEEEEERKSX_.exit, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.fd = load ptr, ptr %i.ax, align 8, !tbaa !248
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !227 ; 3 uses
  store ptr %i.ff, ptr %i.b, align 8, !tbaa !227
  %i.fg = load ptr, ptr %i.ey, align 8, !tbaa !342 ; 4 uses
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !343
  %.not.i48 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not.i48, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !227
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fi, ptr %i.ey, align 8, !tbaa !342
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit55

bb.aj:                                            ; preds = %bb.ah
  %i.fj = load ptr, ptr %i.ex, align 8, !tbaa !247 ; 4 uses
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 6 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775800
  br i1 %i.fn, label %bb.ak, label %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i49

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
  unreachable

_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i49: ; preds = %bb.aj
  %i.fo = ashr exact i64 %i.fm, 3                 ; 2 uses
  %.sroa.speculated.i.i.i50 = call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i50, %i.fo ; 2 uses
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fp, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i51 = icmp ne i64 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i.i51)
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #25 ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fm ; 2 uses
  store ptr %i.ff, ptr %i.ft, align 8, !tbaa !227
  %i.fu = icmp sgt i64 %i.fm, 0
  br i1 %i.fu, label %bb.al, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52

bb.al:                                            ; preds = %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i49
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr align 8 %i.fj, i64 %i.fm, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52: ; preds = %bb.al, %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i49
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.not.i17.i.i53 = icmp eq ptr %i.fj, null
  br i1 %.not.i17.i.i53, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i54, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fm) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i54

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i54: ; preds = %bb.am, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i52
  store ptr %i.fs, ptr %i.ex, align 8, !tbaa !247
  store ptr %i.fv, ptr %i.ey, align 8, !tbaa !342
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fw, ptr %i.ez, align 8, !tbaa !343
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit55

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit55: ; preds = %bb.ai, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i54
  %i.fx = load ptr, ptr %i.ax, align 8, !tbaa !342
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  store ptr %i.fy, ptr %i.ax, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.fz = load i64, ptr %0, align 8, !tbaa !298, !noalias !356 ; 2 uses
  %i.ga = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp ult i64 %i.fz, 2
  br i1 %i.gb, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit55
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.gc = load i64, ptr %i.fa, align 8, !tbaa !299, !noalias !360
  %.not.i.i.i.i.i.i = icmp ult i64 %i.gc, 131072
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i64 131072, ptr %i.fa, align 8, !tbaa !47, !noalias !360
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.gd = load ptr, ptr %i.fb, align 8, !tbaa !227, !noalias !360 ; 2 uses
  %i.ge = load ptr, ptr %i.b, align 8, !tbaa !227, !noalias !360 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gg = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gh = xor i64 %i.gg, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.gi = mul i64 %i.gh, -2543921745674291987
  %i.gj = call noundef i64 @llvm.bswap.i64(i64 %i.gi)
  %i.gk = xor i64 %i.gj, %i.gg
  %i.gl = mul i64 %i.gk, 6679450291180483821
  %i.gm = lshr i64 %i.gl, 56
  %i.gn = trunc nuw i64 %i.gm to i8
  %i.go = and i8 %i.gn, 127
  %i.gp = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gq = xor i64 %i.gp, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.gr = mul i64 %i.gq, -2543921745674291987
  %i.gs = call noundef i64 @llvm.bswap.i64(i64 %i.gr)
  %i.gt = xor i64 %i.gs, %i.gp
  %i.gu = mul i64 %i.gt, -2543921745674291987
  %i.gv = call noundef i64 @llvm.bswap.i64(i64 %i.gu)
  %i.gw = call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.gv, i8 noundef signext %i.go), !noalias !360
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fc, align 8, !tbaa !49, !noalias !360
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.gw
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ao
  %.sink16.i.i.i.i.i = phi ptr [ %i.gx, %bb.aq ], [ %i.fb, %bb.ao ], [ %i.fb, %bb.ap ] ; 2 uses
  %.sink.i.i.i.i.i = phi i8 [ 1, %bb.aq ], [ 1, %bb.ao ], [ 0, %bb.ap ]
  store ptr %.sink16.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !360
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i

bb.ar:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backERKS4_.exit55
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE30find_or_prepare_insert_non_sooIS8_EESP_INST_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.131") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !327, !range !84, !alias.scope !361
  %.sroa.2.0.copyload.i.pre85.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.ar, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i.i
  %.sroa.2.0.copyload.i.pre85 = phi ptr [ %.sink16.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i.i ], [ %.sroa.2.0.copyload.i.pre85.pre, %bb.ar ] ; 3 uses
  %i.gy = phi i8 [ %.sink.i.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i.i ], [ %.pre.i.i.i, %bb.ar ]
  %i.gz = trunc nuw i8 %i.gy to i1
  %.pre87 = load ptr, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  br i1 %i.gz, label %bb.as, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEEixIS8_SK_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISR_EPT_RSX_EclL_ZSt7declvalIRSR_EDTcl9__declvalISX_ELi0EEEvEEEEERKSX_.exit

bb.as:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i
  store ptr %.pre87, ptr %.sroa.2.0.copyload.i.pre85, align 8, !tbaa !331
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.pre85, i64 8
  store ptr null, ptr %i.ha, align 8, !tbaa !362
  %.sroa.2.0.copyload.i.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEEixIS8_SK_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISR_EPT_RSX_EclL_ZSt7declvalIRSR_EDTcl9__declvalISX_ELi0EEEvEEEEERKSX_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEEixIS8_SK_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISR_EPT_RSX_EclL_ZSt7declvalIRSR_EDTcl9__declvalISX_ELi0EEEvEEEEERKSX_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i, %bb.as
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i.pre85, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE22find_or_prepare_insertIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i ], [ %.sroa.2.0.copyload.i.pre, %bb.as ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !305
  store ptr %i.ex, ptr %i.hc, align 8, !tbaa !307
  %i.hd = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.he = icmp eq ptr %.pre87, %i.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.he, label %bb.at, label %bb.ah

bb.at:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEEixIS8_SK_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISR_EPT_RSX_EclL_ZSt7declvalIRSR_EDTcl9__declvalISX_ELi0EEEvEEEEERKSX_.exit
  %i.hf = load ptr, ptr %i.ex, align 8, !tbaa !248 ; 6 uses
  %i.hg = load ptr, ptr %i.ey, align 8, !tbaa !248 ; 6 uses
  %.not.i.i56 = icmp eq ptr %i.hf, %i.hg
  br i1 %.not.i.i56, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEEZNS3_8compiler11SCCAnalyzerINSC_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EvT_SJ_T0_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 2 uses
  %i.hk = ashr exact i64 %i.hj, 3
  %i.hl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hk, i1 true)
  %i.hm = shl nuw nsw i64 %i.hl, 1
  %i.hn = xor i64 %i.hm, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8compiler11SCCAnalyzerINSE_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EEEvT_SM_T0_T1_(ptr %i.hf, ptr %i.hg, i64 noundef %i.hn)
  %i.ho = icmp sgt i64 %i.hj, 128
  br i1 %i.ho, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 128 ; 3 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler11SCCAnalyzerINSE_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EEEvT_SM_T0_(ptr %i.hf, ptr nonnull %i.hp)
  %.not6.i.i.i.i = icmp eq ptr %i.hp, %i.hg
  br i1 %.not6.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEEZNS3_8compiler11SCCAnalyzerINSC_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EvT_SJ_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.av, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_8compiler11SCCAnalyzerINSE_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EEEvT_T0_.exit.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ij, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_8compiler11SCCAnalyzerINSE_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EEEvT_T0_.exit.i.i.i.i ], [ %i.hp, %bb.av ] ; 3 uses
  %i.hq = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !227 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !86 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.ax ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.0.i.i.i.i.i, i64 -8 ; 2 uses
  %i.hu = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !227 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ht, align 1
  %i.hv = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i to i64 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !86 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %.0.copyload.i.i.i4.i.i.i.i.i.i.i = load i16, ptr %i.hy, align 1
  %i.hz = zext i16 %.0.copyload.i.i.i4.i.i.i.i.i.i.i to i64 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hz, i64 %i.hv) ; 2 uses
  %i.ia = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ia, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.ib = xor i64 %i.hz, -1
  %i.ic = getelementptr inbounds i8, ptr %i.hx, i64 %i.ib
  %i.id = xor i64 %i.hv, -1
  %i.ie = getelementptr inbounds i8, ptr %i.hs, i64 %i.id
  %i.if = call i32 @memcmp(ptr noundef nonnull %i.ie, ptr noundef nonnull %i.ic, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #23 ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6google8protobuf8compiler11SCCAnalyzerINS4_4rust7Context13DepsGeneratorEE3DFSEPKNS3_10DescriptorEEUlSC_SC_E_EclISC_NS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.aw
  %i.ih = sub nsw i64 %i.hv, %i.hz
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %i.ih to i32
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6google8protobuf8compiler11SCCAnalyzerINS4_4rust7Context13DepsGeneratorEE3DFSEPKNS3_10DescriptorEEUlSC_SC_E_EclISC_NS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6google8protobuf8compiler11SCCAnalyzerINS4_4rust7Context13DepsGeneratorEE3DFSEPKNS3_10DescriptorEEUlSC_SC_E_EclISC_NS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.if, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.ii = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ii, label %bb.ax, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_8compiler11SCCAnalyzerINSE_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EEEvT_T0_.exit.i.i.i.i

bb.ax:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6google8protobuf8compiler11SCCAnalyzerINS4_4rust7Context13DepsGeneratorEE3DFSEPKNS3_10DescriptorEEUlSC_SC_E_EclISC_NS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i.i.i.i.i
  store ptr %i.hu, ptr %.sroa.04.0.i.i.i.i.i, align 8, !tbaa !227
  br label %bb.aw, !llvm.loop !363

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_8compiler11SCCAnalyzerINSE_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EEEvT_T0_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6google8protobuf8compiler11SCCAnalyzerINS4_4rust7Context13DepsGeneratorEE3DFSEPKNS3_10DescriptorEEUlSC_SC_E_EclISC_NS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEEEEbRT_T0_.exit.i.i.i.i.i
  store ptr %i.hq, ptr %.sroa.04.0.i.i.i.i.i, align 8, !tbaa !227
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ij, %i.hg
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEEZNS3_8compiler11SCCAnalyzerINSC_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EvT_SJ_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !364

bb.ay:                                            ; preds = %bb.au
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8compiler11SCCAnalyzerINSE_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EEEvT_SM_T0_(ptr %i.hf, ptr %i.hg)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEEZNS3_8compiler11SCCAnalyzerINSC_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EvT_SJ_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEEZNS3_8compiler11SCCAnalyzerINSC_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EvT_SJ_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS3_8compiler11SCCAnalyzerINSE_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EEEvT_T0_.exit.i.i.i.i, %bb.at, %bb.av, %bb.ay
  call void @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE11AddChildrenEPNS1_3SCCE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.ex)
  br label %bb.az

bb.az:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf10DescriptorESt6vectorIS6_SaIS6_EEEEZNS3_8compiler11SCCAnalyzerINSC_4rust7Context13DepsGeneratorEE3DFSES6_EUlS6_S6_E_EvT_SJ_T0_.exit, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit
  %.sroa.026.0.copyload = load ptr, ptr %i.aq, align 8, !tbaa !365
  %.sroa.2.0.copyload = load i64, ptr %i.av, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.026.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { ptr, i64 } %.fca.1.insert

bb.ba:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit47, %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit42
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit47 ], [ %i.ci, %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf8compiler4rust7Context13DepsGeneratorclEPKNS0_10DescriptorE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !203
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.af, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit ] ; 12 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !205
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %bb.e unwind label %.loopexit  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.h, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !342
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.h, label %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.u = ashr exact i64 %i.s, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #25
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.s ; 2 uses
  store ptr %i.o, ptr %i.z, align 8, !tbaa !227
  %i.aa = icmp sgt i64 %i.s, 0
  br i1 %i.aa, label %bb.i, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.i, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.i, %.noexc12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.s) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !342
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w ; 2 uses
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !343
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit

bb.k:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.l

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.ae = phi ptr [ %i.g, %bb.f ], [ %i.ac, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  %i.af = phi ptr [ %i.p, %bb.f ], [ %i.ab, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.ag = phi ptr [ %i.i, %bb.f ], [ %i.y, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !203
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !366

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = ptrtoint ptr %i.g to i64
  %i.al = ptrtoint ptr %i.i to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.am) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.ag, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE9CreateSCCEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !368
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.d, align 8, !tbaa !365
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.c, align 8, !tbaa !367
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !369  ; 10 uses
  %i.i = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #25 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store ptr %i.b, ptr %i.r, align 8, !tbaa !365
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.s = add i64 %i.i, -8
  %i.t = sub i64 %i.s, %i.j                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.i, -8
  %i.x = sub i64 %i.w, %i.j
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep4 = getelementptr i8, ptr %i.h, i64 %i.z
  %bound0 = icmp ult ptr %i.q, %scevgep4
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.h, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.ae = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !365, !alias.scope !375, !noalias !370
  %wide.load6 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !365, !alias.scope !375, !noalias !370
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !365, !alias.scope !378, !noalias !375
  store <2 x i64> %wide.load6, ptr %i.af, align 8, !tbaa !365, !alias.scope !378, !noalias !375
  %i.ag = getelementptr i8, ptr %next.gep5, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !365, !alias.scope !375, !noalias !370
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !365, !alias.scope !375, !noalias !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !365, !alias.scope !373, !noalias !370
  store i64 %i.ai, ptr %.012.i.i.i.i.i, align 8, !tbaa !365, !alias.scope !370, !noalias !373
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !365, !alias.scope !373, !noalias !370
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !383

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #24
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !369
  store ptr %i.al, ptr %i.c, align 8, !tbaa !367
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  store ptr %i.am, ptr %i.e, align 8, !tbaa !368
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  %i.an = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf8compiler3SCCESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !365
  ret ptr %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE11AddChildrenEPNS1_3SCCE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::flat_hash_set", align 8 ; 14 uses
  %3 = alloca %"class.std::vector.6", align 8     ; 9 uses
  %4 = alloca %"struct.google::protobuf::compiler::rust::Context::DepsGenerator", align 1 ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 1, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.a = load ptr, ptr %1, align 8, !tbaa !248    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !248  ; 2 uses
  %.not7183 = icmp eq ptr %i.a, %i.c
  br i1 %.not7183, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.d

._crit_edge87:                                    ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit
  %.pre96 = load i64, ptr %2, align 8, !tbaa !298 ; 3 uses
  %i.n = icmp ne i64 %.pre96, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i64 %.pre96, 2
  br i1 %i.o, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge87
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.q = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !299
  %i.r = and i64 %i.q, 65536
  %i.s = icmp ne i64 %i.r, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.pre96, ptr noundef %i.p, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.s)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit: ; preds = %bb.a, %._crit_edge87, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.d:                                             ; preds = %.lr.ph86, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit
  %.sroa.049.084 = phi ptr [ %i.a, %.lr.ph86 ], [ %i.ad, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.049.084, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNK6google8protobuf8compiler4rust7Context13DepsGeneratorclEPKNS0_10DescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %i.v)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.w = load ptr, ptr %3, align 8, !tbaa !248    ; 3 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !248  ; 2 uses
  %.not7281 = icmp eq ptr %i.w, %i.x
  br i1 %.not7281, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !247
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.y = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.w, %bb.e ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !343
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.049.084, i64 8 ; 2 uses
  %.not71 = icmp eq ptr %i.ad, %i.c
  br i1 %.not71, label %._crit_edge87, label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.aj

.lr.ph:                                           ; preds = %bb.e, %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit
  %.sroa.045.082 = phi ptr [ %i.fm, %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit ], [ %i.w, %bb.e ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.045.082, align 8, !tbaa !227 ; 5 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.h, label %.critedge, !prof !303

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.49, i32 noundef 138, ptr noundef nonnull @.str.52) #27
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ah

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  unreachable

.critedge:                                        ; preds = %.lr.ph
  %i.ai = load i64, ptr %0, align 8, !tbaa !298   ; 4 uses
  %i.aj = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp ult i64 %i.ai, 2
  br i1 %i.ak, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.critedge
  %i.al = load i64, ptr %i.f, align 8, !tbaa !299
  %.not.i.i.i.i = icmp ult i64 %i.al, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !227
  %i.an = icmp eq ptr %i.am, %i.af
  %spec.select.i.i.i = select i1 %i.an, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i

bb.n:                                             ; preds = %.critedge
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !49  ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.ao, i32 0, i32 1, i32 1)
  %i.ap = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.aq = xor i64 %i.ap, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ar = mul i64 %i.aq, -2543921745674291987
  %i.as = call noundef i64 @llvm.bswap.i64(i64 %i.ar)
  %i.at = xor i64 %i.as, %i.ap
  %i.au = mul i64 %i.at, -2543921745674291987
  %i.av = call noundef i64 @llvm.bswap.i64(i64 %i.au) ; 2 uses
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !299, !noalias !384
  %i.ax = and i64 %i.aw, 65535
  %i.ay = lshr i64 %i.av, 7
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.av to i8
  %i.bb = and i8 %i.ba, 127
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !49 ; 2 uses
  %i.bc = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pn.i6.i.i = phi i64 [ %i.az, %bb.n ], [ %i.bw, %bb.q ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.n ], [ %i.bv, %bb.q ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.ai   ; 4 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  call void @llvm.prefetch.p0(ptr %i.be, i32 0, i32 3, i32 1)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.6.0.i.i.i
  %i.bg = load <16 x i8>, ptr %i.bf, align 1, !tbaa !49 ; 2 uses
  %i.bh = icmp eq <16 x i8> %i.bd, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.p
  %.sroa.017.046.i.i.i = phi i16 [ %i.bs, %bb.p ], [ %i.bi, %bb.o ] ; 3 uses
  %i.bj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = add i64 %.sroa.6.0.i.i.i, %i.bk
  %i.bm = and i64 %i.bl, %i.ai                    ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.bm ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE11AddChildrenEPNS1_3SCCE:bb.a
  %i.bw = add i64 %i.bv, %.sroa.6.0.i.i.i
  br label %bb.o, !llvm.loop !304

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.bq, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.bn, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i.i, %bb.m, %bb.l
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.l ], [ %spec.select.i.i.i, %bb.m ] ; 2 uses
  %i.bx = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i
  %i.bz = invoke { ptr, i64 } @_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.af)
          to label %.noexc unwind label %.loopexit, !inline_history !387

.noexc:                                           ; preds = %bb.r
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  br label %_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit

bb.s:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE4findIS8_EENST_8iteratorERKT_.exit.i
  %i.cb = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !305
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !307
  br label %_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit

_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit: ; preds = %bb.s, %.noexc
  %.0.i = phi ptr [ %i.ca, %.noexc ], [ %i.ce, %bb.s ] ; 8 uses
  %i.cf = icmp eq ptr %.0.i, %1
  br i1 %i.cf, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit, label %bb.t

.loopexit:                                        ; preds = %bb.r, %_ZNKSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.t:                                             ; preds = %_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit
  %i.cg = load i64, ptr %2, align 8, !tbaa !298, !noalias !388 ; 5 uses
  %i.ch = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp ult i64 %i.cg, 2
  br i1 %i.ci, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cj = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !299, !noalias !403
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.cj, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 131072, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !47, !noalias !403
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.w:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !365, !noalias !403 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %.0.i
  br i1 %i.cl, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cn = xor i64 %i.cm, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.co = mul i64 %i.cn, -2543921745674291987
  %i.cp = call noundef i64 @llvm.bswap.i64(i64 %i.co)
  %i.cq = xor i64 %i.cp, %i.cm
  %i.cr = mul i64 %i.cq, 6679450291180483821
  %i.cs = lshr i64 %i.cr, 56
  %i.ct = trunc nuw i64 %i.cs to i8
  %i.cu = and i8 %i.ct, 127
  %i.cv = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cw = xor i64 %i.cv, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cx = mul i64 %i.cw, -2543921745674291987
  %i.cy = call noundef i64 @llvm.bswap.i64(i64 %i.cx)
  %i.cz = xor i64 %i.cy, %i.cv
  %i.da = mul i64 %i.cz, -2543921745674291987
  %i.db = call noundef i64 @llvm.bswap.i64(i64 %i.da)
  %i.dc = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.db, i8 noundef signext %i.cu)
          to label %.noexc29 unwind label %bb.ag

.noexc29:                                         ; preds = %bb.x
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !49, !noalias !403
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.dc
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.y:                                             ; preds = %bb.t
  %i.de = load ptr, ptr %i.h, align 8, !tbaa !49, !noalias !406 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.de, i32 0, i32 1, i32 1), !noalias !406
  %i.df = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.dg = xor i64 %i.df, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dh = mul i64 %i.dg, -2543921745674291987
  %i.di = call noundef i64 @llvm.bswap.i64(i64 %i.dh)
  %i.dj = xor i64 %i.di, %i.df
  %i.dk = mul i64 %i.dj, -2543921745674291987
  %i.dl = call noundef i64 @llvm.bswap.i64(i64 %i.dk) ; 3 uses
  %i.dm = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !299, !noalias !409
  %i.dn = and i64 %i.dm, 65535
  %i.do = lshr i64 %i.dl, 7
  %i.dp = xor i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dl to i8
  %i.dr = and i8 %i.dq, 127
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !49, !noalias !406 ; 2 uses
  %i.ds = insertelement <16 x i8> poison, i8 %i.dr, i64 0
  %i.dt = shufflevector <16 x i8> %i.ds, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  %.pn.i = phi i64 [ %i.dp, %bb.y ], [ %i.et, %bb.aa ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.y ], [ %i.es, %bb.aa ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.cg            ; 5 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 3, i32 1), !noalias !406
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.7.0.i
  %i.dw = load <16 x i8>, ptr %i.dv, align 1, !tbaa !49, !noalias !406 ; 2 uses
  %i.dx = icmp eq <16 x i8> %i.dt, %i.dw
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.dy, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.eh, %.critedge.i ], [ %i.dy, %bb.z ] ; 3 uses
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = add i64 %.sroa.7.0.i, %i.ea
  %i.ec = and i64 %i.eb, %i.cg
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !365, !noalias !406
  %i.ef = icmp eq ptr %i.ee, %.0.i
  br i1 %i.ef, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit, label %.critedge.i, !prof !187

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.eg = add i16 %.sroa.033.060.i, -1
  %i.eh = and i16 %i.eg, %.sroa.033.060.i         ; 2 uses
  %.not.i36 = icmp eq i16 %i.eh, 0
  br i1 %.not.i36, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.z
  %i.ei = icmp eq <16 x i8> %i.dw, splat (i8 -128)
  %i.ej = bitcast <16 x i1> %i.ei to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.ej, 0
  br i1 %.not51.i, label %bb.aa, label %.thread.i, !prof !303

.thread.i:                                        ; preds = %.critedge18.i
  %i.ek = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ej, i1 true)
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = add i64 %.sroa.7.0.i, %i.el
  %i.en = and i64 %i.em, %i.cg
  %i.eo = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.dl, i64 %i.en, i64 %.sroa.15.0.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66 unwind label %bb.ag ; 2 uses

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66: ; preds = %.thread.i
  %i.ep = load ptr, ptr %i.h, align 8, !tbaa !49, !noalias !406
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.i, align 8, !tbaa !49, !noalias !406
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.eo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.aa:                                            ; preds = %.critedge18.i
  %i.es = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.et = add i64 %i.es, %.sroa.7.0.i
  br label %bb.z

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %bb.v, %.noexc29, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66
  %.sroa.5.062 = phi ptr [ %i.er, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66 ], [ %i.h, %bb.v ], [ %i.dd, %.noexc29 ]
  store ptr %.0.i, ptr %.sroa.5.062, align 8, !tbaa !365
  %i.eu = load ptr, ptr %i.k, align 8, !tbaa !412 ; 4 uses
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !415
  %.not.i = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  store ptr %.0.i, ptr %i.eu, align 8, !tbaa !365
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.ew, ptr %i.k, align 8, !tbaa !412
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread
  %i.ex = load ptr, ptr %i.j, align 8, !tbaa !416 ; 4 uses
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 6 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.ad, label %_ZNKSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.fc = ashr exact i64 %i.fa, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i, %i.fc ; 2 uses
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i31 = icmp ne i64 %i.fd, 0
  call void @llvm.assume(i1 %.not.i.i.i31)
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #25
          to label %.noexc33 unwind label %.loopexit ; 4 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.fa ; 2 uses
  store ptr %.0.i, ptr %i.fh, align 8, !tbaa !365
  %i.fi = icmp sgt i64 %i.fa, 0
  br i1 %i.fi, label %bb.ae, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

bb.ae:                                            ; preds = %.noexc33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr align 8 %i.ex, i64 %i.fa, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i: ; preds = %bb.ae, %.noexc33
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #24
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  store ptr %i.fg, ptr %i.j, align 8, !tbaa !416
  store ptr %i.fj, ptr %i.k, align 8, !tbaa !412
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fe
  store ptr %i.fk, ptr %i.l, align 8, !tbaa !415
  br label %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit

bb.ag:                                            ; preds = %.thread.i, %bb.x
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE9push_backERKS5_.exit: ; preds = %.lr.ph.i, %bb.w, %_ZNSt6vectorIPKN6google8protobuf8compiler3SCCESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.ab, %_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.045.082, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.fm, %i.x
  br i1 %.not72, label %._crit_edge.loopexit, label %.lr.ph

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ag, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.fl, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fn = load ptr, ptr %3, align 8, !tbaa !247   ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fo = load ptr, ptr %i.m, align 8, !tbaa !343
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fr) #24
  br label %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35

_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIPKN6google8protobuf10DescriptorESaIS4_EED2Ev.exit35 ], [ %i.ae, %bb.g ]
  %i.fs = load i64, ptr %2, align 8, !tbaa !298   ; 3 uses
  %i.ft = icmp ne i64 %i.fs, 0
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp ult i64 %i.fs, 2
  br i1 %i.fu, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit126, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fv = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.fw = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !299
  %i.fx = and i64 %i.fw, 65536
  %i.fy = icmp ne i64 %i.fx, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.fs, ptr noundef %i.fv, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.fy)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit126 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #26
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EED2Ev.exit126: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE30find_or_prepare_insert_non_sooIS8_EESP_INST_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.131") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !227    ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  %i.h = xor i64 %i.g, %i.d
  %i.i = mul i64 %i.h, -2543921745674291987
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %i.i) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !299, !noalias !417
  %i.m = and i64 %i.l, 65535
  %i.n = load i64, ptr %1, align 8, !tbaa !298, !noalias !417 ; 3 uses
  %i.o = lshr i64 %i.j, 7
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i64 %i.j to i8
  %i.r = and i8 %i.q, 127
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !49 ; 2 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.au, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.n                 ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !49 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.u, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.z, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ai, %.critedge ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.7.0, %i.ab
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !227
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %.critedge20, label %.critedge, !prof !187

.critedge:                                        ; preds = %.lr.ph
  %i.ah = add i16 %.sroa.033.059, -1
  %i.ai = and i16 %i.ah, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aj = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ak, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !303

.thread:                                          ; preds = %.critedge18
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.at = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ] ; 2 uses
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink77) ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !327
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEEvE28hash_slot_fn_non_type_erasedINS1_6HashEqIS8_vE4HashEEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !227
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = xor i64 %i.e, %i.b
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE19transfer_n_slots_fnEPvSU_SU_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ]
  %.0913.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.01012.prol = phi ptr [ %i.f, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = load ptr, ptr %.01012.prol, align 8, !tbaa !331
  store ptr %i.a, ptr %.0913.prol, align 8, !tbaa !331
  %i.b = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !305
  store i64 %i.d, ptr %i.b, align 8, !tbaa !305
  store ptr null, ptr %i.c, align 8, !tbaa !305
  %i.e = add i64 %.014.prol, -1                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01012.prol, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler4rust7Context9PopModuleEv:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !50, !noalias !547 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.ac, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  store ptr %i.y, ptr %i.j, align 8, !tbaa !48, !alias.scope !547
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !49, !noalias !547
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !49, !alias.scope !547
  %.pre.i.i.i = load i64, ptr %i.u, align 8, !tbaa !50, !noalias !547
  br label %bb.e

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.h
  br i1 %i.ag, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !49
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #24
  br label %.body

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.aj = phi i64 [ %i.aa, %bb.c ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !50, !alias.scope !547
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 0, ptr %i.al, align 8, !tbaa !56, !alias.scope !547
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.ao, align 8, !tbaa !50
  store i8 0, ptr %i.an, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 0, ptr %i.ap, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i8 0, ptr %i.aq, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !68
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.as, ptr nonnull %2, i64 1, i64 24, ptr nonnull @.str.77)
          to label %_ZNK6google8protobuf8compiler4rust7Context4EmitEN4absl12lts_202505124SpanIKNS0_2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS8_14SourceLocationE.exit unwind label %.body.loopexit

_ZNK6google8protobuf8compiler4rust7Context4EmitEN4absl12lts_202505124SpanIKNS0_2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS8_14SourceLocationE.exit: ; preds = %bb.e
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #23
  %i.at = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.b
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNK6google8protobuf8compiler4rust7Context4EmitEN4absl12lts_202505124SpanIKNS0_2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS8_14SourceLocationE.exit
  %i.av = load i64, ptr %i.b, align 8, !tbaa !49
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK6google8protobuf8compiler4rust7Context4EmitEN4absl12lts_202505124SpanIKNS0_2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS8_14SourceLocationE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !550 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -32 ; 2 uses
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !550
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !49
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  ret void

.body.loopexit:                                   ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #23
  br label %.body

.body:                                            ; preds = %bb.d, %.body.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn = phi { ptr, i32 } [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.be, %.body.loopexit ], [ %i.ae, %bb.d ]
  %i.bf = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.b
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.body
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !49
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !550  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !551
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !47 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !552 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !46
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.h = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.h, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !47
  %i.i = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !48
  %i.k = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.k, ptr %i.f, align 8, !tbaa !49
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.l = phi ptr [ %i.j, %.noexc.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !49
  store i8 %i.m, ptr %i.l, align 1, !tbaa !49
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !50
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !550
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !550
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !546
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit
  %i.t = phi ptr [ %.pre, %bb.f ], [ %i.s, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  ret ptr %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !550  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !553    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #28
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743) ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !47 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !552 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !46
  %i.s = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.t = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.t, %i.s
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.37) #28
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !47
  %i.u = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.u, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc26 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc26:                                         ; preds = %.noexc.i.i.i
  store ptr %i.v, ptr %i.q, align 8, !tbaa !48
  %i.w = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.w, ptr %i.r, align 8, !tbaa !49
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc26, %bb.e
  %i.x = phi ptr [ %i.v, %.noexc26 ], [ %i.r, %bb.e ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !49
  store i8 %i.y, ptr %i.x, align 1, !tbaa !49
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !50
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.h ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.h ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !554, !noalias !557
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !557, !noalias !554 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50, !alias.scope !557, !noalias !554 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !559
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !48, !alias.scope !554, !noalias !557
  %i.al = load i64, ptr %i.af, align 8, !tbaa !49, !alias.scope !557, !noalias !554
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !49, !alias.scope !554, !noalias !557
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !50, !alias.scope !557, !noalias !554
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.i
  %i.am = phi i64 [ %i.ai, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !50, !alias.scope !554, !noalias !557
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !557, !noalias !554
  store i64 0, ptr %i.an, align 8, !tbaa !50, !alias.scope !557, !noalias !554
  store i8 0, ptr %i.af, align 8, !tbaa !49, !alias.scope !557, !noalias !554
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !560

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.h ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34
  %.012.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i30 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i29, align 8, !tbaa !46, !alias.scope !561, !noalias !564
  %i.at = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !48, !alias.scope !564, !noalias !561 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31

bb.j:                                             ; preds = %.lr.ph.i.i.i28
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !50, !alias.scope !564, !noalias !561 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !566
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.at, ptr %.012.i.i.i29, align 8, !tbaa !48, !alias.scope !561, !noalias !564
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !49, !alias.scope !564, !noalias !561
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !49, !alias.scope !561, !noalias !564
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !tbaa !50, !alias.scope !564, !noalias !561
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31, %bb.j
  %i.bb = phi i64 [ %i.ax, %bb.j ], [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !50, !alias.scope !561, !noalias !564
  store ptr %i.au, ptr %.0911.i.i.i30, align 8, !tbaa !48, !alias.scope !564, !noalias !561
  store i64 0, ptr %i.bc, align 8, !tbaa !50, !alias.scope !564, !noalias !561
  store i8 0, ptr %i.au, align 8, !tbaa !49, !alias.scope !564, !noalias !561
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.be, %i.c
  br i1 %.not.i.i.i35, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37, label %.lr.ph.i.i.i28, !llvm.loop !560

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i34 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.d, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !551
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bj) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit37, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !553
  store ptr %.0.lcssa.i.i.i36, ptr %i.b, align 8, !tbaa !550
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.k
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !551
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %.noexc.i.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #23 ; 0 uses
  %i.bp = shl nuw nsw i64 %i.k, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bp) #24
  invoke void @__cxa_rethrow() #28
          to label %bb.o unwind label %bb.l

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bl

bb.n:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !213   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !567, !range !84, !noundef !85
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4rust10GenerateRsERNS8_7ContextERKNS1_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISV_T0_DpT1_EESV_E4typeEOS11_DpOS12_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !567
  %i.d = load ptr, ptr %.val, align 8, !tbaa !570, !nonnull !85, !align !220 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !208
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i, label %"_ZZZN6google8protobuf8compiler4rust10GenerateRsERNS2_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvENKUlvE_clEv.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.p, %bb.c ]
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !571, !nonnull !85, !align !220
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !211
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %i.m, i64 %indvars.iv.i.i.i.i
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !572, !nonnull !85, !align !220
  tail call void @_ZN6google8protobuf8compiler4rust10GenerateRsERNS2_7ContextERKNS0_10DescriptorERKN3upb7DefPoolE(ptr noundef nonnull align 8 dereferenceable(136) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o), !inline_history !573
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.p = load ptr, ptr %.val, align 8, !tbaa !570, !nonnull !85, !align !220 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.r = load i32, ptr %i.q, align 8, !tbaa !208
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.s
  br i1 %i.t, label %bb.c, label %"_ZZZN6google8protobuf8compiler4rust10GenerateRsERNS2_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvENKUlvE_clEv.exit.i.i.i", !llvm.loop !574

"_ZZZN6google8protobuf8compiler4rust10GenerateRsERNS2_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvENKUlvE_clEv.exit.i.i.i": ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !567
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4rust10GenerateRsERNS8_7ContextERKNS1_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISV_T0_DpT1_EESV_E4typeEOS11_DpOS12_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4rust10GenerateRsERNS8_7ContextERKNS1_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISV_T0_DpT1_EESV_E4typeEOS11_DpOS12_.exit": ; preds = %bb.a, %"_ZZZN6google8protobuf8compiler4rust10GenerateRsERNS2_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvENKUlvE_clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation"(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS0_8compiler4rust10GenerateRsERNS7_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !223
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !213
  store ptr %.val, ptr %0, align 8, !tbaa !213
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !575
  store ptr %i.a, ptr %0, align 8, !tbaa !213
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !213 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #24
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !213   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !576, !range !84, !noundef !85
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4rust10GenerateRsERNS8_7ContextERKNS1_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISV_T0_DpT1_EESV_E4typeEOS11_DpOS12_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !576
  %i.d = load ptr, ptr %.val, align 8, !tbaa !579, !nonnull !85, !align !220 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.f = load i32, ptr %i.e, align 4, !tbaa !525
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i, label %"_ZZZN6google8protobuf8compiler4rust10GenerateRsERNS2_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvENKUlvE0_clEv.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.c ] ; 3 uses
  %i.j = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.s, %bb.c ]
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !580, !nonnull !85, !align !220
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !581
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.m, i64 %indvars.iv.i.i.i.i
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !582, !nonnull !85, !align !220
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.q = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  %i.r = tail call ptr @upb_MessageDef_NestedEnum(ptr noundef %i.p, i32 noundef %i.q)
  tail call void @_ZN6google8protobuf8compiler4rust22GenerateEnumDefinitionERNS2_7ContextERKNS0_14EnumDescriptorEN3upb10EnumDefPtrE(ptr noundef nonnull align 8 dereferenceable(136) %i.k, ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr %i.r)
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.s = load ptr, ptr %.val, align 8, !tbaa !579, !nonnull !85, !align !220 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 140
  %i.u = load i32, ptr %i.t, align 4, !tbaa !525
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.v
  br i1 %i.w, label %bb.c, label %"_ZZZN6google8protobuf8compiler4rust10GenerateRsERNS2_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvENKUlvE0_clEv.exit.i.i.i", !llvm.loop !583

"_ZZZN6google8protobuf8compiler4rust10GenerateRsERNS2_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvENKUlvE0_clEv.exit.i.i.i": ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !576
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4rust10GenerateRsERNS8_7ContextERKNS1_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISV_T0_DpT1_EESV_E4typeEOS11_DpOS12_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS1_8compiler4rust10GenerateRsERNS8_7ContextERKNS1_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISV_T0_DpT1_EESV_E4typeEOS11_DpOS12_.exit": ; preds = %bb.a, %"_ZZZN6google8protobuf8compiler4rust10GenerateRsERNS2_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvENKUlvE0_clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.c, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation"(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS0_8compiler4rust10GenerateRsERNS7_7ContextERKNS0_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !223
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !213
  store ptr %.val, ptr %0, align 8, !tbaa !213
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false), !tbaa.struct !584
  store ptr %i.a, ptr %0, align 8, !tbaa !213
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !213 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #24
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZZNS2_8compiler4rust10GenerateRsERNS9_7ContextERKNS2_10DescriptorERKN3upb7DefPoolEENK3$_7clEvEUlvE0_vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKS11_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN6google8protobuf8compiler4rust22GenerateEnumDefinitionERNS2_7ContextERKNS0_14EnumDescriptorEN3upb10EnumDefPtrE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(88), ptr) local_unnamed_addr #2

declare ptr @upb_MessageDef_NestedEnum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
end_hunk_2
