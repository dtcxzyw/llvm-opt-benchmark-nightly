inline.NumInlined: 5875
inline.NumDeleted: 3204
begin_hunk_0_@_ZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EE:bb.a
          to label %_ZN5boost6detail12shared_countD2Ev.exit13 unwind label %bb.t, !inline_history !90

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #25
  unreachable

_ZN5boost6detail12shared_countD2Ev.exit13:        ; preds = %bb.p, %bb.q, %.noexc.i12, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.bf

bb.u:                                             ; preds = %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit9
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost6detail10weak_countD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91
  %i.g = add nsw i64 %i.f, -1                     ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !91
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #23 ; 0 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.c, label %_ZN5boost6detail10weak_countD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_ZN5boost6detail10weak_countD2Ev.exit unwind label %bb.d, !inline_history !155

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #25
  unreachable

_ZN5boost6detail10weak_countD2Ev.exit:            ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEC2ERNS_8weak_ptrISL_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.b, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_ZN5boost6detail12shared_countC2IPNS_6spirit4impl14grammar_helperINS3_7grammarI9c_grammarNS3_14parser_contextINS3_5nil_tEEEEES7_NS3_7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEENS_15checked_deleterISO_EEEET_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %0)
          to label %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EEPT_.exit unwind label %bb.g

_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EEPT_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !146
  store ptr %i.d, ptr %1, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !85   ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EEPT_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #23 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !91
  %i.k = add nsw i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !91
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EEPT_.exit
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !140  ; 5 uses
  %.not6.i.i = icmp eq ptr %i.m, null
  br i1 %.not6.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #23 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !91
  %i.r = add nsw i64 %i.q, -1                     ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !91
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.n) #23 ; 0 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %bb.f unwind label %bb.h, !inline_history !156

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  store ptr %i.f, ptr %i.e, align 8, !tbaa !140
  ret void

bb.g:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !157  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !160
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EED2Ev.exit

_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1408) ptr @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEE6defineEPKS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::auto_ptr", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !157  ; 6 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 4 uses
  %.not = icmp ugt i64 %i.k, %i.c
  br i1 %.not, label %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = mul i64 %i.c, 3
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = add nuw i64 %i.m, 1                      ; 3 uses
  %.not19 = icmp ult i64 %i.m, %i.k
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw i64 %i.n, %i.k
  tail call void @_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.o)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !157
  br label %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ult i64 %i.n, %i.k
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.q, ptr %i.e, align 8, !tbaa !161
  br label %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE6resizeEm.exit

_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i, %bb.e, %bb.d, %bb.c, %bb.a
  %i.r = phi ptr [ %i.g, %_ZSt8_DestroyIPPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %.pre, %bb.c ], [ %i.g, %bb.a ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.c
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !162  ; 2 uses
  %.not15 = icmp eq ptr %i.t, null
  br i1 %.not15, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.u = tail call noalias noundef nonnull dereferenceable(1408) ptr @_Znwm(i64 noundef 1408) #28 ; 5 uses
  invoke void @_ZN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_28skip_parser_iteration_policyI12skip_grammarNS2_16iteration_policyEEENS2_12match_policyENS2_13action_policyEEEEEEC2ERKS_(ptr noundef nonnull align 8 dereferenceable(1408) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  store ptr %i.u, ptr %2, align 8, !tbaa !164
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !166  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %.not.i.i17 = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.w, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.v, align 8, !tbaa !166
  br label %_ZNSt8auto_ptrIN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !39  ; 4 uses
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.j, label %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28
          to label %.noexc18 unwind label %bb.n   ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store ptr %0, ptr %i.am, align 8, !tbaa !28
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.k, label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i

_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i: ; preds = %bb.k, %.noexc18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #24
  br label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i
  store ptr %i.al, ptr %i.a, align 8, !tbaa !39
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !166
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !41
  br label %_ZNSt8auto_ptrIN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit

_ZNSt8auto_ptrIN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !167
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !167
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !157
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.c
  store ptr %i.u, ptr %i.au, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 1408) #24
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8auto_ptrIN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.n ], [ %i.av, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE6resizeEm.exit, %_ZNSt8auto_ptrIN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit
  %.013 = phi ptr [ %i.u, %_ZNSt8auto_ptrIN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit ], [ %i.t, %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE6resizeEm.exit ]
  ret ptr %.013
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6detail12shared_countC2ERKNS0_10weak_countE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::bad_weak_ptr", align 8 ; 4 uses
  %3 = alloca %"class.boost::bad_weak_ptr", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !140    ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !85
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #23 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5boost6detail15sp_counted_base12add_ref_lockEv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost12bad_weak_ptrE, i64 16), ptr %2, align 8, !tbaa !33
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost12bad_weak_ptrE, i64 16), ptr %i.g, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN5boost12bad_weak_ptrE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.i = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #23 ; 0 uses
  br label %common.resume

