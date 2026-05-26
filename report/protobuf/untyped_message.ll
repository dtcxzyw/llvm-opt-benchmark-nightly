inline.NumInlined: 4308
inline.NumDeleted: 2132
begin_hunk_0_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIS2_EEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !259 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !259
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !262
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i52 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !259 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i52, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !259
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !259 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i52, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !259
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread68, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i53 = icmp eq i16 %i.be, 0
  br i1 %.not.i53, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !259
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !259
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71
  %.sroa.555.064 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.555.064, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.555.064, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !275 ; 4 uses
  %i.br = load ptr, ptr %3, align 8, !tbaa !197, !noalias !275
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !197, !noalias !275
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bt) #25, !noalias !275
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 8, ptr %i.bu, align 8, !tbaa !278, !noalias !275
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bx, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.by = sext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !121
  invoke void %i.ca(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.bv)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !284
  br label %bb.z

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread68: ; preds = %.lr.ph.i, %bb.d
  %.sroa.555.065.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %.not = icmp eq i32 %i.ce, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread68
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i64 43, ptr %7, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.21, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ch = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.cg)
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  store i64 %i.ck, ptr %8, align 8, !tbaa !212
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.cg, ptr %i.cl, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
  %i.cm = load ptr, ptr %6, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.co, ptr %i.cm)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !13
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !13
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aa

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread68
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.555.065.ph, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !280 ; 7 uses
  %.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i, label %..thread_crit_edge, label %bb.p

..thread_crit_edge:                               ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread

bb.p:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !278
  %.fr = freeze i8 %i.dd                          ; 2 uses
  switch i8 %.fr, label %.thread [
    i8 8, label %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 17, label %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr null, ptr noundef nonnull align 8 dereferenceable(40) %i.db)
          to label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit unwind label %bb.u

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !287 ; 4 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !290
  %.not.i.i36 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not.i.i36, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit
  %i.di = load ptr, ptr %3, align 8, !tbaa !197
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !197
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %i.dk) #25
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !287
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store ptr %i.dm, ptr %i.de, align 8, !tbaa !287
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38

bb.r:                                             ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit
  invoke void @_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.dg, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38 unwind label %bb.u

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38: ; preds = %bb.q, %bb.r
  %i.dn = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEEaSIST_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEE18is_constructible_vIS11_SY_E15is_assignable_vIRS11_SY_EERSU_E4typeESZ_(ptr noundef nonnull align 8 dereferenceable(41) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %9) #25 ; 0 uses
  %i.do = load ptr, ptr %9, align 8, !tbaa !291   ; 3 uses
  %i.dp = load ptr, ptr %i.de, align 8, !tbaa !287 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.do, %i.dp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38, %_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dt, %_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i ], [ %i.do, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dq)
          to label %_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i unwind label %bb.s, !inline_history !292

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #27, !inline_history !292
  unreachable

_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, %i.dp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !293

_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6google8protobuf13json_internal14UntypedMessageEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !291
  br label %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38
  %i.du = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.do, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit38 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exit.i
  %i.dv = load ptr, ptr %i.df, align 8, !tbaa !290
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dy) #30, !inline_history !294
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf13json_internal14UntypedMessageES3_EvT_S5_RSaIT0_E.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge

bb.u:                                             ; preds = %bb.r, %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aa

_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.ea = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !287 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !290
  %.not.i.i42 = icmp eq ptr %i.eb, %i.ed
  br i1 %.not.i.i42, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ee = load ptr, ptr %3, align 8, !tbaa !197
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !197
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %i.eg) #25
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !287
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store ptr %i.ei, ptr %i.ea, align 8, !tbaa !287
  br label %.critedge

bb.w:                                             ; preds = %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  tail call void @_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr %i.eb, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %.critedge

.thread:                                          ; preds = %bb.p, %..thread_crit_edge
  %i.ej = phi i8 [ %.pre, %..thread_crit_edge ], [ %.fr, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store i64 49, ptr %10, align 8, !tbaa !212, !alias.scope !295
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @_ZTSN6google8protobuf13json_internal14UntypedMessageE, ptr %i.ek, align 8, !tbaa !213, !alias.scope !295
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.el, align 8, !tbaa !298, !alias.scope !295
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.em = sext i8 %i.ej to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !300
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.en = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.en, ptr %4, align 8, !tbaa !13, !noalias !300
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.eo, align 8, !tbaa !207, !noalias !300
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.ep, align 8, !tbaa !13, !noalias !300
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.eq, align 8, !tbaa !207, !noalias !300
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.es = inttoptr i64 %i.em to ptr
  store ptr %i.es, ptr %i.er, align 8, !tbaa !13, !noalias !300
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.et, align 8, !tbaa !207, !noalias !300
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !300
  %i.eu = load ptr, ptr %11, align 8, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.ew, ptr %i.eu)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.thread
  %i.ex = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.x
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !13
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #30
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit43

bb.y:                                             ; preds = %.thread
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.y
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !13
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit43: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.z

