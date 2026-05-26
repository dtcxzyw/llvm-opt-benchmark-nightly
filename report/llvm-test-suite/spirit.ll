inline.NumInlined: 5875
inline.NumDeleted: 3204
begin_hunk_0_@_Z5parseI9c_grammarEbRKT_PKcj:bb.a
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 16, i1 false)
  %i.c = invoke noundef i64 @_ZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %_ZN12skip_grammarC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.ac, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #23
  br label %common.resume

_ZN12skip_grammarC2Ev.exit:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.c, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  store ptr %i.i, ptr %i.b, align 8, !tbaa !17
  invoke void @_ZN5boost6spirit4impl13phrase_parserI12skip_grammarE5parseIPKc9c_grammarEENS0_10parse_infoIT_EERKSA_SD_RKT0_RKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.boost::spirit::parse_info") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %_ZN5boost6spirit5parseIPKc9c_grammar12skip_grammarEENS0_10parse_infoIT_EERKS7_SA_RKNS0_6parserIT0_EERKNSB_IT1_EE.exit unwind label %bb.e

_ZN5boost6spirit5parseIPKc9c_grammar12skip_grammarEENS0_10parse_infoIT_EERKS7_SA_RKNS0_6parserIT0_EERKNSB_IT1_EE.exit: ; preds = %_ZN12skip_grammarC2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !43, !range !46, !noundef !35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47, !noalias !49 ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !47   ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not3.i.i.i, label %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit.i, label %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i.i

_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i.i: ; preds = %_ZN5boost6spirit5parseIPKc9c_grammar12skip_grammarEENS0_10parse_infoIT_EERKS7_SA_RKNS0_6parserIT0_EERKNSB_IT1_EE.exit, %.noexc.i
  %.sroa.04.0.i.i = phi ptr [ %i.o, %.noexc.i ], [ %i.m, %_ZN5boost6spirit5parseIPKc9c_grammar12skip_grammarEENS0_10parse_infoIT_EERKS7_SA_RKNS0_6parserIT0_EERKNSB_IT1_EE.exit ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.04.0.i.i, i64 -8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54, !noalias !56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33, !noalias !56
  %i.r = load ptr, ptr %i.q, align 8, !noalias !56, !nosanitize !35
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc.i unwind label %bb.d, !inline_history !59 ; 0 uses

.noexc.i:                                         ; preds = %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i.i
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split.i, label %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i.i, !llvm.loop !60

_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split.i: ; preds = %.noexc.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !61
  br label %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit.i

_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit.i: ; preds = %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split.i, %_ZN5boost6spirit5parseIPKc9c_grammar12skip_grammarEENS0_10parse_infoIT_EERKS7_SA_RKNS0_6parserIT0_EERKNSB_IT1_EE.exit
  %i.t = phi ptr [ %.pr.i, %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split.i ], [ %i.n, %_ZN5boost6spirit5parseIPKc9c_grammar12skip_grammarEENS0_10parse_infoIT_EERKS7_SA_RKNS0_6parserIT0_EERKNSB_IT1_EE.exit ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #24
  br label %_ZN5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEED2Ev.exit

bb.d:                                             ; preds = %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI12skip_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #25
  unreachable

_ZN5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEED2Ev.exit: ; preds = %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit.i, %bb.c
  %i.ab = trunc nuw i8 %i.k to i1
  call void @_ZN5boost6spirit4impl14object_with_idINS1_11grammar_tagEmED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %i.ab

bb.e:                                             ; preds = %_ZN12skip_grammarC2Ev.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN5boost6spirit7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20, !noalias !64 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not3.i.i, label %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit, label %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI9c_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i

_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI9c_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i: ; preds = %bb.a, %.noexc
  %.sroa.04.0.i = phi ptr [ %i.e, %.noexc ], [ %i.c, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28, !noalias !69 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33, !noalias !69
  %i.h = load ptr, ptr %i.g, align 8, !noalias !69, !nosanitize !35
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %0)
          to label %.noexc unwind label %bb.c, !inline_history !36 ; 0 uses

.noexc:                                           ; preds = %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI9c_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i
  %.not.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i, label %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split, label %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI9c_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i, !llvm.loop !37

_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split: ; preds = %.noexc
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit

_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit: ; preds = %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exitthread-pre-split ], [ %i.d, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEED2Ev.exit

_ZN5boost6spirit4impl19grammar_helper_listINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEED2Ev.exit: ; preds = %_ZN5boost6spirit4impl16grammar_destructINS0_7grammarI9c_grammarNS0_14parser_contextINS0_5nil_tEEEEEEEvPT_.exit, %bb.b
  tail call void @_ZN5boost6spirit4impl14object_with_idINS1_11grammar_tagEmED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  ret void

bb.c:                                             ; preds = %_ZNKSt9binder2ndISt10mem_fun1_tIiN5boost6spirit4impl19grammar_helper_baseINS2_7grammarI9c_grammarNS2_14parser_contextINS2_5nil_tEEEEEEEPSA_EEclERPSB_.exit.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6spirit4impl14object_with_idINS1_11grammar_tagEmED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !72     ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.b, -1
  store i64 %i.f, ptr %i.c, align 8, !tbaa !73
  br label %_ZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17release_object_idEm.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.b, ptr %i.i, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !80
  br label %_ZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17release_object_idEm.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !83   ; 4 uses
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.r ; 2 uses
  %1 = icmp ult i64 %i.s, %i.r
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %2 = select i1 %1, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.u = shl nuw nsw i64 %2, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28
          to label %.noexc1 unwind label %bb.i    ; 4 uses

.noexc1:                                          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.p ; 2 uses
  store i64 %i.b, ptr %i.w, align 8, !tbaa !82
  %i.x = icmp sgt i64 %i.p, 0
  br i1 %i.x, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i

bb.g:                                             ; preds = %.noexc1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.g, %.noexc1
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #24
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.v, ptr %i.g, align 8, !tbaa !83
  store ptr %i.y, ptr %i.h, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %2
  store ptr %i.z, ptr %i.j, align 8, !tbaa !81
  br label %_ZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17release_object_idEm.exit

_ZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17release_object_idEm.exit: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i, %bb.d, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #23
  ret void

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEvE13static_supply acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEvE13static_supply) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEvE13static_supply, i8 0, i64 16, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost10shared_ptrINS_6spirit4impl26object_with_id_base_supplyImEEED2Ev, ptr nonnull @_ZZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEvE13static_supply, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEvE13static_supply) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEvE13static_supply, align 8, !tbaa !72 ; 2 uses
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  tail call void @_ZN5boost10shared_ptrINS_6spirit4impl26object_with_id_base_supplyImEEE5resetIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEvE13static_supply, ptr noundef nonnull %i.f)
  %.pre = load ptr, ptr @_ZZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEvE13static_supply, align 8, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi ptr [ %.pre, %bb.e ], [ %i.e, %bb.d ]
  store ptr %i.g, ptr %0, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6detail12shared_countaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN5boost6spirit4impl19object_with_id_baseINS1_11grammar_tagEmE17acquire_object_idEvE13static_supply, i64 8)) ; 0 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !72     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80   ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !83   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !82
  store ptr %i.r, ptr %i.l, align 8, !tbaa !80
  br label %_ZN5boost6spirit4impl26object_with_id_base_supplyImE7acquireEv.exit

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.p                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = load i64, ptr %i.j, align 8, !tbaa !73   ; 5 uses
  %.not3.i = icmp ugt i64 %i.x, %i.y
  br i1 %.not3.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = mul i64 %i.y, 3                          ; 2 uses
  %i.aa = lshr i64 %i.z, 1                        ; 2 uses
  %i.ab = add nuw i64 %i.aa, 1                    ; 2 uses
  %i.ac = icmp ugt i64 %i.z, 2305843009213693949
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #27
  unreachable

