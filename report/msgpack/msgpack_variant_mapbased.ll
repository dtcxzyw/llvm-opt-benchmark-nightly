Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/msgpack_variant_mapbased?download=true
inline.NumInlined: 4597
inline.NumDeleted: 2574
begin_hunk_0_@_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyILb0ENSK_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESP_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03140, ptr %i.s, align 8, !tbaa !216
  %i.t = getelementptr inbounds nuw i8, ptr %.03041, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !190  ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyILb0ENSK_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESP_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.q, align 8, !tbaa !190
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %.noexc, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #27 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #29
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03041, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !191 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !358

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
  tail call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE17_M_construct_nodeIJRKSE_EEEvPSt13_Rb_tree_nodeISE_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %.noexc unwind label %bb.c, !inline_history !362

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS4_7raw_refENS4_7ext_refEEESD_EEEE9constructISF_JRKSF_EEEvRSH_PT_DpOT0_.exit unwind label %bb.b, !inline_history !363

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #27, !inline_history !364
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  %i.f = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #27 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 112) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS4_7raw_refENS4_7ext_refEEESD_EEEE9constructISF_JRKSF_EEEvRSH_PT_DpOT0_.exit: ; preds = %.noexc
  ret void

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

bb.g:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !176    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #29
  unreachable

_ZNKSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2EOS10_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEE9constructISB_JSB_EEEvRSC_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEE9constructISB_JSB_EEEvRSC_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEE9constructISB_JSB_EEEvRSC_PT_DpOT0_.exit, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEE9constructISB_JSB_EEEvRSC_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEE9constructISB_JSB_EEEvRSC_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(40) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c, !inline_history !365

_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !366

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #27 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i) #27, !inline_history !367
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #29
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #31
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit: ; preds = %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEE9constructISB_JSB_EEEvRSC_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEE9constructISB_JSB_EEEvRSC_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 40, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 3 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(40) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(40) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g, !inline_history !365

_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 40 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 40
  %.not.i.i.i.i.i38 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !366

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #27 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 40
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i34) #27, !inline_history !367
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ae, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !6

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #29
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i36
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #31
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30.ptr, i64 40
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i) #27, !inline_history !367
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESC_SaISB_EET0_T_SF_SE_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !178
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #28
  br label %_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !176
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !177
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !178
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #27 ; 0 uses
  br label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ar = extractvalue { ptr, i32 } %i.x, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #27 ; 0 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #27, !inline_history !368
  br label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i32 } %i.af, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #27 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.av, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i47) #27, !inline_history !367
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 40
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !6