.critedge:                                        ; preds = %bb.w, %bb.v, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EED2Ev.exit
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !303
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE9push_backEOS3_.exit43, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.dz, %bb.u ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldINS2_4BoolEEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !306 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !313
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !313
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !313 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread102, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !313
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !313
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !316 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !316
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !319
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i71 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !316 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i71, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !316
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !316 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i71, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !316
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread102, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i72 = icmp eq i16 %i.be, 0
  br i1 %.not.i72, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread105, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread105: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !316
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !316
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread105
  %.sroa.588.098 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread105 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.588.098, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.588.098, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !322 ; 3 uses
  %i.br = load i8, ptr %3, align 1, !tbaa !214, !noalias !322
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !325, !noalias !322
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 0, ptr %i.bs, align 8, !tbaa !278, !noalias !322
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !327
  br label %bb.ab

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread102: ; preds = %.lr.ph.i, %bb.d
  %.sroa.588.099.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread102
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EED2Ev.exit50

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread102
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.588.099.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread123_crit_edge, label %bb.p

..thread123_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread123

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278
  %.fr = freeze i8 %i.db                          ; 2 uses
  switch i8 %.fr, label %.thread123 [
    i8 0, label %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
    i8 9, label %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i8, ptr %i.cz, align 8, !tbaa !214
  %i.dd = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %3, align 1, !tbaa !214
  store i8 %i.df, ptr %i.de, align 1, !tbaa !214
  store i8 %i.dc, ptr %i.dd, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 2 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 9, label %_ZSt3getILm9EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm9EJSD_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm9EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !331 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !333
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !331
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !334
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !333
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm9EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !335

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm9EJSD_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm9EJSD_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !331
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !334
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !333
  store i8 9, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !334 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !333
  %.not.i.i54 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i54, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ea = load i8, ptr %3, align 1, !tbaa !214
  store i8 %i.ea, ptr %i.dx, align 1, !tbaa !214
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !334
  br label %.critedge

bb.u:                                             ; preds = %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !331 ; 4 uses
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 8 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775807
  br i1 %i.eg, label %bb.v, label %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i55

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
  unreachable

_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i55: ; preds = %bb.u
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eh = add i64 %.sroa.speculated.i.i.i.i56, %i.ef ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ef
  %i.ej = tail call i64 @llvm.umin.i64(i64 %i.eh, i64 9223372036854775807)
  %i.ek = select i1 %i.ei, i64 9223372036854775807, i64 %i.ej ; 3 uses
  %.not.i.i.i.i57 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i.i57, label %_ZNSt12_Vector_baseIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_M_allocateEm.exit.i.i.i58, label %bb.w

bb.w:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i55
  %i.el = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #29
  br label %_ZNSt12_Vector_baseIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_M_allocateEm.exit.i.i.i58

_ZNSt12_Vector_baseIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_M_allocateEm.exit.i.i.i58: ; preds = %bb.w, %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i55
  %i.em = phi ptr [ %i.el, %bb.w ], [ null, %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i55 ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ef ; 2 uses
  %i.eo = load i8, ptr %3, align 1, !tbaa !214
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !214
  %i.ep = icmp sgt i64 %i.ef, 0
  br i1 %i.ep, label %bb.x, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_M_allocateEm.exit.i.i.i58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59: ; preds = %bb.x, %_ZNSt12_Vector_baseIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_M_allocateEm.exit.i.i.i58
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %.not.i17.i.i.i60 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.i60, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i61, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i61

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i61: ; preds = %bb.y, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59
  store ptr %i.em, ptr %i.cz, align 8, !tbaa !331
  store ptr %i.eq, ptr %i.dw, align 8, !tbaa !334
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store ptr %i.er, ptr %i.dy, align 8, !tbaa !333
  br label %.critedge

.thread123:                                       ; preds = %bb.p, %..thread123_crit_edge
  %i.es = phi i8 [ %.pre, %..thread123_crit_edge ], [ %.fr, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store i64 54, ptr %10, align 8, !tbaa !212, !alias.scope !336
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @_ZTSN6google8protobuf13json_internal14UntypedMessage4BoolE, ptr %i.et, align 8, !tbaa !213, !alias.scope !336
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.eu, align 8, !tbaa !298, !alias.scope !336
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ev = sext i8 %i.es to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !339
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.ew = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.ew, ptr %4, align 8, !tbaa !13, !noalias !339
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ex, align 8, !tbaa !207, !noalias !339
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.ey, align 8, !tbaa !13, !noalias !339
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ez, align 8, !tbaa !207, !noalias !339
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fb = inttoptr i64 %i.ev to ptr
  store ptr %i.fb, ptr %i.fa, align 8, !tbaa !13, !noalias !339
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fc, align 8, !tbaa !207, !noalias !339
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !339
  %i.fd = load ptr, ptr %11, align 8, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.ff, ptr %i.fd)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.thread123
  %i.fg = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.z
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !13
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #30
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit62

bb.aa:                                            ; preds = %.thread123
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.aa
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EED2Ev.exit50

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit62: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ab

.critedge:                                        ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i61, %bb.t, %_ZSt3getILm9EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm9EJSD_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !342
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit62, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIRjEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !345 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !352
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !352
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !352 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !352
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !352
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !355 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !355
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !358
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i63 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !355 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i63, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !355
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !355 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i63, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !355
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i64 = icmp eq i16 %i.be, 0
  br i1 %.not.i64, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !355
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !355
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97
  %.sroa.580.090 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.580.090, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.580.090, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !361 ; 3 uses
  %i.br = load i32, ptr %3, align 4, !tbaa !3, !noalias !361
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !364, !noalias !361
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 2, ptr %i.bs, align 8, !tbaa !278, !noalias !361
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !366
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94: ; preds = %.lr.ph.i, %bb.d
  %.sroa.580.091.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.580.091.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread115_crit_edge, label %bb.p

..thread115_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread115

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278
  %.fr = freeze i8 %i.db                          ; 2 uses
  switch i8 %.fr, label %.thread115 [
    i8 2, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
    i8 11, label %_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !3
  %i.dd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.df, ptr %i.de, align 4, !tbaa !3
  store i32 %i.dc, ptr %i.dd, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 11, label %_ZSt3getILm11EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm11EJSH_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm11EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !369 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !372
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !369
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !373
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !372
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm11EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !374

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm11EJSH_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm11EJSH_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !369
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !373
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !372
  store i8 11, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !373 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !372
  %.not.i47 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ea = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !373
  br label %.critedge

bb.u:                                             ; preds = %_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !369 ; 4 uses
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %bb.v, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i48

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i48: ; preds = %bb.u
  %i.eh = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.sroa.speculated.i.i.i49 = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i49, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 2305843009213693951)
  %i.el = select i1 %i.ej, i64 2305843009213693951, i64 %i.ek ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.el, 0
  tail call void @llvm.assume(i1 %.not.i.i.i50)
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #29 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !3
  %i.eq = icmp sgt i64 %i.ef, 0
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i51

bb.w:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.en, ptr align 4 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i51

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i51: ; preds = %bb.w, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i48
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %.not.i17.i.i52 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i52, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i53, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i53

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i53: ; preds = %bb.x, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i51
  store ptr %i.en, ptr %i.cz, align 8, !tbaa !369
  store ptr %i.er, ptr %i.dw, align 8, !tbaa !373
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el
  store ptr %i.es, ptr %i.dy, align 8, !tbaa !372
  br label %.critedge

.thread115:                                       ; preds = %bb.p, %..thread115_crit_edge
  %i.et = phi i8 [ %.pre, %..thread115_crit_edge ], [ %.fr, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIj, i64 8), align 8, !tbaa !378, !noalias !375 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !13, !noalias !375
  %i.ew = icmp eq i8 %i.ev, 42
  %.idx.i.i = zext i1 %i.ew to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i ; 2 uses
  %i.ey = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ex) #25, !noalias !375
  store i64 %i.ey, ptr %10, align 8, !tbaa !212, !alias.scope !375
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !213, !alias.scope !375
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.fa, align 8, !tbaa !298, !alias.scope !375
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !380
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !380
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !380
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !380
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !380
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !380
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !380
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !380
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread115
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit54

bb.z:                                             ; preds = %.thread115
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

_ZNSt6vectorIjSaIjEE9push_backERKj.exit54:        ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i53, %bb.t, %_ZSt3getILm11EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm11EJSH_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !383
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit54, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit43:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIiEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !386 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !393
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !393
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !393 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !393
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !393
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !396 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !396
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !399
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !396 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !396
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !396 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !396
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i70 = icmp eq i16 %i.be, 0
  br i1 %.not.i70, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !396
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !396
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !402 ; 3 uses
  %i.br = load i32, ptr %3, align 4, !tbaa !3, !noalias !402
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !405, !noalias !402
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 1, ptr %i.bs, align 8, !tbaa !278, !noalias !402
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !407
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100: ; preds = %.lr.ph.i, %bb.d
  %.sroa.586.097.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.586.097.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread121_crit_edge, label %bb.p

..thread121_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread121

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278
  %.fr = freeze i8 %i.db                          ; 2 uses
  switch i8 %.fr, label %.thread121 [
    i8 1, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
    i8 10, label %_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !3
  %i.dd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.df, ptr %i.de, align 4, !tbaa !3
  store i32 %i.dc, ptr %i.dd, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 10, label %_ZSt3getILm10EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm10EJSF_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm10EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !410 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !412
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !410
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !413
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !412
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm10EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !414

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm10EJSF_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm10EJSF_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !410
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !413
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !412
  store i8 10, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !413 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !412
  %.not.i.i53 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ea = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !413
  br label %.critedge

bb.u:                                             ; preds = %_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !410 ; 4 uses
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %bb.v, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i54

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i54: ; preds = %bb.u
  %i.eh = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i.i55, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 2305843009213693951)
  %i.el = select i1 %i.ej, i64 2305843009213693951, i64 %i.ek ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.el, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #29 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !3
  %i.eq = icmp sgt i64 %i.ef, 0
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i57

bb.w:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.en, ptr align 4 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i57

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i57: ; preds = %bb.w, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i54
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %.not.i17.i.i.i58 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.i58, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i59, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i57
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i59

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i59: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i57
  store ptr %i.en, ptr %i.cz, align 8, !tbaa !410
  store ptr %i.er, ptr %i.dw, align 8, !tbaa !413
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el
  store ptr %i.es, ptr %i.dy, align 8, !tbaa !412
  br label %.critedge

.thread121:                                       ; preds = %bb.p, %..thread121_crit_edge
  %i.et = phi i8 [ %.pre, %..thread121_crit_edge ], [ %.fr, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIi, i64 8), align 8, !tbaa !378, !noalias !415 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !13, !noalias !415
  %i.ew = icmp eq i8 %i.ev, 42
  %.idx.i.i = zext i1 %i.ew to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i ; 2 uses
  %i.ey = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ex) #25, !noalias !415
  store i64 %i.ey, ptr %10, align 8, !tbaa !212, !alias.scope !415
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !213, !alias.scope !415
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.fa, align 8, !tbaa !298, !alias.scope !415
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !418
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !418
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !418
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !418
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !418
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !418
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !418
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !418
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread121
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit60