_ZN5boost6detail15sp_counted_base12add_ref_lockEv.exit: ; preds = %bb.b
  %i.j = add nsw i64 %i.e, 1
  store i64 %i.j, ptr %i.d, align 8, !tbaa !87
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #23 ; 0 uses
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost12bad_weak_ptrE, i64 16), ptr %3, align 8, !tbaa !33
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost12bad_weak_ptrE, i64 16), ptr %i.l, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN5boost12bad_weak_ptrE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost12bad_weak_ptrD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost12bad_weak_ptr4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEE8undefineEPS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !157  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %.not = icmp ugt i64 %i.j, %i.b
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162  ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_28skip_parser_iteration_policyI12skip_grammarNS2_16iteration_policyEEENS2_12match_policyENS2_13action_policyEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1408) dereferenceable(1408) %i.l) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 1408) #24
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !157
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.f, %bb.b ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.b
  store ptr null, ptr %i.o, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !167
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !167
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EED2Ev.exit

_ZNSt6vectorIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #23, !inline_history !173
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24, !inline_history !173
  br label %_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEED2Ev.exit

_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6detail12shared_countC2IPNS_6spirit4impl14grammar_helperINS3_7grammarI9c_grammarNS3_14parser_contextINS3_5nil_tEEEEES7_NS3_7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEENS_15checked_deleterISO_EEEET_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !85
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %bb.b unwind label %bb.c       ; 7 uses

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6detail15sp_counted_baseE, i64 16), ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.c, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef null) #23 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6detail20sp_counted_base_implIPNS_6spirit4impl14grammar_helperINS2_7grammarI9c_grammarNS2_14parser_contextINS2_5nil_tEEEEES6_NS2_7scannerIPKcNS2_16scanner_policiesINS2_28skip_parser_iteration_policyI12skip_grammarNS2_16iteration_policyEEENS2_12match_policyENS2_13action_policyEEEEEEENS_15checked_deleterISN_EEEE, i64 16), ptr %i.a, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %i.f, align 8, !tbaa !174
  store ptr %i.a, ptr %0, align 8, !tbaa !85
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %i.g, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %.0) #23 ; 0 uses
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSM_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(56) %1) #23, !inline_history !177
  br label %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSM_.exit

_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSM_.exit: ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #27
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSM_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25
  unreachable

bb.h:                                             ; preds = %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSM_.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6detail20sp_counted_base_implIPNS_6spirit4impl14grammar_helperINS2_7grammarI9c_grammarNS2_14parser_contextINS2_5nil_tEEEEES6_NS2_7scannerIPKcNS2_16scanner_policiesINS2_28skip_parser_iteration_policyI12skip_grammarNS2_16iteration_policyEEENS2_12match_policyENS2_13action_policyEEEEEEENS_15checked_deleterISN_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6detail15sp_counted_baseE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23, !inline_history !95 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6detail20sp_counted_base_implIPNS_6spirit4impl14grammar_helperINS2_7grammarI9c_grammarNS2_14parser_contextINS2_5nil_tEEEEES6_NS2_7scannerIPKcNS2_16scanner_policiesINS2_28skip_parser_iteration_policyI12skip_grammarNS2_16iteration_policyEEENS2_12match_policyENS2_13action_policyEEEEEEENS_15checked_deleterISN_EEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23, !inline_history !177
  br label %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSM_.exit

_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSM_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost6detail20sp_counted_base_implIPNS_6spirit4impl14grammar_helperINS2_7grammarI9c_grammarNS2_14parser_contextINS2_5nil_tEEEEES6_NS2_7scannerIPKcNS2_16scanner_policiesINS2_28skip_parser_iteration_policyI12skip_grammarNS2_16iteration_policyEEENS2_12match_policyENS2_13action_policyEEEEEEENS_15checked_deleterISN_EEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSN5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZNKSt9type_infoeqERKS_.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 1, !tbaa !98
  %.not.i = icmp eq i8 %i.e, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread4, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(280) @_ZTSN5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEE) #23
  %.fr = freeze i32 %i.f
  %i.g = icmp eq i32 %.fr, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select = select i1 %i.g, ptr %i.h, ptr null
  br label %_ZNKSt9type_infoeqERKS_.exit.thread4

_ZNKSt9type_infoeqERKS_.exit.thread4:             ; preds = %_ZNKSt9type_infoeqERKS_.exit, %bb.b, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.i = phi ptr [ null, %bb.b ], [ %spec.select, %_ZNKSt9type_infoeqERKS_.exit ], [ %i.d, %_ZNKSt9type_infoeqERKS_.exit.thread ]
  ret ptr %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_28skip_parser_iteration_policyI12skip_grammarNS2_16iteration_policyEEENS2_12match_policyENS2_13action_policyEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1408) dereferenceable(1408) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN5boost6spirit4impl14get_definitionI12skip_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS3_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISK_T0_EE:bb.a
          to label %_ZN5boost6detail12shared_countD2Ev.exit13 unwind label %bb.t, !inline_history !90

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #25
  unreachable

_ZN5boost6detail12shared_countD2Ev.exit13:        ; preds = %bb.p, %bb.q, %.noexc.i12, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.bf

bb.u:                                             ; preds = %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISP_EE.exit9
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost6detail10weak_countD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #23 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !91
  %i.g = add nsw i64 %i.f, -1                     ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !91
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #23 ; 0 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.c, label %_ZN5boost6detail10weak_countD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_ZN5boost6detail10weak_countD2Ev.exit unwind label %bb.d, !inline_history !155

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #25
  unreachable

