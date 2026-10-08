Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/msgpack_variant_capitalize?download=true
inline.NumInlined: 4637
inline.NumDeleted: 2503
begin_hunk_0_@_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13move_assigner11assign_implISZ_EEvRT_N4mpl_5bool_ILb0EEES17_NS16_ILb1EEE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #25 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !214, !nonnull !59, !align !141
  store i32 0, ptr %i.z, align 8, !tbaa !168
  invoke void @__cxa_rethrow() #24
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.i, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink.i.i.i.i.i, ptr %i.e, align 8, !tbaa !197
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !190
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !213
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !168
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.aa

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #27
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS7_ENS1_3extEE11double_initEd(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::variant", align 8    ; 8 uses
  %3 = alloca %"class.boost::variant", align 8    ; 8 uses
  %4 = alloca %"class.boost::variant", align 8    ; 8 uses
  %i.a = fcmp ord double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ult double %1, 0.000000e+00
  %i.c = fcmp ugt double %1, f0x43F0000000000000
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fptoui double %1 to i64                  ; 3 uses
  %i.e = uitofp i64 %i.d to double
  %i.f = fcmp oeq double %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !168    ; 2 uses
  %.lobit.i.i.i.i = ashr i32 %i.g, 31
  %spec.select.i.i.i.i = xor i32 %.lobit.i.i.i.i, %i.g
  %i.h = icmp eq i32 %spec.select.i.i.i.i, 3
  br i1 %i.h, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.thread.i.i, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.i.i

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.thread.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.i, align 8, !tbaa !65
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSImEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.j, align 8, !tbaa !65
  store i32 3, ptr %4, align 8, !tbaa !168
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE14variant_assignEOS10_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.i.i
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #25, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSImEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

common.resume:                                    ; preds = %bb.n, %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.u, %bb.k ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #25, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.l = fcmp uge double %1, 0.000000e+00
  %i.m = fcmp ult double %1, f0xC3E0000000000000
  %or.cond15 = or i1 %i.l, %i.m
  br i1 %or.cond15, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = fptosi double %1 to i64                  ; 3 uses
  %i.o = sitofp i64 %i.n to double
  %i.p = fcmp oeq double %1, %i.o
  br i1 %i.p, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %0, align 8, !tbaa !168    ; 2 uses
  %.lobit.i.i.i.i2 = ashr i32 %i.q, 31
  %spec.select.i.i.i.i3 = xor i32 %.lobit.i.i.i.i2, %i.q
  %i.r = icmp eq i32 %spec.select.i.i.i.i3, 2
  br i1 %i.r, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.thread.i.i, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.i.i

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.thread.i.i: ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.s, align 8, !tbaa !65
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSImEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.i.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.t, align 8, !tbaa !65
  store i32 2, ptr %3, align 8, !tbaa !168
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE14variant_assignEOS10_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.i.i
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #25, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSImEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

bb.k:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #25, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.a
  %i.v = load i32, ptr %0, align 8, !tbaa !168    ; 2 uses
  %.lobit.i.i.i.i4 = ashr i32 %i.v, 31
  %spec.select.i.i.i.i5 = xor i32 %.lobit.i.i.i.i4, %i.v
  %i.w = icmp eq i32 %spec.select.i.i.i.i5, 4
  br i1 %i.w, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant15direct_assignerIdEEEENT_11result_typeERS16_.exit.thread.i.i, label %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant15direct_assignerIdEEEENT_11result_typeERS16_.exit.i.i

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant15direct_assignerIdEEEENT_11result_typeERS16_.exit.thread.i.i: ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %i.x, align 8, !tbaa !205
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSImEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant15direct_assignerIdEEEENT_11result_typeERS16_.exit.i.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %1, ptr %i.y, align 8, !tbaa !205
  store i32 4, ptr %2, align 8, !tbaa !168
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE14variant_assignEOS10_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant15direct_assignerIdEEEENT_11result_typeERS16_.exit.i.i
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #25, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSImEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit

bb.n:                                             ; preds = %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant15direct_assignerIdEEEENT_11result_typeERS16_.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #25, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEaSImEENS_9enable_ifINS_3mpl4and_INS_19is_rvalue_referenceIOT_EENS13_4not_INS_8is_constIS16_EEEENS_6detail7variant29is_variant_constructible_fromIS17_NS13_6l_itemIN4mpl_5long_ILl14EEES4_NS1G_INS1I_ILl13EEEbNS1G_INS1I_ILl12EEElNS1G_INS1I_ILl11EEEmNS1G_INS1I_ILl10EEEdNS1G_INS1I_ILl9EEESA_NS1G_INS1I_ILl8EEESC_NS1G_INS1I_ILl7EEESE_NS1G_INS1I_ILl6EEESF_NS1G_INS1I_ILl5EEESG_NS1G_INS1I_ILl4EEESH_NS1G_INS1I_ILl3EEESN_NS1G_INS1I_ILl2EEESW_NS1G_INS1I_ILl1EEESZ_NS13_5l_endEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEENS1H_5bool_ILb1EEES2E_EERS10_E4typeES17_.exit: ; preds = %bb.m, %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant15direct_assignerIdEEEENT_11result_typeERS16_.exit.thread.i.i, %bb.j, %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverIlEEEENT_11result_typeERS16_.exit.thread.i.i, %bb.e, %_ZNR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorINS_6detail7variant12direct_moverImEEEENT_11result_typeERS16_.exit.thread.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7msgpack2v17adaptor7convertINS0_4type3extEvEclERKNS_2v26objectERS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.msgpack::v1::type::ext", align 16 ; 10 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !117
  %.not = icmp eq i32 %i.a, 9
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.b, align 8, !tbaa !30
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !399  ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !55
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %5 = add nuw nsw i64 %i.i, 1
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #29 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %3, align 16, !tbaa !170
  %6 = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1
  store ptr %i.l, ptr %4, align 16, !tbaa !171
  store i8 %i.f, ptr %i.j, align 1, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !196
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull %i.m, ptr noundef nonnull %i.g, ptr noundef nonnull %i.n)
          to label %_ZN7msgpack2v14type3extC2EaPKcj.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.pre.i = load ptr, ptr %3, align 16, !tbaa !170 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %4, align 16, !tbaa !171
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %.pre.i to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i, i64 noundef %i.s) #26
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.o