bb.z:                                             ; preds = %.thread121
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

_ZNSt6vectorIiSaIiEE9push_backEOi.exit60:         ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i59, %bb.t, %_ZSt3getILm10EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm10EJSF_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !421
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit60, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit49:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIRmEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !424 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !431
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !431
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !431 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !431
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !431
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !434 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !434
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !437
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i63 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !434 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i63, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !434
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !434 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i63, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !434
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i64 = icmp eq i16 %i.be, 0
  br i1 %.not.i64, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !434
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !434
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97
  %.sroa.580.090 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.580.090, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.580.090, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !440 ; 3 uses
  %i.br = load i64, ptr %3, align 8, !tbaa !62, !noalias !440
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !443, !noalias !440
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 4, ptr %i.bs, align 8, !tbaa !278, !noalias !440
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !445
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94: ; preds = %.lr.ph.i, %bb.d
  %.sroa.580.091.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit43

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread94
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.580.091.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread115_crit_edge, label %bb.p

..thread115_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread115

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278
  %.fr = freeze i8 %i.db                          ; 2 uses
  switch i8 %.fr, label %.thread115 [
    i8 4, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
    i8 13, label %_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !62
  %i.dd = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %3, align 8, !tbaa !62
  store i64 %i.df, ptr %i.de, align 8, !tbaa !62
  store i64 %i.dc, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 13, label %_ZSt3getILm13EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm13EJSL_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm13EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !448 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !451
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !448
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !452
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !451
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm13EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !453

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm13EJSL_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm13EJSL_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !448
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !452
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !451
  store i8 13, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !452 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !451
  %.not.i47 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ea = load i64, ptr %3, align 8, !tbaa !62
  store i64 %i.ea, ptr %i.dx, align 8, !tbaa !62
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !452
  br label %.critedge

bb.u:                                             ; preds = %_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !448 ; 4 uses
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %bb.v, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48: ; preds = %bb.u
  %i.eh = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i49 = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i49, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.el, 0
  tail call void @llvm.assume(i1 %.not.i.i.i50)
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #29 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = load i64, ptr %3, align 8, !tbaa !62
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !62
  %i.eq = icmp sgt i64 %i.ef, 0
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51

bb.w:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.en, ptr align 8 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51: ; preds = %bb.w, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i48
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.not.i17.i.i52 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i52, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53: ; preds = %bb.x, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i51
  store ptr %i.en, ptr %i.cz, align 8, !tbaa !448
  store ptr %i.er, ptr %i.dw, align 8, !tbaa !452
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  store ptr %i.es, ptr %i.dy, align 8, !tbaa !451
  br label %.critedge

.thread115:                                       ; preds = %bb.p, %..thread115_crit_edge
  %i.et = phi i8 [ %.pre, %..thread115_crit_edge ], [ %.fr, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIm, i64 8), align 8, !tbaa !378, !noalias !454 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !13, !noalias !454
  %i.ew = icmp eq i8 %i.ev, 42
  %.idx.i.i = zext i1 %i.ew to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i ; 2 uses
  %i.ey = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ex) #25, !noalias !454
  store i64 %i.ey, ptr %10, align 8, !tbaa !212, !alias.scope !454
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !213, !alias.scope !454
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.fa, align 8, !tbaa !298, !alias.scope !454
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !457
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !457
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !457
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !457
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !457
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !457
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !457
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !457
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread115
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorImSaImEE9push_backERKm.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit54

