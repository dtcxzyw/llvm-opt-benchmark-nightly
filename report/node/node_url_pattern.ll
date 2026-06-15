inline.NumInlined: 4558
inline.NumDeleted: 1922
begin_hunk_0_@_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE5parseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14get_safe_tokenEm.exit.i.i153: ; preds = %bb.ey, %bb.ex
  %.0.i.i.i154 = phi ptr [ %i.oe, %bb.ex ], [ %i.of, %bb.ey ] ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0.i.i.i154, i64 16
  %i.oh = load i64, ptr %i.og, align 8
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14get_safe_tokenEm.exit.i.i153
  %i.oj = getelementptr inbounds nuw i8, ptr %.0.i.i.i154, i64 24
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = load i8, ptr %i.ok, align 1
  %.not.i.i155 = icmp eq i8 %i.ol, 35
  br i1 %.not.i.i155, label %bb.fa, label %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE18is_protocol_suffixEv.exit.thread

bb.fa:                                            ; preds = %bb.ez, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14get_safe_tokenEm.exit.i.i153
  %i.om = load i8, ptr %.0.i.i.i154, align 8
  switch i8 %i.om, label %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE18is_protocol_suffixEv.exit.thread [
    i8 5, label %_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14is_hash_prefixEv.exit158
    i8 6, label %_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14is_hash_prefixEv.exit158
    i8 0, label %_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14is_hash_prefixEv.exit158
  ]

_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14is_hash_prefixEv.exit158: ; preds = %bb.fa, %bb.fa, %bb.fa
  call void @_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE12change_stateENS5_5StateEm(ptr noundef nonnull align 8 dereferenceable(448) %6, i32 noundef 9, i64 noundef 1)
  br label %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE18is_protocol_suffixEv.exit.thread

bb.fb:                                            ; preds = %bb.ab
  unreachable

_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE18is_protocol_suffixEv.exit.thread: ; preds = %bb.fa, %bb.ez, %bb.ev, %bb.eu, %bb.ei, %bb.eh, %bb.cl, %bb.ck, %bb.cg, %bb.cf, %bb.bw, %bb.bv, %bb.al, %bb.ak, %bb.ag, %bb.af, %bb.ab, %_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14is_hash_prefixEv.exit158, %bb.es, %_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14is_hash_prefixEv.exit152, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE17is_pathname_startEv.exit114, %_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE14is_hash_prefixEv.exit133, %bb.ef, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE15is_an_ipv6_openEv.exit, %bb.db, %bb.dp, %bb.dq, %_ZN3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE16is_search_prefixEv.exit108, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE17is_pathname_startEv.exit95, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE16is_an_ipv6_closeEv.exit, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE25is_an_identity_terminatorEv.exit74, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE18is_password_prefixEv.exit, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE25is_an_identity_terminatorEv.exit68, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE25is_an_identity_terminatorEv.exit, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE17is_pathname_startEv.exit, %bb.ba, %_ZNK3ada19url_pattern_helpers25constructor_string_parserIN4node11url_pattern23URLPatternRegexProviderEE18is_protocol_suffixEv.exit
  %i.on = load i64, ptr %i.w, align 8
  %i.oo = load i64, ptr %i.z, align 8
  %i.op = add i64 %i.oo, %i.on
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %bb.b, %bb.v
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.or = load i8, ptr %i.p, align 8, !range !26, !noundef !30
  %i.os = trunc nuw i8 %i.or to i1
  %.not190 = xor i1 %i.os, true
  %i.ot = load i8, ptr %i.q, align 8, !range !26
  %i.ou = trunc nuw i8 %i.ot to i1
  %or.cond = select i1 %.not190, i1 true, i1 %i.ou
  br i1 %or.cond, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.loopexit
  %i.ov = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.ow = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA1_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.ov, ptr noundef nonnull align 1 dereferenceable(1) @.str.104) ; 0 uses
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.loopexit
  call void @_ZN3ada16url_pattern_initC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(361) %0, ptr noundef nonnull align 8 dereferenceable(360) %i.oq)
  br label %bb.fe

bb.fe:                                            ; preds = %bb.aq, %bb.fd
  %.sink215 = phi i8 [ 0, %bb.aq ], [ 1, %bb.fd ]
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 %.sink215, ptr %i.ox, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @_ZN3ada16url_pattern_initD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.oy) #24
  %i.oz = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.pa = load ptr, ptr %i.j, align 8
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oz to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef %i.pd) #27
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pre197 = load i8, ptr %i.a, align 8, !range !26
  %i.pe = trunc nuw i8 %.pre197 to i1
  br i1 %i.pe, label %bb.fh, label %_ZN2tl6detail21expected_storage_baseISt6vectorIN3ada19url_pattern_helpers5tokenESaIS5_EENS3_6errorsELb0ELb1EED2Ev.exit