_ZN5boost6detail10weak_countD2Ev.exit:            ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEC2ERNS_8weak_ptrISM_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.b, align 8, !tbaa !1061
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_ZN5boost6detail12shared_countC2IPNS_6spirit4impl14grammar_helperINS3_7grammarI12skip_grammarNS3_14parser_contextINS3_5nil_tEEEEES7_NS3_7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS7_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEENS_15checked_deleterISP_EEEET_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %0)
          to label %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISN_EEPT_.exit unwind label %bb.g

_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISN_EEPT_.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1061
  store ptr %i.d, ptr %1, align 8, !tbaa !1058
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !85   ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISN_EEPT_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #23 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !91
  %i.k = add nsw i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !91
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISN_EEPT_.exit
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !140  ; 5 uses
  %.not6.i.i = icmp eq ptr %i.m, null
  br i1 %.not6.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #23 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !91
  %i.r = add nsw i64 %i.q, -1                     ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !91
  %i.s = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.n) #23 ; 0 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %bb.f unwind label %bb.h, !inline_history !1070

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  store ptr %i.f, ptr %i.e, align 8, !tbaa !140
  ret void

bb.g:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1071 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1074
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EED2Ev.exit

_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEE6defineEPKS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::auto_ptr.1152", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1075 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1071 ; 6 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 4 uses
  %.not = icmp ugt i64 %i.k, %i.c
  br i1 %.not, label %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = mul i64 %i.c, 3
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = add nuw i64 %i.m, 1                      ; 3 uses
  %.not19 = icmp ult i64 %i.m, %i.k
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw i64 %i.n, %i.k
  tail call void @_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.o)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !1071
  br label %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ult i64 %i.n, %i.k
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESI_EvT_SK_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESI_EvT_SK_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.q, ptr %i.e, align 8, !tbaa !1075
  br label %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit

_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESI_EvT_SK_RSaIT0_E.exit.i.i, %bb.e, %bb.d, %bb.c, %bb.a
  %i.r = phi ptr [ %i.g, %_ZSt8_DestroyIPPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESI_EvT_SK_RSaIT0_E.exit.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %.pre, %bb.c ], [ %i.g, %bb.a ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.c
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1076 ; 2 uses
  %.not15 = icmp eq ptr %i.t, null
  br i1 %.not15, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.u = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28 ; 5 uses
  store ptr null, ptr %i.u, align 8, !tbaa !119
  %i.v = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #28
          to label %bb.g unwind label %bb.m       ; 20 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit4impl15concrete_parserINS0_11alternativeINS3_INS3_INS3_INS0_12space_parserENS0_8sequenceINS5_INS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEEESE_EEEENS5_INS5_IS9_NSA_INSB_ISC_S9_EEEEEES9_EEEESI_EESI_EENS0_7scannerIS8_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEENS0_5nil_tEEE, i64 16), ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @.str.94, ptr %i.w, align 8
  %.sroa.592.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.94, i64 2), ptr %.sroa.592.0..sroa_idx.i, align 8
  %.sroa.693.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i8 10, ptr %.sroa.693.0..sroa_idx.i, align 8
  %.sroa.895.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i8 10, ptr %.sroa.895.0..sroa_idx.i, align 8
  %.sroa.1097.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @.str.95, ptr %.sroa.1097.0..sroa_idx.i, align 8
  %.sroa.1198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @.str.95, i64 2), ptr %.sroa.1198.0..sroa_idx.i, align 8
  %.sroa.1299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @.str.96, ptr %.sroa.1299.0..sroa_idx.i, align 8
  %.sroa.13100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.96, i64 2), ptr %.sroa.13100.0..sroa_idx.i, align 8
  %.sroa.14101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr @.str.96, ptr %.sroa.14101.0..sroa_idx.i, align 8
  %.sroa.15102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store ptr getelementptr inbounds nuw (i8, ptr @.str.96, i64 2), ptr %.sroa.15102.0..sroa_idx.i, align 8
  %.sroa.16103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr @.str.97, ptr %.sroa.16103.0..sroa_idx.i, align 8
  %.sroa.17104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store ptr getelementptr inbounds nuw (i8, ptr @.str.97, i64 5), ptr %.sroa.17104.0..sroa_idx.i, align 8
  %.sroa.18105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store i8 10, ptr %.sroa.18105.0..sroa_idx.i, align 8
  %.sroa.20107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i8 10, ptr %.sroa.20107.0..sroa_idx.i, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store ptr @.str.98, ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store ptr getelementptr inbounds nuw (i8, ptr @.str.98, i64 7), ptr %.sroa.23.0..sroa_idx.i, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store i8 10, ptr %.sroa.24.0..sroa_idx.i, align 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  store i8 10, ptr %.sroa.26.0..sroa_idx.i, align 8
  store ptr %i.v, ptr %i.u, align 8, !tbaa !119
  store ptr %i.u, ptr %2, align 8, !tbaa !1078
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1080 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  %.not.i.i17 = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.y, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !1080
  br label %_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !61  ; 4 uses
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #28
          to label %.noexc18 unwind label %bb.n   ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  store ptr %0, ptr %i.ao, align 8, !tbaa !54
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.k, label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i