bb.z:                                             ; preds = %.thread115
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit43

_ZNSt6vectorImSaImEE9push_backERKm.exit54:        ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i53, %bb.t, %_ZSt3getILm13EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm13EJSL_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !460
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit54, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorImSaImEED2Ev.exit43:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIlEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !463 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !470
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !470
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !470 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !470
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !470
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !473 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !473
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !476
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !473 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !473
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !473 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !473
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i70 = icmp eq i16 %i.be, 0
  br i1 %.not.i70, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !473
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !473
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !479 ; 3 uses
  %i.br = load i64, ptr %3, align 8, !tbaa !62, !noalias !479
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !482, !noalias !479
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 3, ptr %i.bs, align 8, !tbaa !278, !noalias !479
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !484
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100: ; preds = %.lr.ph.i, %bb.d
  %.sroa.586.097.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit49

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.586.097.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread121_crit_edge, label %bb.p

..thread121_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread121

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278
  %.fr = freeze i8 %i.db                          ; 2 uses
  switch i8 %.fr, label %.thread121 [
    i8 3, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
    i8 12, label %_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !62
  %i.dd = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %3, align 8, !tbaa !62
  store i64 %i.df, ptr %i.de, align 8, !tbaa !62
  store i64 %i.dc, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 12, label %_ZSt3getILm12EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm12EJSJ_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm12EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !487 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !489
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !487
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !490
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !489
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm12EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !491

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm12EJSJ_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm12EJSJ_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !487
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !490
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !489
  store i8 12, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !490 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !489
  %.not.i.i53 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ea = load i64, ptr %3, align 8, !tbaa !62
  store i64 %i.ea, ptr %i.dx, align 8, !tbaa !62
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !490
  br label %.critedge

bb.u:                                             ; preds = %_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !487 ; 4 uses
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %bb.v, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i54

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i54: ; preds = %bb.u
  %i.eh = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i.i55, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.el, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #29 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = load i64, ptr %3, align 8, !tbaa !62
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !62
  %i.eq = icmp sgt i64 %i.ef, 0
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i57

bb.w:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.en, ptr align 8 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i57

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i57: ; preds = %bb.w, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i54
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.not.i17.i.i.i58 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.i58, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i59, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i57
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i59

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i59: ; preds = %bb.x, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i57
  store ptr %i.en, ptr %i.cz, align 8, !tbaa !487
  store ptr %i.er, ptr %i.dw, align 8, !tbaa !490
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  store ptr %i.es, ptr %i.dy, align 8, !tbaa !489
  br label %.critedge

.thread121:                                       ; preds = %bb.p, %..thread121_crit_edge
  %i.et = phi i8 [ %.pre, %..thread121_crit_edge ], [ %.fr, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIl, i64 8), align 8, !tbaa !378, !noalias !492 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !13, !noalias !492
  %i.ew = icmp eq i8 %i.ev, 42
  %.idx.i.i = zext i1 %i.ew to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i ; 2 uses
  %i.ey = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ex) #25, !noalias !492
  store i64 %i.ey, ptr %10, align 8, !tbaa !212, !alias.scope !492
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !213, !alias.scope !492
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.fa, align 8, !tbaa !298, !alias.scope !492
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !495
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !495
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !495
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !495
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !495
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !495
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !495
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !495
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread121
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit60