_ZN7msgpack2v14type3extC2EaPKcj.exit:             ; preds = %bb.c
  %i.t = load ptr, ptr %2, align 8, !tbaa !170    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !171
  %i.w = load <2 x ptr>, ptr %3, align 16, !tbaa !206
  store <2 x ptr> %i.w, ptr %2, align 8, !tbaa !206
  %i.x = load ptr, ptr %4, align 16, !tbaa !171
  store ptr %i.x, ptr %i.u, align 8, !tbaa !171
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN7msgpack2v14type3extD2Ev.exit, label %_ZN7msgpack2v14type3extaSEOS2_.exit

_ZN7msgpack2v14type3extaSEOS2_.exit:              ; preds = %_ZN7msgpack2v14type3extC2EaPKcj.exit
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.aa) #26
  %.pr = load ptr, ptr %3, align 16, !tbaa !170   ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i6, label %_ZN7msgpack2v14type3extD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7msgpack2v14type3extaSEOS2_.exit
  %i.ab = load ptr, ptr %4, align 16, !tbaa !171
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %.pr to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ae) #26
  br label %_ZN7msgpack2v14type3extD2Ev.exit

_ZN7msgpack2v14type3extD2Ev.exit:                 ; preds = %_ZN7msgpack2v14type3extC2EaPKcj.exit, %_ZN7msgpack2v14type3extaSEOS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !171
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !196  ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !101

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !55
  store i8 %i.s, ptr %i.g, align 1, !tbaa !55
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !196
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !196
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !101

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !55
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !55
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !101

bb.k:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !55
  store i8 %i.ad, ptr %1, align 1, !tbaa !55
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !101

bb.n:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !55
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !55
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !196
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !196
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !101

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !55
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !55
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !196
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !196
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !101

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !55
  store i8 %i.au, ptr %1, align 1, !tbaa !55
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !170   ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #24
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #29
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !101

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !55
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyILb0ENSM_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISG_ESR_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03140, ptr %i.s, align 8, !tbaa !215
  %i.t = getelementptr inbounds nuw i8, ptr %.03041, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191  ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyILb0ENSM_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISG_ESR_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.q, align 8, !tbaa !191
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %.noexc, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #24
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03041, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !192 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !415

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.c

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE17_M_construct_nodeIJRKSG_EEEvPSt13_Rb_tree_nodeISG_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %.noexc unwind label %bb.c, !inline_history !419

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcSA_ENS4_3extEEESF_EEEE9constructISH_JRKSH_EEEvRSJ_PT_DpOT0_.exit unwind label %bb.b, !inline_history !420

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #25, !inline_history !421
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  %i.f = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 112) #26
  invoke void @__cxa_rethrow() #24
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcSA_ENS4_3extEEESF_EEEE9constructISH_JRKSH_EEEvRSJ_PT_DpOT0_.exit: ; preds = %.noexc
  ret void

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