_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i: ; preds = %bb.k, %.noexc18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #24
  %.pre20.pre = load ptr, ptr %i.d, align 8, !tbaa !1071
  br label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i
  %.pre20 = phi ptr [ %.pre20.pre, %bb.l ], [ %i.r, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i ]
  store ptr %i.an, ptr %i.a, align 8, !tbaa !61
  store ptr %i.aq, ptr %i.x, align 8, !tbaa !1080
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !63
  br label %_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit

_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i
  %i.as = phi ptr [ %i.r, %bb.h ], [ %.pre20, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1081
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1081
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.c
  store ptr %i.u, ptr %i.aw, align 8, !tbaa !1076
  %i.ax = load ptr, ptr %2, align 8, !tbaa !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 8) #24
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.az, %bb.n ], [ %i.ay, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit, %_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit
  %.013 = phi ptr [ %i.ax, %_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit ], [ %i.t, %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit ]
  ret ptr %.013
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEE8undefineEPS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1075
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1071 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %.not = icmp ugt i64 %i.j, %i.b
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1076 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !119  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_27no_skipper_iteration_policyINS2_28skip_parser_iteration_policyIS_NS2_16iteration_policyEEEEENS2_12match_policyENS2_13action_policyEEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #23, !inline_history !1087
  br label %_ZN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_27no_skipper_iteration_policyINS2_28skip_parser_iteration_policyIS_NS2_16iteration_policyEEEEENS2_12match_policyENS2_13action_policyEEEEEED2Ev.exit

_ZN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_27no_skipper_iteration_policyINS2_28skip_parser_iteration_policyIS_NS2_16iteration_policyEEEEENS2_12match_policyENS2_13action_policyEEEEEED2Ev.exit: ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 8) #24
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1071
  br label %bb.e

bb.e:                                             ; preds = %_ZN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_27no_skipper_iteration_policyINS2_28skip_parser_iteration_policyIS_NS2_16iteration_policyEEEEENS2_12match_policyENS2_13action_policyEEEEEED2Ev.exit, %bb.b
  %i.s = phi ptr [ %.pre, %_ZN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_27no_skipper_iteration_policyINS2_28skip_parser_iteration_policyIS_NS2_16iteration_policyEEEEENS2_12match_policyENS2_13action_policyEEEEEED2Ev.exit ], [ %i.f, %bb.b ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.b
  store ptr null, ptr %i.t, align 8, !tbaa !1076
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1081
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !1081
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1071 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1074
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EED2Ev.exit

_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #23, !inline_history !1088
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1071 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1074
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24, !inline_history !1088
  br label %_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEED2Ev.exit

_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6detail12shared_countC2IPNS_6spirit4impl14grammar_helperINS3_7grammarI12skip_grammarNS3_14parser_contextINS3_5nil_tEEEEES7_NS3_7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS7_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEENS_15checked_deleterISP_EEEET_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !85
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %bb.b unwind label %bb.c       ; 7 uses

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6detail15sp_counted_baseE, i64 16), ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.c, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef null) #23 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6detail20sp_counted_base_implIPNS_6spirit4impl14grammar_helperINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEES6_NS2_7scannerIPKcNS2_16scanner_policiesINS2_27no_skipper_iteration_policyINS2_28skip_parser_iteration_policyIS6_NS2_16iteration_policyEEEEENS2_12match_policyENS2_13action_policyEEEEEEENS_15checked_deleterISO_EEEE, i64 16), ptr %i.a, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %i.f, align 8, !tbaa !1089
  store ptr %i.a, ptr %0, align 8, !tbaa !85
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %i.g, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %.0) #23 ; 0 uses
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSN_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(56) %1) #23, !inline_history !1092
  br label %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSN_.exit

_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSN_.exit: ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #27
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSN_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25
  unreachable

bb.h:                                             ; preds = %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSN_.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6detail15sp_counted_baseE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6detail20sp_counted_base_implIPNS_6spirit4impl14grammar_helperINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEES6_NS2_7scannerIPKcNS2_16scanner_policiesINS2_27no_skipper_iteration_policyINS2_28skip_parser_iteration_policyIS6_NS2_16iteration_policyEEEEENS2_12match_policyENS2_13action_policyEEEEEEENS_15checked_deleterISO_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost6detail15sp_counted_baseE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23, !inline_history !95 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6detail20sp_counted_base_implIPNS_6spirit4impl14grammar_helperINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEES6_NS2_7scannerIPKcNS2_16scanner_policiesINS2_27no_skipper_iteration_policyINS2_28skip_parser_iteration_policyIS6_NS2_16iteration_policyEEEEENS2_12match_policyENS2_13action_policyEEEEEEENS_15checked_deleterISO_EEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1089 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23, !inline_history !1092
  br label %_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSN_.exit