bb.z:                                             ; preds = %.thread121
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit49

_ZNSt6vectorIlSaIlEE9push_backEOl.exit60:         ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i59, %bb.t, %_ZSt3getILm12EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm12EJSJ_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !498
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit60, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIlSaIlEED2Ev.exit49:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIdEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !501 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !508
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !508
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !508 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !508
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !508
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !511 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !511
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !514
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !511 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !511
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !511 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !511
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i70 = icmp eq i16 %i.be, 0
  br i1 %.not.i70, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !511
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !511
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !517 ; 3 uses
  %i.br = load double, ptr %3, align 8, !tbaa !225, !noalias !517
  store double %i.br, ptr %i.bq, align 8, !tbaa !520, !noalias !517
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 6, ptr %i.bs, align 8, !tbaa !278, !noalias !517
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !522
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100: ; preds = %.lr.ph.i, %bb.d
  %.sroa.586.097.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit49

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.586.097.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread121_crit_edge, label %bb.p

..thread121_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread121

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278
  %.fr = freeze i8 %i.db                          ; 2 uses
  switch i8 %.fr, label %.thread121 [
    i8 6, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
    i8 15, label %_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i64, ptr %i.cz, align 8, !tbaa !225
  %i.dd = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load double, ptr %3, align 8, !tbaa !225
  store double %i.df, ptr %i.de, align 8, !tbaa !225
  store i64 %i.dc, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 15, label %_ZSt3getILm15EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm15EJSP_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm15EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !525 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !528
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !525
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !529
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !528
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm15EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !530

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm15EJSP_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm15EJSP_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !525
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !529
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !528
  store i8 15, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !529 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !528
  %.not.i.i53 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ea = load double, ptr %3, align 8, !tbaa !225
  store double %i.ea, ptr %i.dx, align 8, !tbaa !225
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !529
  br label %.critedge

bb.u:                                             ; preds = %_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !525 ; 4 uses
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %bb.v, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i54

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i54: ; preds = %bb.u
  %i.eh = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i.i55, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.el, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #29 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = load double, ptr %3, align 8, !tbaa !225
  store double %i.ep, ptr %i.eo, align 8, !tbaa !225
  %i.eq = icmp sgt i64 %i.ef, 0
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i57

bb.w:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.en, ptr align 8 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i57

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i57: ; preds = %bb.w, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i54
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.not.i17.i.i.i58 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.i58, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i59, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i57
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i59

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i59: ; preds = %bb.x, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i57
  store ptr %i.en, ptr %i.cz, align 8, !tbaa !525
  store ptr %i.er, ptr %i.dw, align 8, !tbaa !529
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  store ptr %i.es, ptr %i.dy, align 8, !tbaa !528
  br label %.critedge

.thread121:                                       ; preds = %bb.p, %..thread121_crit_edge
  %i.et = phi i8 [ %.pre, %..thread121_crit_edge ], [ %.fr, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTId, i64 8), align 8, !tbaa !378, !noalias !531 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !13, !noalias !531
  %i.ew = icmp eq i8 %i.ev, 42
  %.idx.i.i = zext i1 %i.ew to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i ; 2 uses
  %i.ey = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ex) #25, !noalias !531
  store i64 %i.ey, ptr %10, align 8, !tbaa !212, !alias.scope !531
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !213, !alias.scope !531
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.fa, align 8, !tbaa !298, !alias.scope !531
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !534
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !534
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !534
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !534
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !534
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !534
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !534
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !534
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread121
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit60

bb.z:                                             ; preds = %.thread121
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit49