bb.m:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #31
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EvT_SD_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2EOS10_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !167    ; 2 uses
  %.lobit.i = ashr i32 %i.b, 31
  %spec.select.i = xor i32 %.lobit.i, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  switch i32 %spec.select.i, label %bb.g [
    i32 0, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit
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
  %i.d = load i8, ptr %i.c, align 8, !tbaa !104, !range !121, !noundef !122
  store i8 %i.d, ptr %i.a, align 8, !tbaa !104
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc8:                                          ; preds = %.noexc
  %i.e = load i64, ptr %i.c, align 8, !tbaa !36
  store i64 %i.e, ptr %i.a, align 8, !tbaa !36
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc9:                                          ; preds = %.noexc
  %i.f = load i64, ptr %i.c, align 8, !tbaa !36
  store i64 %i.f, ptr %i.a, align 8, !tbaa !36
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc10:                                         ; preds = %.noexc
  %i.g = load double, ptr %i.c, align 8, !tbaa !206
  store double %i.g, ptr %i.a, align 8, !tbaa !206
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

bb.a:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !26
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %.noexc11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  store ptr %i.i, ptr %i.a, align 8, !tbaa !35
  %i.p = load i64, ptr %i.j, align 8, !tbaa !30
  store i64 %i.p, ptr %i.h, align 8, !tbaa !30
  br label %.noexc11

.noexc11:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !29
  store ptr %i.j, ptr %i.c, align 8, !tbaa !35
  store i64 0, ptr %i.q, align 8, !tbaa !29
  store i8 0, ptr %i.j, align 8, !tbaa !30
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc12:                                         ; preds = %.noexc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !207
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc13:                                         ; preds = %.noexc
  %i.t = load <2 x ptr>, ptr %i.c, align 8, !tbaa !194
  store <2 x ptr> %i.t, ptr %i.a, align 8, !tbaa !194
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !170
  store ptr %i.w, ptr %i.u, align 8, !tbaa !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc14:                                         ; preds = %.noexc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !208
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc15:                                         ; preds = %.noexc
  %i.x = load <2 x ptr>, ptr %i.c, align 8, !tbaa !194
  store <2 x ptr> %i.x, ptr %i.a, align 8, !tbaa !194
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !170
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc16:                                         ; preds = %.noexc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !209
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9move_intoEEENT_11result_typeERS15_.exit

.noexc17:                                         ; preds = %.noexc
  %i.ab = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 3 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !173 ; 3 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !214
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !214
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
end_hunk_0
begin_hunk_1_@_ZNK4procclERSt8multimapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS3_7raw_refENS3_7ext_refEEESC_St4lessISC_ESaISt4pairIKSC_SC_EEE:bb.a
  br label %common.resume

_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit32: ; preds = %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.091.0137, i64 88
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !36
  %.not.i.i33 = icmp eq i64 %.sroa.29.0.copyload, 15
  br i1 %.not.i.i33, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i35, label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit39.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i35: ; preds = %_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.091.0137, i64 80
  %.sroa.08.0.copyload = load ptr, ptr %i.ay, align 8, !tbaa !194 ; 2 uses
  %i.az = load i64, ptr %.sroa.08.0.copyload, align 1
  %i.ba = xor i64 %i.az, 7526481947907547476
  %i.bb = getelementptr i8, ptr %.sroa.08.0.copyload, i64 7
  %i.bc = load i64, ptr %i.bb, align 1
  %i.bd = xor i64 %i.bc, 8026661860161907048
  %i.be = or i64 %i.ba, %i.bd
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %.not.i.i.i37 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i37, label %_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEC2EPKc.exit89, label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit39.thread

_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEC2EPKc.exit89: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.ad, ptr %2, align 8, !tbaa !26
  store i32 1701605234, ptr %i.ad, align 8
  store i64 4, ptr %i.ae, align 8, !tbaa !29
  store i8 0, ptr %i.af, align 4, !tbaa !30
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ah, ptr noundef nonnull align 8 dereferenceable(5) %i.ad, i64 5, i1 false)
  store i64 4, ptr %i.ai, align 8, !tbaa !29
  store i32 5, ptr %7, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.ak, ptr %3, align 8, !tbaa !26
  %i.bh = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #33
          to label %_ZNSt4pairIKN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EC2IRA5_KcRA20_SF_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISK_SL_EEEEOT_OT0_.exit unwind label %bb.l ; 3 uses

bb.l:                                             ; preds = %_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEC2EPKc.exit89
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #27, !inline_history !4
  br label %common.resume

_ZNSt4pairIKN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EC2IRA5_KcRA20_SF_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISK_SL_EEEEOT_OT0_.exit: ; preds = %_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEC2EPKc.exit89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bh, ptr noundef nonnull align 1 dereferenceable(19) @.str.50, i64 19, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  store i8 0, ptr %i.bj, align 1, !tbaa !30
  store ptr %i.bh, ptr %i.al, align 8, !tbaa !35
  store i64 19, ptr %i.am, align 8, !tbaa !30
  store i64 19, ptr %i.an, align 8, !tbaa !29
  store i32 5, ptr %i.aj, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bk = invoke ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE15_M_insert_equalISE_EESt17_Rb_tree_iteratorISE_EOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %7)
          to label %_ZNSt8multimapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEE6insertEOSG_.exit unwind label %bb.m ; 0 uses