bb.fh:                                            ; preds = %bb.fg
  %i.pf = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i.i159, label %_ZN2tl6detail21expected_storage_baseISt6vectorIN3ada19url_pattern_helpers5tokenESaIS5_EENS3_6errorsELb0ELb1EED2Ev.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.pg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = ptrtoint ptr %i.ph to i64
  %i.pj = ptrtoint ptr %i.pf to i64
  %i.pk = sub i64 %i.pi, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef %i.pk) #27
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIN3ada19url_pattern_helpers5tokenESaIS5_EENS3_6errorsELb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseISt6vectorIN3ada19url_pattern_helpers5tokenESaIS5_EENS3_6errorsELb0ELb1EED2Ev.exit: ; preds = %.thread, %bb.fg, %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

declare void @_ZN3ada16url_pattern_init7processERKS0_NS0_12process_typeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES9_S9_S9_S9_S9_S9_S9_(ptr dead_on_unwind writable sret(%"class.tl::expected.732") align 8, ptr noundef nonnull align 8 dereferenceable(360), i8 noundef zeroext, ptr noundef byval(%"class.std::optional.529") align 8, ptr noundef byval(%"class.std::optional.529") align 8, ptr noundef byval(%"class.std::optional.529") align 8, ptr noundef byval(%"class.std::optional.529") align 8, ptr noundef byval(%"class.std::optional.529") align 8, ptr noundef byval(%"class.std::optional.529") align 8, ptr noundef byval(%"class.std::optional.529") align 8, ptr noundef byval(%"class.std::optional.529") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA2_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !26, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %1, i64 noundef %i.f) ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %1) #24 ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #26 ; 2 uses
  store ptr %i.n, ptr %0, align 8
  store i64 %i.i, ptr %i.h, align 8
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.c
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  switch i64 %i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA2_KcEEEvDpOT_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = load i8, ptr %1, align 1
  store i8 %i.p, ptr %i.o, align 1
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA2_KcEEEvDpOT_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 dereferenceable(2) %1, i64 %i.i, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA2_KcEEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA2_KcEEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.h, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.r, align 1
  store i8 1, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJRA2_KcEEEvDpOT_.exit, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6errorsEEESt17basic_string_viewIcSB_EEEENS7_IS4_SE_EESH_RT_RNS_37url_pattern_compile_component_optionsE(ptr dead_on_unwind noalias writable sret(%"class.tl::expected.751") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(5) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.tl::expected.820", align 8  ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::vector.8", align 8     ; 10 uses
  %9 = alloca %"class.ada::url_pattern_component", align 8 ; 14 uses
  %10 = alloca %"class.std::tuple.846", align 16  ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::optional", align 8    ; 8 uses
  %13 = alloca %"class.ada::url_pattern_component", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN3ada19url_pattern_helpers20parse_pattern_stringITkNS_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6errorsEEESt17basic_string_viewIcS7_EEEENS3_ISt6vectorINS_16url_pattern_partESaISG_EESA_EESD_RNS_37url_pattern_compile_component_optionsERT_(ptr dead_on_unwind nonnull writable sret(%"class.tl::expected.820") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(5) %4, ptr noundef nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !26, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread143

.thread143:                                       ; preds = %bb.a
  %i.d = load i8, ptr %5, align 8
  store i8 %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.e, align 8
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIN3ada16url_pattern_partESaIS4_EENS3_6errorsELb0ELb1EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %5, align 8                ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit.thread, label %.lr.ph.i.i

_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.i, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  br label %select.unfold.thread

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.01.04.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = load i8, ptr %.sroa.01.04.i.i, align 8
  %i.l = icmp eq i8 %i.k, 1                       ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 144 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.m, %i.h
  %or.cond73 = select i1 %i.l, i1 true, i1 %.not7.i.i
  br i1 %or.cond73, label %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit, label %.lr.ph.i.i, !llvm.loop !324

_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.n, ptr %6, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.r, 144
  br i1 %i.s, label %bb.c, label %.thread.a

bb.c:                                             ; preds = %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit
  %14 = load i8, ptr %i.f, align 8                ; 2 uses
  %15 = icmp eq i8 %14, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.u = load i8, ptr %i.t, align 8
  %16 = icmp eq i8 %i.u, 0                        ; 2 uses
  %or.cond = select i1 %15, i1 %16, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %i.v = load i8, ptr %4, align 1, !range !26
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond.a = select i1 %or.cond.not, i1 true, i1 %i.w
  br i1 %or.cond.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  br label %select.unfold.thread

bb.e:                                             ; preds = %bb.c
  %17 = icmp eq i8 %14, 3
  %or.cond34 = select i1 %17, i1 %16, i1 false
  br i1 %or.cond34, label %bb.f, label %.thread.a

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %.thread.a

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %.thread.a

select.unfold.thread:                             ; preds = %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit.thread, %bb.d
  %.ph = phi ptr [ %i.o, %bb.d ], [ %i.j, %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit.thread ]
  %.ph136 = phi ptr [ %i.n, %bb.d ], [ %i.i, %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit.thread ]
  %.lcssa.i.i67.ph = phi i1 [ %i.l, %bb.d ], [ false, %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit.thread ]
  %.1.ph = phi i8 [ 1, %bb.d ], [ 0, %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN3ada19url_pattern_helpers23generate_pattern_stringB5cxx11ERSt6vectorINS_16url_pattern_partESaIS2_EERNS_37url_pattern_compile_component_optionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(5) %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN3ada19url_pattern_helpers23generate_pattern_stringB5cxx11ERSt6vectorINS_16url_pattern_partESaIS2_EERNS_37url_pattern_compile_component_optionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(5) %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %5, align 8               ; 2 uses
  %i.af = load ptr, ptr %i.g, align 8
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  br label %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i

_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i:         ; preds = %select.unfold.thread, %bb.h, %bb.i
  %.1140 = phi i8 [ %.1.ph, %select.unfold.thread ], [ 2, %bb.i ], [ 2, %bb.h ]
  %.lcssa.i.i67139 = phi i1 [ %.lcssa.i.i67.ph, %select.unfold.thread ], [ %i.l, %bb.i ], [ %i.l, %bb.h ]
  %i.ai = phi ptr [ %.ph136, %select.unfold.thread ], [ %i.n, %bb.i ], [ %i.n, %bb.h ] ; 5 uses
  %i.aj = phi ptr [ %.ph, %select.unfold.thread ], [ %i.o, %bb.i ], [ %i.o, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 9 uses
  store ptr %i.al, ptr %i.ak, align 8
  %i.am = load ptr, ptr %7, align 8               ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i
  store ptr %i.am, ptr %i.ak, align 8
  %i.at = load i64, ptr %i.an, align 8
  store i64 %i.at, ptr %i.al, align 8
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre80.a = load i64, ptr %.phi.trans.insert79, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.au = phi ptr [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %bb.j ] ; 2 uses
  %i.av = phi i64 [ %.pre80.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aq, %bb.j ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 %i.av, ptr %i.ax, align 8
  store ptr %i.an, ptr %7, align 8
  store i64 0, ptr %i.aw, align 8
  store i8 0, ptr %i.an, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.az = load ptr, ptr %8, align 8               ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  store ptr %i.bc, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  store ptr %i.bf, ptr %i.bd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 9 uses
  store ptr %i.bh, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %6, align 8               ; 3 uses
  %i.bj = icmp eq ptr %i.bi, %i.ai
  br i1 %i.bj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bk = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.bm, i1 false)
  br label %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.bi, ptr %i.bg, align 8
  %i.bn = load i64, ptr %i.ai, align 8
  store i64 %i.bn, ptr %i.bh, align 8
  %.pre81.a = load i64, ptr %i.aj, align 8
  br label %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i

_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.k
  %i.bo = phi ptr [ %i.bh, %bb.k ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ] ; 2 uses
  %i.bp = phi i64 [ %i.bk, %bb.k ], [ %.pre81.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ] ; 4 uses
  %i.bq = zext i1 %.lcssa.i.i67139 to i8
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  store i64 %i.bp, ptr %i.br, align 8
  store ptr %i.ai, ptr %6, align 8
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ai, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  store i8 %i.bq, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 97
  store i8 %.1140, ptr %i.bt, align 1
  store ptr null, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bv, ptr %i.bu, align 8
  %i.bw = icmp eq ptr %i.au, %i.al
  br i1 %i.bw, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i
  %i.bx = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.by, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.au, ptr %i.bu, align 8
  %i.bz = load i64, ptr %i.al, align 8
  store i64 %i.bz, ptr %i.bv, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %i.ca, align 8
  store ptr %i.al, ptr %i.ak, align 8
  store i64 0, ptr %i.ax, align 8
  store i8 0, ptr %i.al, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.az, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bc, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bf, ptr %i.cd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.cf, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.bo, %i.bh
  br i1 %i.cg, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i
  %i.ch = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.ci, i1 false)
  br label %.thread142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bo, ptr %i.ce, align 8
  %i.cj = load i64, ptr %i.bh, align 8
  store i64 %i.cj, ptr %i.cf, align 8
  br label %.thread142

.thread142:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i.i.i.i, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bp, ptr %i.ck, align 8
  store ptr %i.bh, ptr %i.bg, align 8
  store i64 0, ptr %i.br, align 8
  store i8 0, ptr %i.bh, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cm = load i16, ptr %i.bs, align 8
  store i16 %i.cm, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.cn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i63

.thread.a:                                        ; preds = %_ZNKSt6ranges11__any_of_fnclITkNS_11input_rangeERSt6vectorIN3ada16url_pattern_partESaIS4_EESt8identityTkSt24indirect_unary_predicateINSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_E6__typeEEZNS3_21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEE7compileITkNS3_29url_pattern_encoding_callbackEFN2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_6errorsEEESt17basic_string_viewIcST_EEEENSP_ISM_SW_EESZ_SD_RNS3_37url_pattern_compile_component_optionsEEUlRKSC_E_EEbOSC_T1_SF_.exit, %bb.e, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %.sroa.02.0.copyload = load i40, ptr %4, align 1
  call void @_ZN3ada19url_pattern_helpers41generate_regular_expression_and_name_listB5cxx11ERKSt6vectorINS_16url_pattern_partESaIS2_EENS_37url_pattern_compile_component_optionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.846") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i40 %.sroa.02.0.copyload) #24
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZN3ada19url_pattern_helpers23generate_pattern_stringB5cxx11ERSt6vectorINS_16url_pattern_partESaIS2_EERNS_37url_pattern_compile_component_optionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(5) %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cr = load i64, ptr %i.cq, align 16
  %i.cs = load i8, ptr %4, align 1, !range !26, !noundef !30
  %i.ct = trunc nuw i8 %i.cs to i1
  call void @_ZN4node11url_pattern23URLPatternRegexProvider15create_instanceESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %12, i64 %i.cr, ptr %i.cp, i1 noundef zeroext %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.cv = load i8, ptr %i.cu, align 8, !range !26, !noundef !30
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.n, label %.thread141

.thread141:                                       ; preds = %.thread.a
  store i8 0, ptr %0, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.cx, align 8
  br label %_ZNSt14_Optional_baseIN2v86GlobalINS0_6RegExpEEELb0ELb0EED2Ev.exit

bb.n:                                             ; preds = %.thread.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.cy = load ptr, ptr %12, align 8              ; 2 uses
  store ptr %i.cy, ptr %13, align 8
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i30, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(98) %13) #24
  store ptr null, ptr %12, align 8
  br label %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i30

_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i30:       ; preds = %bb.o, %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 9 uses
  store ptr %i.db, ptr %i.da, align 8
  %i.dc = load ptr, ptr %11, align 8              ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

bb.p:                                             ; preds = %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i30
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dg = load i64, ptr %i.df, align 8            ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nuw nsw i64 %i.dg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.db, ptr noundef nonnull align 8 dereferenceable(1) %i.dd, i64 %i.di, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i30
  store ptr %i.dc, ptr %i.da, align 8
  %i.dj = load i64, ptr %i.dd, align 8
  store i64 %i.dj, ptr %i.db, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.p
  %i.dk = phi ptr [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.db, %bb.p ]
  %i.dl = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.dg, %bb.p ]
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store i64 %i.dl, ptr %i.dn, align 8
  store ptr %i.dd, ptr %11, align 8
  store i64 0, ptr %i.dm, align 8
  store i8 0, ptr %i.dd, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.dp = load <2 x ptr>, ptr %10, align 16
  store <2 x ptr> %i.dp, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ds = load ptr, ptr %i.dr, align 16
  store ptr %i.ds, ptr %i.dq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 8 uses
  store ptr %i.du, ptr %i.dt, align 8
  %i.dv = load ptr, ptr %6, align 8               ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.n
  br i1 %i.dw, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i33

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32
  %i.dx = load i64, ptr %i.o, align 8             ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.dy)
  %i.dz = add nuw nsw i64 %i.dx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.du, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.dz, i1 false)
  br label %_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON2v86GlobalINSC_6RegExpEEEOSt6vectorISA_SaISA_EEbNS_26url_pattern_component_typeESB_.exit34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32
  store ptr %i.dv, ptr %i.dt, align 8
  %i.ea = load i64, ptr %i.n, align 8
  store i64 %i.ea, ptr %i.du, align 8
  %.pre74 = load i64, ptr %i.o, align 8
  br label %_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON2v86GlobalINSC_6RegExpEEEOSt6vectorISA_SaISA_EEbNS_26url_pattern_component_typeESB_.exit34