_ZNSt6vectorIdSaIdEE9push_backEOd.exit60:         ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i59, %bb.t, %_ZSt3getILm15EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm15EJSP_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !537
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit60, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit49:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIfEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %class.anon.186, align 1            ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !540 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !547
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !547
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !547 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !547
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !547
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !550 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !550
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !553
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i69 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !550 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !550
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !550 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i69, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !550
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i70 = icmp eq i16 %i.be, 0
  br i1 %.not.i70, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !550
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !550
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !556 ; 3 uses
  %i.br = load float, ptr %3, align 4, !tbaa !233, !noalias !556
  store float %i.br, ptr %i.bq, align 4, !tbaa !559, !noalias !556
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 5, ptr %i.bs, align 8, !tbaa !278, !noalias !556
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bw = sext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !121
  invoke void %i.by(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(41) %i.bt)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !561
  br label %bb.aa

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100: ; preds = %.lr.ph.i, %bb.d
  %.sroa.586.097.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cc, 3
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 43, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.21, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cf = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.ce)
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %9, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ce, ptr %i.cj, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cm, ptr %i.ck)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49

bb.o:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread100
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.586.097.ph, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !280 ; 15 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %..thread121_crit_edge, label %bb.p

..thread121_crit_edge:                            ; preds = %bb.o
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread121

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278
  %.fr = freeze i8 %i.db                          ; 2 uses
  switch i8 %.fr, label %.thread121 [
    i8 5, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
    i8 14, label %_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !233
  %i.dd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load float, ptr %3, align 4, !tbaa !233
  store float %i.df, ptr %i.de, align 4, !tbaa !233
  store i32 %i.dc, ptr %i.dd, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.dh = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.dh, label %bb.r [
    i8 14, label %_ZSt3getILm14EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm14EJSN_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  ], !prof !330

_ZSt3getILm14EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !564 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !567
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !564
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !568
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !567
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZSt3getILm14EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.do) #30
  br label %.critedge

bb.r:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = sext i8 %i.dh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !121
  invoke void %i.dr(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.cz)
          to label %.noexc4.i unwind label %bb.s, !inline_history !569

.noexc4.i:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm14EJSN_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm14EJSN_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i: ; preds = %.noexc4.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !564
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %i.ds, align 8, !tbaa !568
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.dg, ptr %i.dt, align 8, !tbaa !567
  store i8 14, ptr %i.da, align 8, !tbaa !278
  br label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #27
  unreachable

_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !568 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !567
  %.not.i.i53 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ea = load float, ptr %3, align 4, !tbaa !233
  store float %i.ea, ptr %i.dx, align 4, !tbaa !233
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !568
  br label %.critedge

bb.u:                                             ; preds = %_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ec = load ptr, ptr %i.cz, align 8, !tbaa !564 ; 4 uses
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775804
  br i1 %i.eg, label %bb.v, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i54

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i54: ; preds = %bb.u
  %i.eh = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i.i55, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 2305843009213693951)
  %i.el = select i1 %i.ej, i64 2305843009213693951, i64 %i.ek ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.el, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #29 ; 4 uses
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = load float, ptr %3, align 4, !tbaa !233
  store float %i.ep, ptr %i.eo, align 4, !tbaa !233
  %i.eq = icmp sgt i64 %i.ef, 0
  br i1 %i.eq, label %bb.w, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i57

bb.w:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.en, ptr align 4 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i57

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i57: ; preds = %bb.w, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i54
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %.not.i17.i.i.i58 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.i58, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i59, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i57
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i59

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i59: ; preds = %bb.x, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i57
  store ptr %i.en, ptr %i.cz, align 8, !tbaa !564
  store ptr %i.er, ptr %i.dw, align 8, !tbaa !568
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el
  store ptr %i.es, ptr %i.dy, align 8, !tbaa !567
  br label %.critedge

.thread121:                                       ; preds = %bb.p, %..thread121_crit_edge
  %i.et = phi i8 [ %.pre, %..thread121_crit_edge ], [ %.fr, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIf, i64 8), align 8, !tbaa !378, !noalias !570 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !13, !noalias !570
  %i.ew = icmp eq i8 %i.ev, 42
  %.idx.i.i = zext i1 %i.ew to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i ; 2 uses
  %i.ey = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ex) #25, !noalias !570
  store i64 %i.ey, ptr %10, align 8, !tbaa !212, !alias.scope !570
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !213, !alias.scope !570
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.fa, align 8, !tbaa !298, !alias.scope !570
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.fb = sext i8 %i.et to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !573
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fc = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fc, ptr %4, align 8, !tbaa !13, !noalias !573
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fd, align 8, !tbaa !207, !noalias !573
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fe, align 8, !tbaa !13, !noalias !573
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ff, align 8, !tbaa !207, !noalias !573
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fh = inttoptr i64 %i.fb to ptr
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !13, !noalias !573
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fi, align 8, !tbaa !207, !noalias !573
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !573
  %i.fj = load ptr, ptr %11, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fl, ptr %i.fj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread121
  %i.fm = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.y
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #30
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit60

bb.z:                                             ; preds = %.thread121
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !13
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit49

_ZNSt6vectorIfSaIfEE9push_backEOf.exit60:         ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i59, %bb.t, %_ZSt3getILm14EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm14EJSN_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !576
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit60, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit49:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN6google8protobuf13json_internalL16MakeTooDeepErrorEv(ptr dead_on_unwind noalias writable align 8 %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 22, ptr nonnull @.str.14)
  ret void
}