bb.g:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IcS8_ENS2_3extEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !177    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IcS8_ENS2_3extEEESaISC_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #24
  unreachable

_ZNKSt6vectorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IcS8_ENS2_3extEEESaISC_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2EOS10_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEE9constructISD_JSD_EEEvRSE_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEE9constructISD_JSD_EEEvRSE_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IcS8_ENS2_3extEEESaISC_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEE9constructISD_JSD_EEEvRSE_PT_DpOT0_.exit, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEE9constructISD_JSD_EEEvRSE_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEE9constructISD_JSD_EEEvRSE_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(40) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c, !inline_history !422

_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !423

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #25 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i) #25, !inline_history !424
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #24
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #27
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit: ; preds = %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEE9constructISD_JSD_EEEvRSE_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEE9constructISD_JSD_EEEvRSE_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 40, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 3 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(40) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(40) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g, !inline_history !422

_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 40 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 40
  %.not.i.i.i.i.i38 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !423

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #25 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 40
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i34) #25, !inline_history !424
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ae, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !9

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i36
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #27
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30.ptr, i64 40
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i) #25, !inline_history !424
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESE_SaISD_EET0_T_SH_SG_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESaISD_EE13_M_deallocateEPSD_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !179
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #26
  br label %_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESaISD_EE13_M_deallocateEPSD_m.exit

_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESaISD_EE13_M_deallocateEPSD_m.exit: ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !177
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !178
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !179
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IcS8_ENS2_3extEEESaISC_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #25 ; 0 uses
  br label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ar = extractvalue { ptr, i32 } %i.x, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #25 ; 0 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #25, !inline_history !425
  br label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i32 } %i.af, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #25 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.av, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i47) #25, !inline_history !424
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 40
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !9

bb.m:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #24
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #27
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESD_EvT_SF_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2EOS10_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !168    ; 2 uses
  %.lobit.i = ashr i32 %i.b, 31
  %spec.select.i = xor i32 %.lobit.i, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  switch i32 %spec.select.i, label %bb.g [
    i32 0, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit
    i32 1, label %.noexc7
    i32 2, label %.noexc8
    i32 3, label %.noexc9
    i32 4, label %.noexc10
    i32 5, label %bb.a
    i32 6, label %.noexc12
    i32 7, label %.noexc13
    i32 8, label %.noexc14
    i32 9, label %.noexc15
    i32 10, label %.noexc16
    i32 11, label %.noexc17
    i32 12, label %.noexc21
    i32 13, label %.noexc24
  ]

.noexc7:                                          ; preds = %.noexc
  %i.d = load i8, ptr %i.c, align 8, !tbaa !105, !range !58, !noundef !59
  store i8 %i.d, ptr %i.a, align 8, !tbaa !105
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc8:                                          ; preds = %.noexc
  %i.e = load i64, ptr %i.c, align 8, !tbaa !65
  store i64 %i.e, ptr %i.a, align 8, !tbaa !65
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc9:                                          ; preds = %.noexc
  %i.f = load i64, ptr %i.c, align 8, !tbaa !65
  store i64 %i.f, ptr %i.a, align 8, !tbaa !65
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc10:                                         ; preds = %.noexc
  %i.g = load double, ptr %i.c, align 8, !tbaa !205
  store double %i.g, ptr %i.a, align 8, !tbaa !205
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

bb.a:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !62
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %.noexc11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.a, align 8, !tbaa !27
  %i.p = load i64, ptr %i.j, align 8, !tbaa !55
  store i64 %i.p, ptr %i.h, align 8, !tbaa !55
  br label %.noexc11

.noexc11:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !28
  store ptr %i.j, ptr %i.c, align 8, !tbaa !27
  store i64 0, ptr %i.q, align 8, !tbaa !28
  store i8 0, ptr %i.j, align 8, !tbaa !55
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc12:                                         ; preds = %.noexc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !207
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc13:                                         ; preds = %.noexc
  %i.t = load <2 x ptr>, ptr %i.c, align 8, !tbaa !206
  store <2 x ptr> %i.t, ptr %i.a, align 8, !tbaa !206
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !171
  store ptr %i.w, ptr %i.u, align 8, !tbaa !171
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc14:                                         ; preds = %.noexc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !208
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc15:                                         ; preds = %.noexc
  %i.x = load <2 x ptr>, ptr %i.c, align 8, !tbaa !206
  store <2 x ptr> %i.x, ptr %i.a, align 8, !tbaa !206
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !171
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !171
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc16:                                         ; preds = %.noexc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !209
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc17:                                         ; preds = %.noexc
  %i.ab = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 3 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !174 ; 3 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !193
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !193
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
end_hunk_1
