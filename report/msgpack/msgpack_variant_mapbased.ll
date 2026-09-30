Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/msgpack_variant_mapbased?download=true
inline.NumInlined: 4597
inline.NumDeleted: 2574
begin_hunk_0_@_ZNK7msgpack2v17adaptor2asINS0_4type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS3_7raw_refENS3_7ext_refEEEvEclERKNS_2v26objectE:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i, !llvm.loop !7

_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %i.af, align 8, !tbaa !204
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i ], [ %i.ao, %bb.j ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !190 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j, !llvm.loop !8

bb.k:                                             ; preds = %bb.j
  store ptr %.0.i.i7.i.i.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !204
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !201
  store i64 %i.aq, ptr %i.ah, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !204
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !186
  br label %bb.l

.body.i.i44:                                      ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 48) #28
  br label %.body46

bb.l:                                             ; preds = %bb.k, %.noexc45
  %i.as = phi ptr [ %.pre, %bb.k ], [ null, %.noexc45 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.at, align 8, !tbaa !189
  store i32 13, ptr %0, align 8, !tbaa !167
  invoke void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.as)
          to label %_ZNSt8multimapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEED2Ev.exit unwind label %bb.m, !inline_history !339

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #31, !inline_history !339
  unreachable

_ZNSt8multimapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEC2El.exit

bb.n:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.body46:                                          ; preds = %.body.i.i44, %bb.n
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.aw, %bb.n ], [ %i.ar, %.body.i.i44 ]
  call void @_ZNSt8multimapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %common.resume

bb.o:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !167
  br label %_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEC2El.exit

_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEC2El.exit: ; preds = %_ZNK7msgpack2v16object2asIdEENSt9enable_ifIXntsr7msgpack6has_asIT_EE5valueES4_E4typeEv.exit, %_ZNK7msgpack2v16object2asIlEENSt9enable_ifIXntsr7msgpack6has_asIT_EE5valueES4_E4typeEv.exit, %bb.o, %_ZNSt8multimapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEED2Ev.exit, %_ZNSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EED2Ev.exit, %_ZNK7msgpack2v16object2asINS0_4type7ext_refEEENSt9enable_ifIXntsr7msgpack6has_asIT_EE5valueES6_E4typeEv.exit, %_ZNK7msgpack2v16object2asINS0_4type7raw_refEEENSt9enable_ifIXntsr7msgpack6has_asIT_EE5valueES6_E4typeEv.exit, %_ZNK7msgpack2v16object2asIN5boost16basic_string_refIcSt11char_traitsIcEEEEENSt9enable_ifIXntsr7msgpack6has_asIT_EE5valueES9_E4typeEv.exit, %_ZNK7msgpack2v16object2asImEENSt9enable_ifIXntsr7msgpack6has_asIT_EE5valueES4_E4typeEv.exit, %_ZNK7msgpack2v16object2asIbEENSt9enable_ifIXntsr7msgpack6has_asIT_EE5valueES4_E4typeEv.exit, %_ZNK7msgpack2v16object2asINS0_4type5nil_tEEENSt9enable_ifIXntsr7msgpack6has_asIT_EE5valueES6_E4typeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE8int_initIlEEvT_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::variant", align 8    ; 8 uses
  %3 = alloca %"class.boost::variant", align 8    ; 8 uses
  %i.a = icmp slt i64 %1, 0
  %i.b = load i32, ptr %0, align 8, !tbaa !167    ; 2 uses
  %.lobit.i.i.i.i = ashr i32 %i.b, 31
  %spec.select.i.i.i.i = xor i32 %.lobit.i.i.i.i, %i.b ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %spec.select.i.i.i.i, 2
  br i1 %i.c, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.thread.i.i, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.i.i

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.thread.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.d, align 8, !tbaa !36
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSIlEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.e, align 8, !tbaa !36
  store i32 2, ptr %3, align 8, !tbaa !167
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE14variant_assignEOS10_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.i.i
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #27, !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSIlEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #27, !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %spec.select.i.i.i.i, 3
  br i1 %i.g, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.thread.i.i, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.i.i

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.thread.i.i: ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.h, align 8, !tbaa !36
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSIlEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !36
  store i32 3, ptr %2, align 8, !tbaa !167
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE14variant_assignEOS10_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.i.i
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #27, !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSIlEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

bb.g:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #27, !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume

_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSIlEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit: ; preds = %bb.f, %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.thread.i.i, %bb.c, %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.thread.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE14variant_assignEOS10_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::variant<msgpack::v1::type::nil_t, bool, long, unsigned long, double, std::__cxx11::basic_string<char>, boost::basic_string_ref<char>, std::vector<char>, msgpack::v1::type::raw_ref, msgpack::v1::type::ext, msgpack::v1::type::ext_ref, boost::recursive_wrapper<std::vector<msgpack::v1::type::basic_variant<boost::basic_string_ref<char>, msgpack::v1::type::raw_ref, msgpack::v1::type::ext_ref>>>, boost::recursive_wrapper<std::map<msgpack::v1::type::basic_variant<boost::basic_string_ref<char>, msgpack::v1::type::raw_ref, msgpack::v1::type::ext_ref>, msgpack::v1::type::basic_variant<boost::basic_string_ref<char>, msgpack::v1::type::raw_ref, msgpack::v1::type::ext_ref>>>, boost::recursive_wrapper<std::multimap<msgpack::v1::type::basic_variant<boost::basic_string_ref<char>, msgpack::v1::type::raw_ref, msgpack::v1::type::ext_ref>, msgpack::v1::type::basic_variant<boost::basic_string_ref<char>, msgpack::v1::type::raw_ref, msgpack::v1::type::ext_ref>>>>::move_assigner", align 8 ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !167    ; 3 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !167    ; 3 uses
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 21 uses
  %.lobit.i = ashr i32 %i.a, 31
  %spec.select.i = xor i32 %.lobit.i, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  switch i32 %spec.select.i, label %bb.x [
    i32 0, label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.n
    i32 7, label %bb.o
    i32 8, label %bb.q
    i32 9, label %bb.r
    i32 10, label %bb.t
    i32 11, label %bb.u
    i32 12, label %bb.v
    i32 13, label %bb.w
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 8, !tbaa !104, !range !121, !noundef !122
  store i8 %i.f, ptr %i.e, align 8, !tbaa !104
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.d, align 8, !tbaa !36
  store i64 %i.g, ptr %i.e, align 8, !tbaa !36
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.e:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8, !tbaa !36
  store i64 %i.h, ptr %i.e, align 8, !tbaa !36
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.f:                                             ; preds = %bb.b
  %i.i = load double, ptr %i.d, align 8, !tbaa !206
  store double %i.i, ptr %i.e, align 8, !tbaa !206
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.g:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !35   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.n, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.g
  %4 = icmp eq ptr %i.j, %i.k
  br i1 %4, label %.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr %3, align 8, !tbaa !29     ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  tail call void @llvm.assume(i1 %i.p)
  %.not21.i.i.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i.i.i, label %_ZN5boost6detail7variant22visitation_impl_invokeINS1_12move_storageEPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7variantIN7msgpack2v14type5nil_tEJblmdSA_NS_16basic_string_refIcS8_EESt6vectorIcS9_ENSE_7raw_refENSE_3extENSE_7ext_refENS_17recursive_wrapperISI_INSE_13basic_variantISH_SK_SM_EESaISP_EEEENSN_ISt3mapISP_SP_St4lessISP_ESaISt4pairIKSP_SP_EEEEENSN_ISt8multimapISP_SP_SV_SZ_EEEEE18has_fallback_type_EEENT_11result_typeEiRS17_T0_PT1_T2_i.exit, label %bb.i, !prof !103

bb.i:                                             ; preds = %bb.h
  switch i64 %i.o, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.q = load i8, ptr %i.l, align 1, !tbaa !30
  store i8 %i.q, ptr %i.j, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.r = load i64, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !29
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !30
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %_ZN5boost6detail7variant22visitation_impl_invokeINS1_12move_storageEPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7variantIN7msgpack2v14type5nil_tEJblmdSA_NS_16basic_string_refIcS8_EESt6vectorIcS9_ENSE_7raw_refENSE_3extENSE_7ext_refENS_17recursive_wrapperISI_INSE_13basic_variantISH_SK_SM_EESaISP_EEEENSN_ISt3mapISP_SP_St4lessISP_ESaISt4pairIKSP_SP_EEEEENSN_ISt8multimapISP_SP_SV_SZ_EEEEE18has_fallback_type_EEENT_11result_typeEiRS17_T0_PT1_T2_i.exit

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.e, align 8, !tbaa !35
  %i.w = load i64, ptr %3, align 8, !tbaa !29
  store i64 %i.w, ptr %i.v, align 8, !tbaa !29
  %i.x = load i64, ptr %i.m, align 8, !tbaa !30
  store i64 %i.x, ptr %i.k, align 8, !tbaa !30
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = load i64, ptr %i.k, align 8, !tbaa !30
  store ptr %i.l, ptr %i.e, align 8, !tbaa !35
  %i.z = load i64, ptr %3, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !29
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !30
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !30
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i
  store ptr %i.j, ptr %i.d, align 8, !tbaa !35
  store i64 %i.y, ptr %i.m, align 8, !tbaa !30
  br label %_ZN5boost6detail7variant22visitation_impl_invokeINS1_12move_storageEPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7variantIN7msgpack2v14type5nil_tEJblmdSA_NS_16basic_string_refIcS8_EESt6vectorIcS9_ENSE_7raw_refENSE_3extENSE_7ext_refENS_17recursive_wrapperISI_INSE_13basic_variantISH_SK_SM_EESaISP_EEEENSN_ISt3mapISP_SP_St4lessISP_ESaISt4pairIKSP_SP_EEEEENSN_ISt8multimapISP_SP_SV_SZ_EEEEE18has_fallback_type_EEENT_11result_typeEiRS17_T0_PT1_T2_i.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i, %.thread.i.i.i.i
  store ptr %i.m, ptr %i.d, align 8, !tbaa !35
  br label %_ZN5boost6detail7variant22visitation_impl_invokeINS1_12move_storageEPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7variantIN7msgpack2v14type5nil_tEJblmdSA_NS_16basic_string_refIcS8_EESt6vectorIcS9_ENSE_7raw_refENSE_3extENSE_7ext_refENS_17recursive_wrapperISI_INSE_13basic_variantISH_SK_SM_EESaISP_EEEENSN_ISt3mapISP_SP_St4lessISP_ESaISt4pairIKSP_SP_EEEEENSN_ISt8multimapISP_SP_SV_SZ_EEEEE18has_fallback_type_EEENT_11result_typeEiRS17_T0_PT1_T2_i.exit

_ZN5boost6detail7variant22visitation_impl_invokeINS1_12move_storageEPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7variantIN7msgpack2v14type5nil_tEJblmdSA_NS_16basic_string_refIcS8_EESt6vectorIcS9_ENSE_7raw_refENSE_3extENSE_7ext_refENS_17recursive_wrapperISI_INSE_13basic_variantISH_SK_SM_EESaISP_EEEENSN_ISt3mapISP_SP_St4lessISP_ESaISt4pairIKSP_SP_EEEEENSN_ISt8multimapISP_SP_SV_SZ_EEEEE18has_fallback_type_EEENT_11result_typeEiRS17_T0_PT1_T2_i.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i, %bb.l, %bb.m
  %i.ac = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ], [ %i.j, %bb.l ], [ %i.m, %bb.m ], [ %i.l, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ad, align 8, !tbaa !29
  store i8 0, ptr %i.ac, align 1, !tbaa !30
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !207
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.o:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !169 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !170
  %i.ah = load <2 x ptr>, ptr %i.d, align 8, !tbaa !194
  store <2 x ptr> %i.ah, ptr %i.e, align 8, !tbaa !194
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !170
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !170
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.am) #28
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !208
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !169 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !170
  %i.aq = load <2 x ptr>, ptr %i.d, align 8, !tbaa !194
  store <2 x ptr> %i.aq, ptr %i.e, align 8, !tbaa !194
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !170
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !170
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.av) #28
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.t:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !209
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.u:                                             ; preds = %bb.b
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !173
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !173
  store ptr %i.ax, ptr %i.d, align 8, !tbaa !173
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !173
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.v:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !181
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !181
  store ptr %i.az, ptr %i.d, align 8, !tbaa !181
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !181
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.w:                                             ; preds = %bb.b
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !189
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !189
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !189
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !189
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS1_12move_storageEPvNS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.x:                                             ; preds = %bb.b
  unreachable

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %.lobit.i10 = ashr i32 %i.b, 31
  %spec.select.i11 = xor i32 %.lobit.i10, %i.b    ; 2 uses
  store ptr %0, ptr %2, align 8, !tbaa !211
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %spec.select.i11, ptr %i.bc, align 8, !tbaa !213
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  switch i32 %spec.select.i11, label %bb.at [
    i32 0, label %bb.z
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 6, label %bb.ag
    i32 7, label %bb.ah
    i32 8, label %bb.ai
    i32 9, label %bb.aj
    i32 10, label %bb.ak
    i32 11, label %bb.al
    i32 12, label %bb.ar
    i32 13, label %bb.as
  ]

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #27
  store i32 0, ptr %0, align 8, !tbaa !167
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE13move_assignerEPvNS27_18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.aa:                                            ; preds = %bb.y
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #27
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i8, ptr %i.bd, align 8, !tbaa !104, !range !121, !noundef !122
  store i8 %i.bf, ptr %i.be, align 8, !tbaa !104
  store i32 1, ptr %0, align 8, !tbaa !167
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE13move_assignerEPvNS27_18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.ab:                                            ; preds = %bb.y
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #27
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !36
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !36
  store i32 2, ptr %0, align 8, !tbaa !167
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE13move_assignerEPvNS27_18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.ac:                                            ; preds = %bb.y
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #27
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !36
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !36
  store i32 3, ptr %0, align 8, !tbaa !167
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE13move_assignerEPvNS27_18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.ad:                                            ; preds = %bb.y
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #27
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load double, ptr %i.bd, align 8, !tbaa !206
  store double %i.bl, ptr %i.bk, align 8, !tbaa !206
  store i32 4, ptr %0, align 8, !tbaa !167
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE13move_assignerEPvNS27_18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.ae:                                            ; preds = %bb.y
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #27
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !26
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !35 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !29 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 16
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %_ZN5boost6detail7variant22visitation_impl_invokeINS_7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcSB_EESt6vectorIcSC_ENS6_7raw_refENS6_3extENS6_7ext_refENS_17recursive_wrapperISG_INS6_13basic_variantISF_SI_SK_EESaISN_EEEENSL_ISt3mapISN_SN_St4lessISN_ESaISt4pairIKSN_SN_EEEEENSL_ISt8multimapISN_SN_ST_SX_EEEEE13move_assignerEPvSD_NS13_18has_fallback_type_EEENT_11result_typeEiRS17_T0_PT1_T2_i.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ae
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !35
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !30
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !30
  br label %_ZN5boost6detail7variant22visitation_impl_invokeINS_7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcSB_EESt6vectorIcSC_ENS6_7raw_refENS6_3extENS6_7ext_refENS_17recursive_wrapperISG_INS6_13basic_variantISF_SI_SK_EESaISN_EEEENSL_ISt3mapISN_SN_St4lessISN_ESaISt4pairIKSN_SN_EEEEENSL_ISt8multimapISN_SN_ST_SX_EEEEE13move_assignerEPvSD_NS13_18has_fallback_type_EEENT_11result_typeEiRS17_T0_PT1_T2_i.exit