declare noundef i32 @_ZN6google8protobuf2io16CodedInputStream22ReadLengthAndPushLimitEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream10ReadStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef) local_unnamed_addr #10

declare noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #10

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN6google8protobuf13json_internalL19MakeProto3Utf8ErrorEv(ptr dead_on_unwind noalias writable align 8 %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 28, ptr nonnull @.str.15)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %5 = alloca %class.anon.186, align 1            ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %9 = alloca %"class.std::vector.218", align 8   ; 12 uses
  %10 = alloca %"class.std::optional.337", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !579 ; 5 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !112, !noalias !586
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 131072
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.i, align 8, !tbaa !62, !noalias !586
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3, !noalias !586 ; 2 uses
  %i.n = icmp eq i32 %i.m, %i.d
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.m to i64
  %i.p = xor i64 %i.o, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.q = mul i64 %i.p, 6679450291180483821
  %i.r = lshr i64 %i.q, 56
  %i.s = trunc nuw i64 %i.r to i8
  %i.t = and i8 %i.s, 127
  %i.u = zext i32 %i.d to i64
  %i.v = xor i64 %i.u, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.w = mul i64 %i.v, -2543921745674291987
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.w)
  %i.y = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i8 noundef signext %i.t), !noalias !586
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !13, !noalias !586
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.y
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13, !noalias !589 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 1, i32 1), !noalias !589
  %i.ad = zext i32 %i.d to i64
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112, !noalias !592
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.ag, 7
  %i.al = xor i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 127
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i56 = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !589 ; 2 uses
  %i.ap = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.al, %bb.f ], [ %i.bo, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bn, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.f             ; 5 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i56, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1), !noalias !589
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.7.0.i
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !13, !noalias !589 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.aq, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.av, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.be, %.critedge.i ], [ %i.av, %bb.g ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.7.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.f
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i56, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !589
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = add i16 %.sroa.033.059.i, -1
  %i.be = and i16 %i.bd, %.sroa.033.059.i         ; 2 uses
  %.not.i57 = icmp eq i16 %i.be, 0
  br i1 %.not.i57, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.bf = icmp eq <16 x i8> %i.at, splat (i8 -128)
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bg, 0
  br i1 %.not51.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75, !prof !89

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75: ; preds = %.critedge18.i
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = add i64 %.sroa.7.0.i, %i.bi
  %i.bk = and i64 %i.bj, %i.f
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ag, i64 %i.bk, i64 %.sroa.15.0.i), !noalias !589
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.ao, align 8, !tbaa !13, !noalias !589
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bl
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread

bb.h:                                             ; preds = %.critedge18.i
  %i.bn = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.c, %bb.e, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75
  %.sroa.559.068 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.559.068, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.559.068, i64 8 ; 3 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !274
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !595 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !64, !noalias !595
  %i.bs = load ptr, ptr %3, align 8, !tbaa !21, !noalias !595 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !26, !noalias !595 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false), !noalias !595
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !21, !noalias !595
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !13, !noalias !595
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !13, !noalias !595
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26, !noalias !595
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.ca = phi i64 [ %i.bw, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !26, !noalias !595
  store ptr %i.bt, ptr %3, align 8, !tbaa !21, !noalias !595
  store i64 0, ptr %i.cb, align 8, !tbaa !26, !noalias !595
  store i8 0, ptr %i.bt, align 8, !tbaa !13, !noalias !595
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 7, ptr %i.cd, align 8, !tbaa !278, !noalias !595
  %i.ce = load ptr, ptr %i.bp, align 8, !tbaa !280 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !278 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cg, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, label %bb.l, !prof !89

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ch = sext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !121
  invoke void %i.cj(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(41) %i.ce)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.m, !inline_history !281

.noexc.i.i.i.i.i.i:                               ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit

bb.m:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #27, !inline_history !282
  unreachable

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit: ; preds = %bb.k, %.noexc.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 48) #30, !inline_history !283
  br label %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit

_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EEaSEOSY_.exit, %bb.j
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !598
  br label %bb.ac

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72: ; preds = %.lr.ph.i, %bb.d
  %.sroa.559.069.ph = phi ptr [ %i.l, %bb.d ], [ %i.ba, %.lr.ph.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !13
  %.not = icmp eq i32 %i.cn, 3
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i64 43, ptr %7, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.21, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.cq = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.d, ptr noundef nonnull %i.cp)
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  store i64 %i.ct, ptr %8, align 8, !tbaa !212
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.cp, ptr %i.cu, align 8, !tbaa !213
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
  %i.cv = load ptr, ptr %6, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.cx, ptr %i.cv)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cy = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !13
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.p
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !13
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ad

bb.q:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread72
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.559.069.ph, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !280 ; 7 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %..thread_crit_edge, label %bb.r

