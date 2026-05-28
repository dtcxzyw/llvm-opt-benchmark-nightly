inline.NumInlined: 4308
inline.NumDeleted: 2132
begin_hunk_0_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldINS2_4BoolEEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
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
  br label %bb.aa

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
  %i.db = load i8, ptr %i.da, align 8, !tbaa !278 ; 2 uses
  switch i8 %i.db, label %.thread123 [
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
  %.not.i.i.i.i56 = icmp ne i64 %i.ek, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i56)
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #29 ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 %i.ef ; 2 uses
  %14 = load i8, ptr %3, align 1, !tbaa !214
  store i8 %14, ptr %13, align 1, !tbaa !214
  %15 = icmp sgt i64 %i.ef, 0
  br i1 %15, label %bb.w, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59

bb.w:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i55
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %12, ptr align 1 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59: ; preds = %bb.w, %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i55
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 1
  %.not.i17.i.i.i60 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.i60, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i61, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i61

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i61: ; preds = %bb.x, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i59
  store ptr %12, ptr %i.cz, align 8, !tbaa !331
  store ptr %i.el, ptr %i.dw, align 8, !tbaa !334
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 %i.ek
  store ptr %i.em, ptr %i.dy, align 8, !tbaa !333
  br label %.critedge

.thread123:                                       ; preds = %bb.p, %..thread123_crit_edge
  %i.en = phi i8 [ %.pre, %..thread123_crit_edge ], [ %i.db, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store i64 54, ptr %10, align 8, !tbaa !212, !alias.scope !336
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @_ZTSN6google8protobuf13json_internal14UntypedMessage4BoolE, ptr %i.eo, align 8, !tbaa !213, !alias.scope !336
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 1, ptr %i.ep, align 8, !tbaa !298, !alias.scope !336
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.eq = sext i8 %i.en to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !339
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.d to i64
  %i.er = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.er, ptr %4, align 8, !tbaa !13, !noalias !339
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.es, align 8, !tbaa !207, !noalias !339
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %10, ptr %i.et, align 8, !tbaa !13, !noalias !339
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.eu, align 8, !tbaa !207, !noalias !339
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ew = inttoptr i64 %i.eq to ptr
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !13, !noalias !339
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ex, align 8, !tbaa !207, !noalias !339
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.23, i64 78, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !339
  %i.ey = load ptr, ptr %11, align 8, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fa, ptr %i.ey)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.thread123
  %i.fb = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.y
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !13
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #30
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit62

bb.z:                                             ; preds = %.thread123
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.z
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !13
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EED2Ev.exit50

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit62: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