_ZNK5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEclEPSN_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost6detail20sp_counted_base_implIPNS_6spirit4impl14grammar_helperINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEES6_NS2_7scannerIPKcNS2_16scanner_policiesINS2_27no_skipper_iteration_policyINS2_28skip_parser_iteration_policyIS6_NS2_16iteration_policyEEEEENS2_12match_policyENS2_13action_policyEEEEEEENS_15checked_deleterISO_EEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSN5boost15checked_deleterINS_6spirit4impl14grammar_helperINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyIS5_NS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEEEEEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZNKSt9type_infoeqERKS_.exit.thread4

end_hunk_1
begin_hunk_2_@_ZNK5boost6spirit11alternativeINS0_12space_parserENS0_8sequenceINS3_INS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEEESC_EEE5parseINS0_7scannerIS6_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISH_T_E4typeERKSW_:bb.a
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !17
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISD_T_E4typeERKSS_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost6spirit10differenceINS0_14anychar_parserENS0_5chlitIcEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS5_T_E4typeERKSM_.exit.i.i.i
  %i.af = add nuw nsw i64 %.sroa.09.020.i.i.i, 1  ; 2 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !115, !noalias !1115
  %i.ah = icmp eq ptr %i.ad, %i.ag
  br i1 %i.ah, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISD_T_E4typeERKSS_.exit.i, label %_ZNK5boost6spirit10differenceINS0_14anychar_parserENS0_5chlitIcEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS5_T_E4typeERKSM_.exit.i.i.i

_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISD_T_E4typeERKSS_.exit.i: ; preds = %bb.g, %_ZNK5boost6spirit10differenceINS0_14anychar_parserENS0_5chlitIcEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS5_T_E4typeERKSM_.exit.i.i.i, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i.i
  %i.ai = phi ptr [ %i.x, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i.i ], [ %i.ad, %bb.g ], [ %i.ac, %_ZNK5boost6spirit10differenceINS0_14anychar_parserENS0_5chlitIcEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS5_T_E4typeERKSM_.exit.i.i.i ] ; 4 uses
  %.sroa.09.0.lcssa.i23.i.i = phi i64 [ 0, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i.i ], [ %i.af, %bb.g ], [ %.sroa.09.020.i.i.i, %_ZNK5boost6spirit10differenceINS0_14anychar_parserENS0_5chlitIcEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS5_T_E4typeERKSM_.exit.i.i.i ]
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !17
  %i.aj = add nsw i64 %.sroa.09.0.lcssa.i23.i.i, %i.p ; 2 uses
  %.not.not.i = icmp slt i64 %i.aj, 0
  %i.ak = load ptr, ptr %i.d, align 8
  %i.al = icmp eq ptr %i.ai, %i.ak
  %or.cond.i = select i1 %.not.not.i, i1 true, i1 %i.al
  br i1 %or.cond.i, label %_ZNK5boost6spirit8sequenceINS1_INS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEEESA_E5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISE_T_E4typeERKST_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISD_T_E4typeERKSS_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !98, !noalias !1121
  %i.ao = load i8, ptr %i.am, align 8, !tbaa !192, !noalias !1121
  %i.ap = icmp eq i8 %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZNK5boost6spirit8sequenceINS1_INS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEEESA_E5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISE_T_E4typeERKST_.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !17, !noalias !1121
  %i.ar = add nuw nsw i64 %i.aj, 1
  br label %_ZNK5boost6spirit8sequenceINS1_INS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEEESA_E5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISE_T_E4typeERKST_.exit

_ZNK5boost6spirit8sequenceINS1_INS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEEESA_E5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISE_T_E4typeERKST_.exit: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i, %bb.i, %bb.h, %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISD_T_E4typeERKSS_.exit.i, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i.i, %bb.c
  %.sroa.010.0 = phi i64 [ 1, %bb.c ], [ %i.ar, %bb.i ], [ -1, %bb.h ], [ -1, %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserENS0_5chlitIcEEEEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISD_T_E4typeERKSS_.exit.i ], [ -1, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i.i ], [ -1, %.lr.ph.i.i.i.i.i.i ], [ -1, %bb.e ]
  ret i64 %.sroa.010.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZNK5boost6spirit8sequenceINS1_INS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEEES5_E5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISC_T_E4typeERKSR_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !189    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !343, !nonnull !35, !align !129 ; 6 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %.not14.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  br i1 %.not14.i.i.i.i.i, label %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.j = phi ptr [ %.pre.i, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %.015.i.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %.015.i.i.i.i.i, align 1, !tbaa !98
  %i.n = load i8, ptr %i.j, align 1, !tbaa !98
  %.not13.i.i.i.i.i = icmp eq i8 %i.m, %i.n
  br i1 %.not13.i.i.i.i.i, label %bb.d, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !17
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i, label %bb.b, !llvm.loop !329

_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i: ; preds = %bb.d
  %.not.not.i = icmp sgt i64 %i.h, -1
  br i1 %.not.not.i, label %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit.thread

_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i: ; preds = %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i, %bb.a
  %i.q = phi ptr [ %i.p, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i ], [ %.pre.i, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115, !noalias !1124
  %i.u = icmp eq ptr %i.q, %i.t
  br i1 %i.u, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %i.w = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.x, %.loopexit.i.i ] ; 3 uses
  %.sroa.09.020.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.al, %.loopexit.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 4 uses
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !189  ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !191  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %.not14.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not14.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %bb.g
  %i.ad = phi ptr [ %i.aj, %bb.g ], [ %i.w, %bb.e ] ; 3 uses
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.y, %bb.e ] ; 2 uses
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ag = load i8, ptr %.015.i.i.i.i.i.i.i, align 1, !tbaa !98
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !98
  %.not13.i.i.i.i.i.i.i = icmp eq i8 %i.ag, %i.ah
  br i1 %.not13.i.i.i.i.i.i.i, label %bb.g, label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !17
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !329