_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON2v86GlobalINSC_6RegExpEEEOSt6vectorISA_SaISA_EEbNS_26url_pattern_component_typeESB_.exit34: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i33
  %i.eb = phi i64 [ %i.dx, %bb.q ], [ %.pre74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i33 ]
  %i.ec = zext i1 %i.l to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 4 uses
  store i64 %i.eb, ptr %i.ed, align 8
  store ptr %i.n, ptr %6, align 8
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.n, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  store i8 %i.ec, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 97
  store i8 3, ptr %i.ef, align 1
  %i.eg = load ptr, ptr %13, align 8              ; 2 uses
  store ptr %i.eg, ptr %0, align 8
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i35, label %bb.r

bb.r:                                             ; preds = %_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON2v86GlobalINSC_6RegExpEEEOSt6vectorISA_SaISA_EEbNS_26url_pattern_component_typeESB_.exit34
  call void @_ZN2v812api_internal19MoveGlobalReferenceEPPmS2_(ptr noundef nonnull align 8 dereferenceable(98) %13, ptr noundef nonnull align 8 dereferenceable(105) %0) #24
  store ptr null, ptr %13, align 8
  %.pre75 = load ptr, ptr %i.da, align 8
  br label %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i35

_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i35: ; preds = %bb.r, %_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON2v86GlobalINSC_6RegExpEEEOSt6vectorISA_SaISA_EEbNS_26url_pattern_component_typeESB_.exit34
  %i.ei = phi ptr [ %.pre75, %bb.r ], [ %i.dk, %_ZN3ada21url_pattern_componentIN4node11url_pattern23URLPatternRegexProviderEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON2v86GlobalINSC_6RegExpEEEOSt6vectorISA_SaISA_EEbNS_26url_pattern_component_typeESB_.exit34 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ek, ptr %i.ej, align 8
  %i.el = icmp eq ptr %i.ei, %i.db
  br i1 %i.el, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i36

bb.s:                                             ; preds = %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i35
  %i.em = load i64, ptr %i.dn, align 8            ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  %i.eo = add nuw nsw i64 %i.em, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.db, i64 %i.eo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i36: ; preds = %_ZN2v86GlobalINS_6RegExpEEC2EOS2_.exit.i.i.i.i.i.i.i.i.i35
  store ptr %i.ei, ptr %i.ej, align 8
  %i.ep = load i64, ptr %i.db, align 8
  store i64 %i.ep, ptr %i.ek, align 8
  %.pre76 = load i64, ptr %i.dn, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i36, %bb.s
  %i.eq = phi i64 [ %.pre76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i36 ], [ %i.em, %bb.s ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eq, ptr %i.er, align 8
  store ptr %i.db, ptr %i.da, align 8
  store i64 0, ptr %i.dn, align 8
  store i8 0, ptr %i.db, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.et = load <2 x ptr>, ptr %i.do, align 8
  store <2 x ptr> %i.et, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load ptr, ptr %i.dq, align 8
  store ptr %i.ev, ptr %i.eu, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.ex, ptr %i.ew, align 8
  %i.ey = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.du
  br i1 %i.ez, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i.i.i.i38

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i37
  %i.fa = load i64, ptr %i.ed, align 8            ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  %i.fc = add nuw nsw i64 %i.fa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ex, ptr noundef nonnull align 8 dereferenceable(1) %i.du, i64 %i.fc, i1 false)
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i.i.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i37
  store ptr %i.ey, ptr %i.ew, align 8
  %i.fd = load i64, ptr %i.du, align 8
  store i64 %i.fd, ptr %i.ex, align 8
  %.pre77 = load i64, ptr %i.ed, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i.i.i.i38, %bb.t
  %i.fe = phi i64 [ %i.fa, %bb.t ], [ %.pre77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i.i.i.i.i38 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.fe, ptr %i.ff, align 8
  store ptr %i.du, ptr %i.dt, align 8
  store i64 0, ptr %i.ed, align 8
  store i8 0, ptr %i.du, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fh = load i16, ptr %i.ee, align 8
  store i16 %i.fh, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.fi, align 8
  %.pre78.pre = load i8, ptr %i.cu, align 8, !range !26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.fj = trunc nuw i8 %.pre78.pre to i1
  store i8 0, ptr %i.cu, align 8
  br i1 %i.fj, label %bb.v, label %_ZNSt14_Optional_baseIN2v86GlobalINS0_6RegExpEEELb0ELb0EED2Ev.exit
end_hunk_0