_ZNSt8multimapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEE6insertEOSG_.exit: ; preds = %_ZNSt4pairIKN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EC2IRA5_KcRA20_SF_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISK_SL_EEEEOT_OT0_.exit
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #27, !inline_history !399
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #27, !inline_history !399
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit39.thread

bb.m:                                             ; preds = %_ZNSt4pairIKN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_EC2IRA5_KcRA20_SF_Qaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISK_SL_EEEEOT_OT0_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #27, !inline_history !399
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(80) %7) #27, !inline_history !399
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %common.resume

_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit39.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i35, %_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit32, %_ZNSt8multimapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEE6insertEOSG_.exit
  %i.bm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.091.0137) #34
  br label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42: ; preds = %_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit
  %bcmp.i.i43 = call i32 @bcmp(ptr %.sroa.011.0.copyload, ptr nonnull @.str.43, i64 %.sroa.212.0.copyload)
  %.not.i.i.i44 = icmp eq i32 %bcmp.i.i43, 0
  br i1 %.not.i.i.i44, label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit46, label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53.thread

_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit46: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42
  %i.bn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.091.0137) #34
  %i.bo = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.091.0137, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #27 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bq) #27, !inline_history !10
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bp) #27, !inline_history !10
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 112) #28, !inline_history !11
  %i.br = load i64, ptr %i.ac, align 8, !tbaa !201
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr %i.ac, align 8, !tbaa !201
  br label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i49: ; preds = %_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit
  %bcmp.i.i50 = call i32 @bcmp(ptr %.sroa.011.0.copyload, ptr nonnull @.str.44, i64 %.sroa.212.0.copyload)
  %.not.i.i.i51 = icmp eq i32 %bcmp.i.i50, 0
  br i1 %.not.i.i.i51, label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53, label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53.thread

_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i49
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.091.0137, i64 72 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !167 ; 2 uses
  %.lobit.i.i.i.i.i.i.i54 = ashr i32 %i.bu, 31
  %spec.select.i.i.i.i.i.i.i55 = xor i32 %.lobit.i.i.i.i.i.i.i54, %i.bu
  %.not.i.i.i.i56 = icmp eq i32 %spec.select.i.i.i.i.i.i.i55, 6
  br i1 %.not.i.i.i.i56, label %_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit57, label %bb.n

bb.n:                                             ; preds = %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7bad_getE, i64 16), ptr %4, align 8, !tbaa !41
  invoke void @_ZN5boost15throw_exceptionINS_7bad_getEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit57: ; preds = %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.091.0137, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !225 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.091.0137, i64 88
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !226 ; 9 uses
  store ptr %i.v, ptr %10, align 8, !tbaa !26
  %i.ca = icmp eq ptr %i.bx, null
  %i.cb = icmp ne i64 %i.bz, 0
  %or.cond.i = and i1 %i.ca, %i.cb
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit57
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.53) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit57
  %i.cc = icmp ugt i64 %i.bz, 15
  br i1 %i.cc, label %bb.s, label %._crit_edge.i.i

bb.s:                                             ; preds = %bb.r
  %i.cd = icmp slt i64 %i.bz, 0
  br i1 %i.cd, label %.noexc.i, label %bb.t

.noexc.i:                                         ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %.noexc.i
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ce = add nuw i64 %i.bz, 1                    ; 2 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %.noexc9.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !103

.noexc9.i:                                        ; preds = %bb.t
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %.noexc9.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.t
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #33
          to label %.noexc60 unwind label %.loopexit ; 2 uses