_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i.i.i: ; preds = %bb.g
  %i.ak = icmp slt i64 %i.ac, 0
  br i1 %i.ak, label %.loopexit.i.i, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit

.loopexit.i.i:                                    ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i.i.i, %bb.e
  store ptr %i.x, ptr %i.e, align 8, !tbaa !17
  %i.al = add nuw nsw i64 %.sroa.09.020.i.i, 1    ; 2 uses
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !115, !noalias !1124
  %i.an = icmp eq ptr %i.x, %i.am
  br i1 %i.an, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit, label %bb.e

_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit: ; preds = %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i.i.i, %.loopexit.i.i, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i
  %.pre.i.i.i.i = phi ptr [ %i.q, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i ], [ %i.w, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i.i.i ], [ %i.x, %.loopexit.i.i ] ; 2 uses
  %.sroa.09.0.lcssa.i23.i = phi i64 [ 0, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread14.i ], [ %.sroa.09.020.i.i, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i.i.i ], [ %i.al, %.loopexit.i.i ]
  store ptr %.pre.i.i.i.i, ptr %i.e, align 8, !tbaa !17
  %i.ao = add nsw i64 %.sroa.09.0.lcssa.i23.i, %i.h ; 2 uses
  %.not.not = icmp sgt i64 %i.ao, -1
  br i1 %.not.not, label %bb.h, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit.thread

bb.h:                                             ; preds = %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !189 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !191 ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not14.i.i.i.i, label %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread18, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %bb.j
  %i.aw = phi ptr [ %i.bc, %bb.j ], [ %.pre.i.i.i.i, %bb.h ] ; 3 uses
  %.015.i.i.i.i = phi ptr [ %i.bb, %bb.j ], [ %i.aq, %bb.h ] ; 2 uses
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !115
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = load i8, ptr %.015.i.i.i.i, align 1, !tbaa !98
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !98
  %.not13.i.i.i.i = icmp eq i8 %i.az, %i.ba
  br i1 %.not13.i.i.i.i, label %bb.j, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !17
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i.i.i.i, label %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !329

_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit: ; preds = %bb.j
  %.not5.not.not = icmp sgt i64 %i.av, -1
  br i1 %.not5.not.not, label %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread18, label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit.thread

_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread18: ; preds = %bb.h, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit
  %i.bd = add nuw nsw i64 %i.av, %i.ao
  br label %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit.thread

_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit.thread: ; preds = %bb.b, %bb.c, %.lr.ph.i.i.i.i, %bb.i, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i, %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread18
  %.sroa.08.1 = phi i64 [ %i.bd, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.thread18 ], [ -1, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit ], [ -1, %_ZNK5boost6spirit8sequenceINS0_6strlitIPKcEENS0_11kleene_starINS0_10differenceINS0_14anychar_parserES5_EEEEE5parseINS0_7scannerIS4_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultISB_T_E4typeERKSQ_.exit ], [ -1, %_ZNK5boost6spirit6strlitIPKcE5parseINS0_7scannerIS3_NS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS4_T_E4typeERKSJ_.exit.i ], [ -1, %.lr.ph.i.i.i.i ], [ -1, %bb.i ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { cold noreturn }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !16, i64 16}