_ZN5boost6detail7variant22visitation_impl_invokeINS_7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcSB_EESt6vectorIcSC_ENS6_7raw_refENS6_3extENS6_7ext_refENS_17recursive_wrapperISG_INS6_13basic_variantISF_SI_SK_EESaISN_EEEENSL_ISt3mapISN_SN_St4lessISN_ESaISt4pairIKSN_SN_EEEEENSL_ISt8multimapISN_SN_ST_SX_EEEEE13move_assignerEPvSD_NS13_18has_fallback_type_EEENT_11result_typeEiRS17_T0_PT1_T2_i.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !29
  store ptr %i.bp, ptr %i.bd, align 8, !tbaa !35
  store i64 0, ptr %i.bw, align 8, !tbaa !29
  store i8 0, ptr %i.bp, align 8, !tbaa !30
  store i32 5, ptr %0, align 8, !tbaa !167
  br label %_ZN5boost6detail7variant15visitation_implIN4mpl_4int_ILi0EEENS1_20visitation_impl_stepINS_3mpl6l_iterINS7_6l_itemINS3_5long_ILl14EEEN7msgpack2v14type5nil_tENS9_INSA_ILl13EEEbNS9_INSA_ILl12EEElNS9_INSA_ILl11EEEmNS9_INSA_ILl10EEEdNS9_INSA_ILl9EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS9_INSA_ILl8EEENS_16basic_string_refIcSO_EENS9_INSA_ILl7EEESt6vectorIcSP_ENS9_INSA_ILl6EEENSE_7raw_refENS9_INSA_ILl5EEENSE_3extENS9_INSA_ILl4EEENSE_7ext_refENS9_INSA_ILl3EEENS_17recursive_wrapperISV_INSE_13basic_variantIST_SY_S12_EESaIS16_EEEENS9_INSA_ILl2EEENS14_ISt3mapIS16_S16_St4lessIS16_ESaISt4pairIKS16_S16_EEEEENS9_INSA_ILl1EEENS14_ISt8multimapIS16_S16_S1D_S1H_EEENS7_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS8_IS1O_EEEENS_7variantISF_JblmdSQ_ST_SW_SY_S10_S12_S19_S1J_S1N_EE13move_assignerEPvNS27_18has_fallback_type_EEENT1_11result_typeEiiRS2B_T2_NS3_5bool_ILb0EEET3_PT_PT0_.exit

bb.ag:                                            ; preds = %bb.y
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #27
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