bb.k:                                             ; preds = %bb.i
  %.not4.i = icmp ugt i64 %i.x, %i.aa
  br i1 %.not4.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i: ; preds = %bb.k
  %i.ad = shl nuw nsw i64 %i.ab, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #28 ; 3 uses
  %.not.i8.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.w) #24
  %.pre.pre.i = load i64, ptr %i.j, align 8, !tbaa !73
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i
  %.pre.i = phi i64 [ %.pre.pre.i, %bb.l ], [ %i.y, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i ]
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.q
  store ptr %i.af, ptr %i.l, align 8, !tbaa !80
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ab
  store ptr %i.ag, ptr %i.t, align 8, !tbaa !81
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.i

_ZNSt6vectorImSaImEE7reserveEm.exit.i:            ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i, %bb.k, %bb.h
  %i.ah = phi i64 [ %.pre.i, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i ], [ %i.y, %bb.k ], [ %i.y, %bb.h ]
  %i.ai = add i64 %i.ah, 1                        ; 2 uses
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !73
  br label %_ZN5boost6spirit4impl26object_with_id_base_supplyImE7acquireEv.exit

_ZN5boost6spirit4impl26object_with_id_base_supplyImE7acquireEv.exit: ; preds = %bb.g, %_ZNSt6vectorImSaImEE7reserveEm.exit.i
  %.0.i = phi i64 [ %i.s, %bb.g ], [ %i.ai, %_ZNSt6vectorImSaImEE7reserveEm.exit.i ]
  ret i64 %.0.i
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost10shared_ptrINS_6spirit4impl26object_with_id_base_supplyImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #23
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost10shared_ptrINS_6spirit4impl26object_with_id_base_supplyImEEE5resetIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::shared_ptr", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %1, ptr %2, align 16, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN5boost6detail12shared_countC2IPNS_6spirit4impl26object_with_id_base_supplyImEENS_15checked_deleterIS6_EEEET_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 8 uses
  %i.d = load <2 x ptr>, ptr %0, align 8, !tbaa !86
  %i.e = load <2 x ptr>, ptr %2, align 16, !tbaa !86
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !86
  store <2 x ptr> %i.d, ptr %2, align 16, !tbaa !86
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN5boost6detail12shared_countD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.g = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #23 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !87
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !87
  %.not.not.i.i = icmp eq i64 %i.j, 0
  %i.k = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #23 ; 0 uses
  br i1 %.not.not.i.i, label %bb.c, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.noexc.i unwind label %bb.e, !inline_history !90