..thread_crit_edge:                               ; preds = %bb.q
  %.pre = load i8, ptr inttoptr (i64 40 to ptr), align 8, !tbaa !278
  br label %.thread

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !278
  %.fr = freeze i8 %i.dm                          ; 2 uses
  switch i8 %.fr, label %.thread [
    i8 7, label %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 16, label %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.w

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !601 ; 7 uses
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !604
  %.not.i.i36 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i.i36, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 3 uses
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !64
  %i.ds = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !26 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, 16
  call void @llvm.assume(i1 %i.dx)
  %i.dy = add nuw nsw i64 %i.dw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dr, ptr noundef nonnull align 8 dereferenceable(1) %i.dt, i64 %i.dy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37: ; preds = %bb.s
  store ptr %i.ds, ptr %i.dp, align 8, !tbaa !21
  %i.dz = load i64, ptr %i.dt, align 8, !tbaa !13
  store i64 %i.dz, ptr %i.dr, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37, %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !26
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !26
  store ptr %i.dt, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %i.ea, align 8, !tbaa !26
  store i8 0, ptr %i.dt, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !601
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit40

bb.u:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit40 unwind label %bb.w

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i38, %bb.u
  %i.ee = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEEaSISR_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEE18is_constructible_vIS11_SY_E15is_assignable_vIRS11_SY_EERSU_E4typeESZ_(ptr noundef nonnull align 8 dereferenceable(41) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %9) #25 ; 0 uses
  %i.ef = load ptr, ptr %9, align 8, !tbaa !605   ; 3 uses
  %i.eg = load ptr, ptr %i.dn, align 8, !tbaa !601 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ef, %i.eg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit40, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.em, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ef, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit40 ] ; 3 uses
  %i.eh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !13
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.em, %i.eg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !606

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !605
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit40
  %i.en = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ef, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit40 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.eo = load ptr, ptr %i.do, align 8, !tbaa !604
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.er) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.critedge

bb.w:                                             ; preds = %bb.u, %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ad

_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !601 ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !604
  %.not.i.i44 = icmp eq ptr %i.eu, %i.ew
  br i1 %.not.i.i44, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 3 uses
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !64
  %i.ey = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

bb.y:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !26 ; 2 uses
  %i.fd = icmp ult i64 %i.fc, 16
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = add nuw nsw i64 %i.fc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ex, ptr noundef nonnull align 8 dereferenceable(1) %i.ez, i64 %i.fe, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %bb.x
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !21
  %i.ff = load i64, ptr %i.ez, align 8, !tbaa !13
  store i64 %i.ff, ptr %i.ex, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45, %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !26
  store ptr %i.ez, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %i.fg, align 8, !tbaa !26
  store i8 0, ptr %i.ez, align 8, !tbaa !13
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !601
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store ptr %i.fk, ptr %i.et, align 8, !tbaa !601
  br label %.critedge

bb.z:                                             ; preds = %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %.critedge

.thread:                                          ; preds = %bb.r, %..thread_crit_edge
  %i.fl = phi i8 [ %.pre, %..thread_crit_edge ], [ %.fr, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store i64 52, ptr %10, align 8, !tbaa !212, !alias.scope !607
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.fm, align 8, !tbaa !213, !alias.scope !607
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.fn, align 8, !tbaa !298, !alias.scope !607
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.fo = sext i8 %i.fl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !610
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.fp = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.fp, ptr %4, align 8, !tbaa !13, !noalias !610
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fq, align 8, !tbaa !207, !noalias !610
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.fr, align 8, !tbaa !13, !noalias !610
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fs, align 8, !tbaa !207, !noalias !610
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fu = inttoptr i64 %i.fo to ptr
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !13, !noalias !610
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.fv, align 8, !tbaa !207, !noalias !610
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !610
  %i.fw = load ptr, ptr %11, align 8, !tbaa !21
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fy, ptr %i.fw)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.thread
  %i.fz = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.aa
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !13
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit47

bb.ab:                                            ; preds = %.thread
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.ab
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !13
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ad

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit47: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ac

.critedge:                                        ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i46, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !613
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit47, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

bb.ad:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.es, %bb.w ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14UntypedMessage15ParseFromStreamEPKNS1_12ResolverPool7MessageERNS0_2io16CodedInputStreamE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr.90") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::json_internal::UntypedMessage", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %1, ptr %3, align 8, !tbaa !197
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6google8protobuf13json_internal14UntypedMessage6DecodeERNS0_2io16CodedInputStreamESt8optionalIiE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %4, align 8, !tbaa !27
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.g, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14UntypedMessageEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %3, align 8, !tbaa !197
  store ptr %i.g, ptr %i.f, align 8, !tbaa !197
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #25
  store i64 1, ptr %0, align 8, !tbaa !27
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN6google8protobuf13json_internal14UntypedMessageD2Ev.exit10 unwind label %bb.k, !inline_history !203

bb.i:                                             ; preds = %bb.f, %bb.g
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN6google8protobuf13json_internal14UntypedMessageD2Ev.exit unwind label %bb.j, !inline_history !203

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27, !inline_history !203
  unreachable

_ZN6google8protobuf13json_internal14UntypedMessageD2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.k:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27, !inline_history !203
  unreachable

_ZN6google8protobuf13json_internal14UntypedMessageD2Ev.exit10: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf13json_internal14UntypedMessageEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.c

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_ZN6google8protobuf13json_internal14UntypedMessageD2Ev.exit unwind label %bb.b, !inline_history !203

bb.b:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27, !inline_history !203
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.a to i1
  br i1 %i.f, label %_ZN6google8protobuf13json_internal14UntypedMessageD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_ZN6google8protobuf13json_internal14UntypedMessageD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #27
  unreachable

_ZN6google8protobuf13json_internal14UntypedMessageD2Ev.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}
end_hunk_0