!9 = !{!"_ZTSN5boost6spirit4impl14object_with_idINS1_11grammar_tagEmEE", !10, i64 0, !16, i64 16}
!10 = !{!"_ZTSN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmEE", !11, i64 0}
!11 = !{!"_ZTSN5boost10shared_ptrINS_6spirit4impl26object_with_id_base_supplyImEEEE", !12, i64 0, !14, i64 8}
!12 = !{!"p1 _ZTSN5boost6spirit4impl26object_with_id_base_supplyImEE", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"_ZTSN5boost6detail12shared_countE", !15, i64 0}
!15 = !{!"p1 _ZTSN5boost6detail15sp_counted_baseE", !13, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = distinct !{null}
!20 = !{!21, !21, i64 0}
!21 = !{!"p2 _ZTSN5boost6spirit4impl19grammar_helper_baseINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEE", !22, i64 0}
!22 = !{!"any p2 pointer", !13, i64 0}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE6rbeginEv: argument 0"}
!25 = distinct !{!25, !"_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE6rbeginEv"}
!26 = distinct !{!26, !27, !"_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEE6rbeginEv: argument 0"}
!27 = distinct !{!27, !"_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEE6rbeginEv"}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTSN5boost6spirit4impl19grammar_helper_baseINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEE", !13, i64 0}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN5boost6spirit4impl19grammar_helper_baseINS4_7grammarI9c_grammarNS4_14parser_contextINS4_5nil_tEEEEEEESt6vectorISE_SaISE_EEEEESt9binder2ndISt10mem_fun1_tIiSD_PSC_EEET0_T_SR_SQ_: argument 0"}
!32 = distinct !{!32, !"_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN5boost6spirit4impl19grammar_helper_baseINS4_7grammarI9c_grammarNS4_14parser_contextINS4_5nil_tEEEEEEESt6vectorISE_SaISE_EEEEESt9binder2ndISt10mem_fun1_tIiSD_PSC_EEET0_T_SR_SQ_"}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !7, i64 0}
!35 = !{}
!36 = distinct !{null}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !21, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!41 = !{!40, !21, i64 16}
!42 = distinct !{!42, !38}
!43 = !{!44, !45, i64 9}
!44 = !{!"_ZTSN5boost6spirit10parse_infoIPKcEE", !18, i64 0, !45, i64 8, !45, i64 9, !16, i64 16}
!45 = !{!"bool", !6, i64 0}
!46 = !{i8 0, i8 2}
!47 = !{!48, !48, i64 0}
!48 = !{!"p2 _ZTSN5boost6spirit4impl19grammar_helper_baseINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEE", !22, i64 0}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE6rbeginEv: argument 0"}
!51 = distinct !{!51, !"_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE6rbeginEv"}
!52 = distinct !{!52, !53, !"_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEE6rbeginEv: argument 0"}
!53 = distinct !{!53, !"_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEE6rbeginEv"}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTSN5boost6spirit4impl19grammar_helper_baseINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEE", !13, i64 0}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN5boost6spirit4impl19grammar_helper_baseINS4_7grammarI12skip_grammarNS4_14parser_contextINS4_5nil_tEEEEEEESt6vectorISE_SaISE_EEEEESt9binder2ndISt10mem_fun1_tIiSD_PSC_EEET0_T_SR_SQ_: argument 0"}
!58 = distinct !{!58, !"_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN5boost6spirit4impl19grammar_helper_baseINS4_7grammarI12skip_grammarNS4_14parser_contextINS4_5nil_tEEEEEEESt6vectorISE_SaISE_EEEEESt9binder2ndISt10mem_fun1_tIiSD_PSC_EEET0_T_SR_SQ_"}
!59 = distinct !{null}
!60 = distinct !{!60, !38}
!61 = !{!62, !48, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!63 = !{!62, !48, i64 16}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE6rbeginEv: argument 0"}
!66 = distinct !{!66, !"_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE6rbeginEv"}
!67 = distinct !{!67, !68, !"_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEE6rbeginEv: argument 0"}
!68 = distinct !{!68, !"_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEE6rbeginEv"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN5boost6spirit4impl19grammar_helper_baseINS4_7grammarI9c_grammarNS4_14parser_contextINS4_5nil_tEEEEEEESt6vectorISE_SaISE_EEEEESt9binder2ndISt10mem_fun1_tIiSD_PSC_EEET0_T_SR_SQ_: argument 0"}
!71 = distinct !{!71, !"_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN5boost6spirit4impl19grammar_helper_baseINS4_7grammarI9c_grammarNS4_14parser_contextINS4_5nil_tEEEEEEESt6vectorISE_SaISE_EEEEESt9binder2ndISt10mem_fun1_tIiSD_PSC_EEET0_T_SR_SQ_"}
!72 = !{!11, !12, i64 0}
!73 = !{!74, !16, i64 0}
!74 = !{!"_ZTSN5boost6spirit4impl26object_with_id_base_supplyImEE", !16, i64 0, !75, i64 8}
!75 = !{!"_ZTSSt6vectorImSaImEE", !76, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseImSaImEE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!79 = !{!"p1 long", !13, i64 0}
!80 = !{!78, !79, i64 8}
!81 = !{!78, !79, i64 16}
!82 = !{!16, !16, i64 0}
!83 = !{!78, !79, i64 0}
!84 = !{!"branch_weights", i32 1, i32 1048575}
!85 = !{!14, !15, i64 0}
!86 = !{!13, !13, i64 0}
!87 = !{!88, !16, i64 8}
!88 = !{!"_ZTSN5boost6detail15sp_counted_baseE", !16, i64 8, !16, i64 16, !89, i64 24}
!89 = !{!"_ZTSN5boost6detail17lightweight_mutexE", !6, i64 0}
!90 = distinct !{null}
!91 = !{!88, !16, i64 16}
!92 = !{!93, !12, i64 64}
!93 = !{!"_ZTSN5boost6detail20sp_counted_base_implIPNS_6spirit4impl26object_with_id_base_supplyImEENS_15checked_deleterIS5_EEEE", !88, i64 0, !12, i64 64, !94, i64 72}
!94 = !{!"_ZTSN5boost15checked_deleterINS_6spirit4impl26object_with_id_base_supplyImEEEE"}
!95 = !{ptr @_ZN5boost6detail15sp_counted_baseD2Ev}
!96 = !{!97, !18, i64 8}
!97 = !{!"_ZTSSt9type_info", !18, i64 8}
!98 = !{!6, !6, i64 0}
!99 = distinct !{null, null}
!100 = !{!101, !103}
!101 = distinct !{!101, !102, !"_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE6rbeginEv: argument 0"}
!102 = distinct !{!102, !"_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE6rbeginEv"}
!103 = distinct !{!103, !104, !"_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEE6rbeginEv: argument 0"}
!104 = distinct !{!104, !"_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEE6rbeginEv"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN5boost6spirit4impl19grammar_helper_baseINS4_7grammarI12skip_grammarNS4_14parser_contextINS4_5nil_tEEEEEEESt6vectorISE_SaISE_EEEEESt9binder2ndISt10mem_fun1_tIiSD_PSC_EEET0_T_SR_SQ_: argument 0"}
!107 = distinct !{!107, !"_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN5boost6spirit4impl19grammar_helper_baseINS4_7grammarI12skip_grammarNS4_14parser_contextINS4_5nil_tEEEEEEESt6vectorISE_SaISE_EEEEESt9binder2ndISt10mem_fun1_tIiSD_PSC_EEET0_T_SR_SQ_"}
!108 = !{!109, !109, i64 0}
!109 = !{!"p2 omnipotent char", !22, i64 0}
!110 = !{!111, !18, i64 16}
!111 = !{!"_ZTSN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEE", !112, i64 0, !109, i64 8, !18, i64 16}
!112 = !{!"_ZTSN5boost6spirit16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEE", !113, i64 0}
!113 = !{!"_ZTSN5boost6spirit28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEE", !114, i64 0}
!114 = !{!"p1 _ZTS12skip_grammar", !13, i64 0}
!115 = !{!116, !18, i64 16}
!116 = !{!"_ZTSN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEE", !117, i64 0, !109, i64 8, !18, i64 16}
!117 = !{!"_ZTSN5boost6spirit16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEE", !118, i64 0}
!118 = !{!"_ZTSN5boost6spirit27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEE", !113, i64 0}
!119 = !{!120, !121, i64 0}
!120 = !{!"_ZTSN5boost10scoped_ptrINS_6spirit4impl15abstract_parserINS1_7scannerIPKcNS1_16scanner_policiesINS1_27no_skipper_iteration_policyINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEEEENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEEEE", !121, i64 0}
!121 = !{!"p1 _ZTSN5boost6spirit4impl15abstract_parserINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEENS0_5nil_tEEE", !13, i64 0}
!122 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSN5boost10scoped_ptrINS_6spirit4impl15abstract_parserINS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEEEE", !125, i64 0}
!125 = !{!"p1 _ZTSN5boost6spirit4impl15abstract_parserINS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEENS0_5nil_tEEE", !13, i64 0}
!126 = distinct !{null, null, null, null, null, null}
!127 = !{!113, !114, i64 0}
!128 = !{!111, !109, i64 8}
!129 = !{i64 8}
!130 = distinct !{null, null, null, null, null, null, null, null}
!131 = !{!44, !18, i64 0}
!132 = !{!44, !45, i64 8}
!133 = !{!44, !16, i64 16}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE: argument 0"}
!136 = distinct !{!136, !"_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE4lockEv: argument 0"}
!139 = distinct !{!139, !"_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE4lockEv"}
!140 = !{!141, !15, i64 0}
!141 = !{!"_ZTSN5boost6detail10weak_countE", !15, i64 0}
!142 = !{!138, !135}
!143 = !{!144, !145, i64 0}
!144 = !{!"_ZTSN5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEE", !145, i64 0, !141, i64 8}
!145 = !{!"p1 _ZTSN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEE", !13, i64 0}
!146 = !{!147, !145, i64 0}
!147 = !{!"_ZTSN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEE", !145, i64 0, !14, i64 8}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE: argument 0"}
!150 = distinct !{!150, !"_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE4lockEv: argument 0"}
!153 = distinct !{!153, !"_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE4lockEv"}
!154 = !{!152, !149}
!155 = distinct !{null}
!156 = distinct !{null}
!157 = !{!158, !159, i64 0}
!158 = !{!"_ZTSNSt12_Vector_baseIPN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEESaISH_EE17_Vector_impl_dataE", !159, i64 0, !159, i64 8, !159, i64 16}
!159 = !{!"p2 _ZTSN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_28skip_parser_iteration_policyI12skip_grammarNS2_16iteration_policyEEENS2_12match_policyENS2_13action_policyEEEEEEE", !22, i64 0}
!160 = !{!158, !159, i64 16}
!161 = !{!158, !159, i64 8}
!162 = !{!163, !163, i64 0}
!163 = !{!"p1 _ZTSN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS2_16scanner_policiesINS2_28skip_parser_iteration_policyI12skip_grammarNS2_16iteration_policyEEENS2_12match_policyENS2_13action_policyEEEEEEE", !13, i64 0}
!164 = !{!165, !163, i64 0}
end_hunk_2
