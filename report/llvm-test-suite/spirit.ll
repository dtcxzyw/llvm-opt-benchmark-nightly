inline.NumInlined: 5875
inline.NumDeleted: 3204
begin_hunk_0_@_ZN5boost6detail12shared_countaSERKS1_:bb.a
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #23 ; 0 uses
  br i1 %.not.not.i, label %bb.e, label %_ZN5boost6detail15sp_counted_base7releaseEv.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(64) %i.h), !inline_history !90
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #23 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !91
  %i.u = add nsw i64 %i.t, -1                     ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !91
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #23 ; 0 uses
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %bb.f, label %_ZN5boost6detail15sp_counted_base7releaseEv.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(64) %i.h), !inline_history !99
  br label %_ZN5boost6detail15sp_counted_base7releaseEv.exit

_ZN5boost6detail15sp_counted_base7releaseEv.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !85
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47, !noalias !100 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not3.i.i, label %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit, label %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i

_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i: ; preds = %bb.a, %.noexc
  %.sroa.04.0.i = phi ptr [ %i.e, %.noexc ], [ %i.c, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54, !noalias !105 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33, !noalias !105
  %i.h = load ptr, ptr %i.g, align 8, !noalias !105, !nosanitize !35
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %0)
          to label %.noexc unwind label %bb.c, !inline_history !59 ; 0 uses

.noexc:                                           ; preds = %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split, label %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i, !llvm.loop !60

_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split: ; preds = %.noexc
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit

_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit: ; preds = %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split ], [ %i.d, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEED2Ev.exit

_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEED2Ev.exit: ; preds = %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit, %bb.b
  tail call void @_ZN5boost6spirit4impl14object_with_idINS1_11grammar_tagEmED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  ret void

bb.c:                                             ; preds = %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit4impl13phrase_parserI12skip_grammarE5parseIPKc9c_grammarEENS0_10parse_infoIT_EERKSA_SD_RKT0_RKS3_(ptr dead_on_unwind noalias writable sret(%"struct.boost::spirit::parse_info") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"class.boost::spirit::scanner.1054", align 8 ; 5 uses
  %6 = alloca %"class.boost::spirit::scanner.1054", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %7 = alloca %"class.boost::spirit::scanner", align 8 ; 7 uses
  %i.b = ptrtoint ptr %4 to i64                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  store ptr %i.c, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.d = load ptr, ptr %2, align 8, !tbaa !17     ; 3 uses
  store i64 %i.b, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %i.b, ptr %6, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.g, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.d, ptr %i.h, align 8, !tbaa !115
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS2_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSM_.exit.i.i.i.i.i, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6spirit4impl14get_definitionI12skip_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS3_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISK_T0_EE(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEC2ERS3_S3_RKSB_.exit, label %_ZNK5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS2_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSM_.exit.i.i.i.i.i

_ZNK5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS2_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSM_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %6), !inline_history !122
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %_ZN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEC2ERS3_S3_RKSB_.exit, label %bb.b

_ZN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEC2ERS3_S3_RKSB_.exit: ; preds = %bb.b, %_ZNK5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS2_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSM_.exit.i.i.i.i.i
  store ptr %i.i, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.q = call noundef nonnull align 8 dereferenceable(1408) ptr @_ZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EE(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1384
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !123  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  %i.t = insertelement <2 x ptr> poison, ptr %i.a, i64 0
  %i.u = insertelement <2 x ptr> %i.t, ptr %i.d, i64 1
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6spirit7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSL_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEC2ERS3_S3_RKSB_.exit
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i64 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %7), !inline_history !126
  %.pre = load ptr, ptr %7, align 8, !tbaa !127   ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.e, align 8, !tbaa !86
  %.pre18 = ptrtoint ptr %.pre to i64
  br label %_ZNK5boost6spirit7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSL_.exit

_ZNK5boost6spirit7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSL_.exit: ; preds = %_ZN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEC2ERS3_S3_RKSB_.exit, %bb.c
  %.pre-phi = phi i64 [ %i.b, %_ZN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEC2ERS3_S3_RKSB_.exit ], [ %.pre18, %bb.c ]
  %i.aa = phi ptr [ %4, %_ZN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEC2ERS3_S3_RKSB_.exit ], [ %.pre, %bb.c ]
  %.sroa.09.0.i.i.i.i.i.i = phi i64 [ -1, %_ZN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEC2ERS3_S3_RKSB_.exit ], [ %i.y, %bb.c ] ; 2 uses
  %i.ab = phi <2 x ptr> [ %i.u, %_ZN5boost6spirit7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEC2ERS3_S3_RKSB_.exit ], [ %i.z, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 %.pre-phi, ptr %5, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x ptr> %i.ab, ptr %i.ac, align 8, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS2_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSM_.exit.i.i, %_ZNK5boost6spirit7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSL_.exit
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !128, !nonnull !35, !align !129
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6spirit4impl14get_definitionI12skip_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS3_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISK_T0_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5boost6spirit28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEE4skipINS0_7scannerIPKcNS0_16scanner_policiesIS4_NS0_12match_policyENS0_13action_policyEEEEEEEvRKT_.exit, label %_ZNK5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS2_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSM_.exit.i.i

_ZNK5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS2_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSM_.exit.i.i: ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %5), !inline_history !130
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %_ZNK5boost6spirit28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEE4skipINS0_7scannerIPKcNS0_16scanner_policiesIS4_NS0_12match_policyENS0_13action_policyEEEEEEEvRKT_.exit, label %bb.d

_ZNK5boost6spirit28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEE4skipINS0_7scannerIPKcNS0_16scanner_policiesIS4_NS0_12match_policyENS0_13action_policyEEEEEEEvRKT_.exit: ; preds = %bb.d, %_ZNK5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEE5parseINS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS2_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEENS0_13parser_resultIS6_T_E4typeERKSM_.exit.i.i
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !128, !nonnull !35, !align !129
  store ptr %i.ae, ptr %i.am, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.lobit.i = ashr i64 %.sroa.09.0.i.i.i.i.i.i, 63 ; 2 uses
  %.not = icmp eq i64 %.lobit.i, -1
  %.pre17 = load ptr, ptr %i.a, align 8, !tbaa !17 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost6spirit28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEE4skipINS0_7scannerIPKcNS0_16scanner_policiesIS4_NS0_12match_policyENS0_13action_policyEEEEEEEvRKT_.exit
  %i.an = load ptr, ptr %2, align 8, !tbaa !17
  %i.ao = icmp eq ptr %.pre17, %i.an
  %i.ap = zext i1 %i.ao to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK5boost6spirit28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEE4skipINS0_7scannerIPKcNS0_16scanner_policiesIS4_NS0_12match_policyENS0_13action_policyEEEEEEEvRKT_.exit
  %i.aq = phi i8 [ 0, %_ZNK5boost6spirit28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEE4skipINS0_7scannerIPKcNS0_16scanner_policiesIS4_NS0_12match_policyENS0_13action_policyEEEEEEEvRKT_.exit ], [ %i.ap, %bb.e ]
  %8 = trunc nsw i64 %.lobit.i to i8
  %9 = add nsw i8 %8, 1
  store ptr %.pre17, ptr %0, align 8, !tbaa !131
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %9, ptr %i.ar, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.09.0.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(1408) ptr @_ZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EE(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::shared_ptr.65", align 8 ; 8 uses
  %2 = alloca %"class.boost::shared_ptr.65", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper, i8 0, i64 16, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEED2Ev, ptr nonnull @_ZZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper, i64 8), align 8, !tbaa !140, !noalias !142 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.thread.i.i, label %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.i.i

_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #23, !noalias !142 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !87, !noalias !142
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #23, !noalias !142 ; 0 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.thread.i.i, label %bb.e

_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.thread.i.i: ; preds = %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.i.i, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !alias.scope !142
  br label %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit

bb.e:                                             ; preds = %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5boost6detail12shared_countC2ERKNS0_10weak_countE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper, i64 8))
          to label %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EERKNS_8weak_ptrIT_EE.exit.i.i unwind label %bb.f

_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EERKNS_8weak_ptrIT_EE.exit.i.i: ; preds = %bb.e
  %i.m = load ptr, ptr @_ZZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper, align 8, !tbaa !143, !noalias !142 ; 2 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !146, !alias.scope !142
  br label %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost12bad_weak_ptrE   ; 3 uses
  %i.o = extractvalue { ptr, i32 } %i.n, 1
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost12bad_weak_ptrE) #23
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.r = extractvalue { ptr, i32 } %i.n, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #23 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !alias.scope !142
  call void @__cxa_end_catch()
  %.pr = load ptr, ptr %1, align 8, !tbaa !146
  br label %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit

common.resume:                                    ; preds = %bb.m, %bb.u, %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.n ], [ %i.n, %bb.f ], [ %i.cc, %bb.u ], [ %i.ar, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit: ; preds = %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.thread.i.i, %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EERKNS_8weak_ptrIT_EE.exit.i.i, %bb.g
  %i.t = phi ptr [ null, %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.thread.i.i ], [ %i.m, %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EERKNS_8weak_ptrIT_EE.exit.i.i ], [ %.pr, %bb.g ]
  %.not3 = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85   ; 8 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN5boost6detail12shared_countD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 4 uses
  %i.x = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #23 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !87
  %i.aa = add nsw i64 %i.z, -1                    ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !87
  %.not.not.i.i = icmp eq i64 %i.aa, 0
  %i.ab = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #23 ; 0 uses
  br i1 %.not.not.i.i, label %bb.i, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %.noexc.i unwind label %bb.k, !inline_history !90

.noexc.i:                                         ; preds = %bb.i
  %i.af = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #23 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !91
  %i.ai = add nsw i64 %i.ah, -1                   ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !91
  %i.aj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.w) #23 ; 0 uses
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %bb.j, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.j:                                             ; preds = %.noexc.i
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %_ZN5boost6detail12shared_countD2Ev.exit unwind label %bb.k, !inline_history !90

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #25
  unreachable

_ZN5boost6detail12shared_countD2Ev.exit:          ; preds = %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit, %bb.h, %.noexc.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.not3, label %bb.l, label %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.i.i6

bb.l:                                             ; preds = %_ZN5boost6detail12shared_countD2Ev.exit
  %i.aq = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28 ; 2 uses
  invoke void @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEC2ERNS_8weak_ptrISL_EE(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper)
          to label %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.i.i6 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #24
  br label %common.resume

_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.i.i6: ; preds = %bb.l, %_ZN5boost6detail12shared_countD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper, i64 8), align 8, !tbaa !140, !noalias !154, !nonnull !35, !noundef !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.au = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.at) #23, !noalias !154 ; 0 uses
  %i.av = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.at) #23, !noalias !154 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN5boost6detail12shared_countC2ERKNS0_10weak_countE(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper, i64 8))
          to label %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EERKNS_8weak_ptrIT_EE.exit.i.i7 unwind label %bb.n

_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EERKNS_8weak_ptrIT_EE.exit.i.i7: ; preds = %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.i.i6
  %i.ax = load ptr, ptr @_ZZN5boost6spirit4impl14get_definitionI9c_grammarNS0_14parser_contextINS0_5nil_tEEENS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEEERNT_10definitionIT1_EEPKNS0_7grammarISJ_T0_EEE6helper, align 8, !tbaa !143, !noalias !154 ; 2 uses
  store ptr %i.ax, ptr %2, align 8, !tbaa !146, !alias.scope !154
  br label %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit9

bb.n:                                             ; preds = %_ZNK5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEE7expiredEv.exit.i.i6
  %i.ay = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost12bad_weak_ptrE   ; 3 uses
  %i.az = extractvalue { ptr, i32 } %i.ay, 1
  %i.ba = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost12bad_weak_ptrE) #23
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.o, label %common.resume

bb.o:                                             ; preds = %bb.n
  %i.bc = extractvalue { ptr, i32 } %i.ay, 0
  %i.bd = call ptr @__cxa_begin_catch(ptr %i.bc) #23 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !154
  call void @__cxa_end_catch()
  %.pre = load ptr, ptr %2, align 8, !tbaa !146
  br label %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit9

_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit9: ; preds = %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EERKNS_8weak_ptrIT_EE.exit.i.i7, %bb.o
  %i.be = phi ptr [ %.pre, %bb.o ], [ %i.ax, %_ZN5boost10shared_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEC2ISM_EERKNS_8weak_ptrIT_EE.exit.i.i7 ]
  %i.bf = invoke noundef nonnull align 8 dereferenceable(1408) ptr @_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_28skip_parser_iteration_policyI12skip_grammarNS0_16iteration_policyEEENS0_12match_policyENS0_13action_policyEEEEEE6defineEPKS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef %0)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %_ZN5boost11make_sharedINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEEENS_10shared_ptrIT_EERKNS_8weak_ptrISO_EE.exit9
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 8 uses
  %.not.i10 = icmp eq ptr %i.bh, null
  br i1 %.not.i10, label %_ZN5boost6detail12shared_countD2Ev.exit13, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 4 uses
  %i.bj = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #23 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !87
  %i.bm = add nsw i64 %i.bl, -1                   ; 2 uses
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !87
  %.not.not.i.i11 = icmp eq i64 %i.bm, 0
end_hunk_0