.noexc.i:                                         ; preds = %bb.c
  %i.o = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #23 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !91
  %i.r = add nsw i64 %i.q, -1                     ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !91
  %i.s = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #23 ; 0 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %bb.d, label %_ZN5boost6detail12shared_countD2Ev.exit

bb.d:                                             ; preds = %.noexc.i
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_ZN5boost6detail12shared_countD2Ev.exit unwind label %bb.e, !inline_history !90

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #25
  unreachable

end_hunk_0
begin_hunk_1_@_ZN5boost8weak_ptrINS_6spirit4impl14grammar_helperINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEES5_NS1_7scannerIPKcNS1_16scanner_policiesINS1_28skip_parser_iteration_policyI12skip_grammarNS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEEED2Ev:bb.a
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
  %3 = icmp ult i64 %i.ag, %i.af
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %4 = select i1 %3, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %4, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %.noexc18 unwind label %bb.n   ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ad ; 2 uses
  store ptr %0, ptr %i.ak, align 8, !tbaa !28
  %i.al = icmp sgt i64 %i.ad, 0
  br i1 %i.al, label %bb.k, label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i

_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i: ; preds = %bb.k, %.noexc18
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #24
  br label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !39
  store ptr %i.am, ptr %i.v, align 8, !tbaa !166
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %4
  store ptr %i.an, ptr %i.x, align 8, !tbaa !41
  br label %_ZNSt8auto_ptrIN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit

_ZNSt8auto_ptrIN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !167
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !157
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.c
  store ptr %i.u, ptr %i.as, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 1408) #24
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI9c_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8auto_ptrIN9c_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_28skip_parser_iteration_policyI12skip_grammarNS3_16iteration_policyEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.au, %bb.n ], [ %i.at, %bb.m ]
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
end_hunk_1
begin_hunk_2_@_ZN5boost6spirit4impl14grammar_helperINS0_7grammarI12skip_grammarNS0_14parser_contextINS0_5nil_tEEEEES4_NS0_7scannerIPKcNS0_16scanner_policiesINS0_27no_skipper_iteration_policyINS0_28skip_parser_iteration_policyIS4_NS0_16iteration_policyEEEEENS0_12match_policyENS0_13action_policyEEEEEEC2ERNS_8weak_ptrISM_EE:bb.a
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
  %3 = icmp ult i64 %i.ai, %i.ah
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %4 = select i1 %3, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %4, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28
          to label %.noexc18 unwind label %bb.n   ; 4 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.af ; 2 uses
  store ptr %0, ptr %i.am, align 8, !tbaa !54
  %i.an = icmp sgt i64 %i.af, 0
  br i1 %i.an, label %bb.k, label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i

_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i: ; preds = %bb.k, %.noexc18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #24
  %.pre20.pre = load ptr, ptr %i.d, align 8, !tbaa !1071
  br label %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i
  %.pre20 = phi ptr [ %.pre20.pre, %bb.l ], [ %i.r, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit16.i.i.i ]
  store ptr %i.al, ptr %i.a, align 8, !tbaa !61
  store ptr %i.ao, ptr %i.x, align 8, !tbaa !1080
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %4
  store ptr %i.ap, ptr %i.z, align 8, !tbaa !63
  br label %_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit

_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i
  %i.aq = phi ptr [ %i.r, %bb.h ], [ %.pre20, %_ZNSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE17_M_realloc_insertIJRKSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1081
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !1081
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.c
  store ptr %i.u, ptr %i.au, align 8, !tbaa !1076
  %i.av = load ptr, ptr %2, align 8, !tbaa !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 8) #24
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt6vectorIPN5boost6spirit4impl19grammar_helper_baseINS1_7grammarI12skip_grammarNS1_14parser_contextINS1_5nil_tEEEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.n ], [ %i.aw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit, %_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit
  %.013 = phi ptr [ %i.av, %_ZNSt8auto_ptrIN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEEED2Ev.exit ], [ %i.t, %_ZNSt6vectorIPN12skip_grammar10definitionIN5boost6spirit7scannerIPKcNS3_16scanner_policiesINS3_27no_skipper_iteration_policyINS3_28skip_parser_iteration_policyIS0_NS3_16iteration_policyEEEEENS3_12match_policyENS3_13action_policyEEEEEEESaISI_EE6resizeEm.exit ]
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
end_hunk_2