.noexc60:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.cg, ptr %10, align 8, !tbaa !35
  store i64 %i.bz, ptr %i.v, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc60, %bb.r
  %i.ch = phi ptr [ %i.cg, %.noexc60 ], [ %i.v, %bb.r ] ; 3 uses
  switch i64 %i.bz, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.ci = load i8, ptr %i.bx, align 1, !tbaa !30
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !30
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull align 1 %i.bx, i64 %i.bz, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i
  store i64 %i.bz, ptr %i.w, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  store i8 0, ptr %i.cj, align 1, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.ck = load i64, ptr %i.w, align 8, !tbaa !29, !noalias !403 ; 6 uses
  %i.cl = icmp sgt i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #29
          to label %.noexc62 unwind label %.loopexit.split-lp103

.noexc62:                                         ; preds = %bb.x
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.w
  %i.cm = add nsw i64 %i.ck, 7                    ; 2 uses
  %i.cn = load ptr, ptr %10, align 8, !tbaa !35, !noalias !403 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.v
  br i1 %i.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cp = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cq = load i64, ptr %i.v, align 8, !tbaa !30, !noalias !403
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.cr = phi i64 [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i61 = icmp ugt i64 %i.cm, %i.cr
  br i1 %.not.i.i.i61, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cs, ptr noundef nonnull align 1 dereferenceable(7) @.str.51, i64 7, i1 false), !noalias !403
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ck, i64 noundef 0, ptr noundef nonnull @.str.51, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %.loopexit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.z, %bb.y
  store i64 %i.cm, ptr %i.w, align 8, !tbaa !29, !noalias !403
  %i.ct = load ptr, ptr %10, align 8, !tbaa !35, !noalias !403
  %11 = getelementptr i8, ptr %i.ct, i64 %i.ck
  %i.cu = getelementptr i8, ptr %11, i64 7
  store i8 0, ptr %i.cu, align 1, !tbaa !30, !noalias !403
  store ptr %i.x, ptr %9, align 8, !tbaa !26, !alias.scope !403
  %i.cv = load ptr, ptr %10, align 8, !tbaa !35, !noalias !403 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, %i.v
  br i1 %i.cw, label %.thread, label %bb.aa

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cx = load i64, ptr %i.w, align 8, !tbaa !29, !noalias !403 ; 4 uses
  %i.cy = icmp samesign ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.cy)
  %i.cz = add nuw nsw i64 %i.cx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.cz, i1 false)
  store i64 %i.cx, ptr %i.y, align 8, !tbaa !29, !alias.scope !403
  store ptr %i.v, ptr %10, align 8, !tbaa !35, !noalias !403
  store i64 0, ptr %i.w, align 8, !tbaa !29, !noalias !403
  store i8 0, ptr %i.v, align 8, !tbaa !30, !noalias !403
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i.i.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.cv, ptr %9, align 8, !tbaa !35, !alias.scope !403
  %i.da = load <2 x i64>, ptr %i.w, align 8, !tbaa !30, !noalias !403
  %.pre.i = load i64, ptr %i.w, align 8, !tbaa !29, !noalias !403 ; 6 uses
  store <2 x i64> %i.da, ptr %i.y, align 8, !tbaa !30, !alias.scope !403
  store ptr %i.v, ptr %10, align 8, !tbaa !35, !noalias !403
  store i64 0, ptr %i.w, align 8, !tbaa !29, !noalias !403
  store i8 0, ptr %i.v, align 8, !tbaa !30, !noalias !403
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !26
  %i.db = icmp ugt i64 %.pre.i, 15
  br i1 %i.db, label %bb.ab, label %._crit_edge.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.dc = icmp slt i64 %.pre.i, 0
  br i1 %i.dc, label %.noexc.i.i.i.i.i, label %bb.ac

.noexc.i.i.i.i.i:                                 ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
          to label %.noexc64 unwind label %.loopexit.split-lp108

.noexc64:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.dd = add nuw i64 %.pre.i, 1                  ; 2 uses
  %i.de = icmp slt i64 %i.dd, 0
  br i1 %i.de, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !103