.critedge:                                        ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i61, %bb.t, %_ZSt3getILm9EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit.i, %bb.q, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm9EJSD_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit.i
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !342
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EE9push_backEOS4_.exit62, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St6vectorIS5_SaIS5_EESC_IiSaIiEESC_IjSaIjEESC_IlSaIlEESC_ImSaImEESC_IfSaIfEESC_IdSaIdEESC_ISB_SaISB_EESC_IS4_SaIS4_EEEESt14default_deleteISV_EED2Ev.exit
  ret void

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS4_EED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn29 = phi { ptr, i32 } [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
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
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.u = load ptr, ptr %.0912.i.i.i, align 8, !tbaa !197, !alias.scope !658, !noalias !655
  store ptr %i.u, ptr %.013.i.i.i, align 8, !tbaa !197, !alias.scope !655, !noalias !658
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8 ; 2 uses
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #25
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.c, !inline_history !203

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #27, !inline_history !203
  unreachable

_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !660

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not11.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i16, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i20
  %.013.i.i.i18 = phi ptr [ %i.ai, %_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %i.ab, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0912.i.i.i19 = phi ptr [ %i.ah, %_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %1, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.ac = load ptr, ptr %.0912.i.i.i19, align 8, !tbaa !197, !alias.scope !664, !noalias !661
  store ptr %i.ac, ptr %.013.i.i.i18, align 8, !tbaa !197, !alias.scope !661, !noalias !664
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 8 ; 2 uses
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEEC2EOS1E_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #25
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i20 unwind label %bb.d, !inline_history !203

bb.d:                                             ; preds = %.lr.ph.i.i.i17
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #27, !inline_history !203
  unreachable

_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i20: ; preds = %.lr.ph.i.i.i17
  %i.ah = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i17, !llvm.loop !660

_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i20, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ab, %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ai, %_ZSt19__relocate_object_aIN6google8protobuf13json_internal14UntypedMessageES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i20 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !290
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #30
  br label %_ZNSt12_Vector_baseIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !291
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !287
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !290
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(41) ptr @_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEEaSISR_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEE18is_constructible_vIS11_SY_E15is_assignable_vIRS11_SY_EERSU_E4typeESZ_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.186, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !278   ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 16, label %_ZSt3getILm16EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit
    i8 -1, label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm16EJSR_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit
  ], !prof !330

_ZSt3getILm16EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !605    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !601  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !604
  %i.h = load <2 x ptr>, ptr %1, align 8, !tbaa !666
  store <2 x ptr> %i.h, ptr %0, align 8, !tbaa !666
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !604
  store ptr %i.j, ptr %i.f, align 8, !tbaa !604
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt3getILm16EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %_ZSt3getILm16EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !13
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !606

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZSt3getILm16EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSY_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = ptrtoint ptr %i.c to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.s) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

bb.c:                                             ; preds = %bb.a
  %i.t = sext i8 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St6vectorIS7_SaIS7_EESE_IiSaIiEESE_IjSaIjEESE_IlSaIlEESE_ImSaImEESE_IfSaIfEESE_IdSaIdEESE_ISD_SaISD_EESE_IS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS7_ijlmfdSD_S6_SG_SI_SK_SM_SO_SQ_SS_SU_SW_EEEE9_S_vtableE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121
  invoke void %i.v(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %.noexc4 unwind label %bb.d, !inline_history !667

.noexc4:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm16EJSR_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit

_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm16EJSR_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit: ; preds = %bb.a, %.noexc4
  %i.w = load <2 x ptr>, ptr %1, align 8, !tbaa !666
  store <2 x ptr> %i.w, ptr %0, align 8, !tbaa !666
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !604
  store ptr %i.z, ptr %i.x, align 8, !tbaa !604
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i8 16, ptr %i.a, align 8, !tbaa !278
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %_ZNSt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEE7emplaceILm16EJSR_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS4_ijlmfdSA_S3_SD_SF_SH_SJ_SL_SN_SP_SR_ST_EE4typeEDpT0_EERSZ_E4typeEDpOS10_.exit
  ret ptr %0

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !601  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !605    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %3 = shl nuw nsw i64 %i.l, 5
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #29 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %6, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %2, align 8, !tbaa !21       ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not.i.a = icmp eq ptr %7, %8
  br i1 %.not.i.a, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %7, ptr %5, align 8, !tbaa !21
  %i.s = load i64, ptr %8, align 8, !tbaa !13
  store i64 %i.s, ptr %6, align 8, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !26
  store ptr %8, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.u, align 8, !tbaa !26
  store i8 0, ptr %8, align 8, !tbaa !13
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !64, !alias.scope !668, !noalias !671
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !671, !noalias !668 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26, !alias.scope !671, !noalias !668 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !673
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !668, !noalias !671
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !13, !alias.scope !671, !noalias !668
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !13, !alias.scope !668, !noalias !671
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !26, !alias.scope !671, !noalias !668
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.af = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !26, !alias.scope !668, !noalias !671
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !671, !noalias !668
  store i64 0, ptr %i.ag, align 8, !tbaa !26, !alias.scope !671, !noalias !668
  store i8 0, ptr %i.y, align 8, !tbaa !13, !alias.scope !671, !noalias !668
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !674

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i18, align 8, !tbaa !64, !alias.scope !675, !noalias !678
  %i.am = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !678, !noalias !675 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26, !alias.scope !678, !noalias !675 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !680
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.am, ptr %.012.i.i.i18, align 8, !tbaa !21, !alias.scope !675, !noalias !678
  %i.at = load i64, ptr %i.an, align 8, !tbaa !13, !alias.scope !678, !noalias !675
  store i64 %i.at, ptr %i.al, align 8, !tbaa !13, !alias.scope !675, !noalias !678
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !26, !alias.scope !678, !noalias !675
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.au = phi i64 [ %i.aq, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !26, !alias.scope !675, !noalias !678
  store ptr %i.an, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !678, !noalias !675
  store i64 0, ptr %i.av, align 8, !tbaa !26, !alias.scope !678, !noalias !675
  store i8 0, ptr %i.an, align 8, !tbaa !13, !alias.scope !678, !noalias !675
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !674

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !604
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %4, ptr %0, align 8, !tbaa !605
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !601
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !604
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !11, i64 8}
!8 = !{!"_ZTSN6google8protobuf13json_internal12ResolverPool5FieldE", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24}
!9 = !{!"p1 _ZTSN6google8protobuf13json_internal12ResolverPoolE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN6google8protobuf5FieldE", !10, i64 0}
!12 = !{!"p1 _ZTSN6google8protobuf13json_internal12ResolverPool7MessageE", !10, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"branch_weights", i32 4001, i32 1}
!15 = !{!16, !16, i64 0}
!16 = !{!"_ZTSN6google8protobuf10Field_KindE", !5, i64 0}
!17 = !{!8, !10, i64 24}
!18 = !{!8, !9, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !10, i64 0}
!21 = !{!22, !24, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !25, i64 8, !5, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!24 = !{!"p1 omnipotent char", !10, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!22, !25, i64 8}
!27 = !{!28, !25, i64 0}
!28 = !{!"_ZTSN4absl12lts_202505126StatusE", !25, i64 0}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!12, !12, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !10, i64 0}
!33 = !{!34, !9, i64 0}
!34 = !{!"_ZTSN6google8protobuf13json_internal12ResolverPool7MessageE", !9, i64 0, !35, i64 8, !39, i64 112, !46, i64 120, !54, i64 152}
!35 = !{!"_ZTSN6google8protobuf4TypeE", !36, i64 0, !5, i64 16}
!36 = !{!"_ZTSN6google8protobuf7MessageE", !37, i64 0}
!37 = !{!"_ZTSN6google8protobuf11MessageLiteE", !38, i64 8}
!38 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !25, i64 0}
!39 = !{!"_ZTSSt10unique_ptrIA_N6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIS5_EE", !40, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_dataIN6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIA_S4_ELb1ELb1EE", !41, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIA_S4_EE", !42, i64 0}
!42 = !{!"_ZTSSt5tupleIJPN6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIA_S4_EEE", !43, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPN6google8protobuf13json_internal12ResolverPool5FieldESt14default_deleteIA_S4_EEE", !44, i64 0}
!44 = !{!"_ZTSSt10_Head_baseILm0EPN6google8protobuf13json_internal12ResolverPool5FieldELb0EE", !45, i64 0}
!45 = !{!"p1 _ZTSN6google8protobuf13json_internal12ResolverPool5FieldE", !10, i64 0}
!46 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldENS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKS5_SC_EEEE", !47, i64 0}
!47 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEEE", !48, i64 0}
!48 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEEE", !49, i64 0}
!49 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEE", !50, i64 0}
!50 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !51, i64 0}
!51 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !52, i64 0}
!52 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !25, i64 0, !53, i64 8, !5, i64 16}
!53 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !25, i64 0}
!54 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapIiPKN6google8protobuf13json_internal12ResolverPool5FieldENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS8_EEEE", !55, i64 0}
!55 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEEE", !56, i64 0}
!56 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEEE", !57, i64 0}
!57 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashIiEESt8equal_toIiESaIcEEEE", !58, i64 0}
!58 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashIiEESt8equal_toIiESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !51, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4absl12lts_2025051210WrapUniqueIN6google8protobuf13json_internal12ResolverPool7MessageEEESt10unique_ptrIT_St14default_deleteIS8_EEPS8_: argument 0"}
!61 = distinct !{!61, !"_ZN4absl12lts_2025051210WrapUniqueIN6google8protobuf13json_internal12ResolverPool7MessageEEESt10unique_ptrIT_St14default_deleteIS8_EEPS8_"}
!62 = !{!25, !25, i64 0}
!63 = !{!24, !24, i64 0}
!64 = !{!23, !24, i64 0}
!65 = !{!66, !73, i64 64}
!66 = !{!"_ZTSN6google8protobuf13json_internal12ResolverPoolE", !67, i64 0, !70, i64 32, !73, i64 64}
!67 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISD_EENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKS7_SG_EEEE", !68, i64 0}
!68 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEEE", !69, i64 0}
!69 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEEE", !49, i64 0}
!70 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISD_EENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKS7_SG_EEEE", !71, i64 0}
!71 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEEE", !72, i64 0}
!72 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEEE", !49, i64 0}
!73 = !{!"p1 _ZTSN6google8protobuf4util12TypeResolverE", !10, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"vtable pointer", !6, i64 0}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE11try_emplaceIS9_Li0EJSI_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISJ_SK_SL_SP_E14const_iteratorEEE5valueEiE4typeELi0EEESM_INSV_8iteratorEbEOST_DpOT1_: argument 0"}
!78 = distinct !{!78, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE11try_emplaceIS9_Li0EJSI_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISJ_SK_SL_SP_E14const_iteratorEEE5valueEiE4typeELi0EEESM_INSV_8iteratorEbEOST_DpOT1_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE16try_emplace_implIS9_JSI_EEESM_INS1_12raw_hash_setISJ_SK_SL_SP_E8iteratorEbEOT_DpOT0_: argument 0"}
!81 = distinct !{!81, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE16try_emplace_implIS9_JSI_EEESM_INS1_12raw_hash_setISJ_SK_SL_SP_E8iteratorEbEOT_DpOT0_"}
!82 = !{!83, !85, i64 16}
!83 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISG_EEEENS2_10StringHashENS2_8StringEqESaIS_IKSA_SJ_EEE8iteratorEbE", !84, i64 0, !85, i64 16}
!84 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8iteratorE", !10, i64 0, !5, i64 8}
!85 = !{!"bool", !5, i64 0}
!86 = !{i8 0, i8 2}
!87 = !{!80, !77}
!88 = !{}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = !{!91, !91, i64 0}
!91 = !{!"p1 _ZTSN6google8protobuf13json_internal12ResolverPool4EnumE", !10, i64 0}
!92 = !{!93, !9, i64 0}
!93 = !{!"_ZTSN6google8protobuf13json_internal12ResolverPool4EnumE", !9, i64 0, !94, i64 8, !95, i64 96}
!94 = !{!"_ZTSN6google8protobuf4EnumE", !36, i64 0, !5, i64 16}
!95 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEEPN6google8protobuf9EnumValueENS0_18container_internal10StringHashENSA_8StringEqESaISt4pairIKS5_S9_EEEE", !96, i64 0}
!96 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPN6google8protobuf9EnumValueEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEE", !97, i64 0}
!97 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPN6google8protobuf9EnumValueEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEEE", !49, i64 0}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4absl12lts_2025051210WrapUniqueIN6google8protobuf13json_internal12ResolverPool4EnumEEESt10unique_ptrIT_St14default_deleteIS8_EEPS8_: argument 0"}
!100 = distinct !{!100, !"_ZN4absl12lts_2025051210WrapUniqueIN6google8protobuf13json_internal12ResolverPool4EnumEEESt10unique_ptrIT_St14default_deleteIS8_EEPS8_"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE11try_emplaceIS9_Li0EJSI_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISJ_SK_SL_SP_E14const_iteratorEEE5valueEiE4typeELi0EEESM_INSV_8iteratorEbEOST_DpOT1_: argument 0"}
!103 = distinct !{!103, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE11try_emplaceIS9_Li0EJSI_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISJ_SK_SL_SP_E14const_iteratorEEE5valueEiE4typeELi0EEESM_INSV_8iteratorEbEOST_DpOT1_"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE16try_emplace_implIS9_JSI_EEESM_INS1_12raw_hash_setISJ_SK_SL_SP_E8iteratorEbEOT_DpOT0_: argument 0"}
!106 = distinct !{!106, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE16try_emplace_implIS9_JSI_EEESM_INS1_12raw_hash_setISJ_SK_SL_SP_E8iteratorEbEOT_DpOT0_"}
!107 = !{!108, !85, i64 16}
!108 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISG_EEEENS2_10StringHashENS2_8StringEqESaIS_IKSA_SJ_EEE8iteratorEbE", !109, i64 0, !85, i64 16}
!109 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE8iteratorE", !10, i64 0, !5, i64 8}
!110 = !{!105, !102}
!111 = !{!52, !25, i64 0}
!112 = !{!53, !25, i64 0}
!113 = !{!114, !4, i64 8}
!114 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !10, i64 0, !4, i64 8, !115, i64 12}
!115 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !4, i64 0}
!116 = !{!45, !45, i64 0}
!117 = !{!114, !10, i64 0}
!118 = !{!8, !12, i64 16}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!10, !10, i64 0}
!122 = distinct !{!122, !123}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = distinct !{!124, !123}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_: argument 0"}
!127 = distinct !{!127, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EJSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSV_8iteratorEbERKST_DpOT1_: argument 0"}
!130 = distinct !{!130, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EJSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSV_8iteratorEbERKST_DpOT1_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE16try_emplace_implIRKNSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_EEESI_INS1_12raw_hash_setISF_SG_SH_SL_E8iteratorEbEOT_DpOT0_: argument 0"}
!133 = distinct !{!133, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE16try_emplace_implIRKNSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_EEESI_INS1_12raw_hash_setISF_SG_SH_SL_E8iteratorEbEOT_DpOT0_"}
!134 = !{!135, !85, i64 16}
!135 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS2_10StringHashENS2_8StringEqESaIS_IKS8_SF_EEE8iteratorEbE", !136, i64 0, !85, i64 16}
!136 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE8iteratorE", !10, i64 0, !5, i64 8}
!137 = !{!132, !129, !126}
!138 = !{!139, !45, i64 16}
!139 = !{!"_ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEE", !140, i64 0, !45, i64 16}
!140 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !25, i64 0, !24, i64 8}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_: argument 0"}
!143 = distinct !{!143, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EJSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSV_8iteratorEbERKST_DpOT1_: argument 0"}
!146 = distinct !{!146, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEELi0EJSE_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSV_8iteratorEbERKST_DpOT1_"}
!147 = !{!148}
end_hunk_1