.noexc6.i.i.i.i.i:                                ; preds = %bb.ac
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc65 unwind label %.loopexit.split-lp108

.noexc65:                                         ; preds = %.noexc6.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.ac
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #33
          to label %.noexc66 unwind label %.loopexit107 ; 2 uses

.noexc66:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.df, ptr %i.z, align 8, !tbaa !35
  store i64 %.pre.i, ptr %i.aa, align 8, !tbaa !30
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.thread, %.noexc66, %bb.aa
  %i.dg = phi i64 [ %.pre.i, %.noexc66 ], [ %.pre.i, %bb.aa ], [ %i.cx, %.thread ] ; 4 uses
  %i.dh = phi ptr [ %i.cv, %.noexc66 ], [ %i.cv, %bb.aa ], [ %i.x, %.thread ] ; 2 uses
  %i.di = phi ptr [ %i.df, %.noexc66 ], [ %i.aa, %bb.aa ], [ %i.aa, %.thread ] ; 3 uses
  switch i64 %i.dg, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dj = load i8, ptr %i.dh, align 1, !tbaa !30
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !30
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr align 1 %i.dh, i64 %i.dg, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i.i.i
  store i64 %i.dg, ptr %i.ab, align 8, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dg
  store i8 0, ptr %i.dk, align 1, !tbaa !30
  store i32 5, ptr %8, align 8, !tbaa !167
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE14variant_assignEOS10_(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEaSEOSA_.exit unwind label %bb.ag

_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEaSEOSA_.exit: ; preds = %bb.af
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #27, !inline_history !4
  %i.dl = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.x
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEaSEOSA_.exit
  %i.dn = load i64, ptr %i.x, align 8, !tbaa !30
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEEaSEOSA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %i.dp = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.v
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dr = load i64, ptr %i.v, align 8, !tbaa !30
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.dt = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.091.0137) #34
  br label %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53.thread

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

.loopexit.split-lp:                               ; preds = %bb.q, %.noexc.i, %.noexc9.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

.loopexit102:                                     ; preds = %bb.z
  %lpad.loopexit104 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

.loopexit.split-lp103:                            ; preds = %bb.x
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

.loopexit107:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  %lpad.loopexit109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp108:                            ; preds = %.noexc.i.i.i.i.i, %.noexc6.i.i.i.i.i
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #27, !inline_history !4
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit107, %.loopexit.split-lp108, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.du, %bb.ag ], [ %lpad.loopexit109, %.loopexit107 ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp108 ] ; 2 uses
  %i.dv = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.x
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ah
  %i.dx = load i64, ptr %i.x, align 8, !tbaa !30
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ah, %.loopexit102, %.loopexit.split-lp103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %lpad.loopexit.split-lp105, %.loopexit.split-lp103 ], [ %lpad.loopexit104, %.loopexit102 ], [ %.pn, %bb.ah ] ; 2 uses
  %i.dz = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.v
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.eb = load i64, ptr %i.v, align 8, !tbaa !30
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %common.resume

_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i49, %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit39.thread
  %.sroa.091.1 = phi ptr [ %i.bm, %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit39.thread ], [ %i.bn, %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit46 ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.sroa.091.0137, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.sroa.091.0137, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i49 ], [ %.sroa.091.0137, %_ZNK7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS1_7raw_refENS1_7ext_refEE19as_boost_string_refEv.exit ], [ %.sroa.091.0137, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42 ] ; 2 uses
  %i.ed = icmp eq ptr %.sroa.091.1, %i.t
  br i1 %i.ed, label %._crit_edge, label %bb.e, !llvm.loop !402

._crit_edge:                                      ; preds = %_ZN5boosteqIcSt11char_traitsIcEEEbNS_16basic_string_refIT_T0_EEPKS4_.exit53.thread, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN5boost15throw_exceptionINS_7bad_getEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #20 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #27 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_1
